

#
# We export these to the environment down here because if we did so in -defs.mk,
# the package file wouldn't have a chance to munge these flags itself. (Part of
# me thinks this should be a target anyway...)
#

# Filter things out of paths; done in two phases; normalize spaces 
# then turn remaining spaces into path separators (colons).

NG_PKG_CONFIG_PATH := $(subst $(SPACE),:,$(strip $(NG_PKG_CONFIG_PATH)))
ifneq (,$(PKG_CONFIG_PATH))
  NG_PKG_CONFIG_PATH := $(NG_PKG_CONFIG_PATH):$(PKG_CONFIG_PATH)
endif

# This flag only means anything on Win32 right now, so assert that...
ifdef NG_USE_MOZCRT
  ifneq (1, $(NG_VENDOR_CROSS_COMP))
    ifneq (Msys,$(NG_VENDOR_ARCH))
      $(error NG_USE_MOZCRT is only meaningful on Win32.)
    endif
  endif

  # Add the mozsdk lib dir (containing mozcrt.lib & mozutils.dll) to the runtime
  # path, so that the configure tests that create executables are
  # actually runnable; we do this up here because SB_PATH's assignment-type
  # below.
  NG_PATH += $(MOZSDK_DIR)/lib
  NG_LIBS += -L$(MOZSDK_DIR)/lib -lmozutils -lmozcrt
endif


NG_PATH := $(subst $(SPACE),:,$(strip $(NG_PATH))):$(PATH)

NG_DYLD_LIBRARY_PATH := $(subst $(SPACE),:,$(strip $(NG_DYLD_LIBRARY_PATH)))
ifneq (,$(DYLD_LIBRARY_PATH))
  NG_DYLD_LIBRARY_PATH := $(NG_DYLD_LIBRARY_PATH):$(DYLD_LIBRARY_PATH)
endif

# Only export these if we're actually building a target
BUILD_TARGET_SET = $(if \
                      $(or $(filter debug, $(MAKECMDGOALS)), \
                           $(filter release, $(MAKECMDGOALS)), \
                           $(filter regen-makefiles, $(MAKECMDGOALS))),\
                       build_requested,)

NG_RUN_CONFIGURE ?= 1

ifeq (Msys,$(NG_VENDOR_ARCH))
  ifneq (,$(DISABLE_SDK_CHECKS))
    ifeq (,$(wildcard $(WINDOWS_SDK_ROOT)))
      $(error Could not find Windows SDK: $(WINDOWS_SDK_ROOT)) 
    endif

    ifeq (,$(wildcard $(DIRECTX_SDK_ROOT)))
      $(error Could not find DirectX SDK: $(DIRECTX_SDK_ROOT)) 
    endif

    ifeq (,$(wildcard $(QUICKTIME_SDK_ROOT)))
      $(error Could not find QuickTime SDK: $(QUICKTIME_SDK_ROOT)) 
    endif
  endif

  # from mozilla/config/rules.mk (the Java rules section)
  # note that an extra slash was added between root-path and non-root-path to
  # account for non-standard mount points in msys
  # (C:/ vs C:/foo with missing trailing slash)
  # Cygwin and MSYS have their own special path form, but /LIBPATH: expects
  # them to be in the DOS form (i.e. e:/builds/...).  This function
  # does the appropriate conversion on Windows, but is a noop on other systems.
  # We use 'pwd -W' to get DOS form of the path.  However, since the given path
  # could be a file or a non-existent path, we cannot call 'pwd -W' directly
  # on the path.  Instead, we extract the root path (i.e. "c:/"), call 'pwd -W'
  # on it, then merge with the rest of the path.
  root-path = $(shell echo $(1) | sed -e "s|\(/[^/]*\)/\?\(.*\)|\1|")
  non-root-path = $(shell echo $(1) | sed -e "s|\(/[^/]*\)/\?\(.*\)|\2|")
  normalizepath = $(if $(filter /%,$(1)),$(shell cd $(call root-path,$(1)) && pwd -W)/$(call non-root-path,$(1)),$(1))

  ifeq (debug,$(NG_BUILD_TYPE))
    NG_CFLAGS += -MTd -DDEBUG -UNDEBUG
  endif
  ifeq (release,$(NG_BUILD_TYPE))
    NG_CFLAGS += -MT -UDEBUG -DNDEBUG
  endif
endif

ifeq (1, $(NG_VENDOR_CROSS_COMP))
  ifneq (, $(CROSS))
    ifneq (, $(CROSS_LIBTYPE))
        # MXE
        CROSS_TRIPLET := $(CROSS).$(CROSS_LIBTYPE)-
        CROSS_CMAKE_TC_FILE := $(CROSS_CMAKE_TC_PATH)/$(CROSS).$(CROSS_LIBTYPE)/share/cmake/mxe-conf.cmake
    else
        # MINGW-W64
        CROSS_TRIPLET := $(CROSS)-
    endif
  endif
endif

# TODO: define these as a list of exportable targets and expand that, so
# we can match the printouts in -rules.mk
ifneq (,$(BUILD_TARGET_SET))
  ifneq (1, $(NG_VENDOR_CROSS_COMP))
    export CC = $(NG_CC)
    export CXX = $(NG_CXX)
    export LD = $(NG_LD)
    export AR = $(NG_AR)
    export OBJDUMP = $(NG_OBJDUMP)
  else
    export CC = $(CROSS_TRIPLET)gcc
    export CXX = $(CROSS_TRIPLET)g++
    export LD = $(CROSS_TRIPLET)ld
    export AR = $(CROSS_TRIPLET)ar
    export AS = $(CROSS_TRIPLET)as
    export NM = $(CROSS_TRIPLET)nm
    export OBJDUMP = $(CROSS_TRIPLET)objdump
    export RANLIB = $(CROSS_TRIPLET)ranlib
    export STRIP = $(CROSS_TRIPLET)strip
    export PKG_CONFIG = $(CROSS_TRIPLET)pkg-config
    export DLLTOOL = $(CROSS_TRIPLET)dlltool
    export RC = $(CROSS_TRIPLET)windres
    export WINDRES = $(CROSS_TRIPLET)windres
    ifneq (, $(CROSS_LIBTYPE))
      export CMAKE_TOOLCHAIN_FILE = $(CROSS_CMAKE_TC_FILE)
    endif
  endif

    export CPPFLAGS = $(NG_CPPFLAGS)
    export CFLAGS = $(NG_CFLAGS)
    export CXXFLAGS = $(NG_CXXFLAGS)
    export LDFLAGS = $(NG_LDFLAGS)
    export ACLOCAL_FLAGS = $(NG_ACLOCAL_FLAGS)
ifeq (1, $(NG_VENDOR_CROSS_COMP))
  ifeq (static, $(CROSS_LIBTYPE))
    export PKG_CONFIG_PATH_i686_pc_mingw32_static = $(NG_PKG_CONFIG_PATH)
  endif
  ifeq (shared, $(CROSS_LIBTYPE))
    export PKG_CONFIG_PATH_i686_pc_mingw32_shared = $(NG_PKG_CONFIG_PATH)
  endif
endif
    export PKG_CONFIG_PATH = $(NG_PKG_CONFIG_PATH)
    export PATH = $(NG_PATH)
ifeq (Msys,$(NG_VENDOR_ARCH))
  export LIBS = $(NG_LIBS)
endif

  export LIBOIL_CFLAGS = $(NG_LIBOIL_CFLAGS)
  export LIBOIL_LIBS = $(NG_LIBOIL_LIBS)
  export OGG_CFLAGS = $(NG_OGG_CFLAGS)
  export OGG_LIBS = $(NG_OGG_LIBS)
  export VORBIS_CFLAGS = $(NG_VORBIS_CFLAGS)
  export VORBIS_LIBS = $(NG_VORBIS_LIBS)
  export FLAC_CFLAGS = $(NG_FLAC_CFLAGS)
  export FLAC_LIBS = $(NG_FLAC_LIBS)
  export JPEG_CFLAGS = $(NG_JPEG_CFLAGS)
  export JPEG_LIBS = $(NG_JPEG_LIBS)

  ifeq (Darwin,$(NG_VENDOR_ARCH))
    export MACOSX_DEPLOYMENT_TARGET=10.4
    export DYLD_LIBRARY_PATH = $(NG_DYLD_LIBRARY_PATH)
  endif
endif

# This is for libtool and automake; we manage running configure outselves, so
# turn this off.
export NOCONFIGURE = 1

all:
ifneq (1,$(NG_VENDOR_SKIP_DEBUG_BUILD))
	$(MAKE) -f $(NG_VENDOR_MAKEFILE) debug
endif
ifneq (1,$(NG_VENDOR_SKIP_RELEASE_BUILD))
	$(MAKE) -f $(NG_VENDOR_MAKEFILE) release
endif

debug: build post_build copy_symbols
ifneq (,$(NG_VENDOR_BUILD_LOG))
	-$(CP) $(NG_VENDOR_BUILD_LOG) $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET)
endif

release: build post_build strip_build
ifneq (,$(NG_VENDOR_BUILD_LOG))
	-$(CP) $(NG_VENDOR_BUILD_LOG) $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET)
endif

regen-makefiles: setup_environment
ifeq (linux-i686,$(NG_TARGET_ARCH))
	@echo Fixing up libtoolize for use...
	$(NG_VENDOR_CHECKOUT)/fix-pkg-config-paths.pl -f -p $(NG_TARGET_ARCH) $(NG_VENDOR_BINARIES_DIR)/libtool/release/bin/libtoolize
	$(CHMOD) 0755 $(NG_VENDOR_BINARIES_DIR)/libtool/release/bin/libtoolize
  ifneq (,$(filter $(NG_REGEN_MAKEFILE_PKGS),$(NG_VENDOR_TARGET)))
    ifeq (,$(filter gst%,$(NG_VENDOR_TARGET)))
	    $(MKDIR) common/m4
    endif
	  $(CP) $(NG_VENDOR_BINARIES_DIR)/libtool/release/share/aclocal/* $(CURDIR)/common/m4
	  @echo This command may fail. This is apparently OK.
	  -./autogen.sh
	  @echo Attempting to fix up libtool symlinks...
	  @for l in $$($(FIND) $(CURDIR) -type l); do \
         f=$$(readlink $$l); \
         echo $(RM) $$l; \
         $(RM) $$l; \
         echo $(CP) $$f $(CURDIR)/$$(basename $$l); \
         $(CP) $$f $(CURDIR)/$$(basename $$l); \
      done
	  @echo Regenerated $(NG_VENDOR_TARGET) makefiles are ready to check in
	  @echo NOTICE: beware newly generated files which may have to be svn added:
	  @echo 
	  -@$(SVN) stat | $(GREP) ^? | $(AWK) '{print $$2}' | $(GREP) -v ^common | $(GREP) -v ^m4 | $(GREP) -v autom4te.cache | $(GREP) -v autoregen.sh | $(GREP) -v stamp-h.in
  else
	  @echo This package does not require makefiles to be regenerated. Doing nothing.
  endif
else
	@echo The regen-makefiles target can only be run on linux-i686.
endif

clean-regen-makefiles:
	@echo Removing autoconf generated files...
	$(RM) -r $(AUTOCONF_GENERATED_TRASH)
	@echo Removing build-log.txt...
	$(RM) build-log.txt

# We strip .so's on Linux *and* Mac because libtool gets confused and on the
# mac, generates some libraries with the .so extension.
strip_build:
ifdef NO_STRIP
	$(info Skipping strip_build step...)
else
  ifneq (Msys,$(NG_VENDOR_ARCH))
    ifeq (Darwin,$(NG_VENDOR_ARCH))
	    for d in $(NG_CONFIGURE_PREFIX); do \
         $(FIND) $$d \
        -type f -name "*.dylib" \
        -exec $(STRIP) {} \; ; \
        done
    endif
	  for d in $(NG_CONFIGURE_PREFIX); do \
      $(FIND) $$d \
      -type f -name "*.so*" \
      -exec $(STRIP) {} \; ; \
      done
  endif
endif


# post_build's heroic (but byzantine) shell loop needs some explanation;
# the goal here is to run two command on .dylib's that get spit out of libtool's
# bowels on the mac:
#  1. install_name_tool -id, which seemingly gives libraries an internal name
#
#  2. install_name_tool -change, which allows you to rename references to other
#     .dylibs which contain hardcoded paths to .dylibs on a filesystem, which
#     are pretty much guaranteed to not exist on someone's machine.
#
# This shell loop uses find to find all the .dylibs in the final install
# directory after we've finished building; the first thing we do is give the
# library its name, which we obtain by basenaming it.
#
# Then, we run otool on each library to give us a list of .dylibs of *OURS*
# it depends on (that's what the grep is about); we run it through awk before
# we call basename because the output of otool includes a ":", because there's
# a string which indicates the version of the .dylib). Finally, we loop through
# these referenced libraries, and rename them within the library that we just
# ran -id on.
#
# Simple, no?
#

post_build: module_post_build
ifneq (,$(filter Darwin Linux, $(NG_VENDOR_ARCH)))
  ifneq (1, $(NG_VENDOR_CROSS_COMP))
	@echo Slaying libtool .la files on real platforms...
	$(FIND) $(NG_CONFIGURE_PREFIX) -type f -name '*.la' -exec $(RM) -fv {} \;
  endif
endif
ifeq (Darwin,$(NG_VENDOR_ARCH))
  ifneq (,$(NG_VENDOR_TARGET_DYLIB_FIXUPS))
	  @echo On the prowl for the following .dylib and .so external references:
	  @echo    $(NG_VENDOR_TARGET_DYLIB_FIXUPS)
	  @echo
	  @echo Fixing up .dylib -ids
	  @for l in `$(FIND) $(NG_CONFIGURE_PREFIX) -type f -name "*.dylib" \
          -o -name "*.so"`; do \
          for fix in $(NG_VENDOR_TARGET_DYLIB_FIXUPS); do \
            if ! test -z `echo $$l | grep $$fix`; then \
              echo --\> $(INSTALL_NAME_TOOL) -id $${fix}.dylib $$l; \
              $(INSTALL_NAME_TOOL) -id $${fix}.dylib $$l; \
              break; \
            fi; \
          done; \
        done

	  @echo Fixing up .dylib reference paths
	  @for l in `$(FIND) $(NG_CONFIGURE_PREFIX) -type f -name "*.dylib" \
          -o -name "*.so"`; do \
          echo Checking $$l...; \
          for path in `$(OTOOL) -L $$l | perl -nle 'print $1 if (m#\s+($(NG_CONFIGURE_PREFIX)\S+)\s+#);'`; do \
            for fix in $(NG_VENDOR_TARGET_DYLIB_FIXUPS); do \
              if ! test -z `echo $$path | grep $$fix`; then \
                echo --\> $(INSTALL_NAME_TOOL) -change $$path $${fix}.dylib $$l; \
                $(INSTALL_NAME_TOOL) -change $$path $${fix}.dylib $$l; \
                break; \
              fi; \
            done; \
          done; \
        done
  endif
endif


#
# This heroic (but byzantine) shell loop handles copying the .pdb files, 
# so it's obviously windows only.
# 
# It does this by finding all .pdb files in the breakpad directory, strips
# off the directory name and the .pdb extension, and then looks at where
# we installed the package for, in order, a file with .exe, .dll, or .lib
# with the same name. If we find one, we copy the .pdb into that direcotry.
# The ORDERING OF THE EXTENSIONS MATTERS (and was chosen purposefully); this
# is because we only copy the .pdb ONCE, so if we find a .pdb with the same
# name, we'll copy it into the directory with the .exe first.
#

copy_symbols:
ifeq (Msys,$(NG_VENDOR_ARCH))
	@echo Gathering PDBs to add to vendor-binary tree...
	for dbug in $$($(FIND) $(NG_VENDOR_BUILD_DIR) -type f \
         -iname '*.pdb' \
         -not -iregex 'vc.*.pdb'); do \
           a=$$(basename $$dbug); \
	   b=$${a/%.???/}; \
           copied=0; \
           for ext in exe dll lib; do \
              for f in $$($(FIND) $(NG_CONFIGURE_PREFIX) -type f \
               -name $$b.$$ext); do \
                    $(CP) $$dbug $$(dirname $$f); \
                    copied=1; \
                    break; \
              done; \
              if test "$$copied" = "1"; then \
                 break; \
              fi; \
           done; \
        done
endif

##########
##########
##########


$(NG_VENDOR_BINARIES_DIR):
	$(MKDIR) $(NG_VENDOR_BINARIES_DIR)

setup_environment: $(NG_VENDOR_BINARIES_DIR)
	$(MKDIR) $(NG_VENDOR_BUILD_ROOT)/build
ifeq (Msys,$(NG_VENDOR_ARCH))
	$(foreach tgt, \
	  $(NG_VENDOR_BINARIES_TARGETS), \
	  $(if $(wildcard $(NG_VENDOR_BINARIES_DIR)/$(tgt)),, \
	       $(MSYS_CP) $(NG_VENDOR_BINARIES_CHECKOUT)/$(tgt) \
	             $(NG_VENDOR_BINARIES_DIR)/$(tgt) --exclude=.svn && \
	             $(MKDIR) $(NG_VENDOR_BINARIES_DIR)/$(tgt)/.msyscp ; ))
	@echo Fixing up libtools .la files for first-time use...
	$(FIND) $(NG_VENDOR_BINARIES_DIR)/ -type f -name '*.la' -exec $(NG_VENDOR_CHECKOUT)/fix-win32-libtool-la-paths.pl -f {} \;
else
	$(foreach tgt, \
	  $(NG_VENDOR_BINARIES_TARGETS), \
	  $(if $(wildcard $(NG_VENDOR_BINARIES_DIR)/$(tgt)),, \
	       $(LN) -sv $(NG_VENDOR_BINARIES_CHECKOUT)/$(tgt) \
	            $(NG_VENDOR_BINARIES_DIR); ))
endif
	@echo Fixing up pkg-config .pc files for first time use...
ifeq (Msys,$(NG_VENDOR_ARCH))
	$(FIND) $(NG_VENDOR_BINARIES_DIR) -type f -name '*.pc' -exec $(NG_VENDOR_CHECKOUT)/fix-pkg-config-paths.pl -p $(NG_TARGET_ARCH) {} \;
else
	$(FIND) -L $(NG_VENDOR_BINARIES_CHECKOUT) -type f -name '*.pc' -exec $(NG_VENDOR_CHECKOUT)/fix-pkg-config-paths.pl -p $(NG_TARGET_ARCH) {} \;
endif
ifeq (Msys,$(NG_VENDOR_ARCH))
	(test -e $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET)/.msyscp && \
          $(RM) -rf $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET) && \
          $(MKDIR) $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET)) || true
else
	(test -h $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET) && \
          $(RM) -v $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET) && \
          $(MKDIR) $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_TARGET)) || true
endif
# If we're currently building xulrunner, also clean up the Moz SDK dir...
ifeq ($(NG_VENDOR_XR_TARGET),$(NG_VENDOR_TARGET))
   ifeq (Msys,$(NG_VENDOR_ARCH))
	   (test -e $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_MOZSDK_TARGET)/.msyscp && \
          $(RM) -rf $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_MOZSDK_TARGET) && \
          $(MKDIR) $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_MOZSDK_TARGET)) || true
   else
	   (test -h $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_MOZSDK_TARGET) && \
          $(RM) -v $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_MOZSDK_TARGET) && \
          $(MKDIR) $(NG_VENDOR_BINARIES_DIR)/$(NG_VENDOR_MOZSDK_TARGET)) || true
   endif
endif

ifdef NG_VENDOR_AUTOCLEAN_OBJDIRS
   CLEAN_BUILD_DIR_TGT = clean_build_dir
else
   CLEAN_BUILD_DIR_TGT =
endif

build: setup_environment $(CLEAN_BUILD_DIR_TGT) setup_build module_setup_build
ifeq (1,$(NG_RUN_CONFIGURE)) # We do this RUN_CONFIGURE insanity to support cmake
  ifneq (1,$(NG_VENDOR_CROSS_COMP))
	  cd $(NG_VENDOR_BUILD_DIR) && \
	          $(CONFIGURE) --prefix=$(NG_CONFIGURE_PREFIX) \
	          $(NG_VENDOR_TARGET_CONFIGURE_OPTS) \
	          $(NG_CONFIGURE_OPTS) \
	          -C
  else
	  cd $(NG_VENDOR_BUILD_DIR) && \
	          $(CONFIGURE) --build=$(NG_VENDOR_BUILD_ARCH) \
	          --host=$(NG_VENDOR_HOST_ARCH) \
	          --prefix=$(NG_CONFIGURE_PREFIX) \
	          $(NG_VENDOR_TARGET_CONFIGURE_OPTS) \
	          $(NG_CONFIGURE_OPTS) \
	          -C
  endif
endif
	$(SUBMAKE_CMD) -C $(NG_VENDOR_BUILD_DIR) # We do this submake-cmd insanity to support cmake
	$(SUBMAKE_CMD) -C $(NG_VENDOR_BUILD_DIR) install

$(NG_VENDOR_TARGET_BINARY_DEPS_DIR): $(NG_VENDOR_TARGET_DEPENDENT_DEBS)
	$(MKDIR) $(NG_VENDOR_TARGET_BINARY_DEPS_DIR)
	$(foreach deb, \
          $(NG_VENDOR_TARGET_DEPENDENT_DEBS), \
          cd $(NG_VENDOR_TARGET_BINARY_DEPS_DIR) && \
          $(AR) -x $(deb) && \
          $(TAR) xfvz data.tar.gz ;)


setup_build: \
 $(if $(NG_VENDOR_TARGET_DEPENDENT_DEBS), $(NG_VENDOR_TARGET_BINARY_DEPS_DIR),)
	@echo 
	@echo 
	@echo =======================================
	@echo Nightingale Vendor Environment Settings
	@echo =======================================
	@echo Tools
	@echo -----
	@echo CC = "$(CC)"
	@echo CXX = "$(CXX)"
	@echo LD = "$(LD)"
	@echo OBJDUMP = "$(OBJDUMP)"
	@echo STRIP = "$(STRIP)"
	@echo
	@echo Flags
	@echo -----
	@echo CPPFLAGS = $(CPPFLAGS)
	@echo CFLAGS = $(CFLAGS)
	@echo CXXFLAGS = $(CXXFLAGS)
	@echo LDFLAGS = $(LDFLAGS)
	@echo ACLOCAL_FLAGS = $(ACLOCAL_FLAGS)
	@echo
	@echo Paths
	@echo -----
ifeq (1, $(NG_VENDOR_CROSS_COMP))
  ifeq (static, $(CROSS_LIBTYPE))
	@echo PKG_CONFIG_PATH_i686_pc_mingw32_static = $(PKG_CONFIG_PATH_i686_pc_mingw32_static)
  endif
  ifeq (shared, $(CROSS_LIBTYPE))
	@echo PKG_CONFIG_PATH_i686_pc_mingw32_shared = $(PKG_CONFIG_PATH_i686_pc_mingw32_shared)
  endif
endif
	@echo PKG_CONFIG_PATH = $(PKG_CONFIG_PATH)
	@echo PATH = "$(PATH)"
ifeq (Msys,$(NG_VENDOR_ARCH))
	@echo LIBS = $(LIBS)
endif
	@echo
	@echo Dependent library settings
	@echo --------------------------
	@echo LIBOIL_CFLAGS = $(LIBOIL_CFLAGS)
	@echo LIBOIL_LIBS = $(LIBOIL_LIBS)
	@echo OGG_CFLAGS = $(OGG_CFLAGS)
	@echo OGG_LIBS = $(OGG_LIBS)
	@echo FLAC_CFLAGS = $(FLAC_CFLAGS)
	@echo FLAC_LIBS = $(FLAC_LIBS)
	@echo JPEG_CFLAGS = $(JPEG_CFLAGS)
	@echo JPEG_LIBS = $(JPEG_LIBS)
	@echo
	@echo Platform- and Module- specific settings
	@echo ---------------------------------------
ifeq (Darwin,$(NG_VENDOR_ARCH))
	@echo MACOSX_DEPLOYMENT_TARGET = $(MACOSX_DEPLOYMENT_TARGET)
	@echo DYLD_LIBRARY_PATH = $(DYLD_LIBRARY_PATH)
endif
ifneq (,$(NG_MODULE_EXPORTS))
	@$(foreach mod_exp, \
          $(strip $(NG_MODULE_EXPORTS)), \
          echo $(mod_exp) = $$$(mod_exp) ;)
endif
	@echo
	@echo =============================
	@echo END Environment Settings DUMP
	@echo =============================
	@echo 
	@echo 
	$(MKDIR) $(NG_VENDOR_BUILD_DIR)
	$(MSYS_CP) $(NG_TARGET_SRC_DIR) $(NG_VENDOR_BUILD_DIR) --exclude=.svn

clean_build_dir:
	$(RM) -rf $(NG_VENDOR_BUILD_DIR)
	$(RM) -rf $(NG_VENDOR_TARGET_BINARY_DEPS_DIR)
	$(RM) -rf $(NG_CONFIGURE_PREFIX)

.PHONY: FORCE all release debug build setup_build setup_environment clean_build_dir post_build strip_build module_setup_build module_post_build copy_symbols upload_symbols regen-makefiles
