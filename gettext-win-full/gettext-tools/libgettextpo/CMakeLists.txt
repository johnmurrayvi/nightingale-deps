cmake_minimum_required(VERSION 2.6)
set(CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS ON)

project(libgettextpo)

set(HAVE_NEWLOCALE 0)
set(HAVE_POSIX_PRINTF 0)
set(HAVE_SNPRINTF 0)
set(HAVE_ASPRINTF 0)
set(HAVE_WPRINTF 0)

configure_file(gettext-po.h.in gettext-po.h)


include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/../src
  ${CMAKE_CURRENT_SOURCE_DIR}/../../gettext-runtime/intl
)

set(gettextpo_SRCS
  gettext-po.c
  basename.c
  c-ctype.c
  c-strcasecmp.c
  c-strstr.c
  concat-filename.c
  error.c
  error-progname.c
  exitfail.c
  file-ostream.c
  fstrcmp.c
  fwriteerror.c
  gcd.c
  hash.c
  malloca.c
  mbswidth.c
  obstack.c
  ostream.c
  printf-args.c
  printf-parse.c
  progname.c
  stpcpy.c
  striconveh.c
  striconveha.c
  vasprintf.c
  vasnprintf.c
  wcwidth.c
  xasprintf.c
  xconcat-filename.c
  xerror.c
  xmalloc.c
  xmalloca.c
  xstrdup.c
  xvasprintf.c
  uniconv/u8-conv-from-enc.c
  unilbrk/lbrktables.c
  unilbrk/u8-possible-linebreaks.c
  unilbrk/u8-width-linebreaks.c
  unilbrk/ulc-common.c
  unilbrk/ulc-width-linebreaks.c
  unistr/u8-check.c
  unistr/u8-mblen.c
  unistr/u8-mbtouc.c
  unistr/u8-mbtouc-unsafe.c
  unistr/u8-uctomb.c
  unistr/u16-mbtouc.c
  uniwidth/width.c
  ../src/str-list.c
  ../src/dir-list.c
  ../src/message.c
  ../src/read-properties.c
  ../src/read-stringtable.c
  ../src/msgl-ascii.c
  ../src/po-error.c
  ../src/po-xerror.c
  ../src/write-catalog.c
  ../src/write-po.c
  ../src/open-catalog.c
  ../src/po-charset.c
  ../src/po-lex.c
  ../src/po-gram-gen.c
  ../src/read-po.c
  ../src/read-catalog-abstract.c
  ../src/read-catalog.c
  ../src/plural-table.c
  ../src/format-c.c
  ../src/format-sh.c
  ../src/format-python.c
  ../src/format-lisp.c
  ../src/format-elisp.c
  ../src/format-librep.c
  ../src/format-scheme.c
  ../src/format-java.c
  ../src/format-csharp.c
  ../src/format-awk.c
  ../src/format-pascal.c
  ../src/format-ycp.c
  ../src/format-tcl.c
  ../src/format-perl.c
  ../src/format-perl-brace.c
  ../src/format-php.c
  ../src/format-gcc-internal.c
  ../src/format-gfc-internal.c
  ../src/format-qt.c
  ../src/format-qt-plural.c
  ../src/format-kde.c
  ../src/format-boost.c
  ../src/format.c
  ../src/plural-exp.c
  ../src/plural-eval.c
  ../src/msgl-check.c
  libgettextpo.rc
  ../woe32dll/gettextpo-exports.c
)


# add_definitions(-DLOCALE_ALIAS_PATH="")
# add_definitions(-DLOCALEDIR="")
# add_definitions(-DIN_LIBINTL)
# add_definitions(-DBUILDING_DLL)
# add_definitions(-DHAVE_VISIBILITY)

add_library(gettextpo ${LIBRARY_TYPE} ${gettextpo_SRCS})
target_link_libraries(gettextpo ${ICONV_LIBRARIES})
if(MSVC)
  set_target_properties(gettextpo PROPERTIES OUTPUT_NAME "gettextpo")
endif(MSVC)

install(TARGETS gettextpo RUNTIME DESTINATION bin
                          LIBRARY DESTINATION lib
                          ARCHIVE DESTINATION lib)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/gettext-po.h DESTINATION include RENAME gettext-po.h)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/gettextpo.exp DESTINATION lib RENAME gettextpo.exp)
