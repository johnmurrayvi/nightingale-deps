################################################################################
################################################################################
#
# BEGIN NIGHTINGALE GPL
# 
# This file is part of the Nightingale Media Player.
#
# Copyright(c) 2014
# http://www.getnightingale.com
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
# END NIGHTINGALE GPL
#
################################################################################
#
# Makefile for building Nightingale vendor: xulrunner
#
################################################################################
################################################################################

##
## WARNING ##
##
## NG_VENDOR_XR_TARGET in vendor-defs.mk MUST MATCH the
## NG_VENDOR_TARGET below

NG_VENDOR_TARGET = xulrunner-${XUL}
NG_VENDOR_TARGET_VERSION = ${XUL}

# We set this up here, but it turns out that it's only for Win32 and Mac; Linux
# ignores is (see the block after the rules.mk include)
NG_VENDOR_TARGET_DEP_MODULES := glib \
                                libIDL \
                                $(NULL)

NG_BRANCH ?= trunk

include $(CURDIR)/../vendor-defs.mk

ifneq ($(NG_VENDOR_XR_TARGET),$(NG_VENDOR_TARGET))
   $(error NG_VENDOR_XR_TARGET in vendor-defs.mk and NG_VENDOR_TARGET in Makefile.nightingale need to match for Xulrunner. Bailing)
endif

NG_XR_PLATFORM := $(shell echo $(NG_TARGET_ARCH) | $(CUT) -d- -f 1)
NG_XR_ARCH := $(shell echo $(NG_TARGET_ARCH) | $(CUT) -d- -f 2-)

MOZCONFIG = xulrunner.$(NG_XR_PLATFORM).$*.$(NG_XR_ARCH).mozconfig

XR_STRIP_SYMBOLS = $(CURDIR)/xr_strip_symbols.sh
XR_PACKAGE_DEPS = $(CURDIR)/xr_pack_deps.sh
XR_CLENAUP = $(CURDIR)/xr_cleanup.sh

# These are named weird because the targets construct these variable names
HAVE_XR_release_BUILD = test -d $(CURDIR)/mozilla/compiled/xulrunner-release
HAVE_XR_debug_BUILD = test -d $(CURDIR)/mozilla/compiled/xulrunner-debug

xr-all: xr-clean xr-build-debug xr-build-release xr-symbols xr-packaging
ifdef NG_VENDOR_AUTOCLEAN_OBJDIRS
	$(RM) -rf $(CURDIR)/mozilla/compiled
else
	@echo "Define NG_VENDOR_AUTOCLEAN_OBJDIRS to remove the (relatively large) xulrunner object directories (assuming if you don't need them and want to recover some space.)" 1>&2
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
   ifneq (,$(filter-out linux-%,$(NG_TARGET_ARCH)))
	   $(MV) $(CURDIR)/mozilla/compiled/xulrunner-release/dist/xulrunner-$(NG_VENDOR_TARGET_VERSION).*.crashreporter-symbols.zip $(NG_VENDOR_BUILD_DIR)
   endif
endif

xr-packaging: xr-packaging-debug xr-packaging-release
ifneq (,$(NG_VENDOR_BUILD_LOG))
	$(CP) $(CURDIR)/$(NG_VENDOR_BUILD_LOG) $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET)
endif

xr-clean: FORCE
	$(RM) -rf $(CURDIR)/nightingale
	$(RM) -rf $(CURDIR)/mozilla/compiled

xr-packaging-%:
	@echo "Packaging up $*-mode $(NG_VENDOR_TARGET)..."
	@if test "release" = "$*"; then \
      if $(HAVE_XR_release_BUILD); then \
         cd $(CURDIR)/mozilla && $(XR_STRIP_SYMBOLS) $(NG_XR_PLATFORM); \
      else \
         echo "Could not find release build to strip symbols in. Skipping." 1>&2; \
      fi; \
    fi
	@if $(HAVE_XR_$*_BUILD); then \
      $(call sh_make,$(XR_PACKAGE_DEPS) $(NG_XR_PLATFORM)-$(NG_XR_ARCH) $(NG_BRANCH) $*); \
      $(call sh_make,$(RM) -r $(NG_VENDOR_BINARIES_DIR)/mozilla-${XUL}/$*); \
      $(call sh_make,$(MKDIR) -p $(NG_VENDOR_BINARIES_DIR)/mozilla-${XUL}); \
      $(call sh_make,$(MV) $(CURDIR)/nightingale/$(NG_BRANCH)/dependencies/$(NG_XR_PLATFORM)-$(NG_XR_ARCH)/mozilla/$* $(NG_VENDOR_BINARIES_DIR)/mozilla-${XUL}/); \
      $(call sh_make,$(RM) -r $(NG_VENDOR_BINARIES_DIR)/xulrunner-${XUL}/$*); \
      $(call sh_make,$(MKDIR) -p $(NG_VENDOR_BINARIES_DIR)/xulrunner-${XUL}); \
      $(call sh_make,$(MV) $(CURDIR)/nightingale/$(NG_BRANCH)/dependencies/$(NG_XR_PLATFORM)-$(NG_XR_ARCH)/xulrunner/$* $(NG_VENDOR_BINARIES_DIR)/xulrunner-${XUL}/); \
    fi

xr-build-%: setup_environment
	$(MKDIR) $(NG_VENDOR_BUILD_DIR)
ifeq (macosx-i686,$(NG_XR_PLATFORM)-$(NG_XR_ARCH))
	@echo Fixing up pkg-config .pc files in glib and libIDL...
	$(FIND) -L $(NG_VENDOR_BINARIES_DIR)/glib $(NG_VENDOR_BINARIES_DIR)/libIDL -type f -name '*.pc' -exec $(NG_VENDOR_CHECKOUT)/fix-pkg-config-paths.pl -p $(NG_XR_PLATFORM)-$(NG_XR_ARCH) {} \;
endif
	@echo Setting up xulrunner $*-mode build...
	$(CP) $(CURDIR)/mozconfigs/$(MOZCONFIG) $(CURDIR)/mozilla/.mozconfig
	$(RM) -r $(CURDIR)/mozilla/compiled/xulrunner-$*
	$(MKDIR) $(CURDIR)/mozilla/compiled/xulrunner-$*
	$(MAKE) -C $(CURDIR)/mozilla -f client.mk build


.PHONY: xr-% FORCE

include $(CURDIR)/../vendor-rules.mk

# Because we use different target names for XR, we don't trip the standard
# export of variables; but that's ok, because , we don't want to export
# everything (the CC variables, etc.) for XR builds, so we're very narrow
# in our exports here, and we do it all manually; we also do it only for
# Win32 and Mac, since the XR build will find the necessary dependent libs
# (glib and libIDL) by itself on the Linux machines.

ifneq (Linux,$(NG_VENDOR_ARCH))
   export PKG_CONFIG_PATH = $(NG_PKG_CONFIG_PATH)
   export PATH = $(NG_PATH)
   export DYLD_LIBRARY_PATH = $(NG_DYLD_LIBRARY_PATH)
endif
