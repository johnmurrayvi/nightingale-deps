/**************************************************************************
    copyright            : (C) 2005-2007 by Lukáš Lalinský
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

#ifndef TAGLIB_ASFTAG_H
#define TAGLIB_ASFTAG_H

#include "tag.h"
#include "tlist.h"
#include "tmap.h"
#include "taglib_export.h"
#include "asfattribute.h"

namespace TagLib {

  namespace ASF {

    typedef List<Attribute> AttributeList;
    typedef Map<String, AttributeList> AttributeListMap;

    class TAGLIB_EXPORT Tag : public TagLib::Tag {

      friend class File;

    public:

      Tag();

      virtual ~Tag();

      /*!
       * Returns the track name.
       */
      virtual String title() const;

      /*!
       * Returns the artist name.
       */
      virtual String artist() const;

      /*!
       * Returns the album name; if no album name is present in the tag
       * String::null will be returned.
       */
      virtual String album() const;

      /*!
       * Returns the album artist name; if no artist name is present in the tag
       * String::null will be returned.
       */
      virtual String albumArtist() const;

      /*!
       * Returns the track comment.
       */
      virtual String comment() const;

      /*!
       * Returns the track lyrics; if no lyrics are present in the tag
       * String::null will be returned.
       */
      virtual String lyrics() const;

      /*!
       * Returns the genre name; if no genre is present in the tag String::null
       * will be returned.
       */
      virtual String genre() const;

      /*!
       * Returns the producer name; if no producer is present in the tag String::null
       * will be returned.
       */
      virtual String producer() const;

      /*!
       * Returns the composer name; if no composer is present in the tag String::null
       * will be returned.
       */
      virtual String composer() const;

      /*!
       * Returns the conductor name; if no conductor is present in the tag String::null
       * will be returned.
       */
      virtual String conductor() const;

      /*!
       * Returns the lyricist name; if no lyricist is present in the tag String::null
       * will be returned.
       */
      virtual String lyricist() const;

      /*!
       * Returns the record label name; if no record label is present in the tag String::null
       * will be returned.
       */
      virtual String recordLabel() const;

      /*!
       * Returns the rating.
       */
      virtual String rating() const;

      /*!
       * Returns the language; if no language is present in the tag String::null
       * will be returned.
       * TODO: NOT IMPLEMENTED
       */
      virtual String language() const { return String::null; };

      /*!
       * Returns the key; if no key is present in the tag String::null
       * will be returned.
       * TODO: NOT IMPLEMENTED
       */
      virtual String key() const { return String::null; };

      /*!
       * Returns the license; if no license is present in the tag String::null
       * will be returned.
       */
      virtual String license() const;

      /*!
       * Returns the license; if no license is present in the tag String::null
       * will be returned.
       * TODO: NOT IMPLEMENTED
       */
      virtual String licenseUrl() const { return String::null; };

      /*!
       * Returns the year; if there is no year set, this will return 0.
       */
      virtual uint year() const;

      /*!
       * Returns the track number; if there is no track number set, this will
       * return 0.
       */
      virtual uint track() const;

      /*!
       * Returns the total tracks number; if there is no total tracks number set, 
       * this will return 0.
       * TODO: NOT IMPLEMENTED
       */
      virtual uint totalTracks() const { return 0; }; // todo

      /*!
       * Returns the disc number; if there is no disc number set, this will
       * return 0.
       */
      virtual uint disc() const;

      /*!
       * Returns the total discs number; if there is no total discs number set, 
       * this will return 0.
       * TODO: NOT IMPLEMENTED
       */
      virtual uint totalDiscs() const { return 0; }; // todo

      /*!
       * Returns the bpm number; if there is no bpm number set, this will
       * return 0.
       */
      virtual uint bpm() const;

      /*!
       * Returns the compilation flag.
       * TODO: NOT IMPLEMENTED
       */
      virtual bool isCompilation() const { return false; }; // todo

      /*!
       * Sets the title to \a s.
       */
      virtual void setTitle(const String &s);

      /*!
       * Sets the artist to \a s.
       */
      virtual void setArtist(const String &s);

      /*!
       * Sets the album to \a s.  If \a s is String::null then this value will be
       * cleared.
       */
      virtual void setAlbum(const String &s);

      /*!
       * Sets the album artist to \a s.  If \a s is String::null then this value will be
       * cleared.
       */
      virtual void setAlbumArtist(const String &s);

      /*!
       * Sets the comment to \a s.
       */
      virtual void setComment(const String &s);

      /*!
       * Sets the lyrics to \a s.  If \a s is String::null then this value will be
       * cleared.
       */
      virtual void setLyrics(const String &s);

      /*!
       * Sets the genre to \a s.
       */
      virtual void setGenre(const String &s);

      /*!
       * Sets the producer to \a s.
       */
      virtual void setProducer(const String &s);

      /*!
       * Sets the composer to \a s.
       */
      virtual void setComposer(const String &s);

      /*!
       * Sets the conductor to \a s.
       */
      virtual void setConductor(const String &s);

      /*!
       * Sets the lyricist to \a s.
       */
      virtual void setLyricist(const String &s);

      /*!
       * Sets the record label to \a s.
       */
      virtual void setRecordLabel(const String &s);

      /*!
       * Sets the rating to \a s.
       */
      virtual void setRating(const String &s);

      /*!
       * Sets the language to \a s.
       * TODO: NOT IMPLEMENTED
       */
      virtual void setLanguage(const String &s) {};

      /*!
       * Sets the key to \a s.
       * TODO: NOT IMPLEMENTED
       */
      virtual void setKey(const String &s) {};

      /*!
       * Sets the license to \a s.
       */
      virtual void setLicense(const String &s);

      /*!
       * Sets the license url to \a s.
       * TODO: NOT IMPLEMENTED
       */
      virtual void setLicenseUrl(const String &s) {};

      /*!
       * Sets the year to \a i.  If \a s is 0 then this value will be cleared.
       */
      virtual void setYear(uint i);

      /*!
       * Sets the track to \a i.  If \a s is 0 then this value will be cleared.
       */
      virtual void setTrack(uint i);

      /*!
       * Sets the total track number to \a i.  If \a s is 0 then this value will be cleared.
       * TODO: NOT IMPLEMENTED
       */
      virtual void setTotalTracks(uint i) {};

      /*!
       * Sets the disc numer to \a i.  If \a s is 0 then this value will be cleared.
       */
      virtual void setDisc(uint i);

      /*!
       * Sets the total disc number to \a i.  If \a s is 0 then this value will be cleared.
       * TODO: NOT IMPLEMENTED
       */
      virtual void setTotalDiscs(uint i) {};

      /*!
       * Sets the bpm to \a i.  If \a s is 0 then this value will be cleared.
       */
      virtual void setBpm(uint i);

      /*!
       * Sets the compilation flag to false if \a i is 0 and true otherwise.
       * TODO: NOT IMPLEMENTED
       */
      virtual void setIsCompilation(bool i) {};

      /*!
       * Returns true if the tag does not contain any data.  This should be
       * reimplemented in subclasses that provide more than the basic tagging
       * abilities in this class.
       */
      virtual bool isEmpty() const;

      /*!
       * Returns a reference to the item list map.  This is an AttributeListMap of
       * all of the items in the tag.
       *
       * This is the most powerfull structure for accessing the items of the tag.
       */
      AttributeListMap &attributeListMap();

      /*!
       * Removes the \a key attribute from the tag
       */
      void removeItem(const String &name);

      /*!
       * Sets the \a key attribute to the value of \a attribute. If an attribute
       * with the \a key is already present, it will be replaced.
       */
      void setAttribute(const String &name, const Attribute &attribute);

      /*!
       * Sets the \a key attribute to the value of \a attribute. If an attribute
       * with the \a key is already present, it will be added to the list.
       */
      void addAttribute(const String &name, const Attribute &attribute);

      PropertyMap properties() const;
      void removeUnsupportedProperties(const StringList& properties);
      PropertyMap setProperties(const PropertyMap &properties);

    private:

      class TagPrivate;
      TagPrivate *d;
    };
  }
}
#endif
