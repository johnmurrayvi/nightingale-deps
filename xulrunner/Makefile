################################################################################
################################################################################
#
# BEGIN SONGBIRD GPL
# 
# This file is part of the Songbird web player.
#
# Copyright(c) 2007 POTI, Inc.
# http://www.songbirdnest.com
# 
# This file may be licensed under the terms of of the
# GNU General Public License Version 2 (the "GPL").
# 
# Software distributed under the License is distributed 
# on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either 
# express or implied. See the GPL for the specific language 
# governing rights and limitations.
#
# You should have received a copy of the GPL along with this 
# program. If not, go to http://www.gnu.org/licenses/gpl.html
# or write to the Free Software Foundation, Inc., 
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
# 
# END SONGBIRD GPL
#
################################################################################
#
# Makefile for building Songbird vendor: xulrunner
#
################################################################################
################################################################################

##
## WARNING ##
##
## SB_VENDOR_XR_TARGET in songbird-vendor-defs.mk MUST MATCH the
## SB_VENDOR_TARGET below

SB_VENDOR_TARGET = xulrunner-${XUL}
SB_VENDOR_TARGET_VERSION = ${XUL}

# We set this up here, but it turns out that it's only for Win32 and Mac; Linux
# ignores is (see the block after the rules.mk include)
SB_VENDOR_TARGET_DEP_MODULES := glib \
                                libIDL \
                                $(NULL)

SB_BRANCH ?= trunk

include $(CURDIR)/../songbird-vendor-defs.mk

ifneq ($(SB_VENDOR_XR_TARGET),$(SB_VENDOR_TARGET))
   $(error SB_VENDOR_XR_TARGET in songbird-vendor-defs.mk and SB_VENDOR_TARGET in Makefile.songbird need to match for Xulrunner. Bailing)
endif

SB_XR_PLATFORM := $(shell echo $(SB_TARGET_ARCH) | $(CUT) -d- -f 1)
SB_XR_ARCH := $(shell echo $(SB_TARGET_ARCH) | $(CUT) -d- -f 2-)

MOZCONFIG = xulrunner.$(SB_XR_PLATFORM).$*.$(SB_XR_ARCH).mozconfig

XR_STRIP_SYMBOLS = $(CURDIR)/xr_strip_symbols.sh
XR_PACKAGE_DEPS = $(CURDIR)/xr_pack_deps.sh
XR_CLENAUP = $(CURDIR)/xr_cleanup.sh

# These are named weird because the targets construct these variable names
HAVE_XR_release_BUILD = test -d $(CURDIR)/mozilla/compiled/xulrunner-release
HAVE_XR_debug_BUILD = test -d $(CURDIR)/mozilla/compiled/xulrunner-debug

xr-all: xr-clean xr-build-debug xr-build-release xr-symbols xr-packaging
ifdef SB_VENDOR_AUTOCLEAN_OBJDIRS
	$(RM) -rf $(CURDIR)/mozilla/compiled
else
	@echo "Define SB_VENDOR_AUTOCLEAN_OBJDIRS to remove the (relatively large) xulrunner object directories (assuming if you don't need them and want to recover some space.)" 1>&2
endif

xr-symbols:
ifndef XR_DISABLE_SYMBOLS
	@if ! $(HAVE_XR_release_BUILD); then \
      echo xr-symbols cannot be built before a xulrunner release-build exists.; \
      echo Build the xr-release target first. Bailing.; \
      exit -1; \
    fi
	# Only build symbols for release builds 
	$(MAKE) -C $(CURDIR)/mozilla/compiled/xulrunner-release buildsymbols
   ifneq (,$(filter-out linux-%,$(SB_TARGET_ARCH)))
	   $(MV) $(CURDIR)/mozilla/compiled/xulrunner-release/dist/xulrunner-$(SB_VENDOR_TARGET_VERSION).*.crashreporter-symbols.zip $(SB_VENDOR_BUILD_DIR)
   endif
endif

xr-packaging: xr-packaging-debug xr-packaging-release
ifneq (,$(SB_VENDOR_BUILD_LOG))
	$(CP) $(CURDIR)/$(SB_VENDOR_BUILD_LOG) $(SB_VENDOR_BINARIES_DIR)/$(SB_VENDOR_TARGET)
endif

xr-clean: FORCE
	$(RM) -rf $(CURDIR)/songbird
	$(RM) -rf $(CURDIR)/mozilla/compiled

xr-packaging-%:
	@echo "Packaging up $*-mode $(SB_VENDOR_TARGET)..."
	@if test "release" = "$*"; then \
      if $(HAVE_XR_release_BUILD); then \
         cd $(CURDIR)/mozilla && $(XR_STRIP_SYMBOLS) $(SB_XR_PLATFORM); \
      else \
         echo "Could not find release build to strip symbols in. Skipping." 1>&2; \
      fi; \
    fi
	@if $(HAVE_XR_$*_BUILD); then \
      $(call sh_make,$(XR_PACKAGE_DEPS) $(SB_XR_PLATFORM)-$(SB_XR_ARCH) $(SB_BRANCH) $*); \
      $(call sh_make,$(RM) -r $(SB_VENDOR_BINARIES_DIR)/mozilla-${XUL}/$*); \
      $(call sh_make,$(MKDIR) -p $(SB_VENDOR_BINARIES_DIR)/mozilla-${XUL}); \
      $(call sh_make,$(MV) $(CURDIR)/songbird/$(SB_BRANCH)/dependencies/$(SB_XR_PLATFORM)-$(SB_XR_ARCH)/mozilla/$* $(SB_VENDOR_BINARIES_DIR)/mozilla-${XUL}/); \
      $(call sh_make,$(RM) -r $(SB_VENDOR_BINARIES_DIR)/xulrunner-${XUL}/$*); \
      $(call sh_make,$(MKDIR) -p $(SB_VENDOR_BINARIES_DIR)/xulrunner-${XUL}); \
      $(call sh_make,$(MV) $(CURDIR)/songbird/$(SB_BRANCH)/dependencies/$(SB_XR_PLATFORM)-$(SB_XR_ARCH)/xulrunner/$* $(SB_VENDOR_BINARIES_DIR)/xulrunner-${XUL}/); \
    fi

xr-build-%: setup_environment
	$(MKDIR) $(SB_VENDOR_BUILD_DIR)
ifeq (macosx-i686,$(SB_XR_PLATFORM)-$(SB_XR_ARCH))
	@echo Fixing up pkg-config .pc files in glib and libIDL...
	$(FIND) -L $(SB_VENDOR_BINARIES_DIR)/glib $(SB_VENDOR_BINARIES_DIR)/libIDL -type f -name '*.pc' -exec $(SB_VENDOR_CHECKOUT)/fix-pkg-config-paths.pl -p $(SB_XR_PLATFORM)-$(SB_XR_ARCH) {} \;
endif
	@echo Setting up xulrunner $*-mode build...
	$(CP) $(CURDIR)/mozconfigs/$(MOZCONFIG) $(CURDIR)/mozilla/.mozconfig
	$(RM) -r $(CURDIR)/mozilla/compiled/xulrunner-$*
	$(MKDIR) $(CURDIR)/mozilla/compiled/xulrunner-$*
	$(MAKE) -C $(CURDIR)/mozilla -f client.mk build

.PHONY: xr-% FORCE

include $(CURDIR)/../songbird-vendor-rules.mk

# Because we use different target names for XR, we don't trip the standard
# export of variables; but that's ok, because , we don't want to export
# everything (the CC variables, etc.) for XR builds, so we're very narrow
# in our exports here, and we do it all manually; we also do it only for
# Win32 and Mac, since the XR build will find the necessary dependent libs
# (glib and libIDL) by itself on the Linux machines.

ifneq (Linux,$(SB_VENDOR_ARCH))
   export PKG_CONFIG_PATH = $(SB_PKG_CONFIG_PATH)
   export PATH = $(SB_PATH)
   export DYLD_LIBRARY_PATH = $(SB_DYLD_LIBRARY_PATH)
endif
