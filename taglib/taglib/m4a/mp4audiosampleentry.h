/***************************************************************************
    copyright            : (C) 2002-2008 by Jochen Issing
    email                : jochen.issing@isign-softart.de
 ***************************************************************************/

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
*   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  *
*   USA                                                                   *
*                                                                         *
*   Alternatively, this file is available under the Mozilla Public        *
*   License Version 1.1.  You may obtain a copy of the License at         *
*   http://www.mozilla.org/MPL/                                           *
***************************************************************************/

#ifndef MP4AUDIOSAMPLEENTRY_H
#define MP4AUDIOSAMPLEENTRY_H

#include "mp4sampleentry.h"
#include "mp4fourcc.h"

namespace TagLib
{
  namespace MP4
  {
    class Mp4AudioSampleEntry: public Mp4SampleEntry
    {
    public:
      Mp4AudioSampleEntry( File* file, MP4::Fourcc fourcc, uint size, long offset );
      ~Mp4AudioSampleEntry();

      //! function to get the number of channels
      TagLib::uint channels() const;
      //! function to get the sample rate
      TagLib::uint samplerate() const;
      //! function to get the average bitrate of the audio stream
      TagLib::uint bitrate() const;

    private:
      //! parse the content of the box
      void parseEntry();

    protected:
      class Mp4AudioSampleEntryPrivate;
      Mp4AudioSampleEntryPrivate* d;
    }; // class Mp4AudioSampleEntry

  } // namespace MP4
} // namespace TagLib

#endif // MP4AUDIOSAMPLEENTRY_H