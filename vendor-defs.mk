


NG_CONFIGURE_OPTS :=
NG_USE_SYSTEM_LIBS ?=
NG_PATH :=
NG_PKG_CONFIG_PATH :=
NG_DYLD_LIBRARY_PATH :=


NG_VENDOR_TARGET_DEP_MODULES ?= \
 flac jpeg ogg theora vorbis \
 gstreamer gst-plugins-base


###########

#
# Operating system detection
#

NG_VENDOR_ARCH := $(shell uname 2>&1)
NG_VENDOR_SUBARCH := $(shell uname -m 2>&1)
NG_VENDOR_OS := $(shell uname -o 2>&1)

NG_VENDOR_CROSS_COMP := $(NG_VENDOR_CROSS_COMP)
NG_VENDOR_HOST_ARCH :=
NG_VENDOR_BUILD_ARCH :=

NG_ARCH_DETECTED := 0

ifeq (Darwin,$(NG_VENDOR_ARCH))
  ifeq (i386,$(NG_VENDOR_SUBARCH))
    NG_TARGET_ARCH := macosx-i686
    NG_ARCH_DETECTED := 1
  endif
  ifeq (x86_64,$(NG_VENDOR_SUBARCH))
    NG_TARGET_ARCH := macosx-i686
    NG_ARCH_DETECTED := 1
  endif
  ifeq (ppc,$(NG_VENDOR_SUBARCH))
    NG_TARGET_ARCH := macosx-ppc
    NG_ARCH_DETECTED := 1
  endif
endif

ifeq (Linux,$(NG_VENDOR_ARCH))
  ifeq (i686,$(NG_VENDOR_SUBARCH))
    NG_TARGET_ARCH := linux-i686
    NG_ARCH_DETECTED := 1
  endif
  ifeq (x86_64,$(NG_VENDOR_SUBARCH))
    # mingw32 cross compilation
    ifeq (1,$(NG_VENDOR_CROSS_COMP))
      NG_TARGET_ARCH := windows-i686-msvc10
      # NG_VENDOR_TARGET_ARCH := i686-pc-mingw32
      NG_VENDOR_HOST_ARCH := i586-mingw32msvc
      NG_VENDOR_BUILD_ARCH := x86_64-linux-gnu
    else
      NG_TARGET_ARCH := linux-x86_64
    endif
    NG_ARCH_DETECTED := 1
  endif
endif

ifeq (Msys,$(NG_VENDOR_OS))
  NG_TARGET_ARCH := windows-i686-msvc10
  NG_ARCH_DETECTED := 1
  # We redefine NG_VENDOR_ARCH here to make it more useful to us; in Msys,
  # uname returns some some long, difficult string to compare against...
  NG_VENDOR_ARCH := Msys
endif

ifneq (1,$(NG_ARCH_DETECTED))
  $(error Unsupported vendor build environment ($(NG_VENDOR_ARCH), $(NG_VENDOR_SUBARCH), $(NG_VENDOR_OS))) 
endif


###########

#
# System tools we rely on for the vendor build process; allow them to be
# overridden
#

AWK ?= awk
AUTOCONF ?= autoconf
CHMOD ?= chmod
CMAKE ?= cmake
CONFIGURE ?= ./configure
CP ?= cp
CUT ?= cut
FIND ?= find
GREP ?= grep
LN ?= ln
MKDIR ?= mkdir -p
MSYS_CP ?= $(NG_VENDOR_CHECKOUT)/msys-recursive-cp
MV ?= mv
PYTHON ?= python
RM ?= rm
SED ?= sed
TAR ?= tar
ZIP ?= zip

SUBMAKE_CMD = $(MAKE)


###########

ifeq (Darwin,$(NG_VENDOR_ARCH))
  STRIP ?= strip -x -S
  DUMP_SYMS ?= $(MOZSDK_BIN_DIR)/dump_syms
  OTOOL ?= otool
  INSTALL_NAME_TOOL ?= install_name_tool

  ifeq (i386,$(NG_VENDOR_SUBARCH))
    DUMP_SYMS_ARGS += -a i386
  else
    ifeq (ppc,$(NG_VENDOR_SUBARCH))
      DUMP_SYMS_ARGS += -a ppc
    endif
  endif
endif
ifeq (Linux,$(NG_VENDOR_ARCH))
  ifneq (1,$(NG_VENDOR_CROSS_COMP))
    STRIP ?= strip -v
    DUMP_SYMS ?= $(MOZSDK_BIN_DIR)/dump_syms
    INSTALL_NAME_TOOL ?= echo install_name_tool called on Linux && exit 1;
    OTOOL ?= echo otool called on Linux && exit 1;
    NG_AR ?= ar
  else
    STRIP ?= i586-mingw32msvc-strip
    DUMP_SYMS ?= $(MOZSDK_BIN_DIR)/dump_syms
    INSTALL_NAME_TOOL ?= echo install_name_tool called on Linux && exit 1;
    OTOOL ?= echo otool called on Linux && exit 1;
    NG_AR = i586-mingw32msvc-ar
    # NG_CC = i586-mingw32msvc-gcc
    # NG_CXX = i586-mingw32msvc-g++
    # NG_LD = i586-mingw32msvc-ld
    # NG_OBJDUMP = i586-mingw32msvc-objdump
  endif
endif
ifeq (Msys,$(NG_VENDOR_ARCH))
  DUMP_SYMS ?= $(MOZSDK_BIN_DIR)/dump_syms.exe
  DUMP_SYMS_ARGS += --copy
  # Strip isn't needed/available on Win32; error out
  STRIP ?= echo strip called on Win32 && exit 1;
  INSTALL_NAME_TOOL ?= echo install_name_tool called on Win32 && exit 1;
  OTOOL ?= echo otool called on Win32 && exit 1;

  NG_CC = cl
  NG_CXX = cl
  NG_LD = link
  NG_OBJDUMP = objdump
endif


###########

#
# On certain platforms, we need some extra information/flag munging
#

ifeq (Msys,$(NG_VENDOR_ARCH))
  _MSVC_VER_FILTER := s|.* \([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\).*|\1|p
  CC_VERSION := $(shell cl -v 2>&1 | sed -ne "$(_MSVC_VER_FILTER)")
  _CC_MAJOR_VERSION := $(shell echo $(CC_VERSION) | awk -F\. '{ print $$1 }')
  _CC_MINOR_VERSION := $(shell echo $(CC_VERSION) | awk -F\. '{ print $$2 }')
  _MSC_VER := $(_CC_MAJOR_VERSION)$(_CC_MINOR_VERSION)

  NG_CFLAGS += -D_MSC_VER=$(_MSC_VER) -DWIN32 -D__NO_CTYPE \
   -D_CRT_SECURE_NO_WARNINGS -DHAVE_WIN32 -D_WINDOWS \
   -wd4820 -wd4668 -wd4100 -wd4706 -wd4127 -wd4255 -wd4710 -wd4055

  NG_CFLAGS += -Zi 
  NG_CXXFLAGS += -Zi
  NG_LDFLAGS += -DEBUG

  CONFIGURE_TARGET = i686-pc-mingw32

  # We need these for all builds on Win32, since the system doesn't provide
  # it...
  NG_VENDOR_TARGET_DEP_MODULES += iconv glib gettext
endif

ifeq (Darwin,$(NG_VENDOR_ARCH))
  NG_CFLAGS += -fnested-functions \
        -gstabs+ \
        -isysroot $(MACOSX_SDK) \
        -D__MACOSX__ \
        -D__APPLE__

  NG_LDFLAGS += -headerpad_max_install_names -isysroot $(MACOSX_SDK) \
  -Wl,-syslibroot,$(MACOSX_SDK)

  # We need these for all builds on OSX, since the system doesn't provide them
  NG_VENDOR_TARGET_DEP_MODULES += glib gettext
endif

ifeq (Linux,$(NG_VENDOR_ARCH))
  ifneq (1,$(NG_VENDOR_CROSS_COMP))
    # We need this on linux, as the system may provide a too-old version
    NG_VENDOR_TARGET_DEP_MODULES += glib
  else
    NG_VENDOR_TARGET_DEP_MODULES += iconv glib gettext
  endif
endif


###########

# Default to release mode...
ifeq (debug,$(MAKECMDGOALS))
  NG_BUILD_TYPE := debug
else
  NG_BUILD_TYPE := release
endif

# Set up the target configuration options.
ifneq (,$(CONFIGURE_TARGET))
  NG_CONFIGURE_OPTS += --target=$(CONFIGURE_TARGET)
  NG_CONFIGURE_OPTS += --build=$(CONFIGURE_TARGET)
endif

# ifeq (1,$(NG_VENDOR_CROSS_COMP))
#   NG_CONFIGURE_OPTS += --host=$(NG_VENDOR_HOST_ARCH)
#   NG_CONFIGURE_OPTS += --build=$(NG_VENDOR_BUILD_ARCH)
# endif

ifneq (,$(filter linux-i686 macosx-i686,$(NG_TARGET_ARCH)))
  NG_CFLAGS += -g -gstabs+
  NG_CXXFLAGS += -g -gstabs+
endif

# ifeq (i586-mingw32msvc, $(NG_VENDOR_HOST_ARCH))
#   NG_CFLAGS += -g -gstabs+
#   NG_CXXFLAGS += -g -gstabs+
# endif

ifeq (debug,$(NG_BUILD_TYPE))
  NG_CONFIGURE_OPTS += --enable-debug
  NG_BUILD_TYPE_DETECTED = 1
endif
ifeq (release,$(NG_BUILD_TYPE))
  NG_CONFIGURE_OPTS += --disable-debug
  NG_BUILD_TYPE_DETECTED = 1
endif
ifndef NG_BUILD_TYPE_DETECTED
  $(error Unknown NG_BUILD_TYPE: $(NG_BUILD_TYPE))
endif


###########

NG_VENDOR_MAKEFILE := $(firstword $(MAKEFILE_LIST))

ifeq (,$(NG_VENDOR_BUILD_ROOT))
  $(error Must define NG_VENDOR_BUILD_ROOT)
endif


NG_VENDOR_BINARIES_CO_ROOT ?= $(NG_VENDOR_BUILD_ROOT)/checkout
NG_VENDOR_CHECKOUT ?= $(realpath $(CURDIR)/..)

ifeq (,$(wildcard $(NG_VENDOR_BUILD_ROOT)))
   $(error NG_VENDOR_BUILD_ROOT ($(NG_VENDOR_BUILD_ROOT)) does not exist...)
endif

ifeq (,$(wildcard $(NG_VENDOR_BINARIES_CO_ROOT)))
   $(error NG_VENDOR_BINARIES_CO_ROOT $(NG_VENDOR_BINARIES_CO_ROOT) does not exist...)
endif

NG_VENDOR_DIR ?= $(realpath $(CURDIR)/..)
NG_TARGET_SRC_DIR := $(CURDIR)

# Where to put built stuff
NG_VENDOR_BINARIES_DIR := $(NG_VENDOR_BUILD_ROOT)/$(NG_TARGET_ARCH)

# Build location
NG_VENDOR_BUILD_DIR := $(NG_VENDOR_BUILD_ROOT)/build/$(NG_VENDOR_TARGET)/$(NG_BUILD_TYPE)

# Where we'll point configure to install it to
NG_CONFIGURE_PREFIX = $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET)/$(NG_BUILD_TYPE)


# Get path of built dep 
define find-dep-dir
$(NG_VENDOR_BINARIES_DIR)/$(strip $1)/$(NG_BUILD_TYPE)
endef

# XULRunner
NG_VENDOR_XR_TARGET = xulrunner-${XUL}
NG_VENDOR_MOZSDK_TARGET = $(subst xulrunner,mozilla,$(NG_VENDOR_XR_TARGET))

# Mozilla SDK
MOZSDK_DIR = $(call find-dep-dir, $(NG_VENDOR_MOZSDK_TARGET))
MOZSDK_BIN_DIR = $(MOZSDK_DIR)/bin
MOZSDK_SCRIPTS_DIR = $(MOZSDK_DIR)/scripts
MOZ_XR_DIR = $(call find-dep-dir, $(NG_VENDOR_XR_TARGET))

# Supporting SDK paths on Win32
ifeq (Msys,$(NG_VENDOR_ARCH))
  DIRECTX_SDK_ROOT ?= /d/ms-sdks/directx-aug08
  WINDOWS_SDK_ROOT ?= /d/ms-sdks/Windows/v6.0
  QUICKTIME_SDK_ROOT ?= /d/ms-sdks/QuickTimeSDK
endif

ifeq (Darwin,$(NG_VENDOR_ARCH))
  MACOSX_SDK ?= /Developer/SDKs/MacOSX10.4u.sdk
endif


###########

#
# Dependent library section; this is where we define and point the build system
# at our copies of various tools that are checked in.
#
define enable-ng-lib
  $(filter $1, $(filter-out $(NG_VENDOR_TARGET), $(NG_VENDOR_TARGET_DEP_MODULES)))
endef


###########

#
# GNU libtool
#
ifneq (,$(call enable-ng-lib, libtool))
  $(info Enabling Nightingale vendor lib: libtool)
  NG_LIBTOOL_DIR = $(call find-dep-dir, libtool)
  NG_PATH += $(NG_LIBTOOL_DIR)/bin
  ACLOCAL_FLAGS += -I $(NG_LIBTOOL_DIR)/share/aclocal
endif

#
# GNU Gettext 
#
ifneq (,$(call enable-ng-lib, gettext))
  $(info Enabling Nightingale vendor lib: gettext)
  NG_GETTEXT_DIR = $(call find-dep-dir, gettext)
  NG_LDFLAGS += -L$(NG_GETTEXT_DIR)/lib -lintl # COMMENT OUT UNTIL YOU BUILD LIBICONV
  NG_CFLAGS += -I$(NG_GETTEXT_DIR)/include
  NG_CPPFLAGS += -I$(NG_GETTEXT_DIR)/include
  NG_PATH += $(NG_GETTEXT_DIR)/bin

  ifeq (Darwin,$(NG_VENDOR_ARCH))
    NG_DYLD_LIBRARY_PATH += $(NG_GETTEXT_DIR)/lib
  endif
endif

#
# GNU iconv
#
ifneq (,$(call enable-ng-lib, iconv))
  $(info Enabling Nightingale vendor lib: iconv)
  NG_ICONV_DIR := $(call find-dep-dir, libiconv)
  NG_LDFLAGS += -L$(NG_ICONV_DIR)/lib -liconv
  NG_CFLAGS += -I$(NG_ICONV_DIR)/include
  NG_PATH += $(NG_ICONV_DIR)/bin

  ifeq (Darwin,$(NG_VENDOR_ARCH))
    LDFLAGS += -Wl,-dylib_file -Wl,libiconv.dylib:$(NG_ICONV_DIR)/lib/libiconv.dylib
  endif
endif

#
# Glib
# 
ifneq (,$(call enable-ng-lib, glib))
  $(info Enabling Nightingale vendor lib: glib)
  NG_GLIB_DIR := $(call find-dep-dir, glib)
  NG_PATH += $(NG_GLIB_DIR)/bin
  NG_PKG_CONFIG_PATH += $(NG_GLIB_DIR)/lib/pkgconfig

  GLIB_PARTS := glib gobject gmodule gthread

  ifeq (Darwin,$(NG_VENDOR_ARCH))
    LDFLAGS += $(foreach GLIB_PART, $(GLIB_PARTS), -Wl,-dylib_file -Wl,libgobject-2.0.dylib:$(NG_GLIB_DIR)/lib/lib$(GLIB_PART)-2.0.dylib)
    NG_DYLD_LIBRARY_PATH += $(NG_GLIB_DIR)/lib
  endif
  ifeq (1,$(NG_VENDOR_CROSS_COMP)))
    NG_LDFLAGS += -L$(NG_GLIB_DIR)/lib
    NG_CFLAGS += -I$(NG_GLIB_DIR)/include
    NG_CPPFLAGS += -I$(NG_GLIB_DIR)/include
  endif
endif

#
# libIDL
#
ifeq (Darwin,$(NG_VENDOR_ARCH))
   ifneq (,$(call enable-ng-lib, libIDL))
      $(info Enabling Nightingale vendor lib: libIDL)
      NG_LIBIDL_DIR := $(call find-dep-dir, libIDL)
      NG_PATH += $(NG_LIBIDL_DIR)/bin
      NG_PKG_CONFIG_PATH += $(NG_LIBIDL_DIR)/lib/pkgconfig
      NG_DYLD_LIBRARY_PATH += $(NG_LIBIDL_DIR)/lib
   endif
endif

#
# gstreamer
#
ifneq (,$(call enable-ng-lib, gstreamer))
   $(info Enabling Nightingale vendor lib: gstreamer)
   NG_GSTREAMER_DIR = $(call find-dep-dir, gstreamer)
   NG_PATH += $(NG_GSTREAMER_DIR)/bin
   NG_PKG_CONFIG_PATH += $(NG_GSTREAMER_DIR)/lib/pkgconfig
  
   # A list of basic dylibs on mac that need to be fixed up across all the
   # gstreamer modules; these are built by various parts of gstreamer and 
   # base
   GST_BASE_DYLIBS = audio cdda fft interfaces netbuffer pbutils riff \
    rtp rtsp sdp tag video
endif

#
# gstreamer-plugins-base
#
ifneq (,$(call enable-ng-lib, gst-plugins-base))
   $(info Enabling Nightingale vendor lib: gst-plugins-base)
   NG_GST_PLUGINS_BASE_DIR = $(call find-dep-dir, gst-plugins-base)
   NG_PATH += $(NG_GST_PLUGINS_BASE_DIR)/bin
   NG_PKG_CONFIG_PATH += $(NG_GST_PLUGINS_BASE_DIR)/lib/pkgconfig
endif

#
# libogg
#
ifneq (,$(call enable-ng-lib, ogg))
   $(info Enabling Nightingale vendor lib: ogg)
   NG_LIBOGG_DIR = $(call find-dep-dir, libogg)
   NG_OGG_LIBS = -L$(NG_LIBOGG_DIR)/lib -logg
   NG_OGG_CFLAGS := -I$(NG_LIBOGG_DIR)/include
   NG_PKG_CONFIG_PATH += $(NG_LIBOGG_DIR)/lib/pkgconfig

   ifeq (Msys, $(NG_VENDOR_ARCH))
      NG_PATH += $(NG_LIBOGG_DIR)/bin
      NG_CFLAGS += -wd9035
      ifeq (debug, $(NG_BUILD_TYPE))
         NG_LIBOGG_LIBS += -Wl,-Zi
      endif
   endif
endif

#
# libtheora
#
ifneq (,$(call enable-ng-lib, theora))
   $(info Enabling Nightingale vendor lib: theora)
   NG_LIBTHEORA_DIR = $(call find-dep-dir, libtheora)
   NG_THEORA_LIBS := -L$(NG_LIBTHEORA_DIR)/lib -ltheora
   NG_THEORA_LIBS += $(NG_OGG_LIBS)
   NG_THEORA_CFLAGS = -I$(NG_LIBTHEORA_DIR)/include
   NG_THEORA_CFLAGS += $(NG_OGG_CFLAGS)
   NG_PKG_CONFIG_PATH += $(NG_LIBTHEORA_DIR)/lib/pkgconfig

   ifeq (Msys,$(NG_VENDOR_ARCH))
      NG_PATH += $(NG_LIBTHEORA_DIR)/bin
      ifeq (debug,$(NG_BUILD_TYPE))
         NG_THEORA_LIBS += -Wl,-Zi
      endif
  endif
endif

#
# libvorbis
#
ifneq (,$(call enable-ng-lib, vorbis))
   $(info Enabling Nightingale vendor lib: vorbis)
   NG_LIBVORBIS_DIR = $(call find-dep-dir, libvorbis)
   NG_VORBIS_LIBS := -L$(NG_LIBVORBIS_DIR)/lib -lvorbis -lvorbisenc
   NG_VORBIS_LIBS += $(NG_OGG_LIBS)
   NG_VORBIS_CFLAGS = -I$(NG_LIBVORBIS_DIR)/include
   NG_VORBIS_CFLAGS += $(NG_OGG_CFLAGS)
   NG_PKG_CONFIG_PATH += $(NG_LIBVORBIS_DIR)/lib/pkgconfig

   ifeq (Msys, $(NG_VENDOR_ARCH))
      NG_PATH += $(NG_LIBVORBIS_DIR)/bin
      ifeq (debug, $(NG_BUILD_TYPE))
         NG_VORBIS_LIBS += -Wl,-Zi
      endif
   endif
endif

#
# libFLAC
#
ifneq (,$(call enable-ng-lib, flac))
   $(info Enabling Nightingale vendor lib: flac)
   NG_LIBFLAC_DIR = $(call find-dep-dir, flac)
   NG_LDFLAGS += -L$(NG_LIBFLAC_DIR)/lib
   ifeq (Msys,$(NG_VENDOR_ARCH))
      NG_FLAC_LIBS += -lFLAC-8
      NG_PATH += $(NG_LIBFLAC_DIR)/bin
      ifeq (debug,$(NG_BUILD_TYPE))
         NG_FLAC_LIBS += -Wl,-Zi
      endif
   endif
   NG_CPPFLAGS += -I$(NG_LIBFLAC_DIR)/include
   NG_PKG_CONFIG_PATH += $(NG_LIBFLAC_DIR)/lib/pkgconfig
endif

#
# libjpeg-turbo
#
ifneq (,$(call enable-ng-lib, jpeg))
   $(info Enabling Nightingale vendor lib: jpeg)
   NG_LIBJPEG_DIR = $(call find-dep-dir, libjpeg-turbo)
   NG_LDFLAGS += -L$(NG_LIBJPEG_DIR)/lib

   NG_CFLAGS = -I$(NG_LIBJPEG_DIR)/include

   ifeq (Msys,$(NG_VENDOR_ARCH))
      NG_JPEG_LIBS += "-ljpeg"
      NG_PATH += $(NG_LIBJPEG_DIR)/bin
      ifeq (debug,$(NG_BUILD_TYPE))
         NG_JPEG_LIBS += -Wl,-Zi
      endif
  endif
endif

