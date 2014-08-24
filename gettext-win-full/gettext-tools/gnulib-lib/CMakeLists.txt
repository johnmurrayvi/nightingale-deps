cmake_minimum_required(VERSION 2.6)
set(CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS ON)

project(gnulib-lib)

# set(HAVE_NEWLOCALE 0)
# set(HAVE_POSIX_PRINTF 0)
# set(HAVE_SNPRINTF 0)
# set(HAVE_ASPRINTF 0)
# set(HAVE_WPRINTF 0)

# configure_file(gettext-po.h.in gettext-po.h)
configure_file(alloca.in.h alloca.h)
configure_file(stdbool.in.h stdbool.h)

include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/../src
  ${CMAKE_CURRENT_SOURCE_DIR}/../libgettextpo
  ${CMAKE_CURRENT_SOURCE_DIR}/../../gettext-runtime/intl
)

set(gettextlib_SRCS
  set-mode-acl.c
  copy-acl.c
  file-has-acl.c
  areadlink.c
  gl_array_list.c
  backupfile.c
  addext.c
  basename.c
  c-ctype.c
  c-strcasecmp.c
  c-strncasecmp.c
  c-strcasestr.c
  c-strstr.c
  classpath.c
  clean-temp.c
  closeout.c
  concat-filename.c
  copy-file.c
  csharpcomp.c
  csharpexec.c
  error-progname.c
  execute.c
  exitfail.c
#  fatal-signal.c
  fd-ostream.c
  fd-safer-flag.c
#  dup-safer-flag.c
  file-ostream.c
  findprog.c
  fstrcmp.c
  full-write.c
  fwriteerror.c
  gcd.c
  hash.c
  html-ostream.c
  html-styled-ostream.c
  javacomp.c
  javaexec.c
#  javaversion.c
  gl_linkedhash_list.c
  gl_list.c
  localcharset.c
  localename.c
  glthread/lock.c
  malloca.c
  mbchar.c
  mbslen.c
  mbsstr.c
  mbswidth.c
  ostream.c
  pipe.c
  pipe-filter-ii.c
  pipe2.c
  pipe2-safer.c
  progname.c
  propername.c
  quote.c
  quotearg.c
  sh-quote.c
  striconv.c
  striconveh.c
  striconveha.c
  strnlen1.c
  styled-ostream.c
  term-ostream.c
  term-styled-ostream.c
  glthread/threadlib.c
  glthread/tls.c
  tmpdir.c
  trim.c
  uniconv/u8-conv-from-enc.c
  unilbrk/lbrktables.c
  unilbrk/u8-possible-linebreaks.c
  unilbrk/u8-width-linebreaks.c
  unilbrk/ulc-common.c
  unilbrk/ulc-width-linebreaks.c
  uniname/uniname.c
  unistr/u16-mbtouc.c
  unistr/u16-mbtouc-aux.c
  unistr/u8-check.c
  unistr/u8-mblen.c
  unistr/u8-mbtouc.c
  unistr/u8-mbtouc-aux.c
  unistr/u8-mbtouc-unsafe.c
  unistr/u8-mbtouc-unsafe-aux.c
  unistr/u8-mbtoucr.c
  unistr/u8-prev.c
  unistr/u8-uctomb.c
  unistr/u8-uctomb-aux.c
  uniwidth/width.c
  wait-process.c
  xmalloc.c
  xstrdup.c
  xconcat-filename.c
  xerror.c
  gl_xlist.c
  xmalloca.c
  xreadlink.c
  xsetenv.c
  xstriconv.c
  xstriconveh.c
  xvasprintf.c
  xasprintf.c
  ../woe32dll/c++html-styled-ostream.cc
  ../woe32dll/c++term-styled-ostream.cc
  ../woe32dll/gettextlib-exports.c
)


# add_definitions(-DLOCALE_ALIAS_PATH="")
# add_definitions(-DLOCALEDIR="")
# add_definitions(-DIN_LIBINTL)
# add_definitions(-DBUILDING_DLL)
# add_definitions(-DHAVE_VISIBILITY)

add_library(gettextlib ${LIBRARY_TYPE} ${gettextlib_SRCS})
target_link_libraries(gettextlib ${ICONV_LIBRARIES})
if(MSVC)
  set_target_properties(gettextlib PROPERTIES OUTPUT_NAME "gettextlib")
endif(MSVC)

install(TARGETS gettextlib RUNTIME DESTINATION bin
                          LIBRARY DESTINATION lib
                          ARCHIVE DESTINATION lib)

# install(FILES ${CMAKE_CURRENT_BINARY_DIR}/gettext-po.h DESTINATION include RENAME gettext-po.h)
# install(FILES ${CMAKE_CURRENT_BINARY_DIR}/gettextlib.exp DESTINATION lib RENAME gettextlib.exp)
