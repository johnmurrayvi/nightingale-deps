/**************************************************************************
    copyright            : (C) 2010 by Lukáš Lalinský
    email                : lalinsky@gmail.com
 **************************************************************************/

/***************************************************************************
 *   This library is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU Lesser General Public License version   *
 *   2.1 as published by the Free Software Foundation.                     *
 *                                                                         *
 *   This library is distributed in the hope that it will be useful, but   *
 *   WITHOUT ANY WARRANTY; without even the implied warranty of            *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU     *
 *   Lesser General Public License for more details.                       *
 *                                                                         *
 *   You should have received a copy of the GNU Lesser General Public      *
 *   License along with this library; if not, write to the Free Software   *
 *   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA         *
 *   02110-1301  USA                                                       *
 *                                                                         *
 *   Alternatively, this file is available under the Mozilla Public        *
 *   License Version 1.1.  You may obtain a copy of the License at         *
 *   http://www.mozilla.org/MPL/                                           *
 ***************************************************************************/

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <taglib.h>
#include <tdebug.h>
#include "flacpicture.h"

using namespace TagLib;

std::string FLAC::Picture::base64_encode(unsigned char const* bytes_to_encode,
                                       unsigned int in_len) {
  std::string ret;
  int i = 0;
  int j = 0;
  unsigned char char_array_3[3];
  unsigned char char_array_4[4];

  while (in_len--) {
    char_array_3[i++] = *(bytes_to_encode++);
    if (i == 3) {
      char_array_4[0] = (char_array_3[0] & 0xfc) >> 2;
      char_array_4[1] = ((char_array_3[0] & 0x03) << 4) + ((char_array_3[1] & 0xf0) >> 4);
      char_array_4[2] = ((char_array_3[1] & 0x0f) << 2) + ((char_array_3[2] & 0xc0) >> 6);
      char_array_4[3] = char_array_3[2] & 0x3f;

      for(i = 0; (i <4) ; i++)
        ret += base64_chars[char_array_4[i]];
      i = 0;
    }
  }

  if (i)
  {
    for(j = i; j < 3; j++)
      char_array_3[j] = '\0';

    char_array_4[0] = (char_array_3[0] & 0xfc) >> 2;
    char_array_4[1] = ((char_array_3[0] & 0x03) << 4) + ((char_array_3[1] & 0xf0) >> 4);
    char_array_4[2] = ((char_array_3[1] & 0x0f) << 2) + ((char_array_3[2] & 0xc0) >> 6);
    char_array_4[3] = char_array_3[2] & 0x3f;

    for (j = 0; (j < i + 1); j++)
      ret += base64_chars[char_array_4[j]];

    while((i++ < 3))
      ret += '=';

  }

  return ret;

}

static const unsigned char base64lookup[256] = {
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff,   62, 0xff, 0xff, 0xff,   63,
    52,   53,   54,   55,   56,   57,   58,   59,
    60,   61, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff,    0,    1,    2,    3,    4,    5,    6,
     7,    8,    9,   10,   11,   12,   13,   14,
    15,   16,   17,   18,   19,   20,   21,   22,
    23,   24,   25, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff,   26,   27,   28,   29,   30,   31,   32,
    33,   34,   35,   36,   37,   38,   39,   40,
    41,   42,   43,   44,   45,   46,   47,   48,
    49,   50,   51, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
};

std::string FLAC::Picture::base64_decode(std::string const& encoded_string) {
  int i = 0;
  std::string ret;

  int in_len = encoded_string.size();
  if (in_len % 4 != 0) {
    // base-64 encoded data must always be a multiple of 4 bytes
    return ret;
  }

  while (in_len > 0) 
  {
    unsigned char vals[4];

    vals[0] = base64lookup[(unsigned char)encoded_string[i]];
    vals[1] = base64lookup[(unsigned char)encoded_string[i+1]];
    vals[2] = base64lookup[(unsigned char)encoded_string[i+2]];
    vals[3] = base64lookup[(unsigned char)encoded_string[i+3]];

    if (in_len > 4) 
    {
      /* Check that all input bytes are legal */
      if (vals[0] == 0xff || vals[1] == 0xff || vals[2] == 0xff ||
          vals[3] == 0xff) 
        return std::string();
    }
    else {
      // Final chunk may have one or two padding '=' bytes
      if (vals[0] == 0xff || vals[1] == 0xff)
        return std::string();
      if (vals[2] == 0xff || vals[3] == 0xff)
      {
        if (encoded_string[i+3] != '=' || 
            (vals[2] == 0xff && encoded_string[i+2] != '='))
          return std::string();

        ret += vals[0]<<2 | vals[1]>>4;
        if (vals[2] != 0xff)
          ret += (vals[1]&0x0F)<<4 | vals[2]>>2;
        // Done!
        return ret;
      }
    }

    ret += vals[0]<<2 | vals[1]>>4;
    ret += (vals[1]&0x0F)<<4 | vals[2]>>2;
    ret += (vals[2]&0x03)<<6 | vals[3];

    in_len -= 4;
    i += 4;
  }

  return ret;
}

class FLAC::Picture::PicturePrivate 
{
public:
  PicturePrivate() :
    type(FLAC::Picture::Other),
    width(0),
    height(0),
    colorDepth(0),
    numColors(0)
    {}

  Type type;
  String mimeType;
  String description;
  int width;
  int height;
  int colorDepth;
  int numColors;
  ByteVector data;
};

FLAC::Picture::Picture()
{
  d = new PicturePrivate;
}

FLAC::Picture::Picture(const ByteVector &data)
{
  d = new PicturePrivate;
  parse(data);
}

FLAC::Picture::~Picture()
{
  delete d;
}

int FLAC::Picture::code() const
{
  return FLAC::MetadataBlock::Picture;
}

bool FLAC::Picture::parse(const String &encodedData)
{
  if (!encodedData.isNull())
  {
    std::string decodedData = base64_decode(encodedData.to8Bit());
    
    if (decodedData.empty())
      return false;

    ByteVector bv;
    bv.setData(decodedData.data(), decodedData.size());
    
    return parse(bv);
  }
}

bool FLAC::Picture::parse(const ByteVector &data)
{
  if(data.size() < 32) {
    debug("A picture block must contain at least 5 bytes.");
    return false;
  }

  int pos = 0;
  d->type = FLAC::Picture::Type(data.mid(pos, 4).toUInt());
  pos += 4;
  uint mimeTypeLength = data.mid(pos, 4).toUInt();
  pos += 4;
  if(pos + mimeTypeLength + 24 > data.size()) {
    debug("Invalid picture block.");
    return false;
  }
  d->mimeType = String(data.mid(pos, mimeTypeLength), String::UTF8);
  pos += mimeTypeLength;
  uint descriptionLength = data.mid(pos, 4).toUInt();
  pos += 4;
  if(pos + descriptionLength + 20 > data.size()) {
    debug("Invalid picture block.");
    return false;
  }
  d->description = String(data.mid(pos, descriptionLength), String::UTF8);
  pos += descriptionLength;
  d->width = data.mid(pos, 4).toUInt();
  pos += 4;
  d->height = data.mid(pos, 4).toUInt();
  pos += 4;
  d->colorDepth = data.mid(pos, 4).toUInt();
  pos += 4;
  d->numColors = data.mid(pos, 4).toUInt();
  pos += 4;
  uint dataLength = data.mid(pos, 4).toUInt();
  pos += 4;
  if(pos + dataLength > data.size()) {
    debug("Invalid picture block.");
    return false;
  }
  d->data = data.mid(pos, dataLength);

  return true;  
}

ByteVector FLAC::Picture::render() const
{
  ByteVector result;
  result.append(ByteVector::fromUInt(d->type));
  ByteVector mimeTypeData = d->mimeType.data(String::UTF8);
  result.append(ByteVector::fromUInt(mimeTypeData.size()));
  result.append(mimeTypeData);
  ByteVector descriptionData = d->description.data(String::UTF8);
  result.append(ByteVector::fromUInt(descriptionData.size()));
  result.append(descriptionData);
  result.append(ByteVector::fromUInt(d->width));
  result.append(ByteVector::fromUInt(d->height));
  result.append(ByteVector::fromUInt(d->colorDepth));
  result.append(ByteVector::fromUInt(d->numColors));
  result.append(ByteVector::fromUInt(d->data.size()));
  result.append(d->data);
  return result;
}

ByteVector FLAC::Picture::render(bool b64encode)
{
  ByteVector bv = render();

  if (b64encode) {
    std::string encodedData = base64_encode((const unsigned char *) bv.data(), bv.size());
    bv = ByteVector(encodedData.data(), encodedData.length());
  }

  return bv;
}

FLAC::Picture::Type FLAC::Picture::type() const
{
  return d->type;
}

void FLAC::Picture::setType(FLAC::Picture::Type type)
{
  d->type = type;
}

String FLAC::Picture::mimeType() const
{
  return d->mimeType;
}

void FLAC::Picture::setMimeType(const String &mimeType)
{
  d->mimeType = mimeType;
}

String FLAC::Picture::description() const
{
  return d->description;
}

void FLAC::Picture::setDescription(const String &description)
{
  d->description = description;
}

int FLAC::Picture::width() const
{
  return d->width;
}

void FLAC::Picture::setWidth(int width)
{
  d->width = width;
}

int FLAC::Picture::height() const
{
  return d->height;
}

void FLAC::Picture::setHeight(int height)
{
  d->height = height;
}

int FLAC::Picture::colorDepth() const
{
  return d->colorDepth;
}

void FLAC::Picture::setColorDepth(int colorDepth)
{
  d->colorDepth = colorDepth;
}

int FLAC::Picture::numColors() const
{
  return d->numColors;
}

void FLAC::Picture::setNumColors(int numColors)
{
  d->numColors = numColors;
}

ByteVector FLAC::Picture::data() const
{
  return d->data;
}

void FLAC::Picture::setData(const ByteVector &data)
{
  d->data = data;
}

