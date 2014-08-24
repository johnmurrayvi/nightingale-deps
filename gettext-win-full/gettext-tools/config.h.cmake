/* config.h.in.  Generated from configure.ac by autoheader.  */

/* Define if the compiler is building for multiple architectures of Apple
   platforms at once. */
#cmakedefine AA_APPLE_UNIVERSAL_BUILD

/* Define this to an absolute name of
   <libcroco-0.6/libcroco/libcroco-config.h>. */
#cmakedefine ABSOLUTE_LIBCROCO_0_6_LIBCROCO_LIBCROCO_CONFIG_H

/* Define this to an absolute name of <libxml2/libxml/xmlexports.h>. */
#cmakedefine ABSOLUTE_LIBXML2_LIBXML_XMLEXPORTS_H

/* Define this to an absolute name of <libxml2/libxml/xmlversion.h>. */
#cmakedefine ABSOLUTE_LIBXML2_LIBXML_XMLVERSION_H

/* Define to the number of bits in type 'ptrdiff_t'. */
#cmakedefine BITSIZEOF_PTRDIFF_T @BITSIZEOF_PTRDIFF_T@

/* Define to the number of bits in type 'sig_atomic_t'. */
#cmakedefine BITSIZEOF_SIG_ATOMIC_T @BITSIZEOF_SIG_ATOMIC_T@

/* Define to the number of bits in type 'size_t'. */
#cmakedefine BITSIZEOF_SIZE_T @BITSIZEOF_SIZE_T@

/* Define to the number of bits in type 'wchar_t'. */
#cmakedefine BITSIZEOF_WCHAR_T @BITSIZEOF_WCHAR_T@

/* Define to the number of bits in type 'wint_t'. */
#cmakedefine BITSIZEOF_WINT_T @BITSIZEOF_WINT_T@

/* Define to one of `_getb67', `GETB67', `getb67' for Cray-2 and Cray-YMP
   systems. This function is required for `alloca.c' support on those systems.
   */
#cmakedefine CRAY_STACKSEG_END

/* Define if mono is the preferred C# implementation. */
#cmakedefine CSHARP_CHOICE_MONO

/* Define if pnet is the preferred C# implementation. */
#cmakedefine CSHARP_CHOICE_PNET

/* Define to 1 if using `alloca.c'. */
#cmakedefine C_ALLOCA

/* Define to 1 if // is a file system root distinct from /. */
#cmakedefine DOUBLE_SLASH_IS_DISTINCT_ROOT

/* Define to 1 if libexpat shall be dynamically loaded via dlopen(). */
#cmakedefine DYNLOAD_LIBEXPAT

/* Define to 1 if translation of program messages to the user's native
   language is requested. */
#cmakedefine ENABLE_NLS

/* Define to 1 if the package shall run at any location in the file system. */
#cmakedefine ENABLE_RELOCATABLE

/* Define according to the byte order of the target machine: 1 for big endian,
   0 for little endian. */
#cmakedefine ENDIANNESS

/* Define this to 1 if F_DUPFD behavior does not match POSIX */
#cmakedefine FCNTL_DUPFD_BUGGY

/* Define on systems for which file names may have a so-called `drive letter'
   prefix, define this to compute the length of that prefix, including the
   colon. */
#cmakedefine FILE_SYSTEM_ACCEPTS_DRIVE_LETTER_PREFIX

/* Define if the backslash character may also serve as a file name component
   separator. */
#cmakedefine FILE_SYSTEM_BACKSLASH_IS_FILE_NAME_SEPARATOR @FILE_SYSTEM_BACKSLASH_IS_FILE_NAME_SEPARATOR@

/* Define if a drive letter prefix denotes a relative path if it is not
   followed by a file name component separator. */
#cmakedefine FILE_SYSTEM_DRIVE_PREFIX_CAN_BE_RELATIVE

/* Define to 1 if fopen() fails to recognize a trailing slash. */
#cmakedefine FOPEN_TRAILING_SLASH_BUG

/* Define to 1 if realpath() can malloc memory, always gives an absolute path,
   and handles trailing slash correctly. */
#cmakedefine FUNC_REALPATH_WORKS

/* Define if gettimeofday clobbers the localtime buffer. */
#cmakedefine GETTIMEOFDAY_CLOBBERS_LOCALTIME

/* Define this to 'void' or 'struct timezone' to match the system's
   declaration of the second argument to gettimeofday. */
#cmakedefine GETTIMEOFDAY_TIMEZONE

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module canonicalize-lgpl shall be considered present. */
#cmakedefine GNULIB_CANONICALIZE_LGPL

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module fd-safer-flag shall be considered present. */
#cmakedefine GNULIB_FD_SAFER_FLAG

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module fwriteerror shall be considered present. */
#cmakedefine GNULIB_FWRITEERROR

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module pipe2-safer shall be considered present. */
#cmakedefine GNULIB_PIPE2_SAFER

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module sigpipe shall be considered present. */
#cmakedefine GNULIB_SIGPIPE

/* Define to 1 when the gnulib module canonicalize_file_name should be tested.
   */
#cmakedefine GNULIB_TEST_CANONICALIZE_FILE_NAME

/* Define to 1 when the gnulib module cloexec should be tested. */
#cmakedefine GNULIB_TEST_CLOEXEC

/* Define to 1 when the gnulib module dup2 should be tested. */
#cmakedefine GNULIB_TEST_DUP2

/* Define to 1 when the gnulib module environ should be tested. */
#cmakedefine GNULIB_TEST_ENVIRON

/* Define to 1 when the gnulib module fcntl should be tested. */
#cmakedefine GNULIB_TEST_FCNTL

/* Define to 1 when the gnulib module fopen should be tested. */
#cmakedefine GNULIB_TEST_FOPEN

/* Define to 1 when the gnulib module getdelim should be tested. */
#cmakedefine GNULIB_TEST_GETDELIM

/* Define to 1 when the gnulib module getdtablesize should be tested. */
#cmakedefine GNULIB_TEST_GETDTABLESIZE

/* Define to 1 when the gnulib module getline should be tested. */
#cmakedefine GNULIB_TEST_GETLINE

/* Define to 1 when the gnulib module getopt-gnu should be tested. */
#cmakedefine GNULIB_TEST_GETOPT_GNU

/* Define to 1 when the gnulib module getpagesize should be tested. */
#cmakedefine GNULIB_TEST_GETPAGESIZE

/* Define to 1 when the gnulib module gettimeofday should be tested. */
#cmakedefine GNULIB_TEST_GETTIMEOFDAY

/* Define to 1 when the gnulib module lstat should be tested. */
#cmakedefine GNULIB_TEST_LSTAT

/* Define to 1 when the gnulib module malloc-posix should be tested. */
#cmakedefine GNULIB_TEST_MALLOC_POSIX

/* Define to 1 when the gnulib module mbrtowc should be tested. */
#cmakedefine GNULIB_TEST_MBRTOWC

/* Define to 1 when the gnulib module mbsinit should be tested. */
#cmakedefine GNULIB_TEST_MBSINIT

/* Define to 1 when the gnulib module mbslen should be tested. */
#cmakedefine GNULIB_TEST_MBSLEN

/* Define to 1 when the gnulib module mbsrtowcs should be tested. */
#cmakedefine GNULIB_TEST_MBSRTOWCS

/* Define to 1 when the gnulib module mbsstr should be tested. */
#cmakedefine GNULIB_TEST_MBSSTR

/* Define to 1 when the gnulib module memchr should be tested. */
#cmakedefine GNULIB_TEST_MEMCHR

/* Define to 1 when the gnulib module mkdtemp should be tested. */
#cmakedefine GNULIB_TEST_MKDTEMP

/* Define to 1 when the gnulib module open should be tested. */
#cmakedefine GNULIB_TEST_OPEN

/* Define to 1 when the gnulib module pipe2 should be tested. */
#cmakedefine GNULIB_TEST_PIPE2

/* Define to 1 when the gnulib module posix_spawnattr_destroy should be
   tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWNATTR_DESTROY

/* Define to 1 when the gnulib module posix_spawnattr_init should be tested.
   */
#cmakedefine GNULIB_TEST_POSIX_SPAWNATTR_INIT

/* Define to 1 when the gnulib module posix_spawnattr_setflags should be
   tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWNATTR_SETFLAGS

/* Define to 1 when the gnulib module posix_spawnattr_setsigmask should be
   tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWNATTR_SETSIGMASK

/* Define to 1 when the gnulib module posix_spawnp should be tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWNP

/* Define to 1 when the gnulib module posix_spawn_file_actions_addclose should
   be tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWN_FILE_ACTIONS_ADDCLOSE

/* Define to 1 when the gnulib module posix_spawn_file_actions_adddup2 should
   be tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWN_FILE_ACTIONS_ADDDUP2

/* Define to 1 when the gnulib module posix_spawn_file_actions_addopen should
   be tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWN_FILE_ACTIONS_ADDOPEN

/* Define to 1 when the gnulib module posix_spawn_file_actions_destroy should
   be tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWN_FILE_ACTIONS_DESTROY

/* Define to 1 when the gnulib module posix_spawn_file_actions_init should be
   tested. */
#cmakedefine GNULIB_TEST_POSIX_SPAWN_FILE_ACTIONS_INIT

/* Define to 1 when the gnulib module putenv should be tested. */
#cmakedefine GNULIB_TEST_PUTENV

/* Define to 1 when the gnulib module rawmemchr should be tested. */
#cmakedefine GNULIB_TEST_RAWMEMCHR

/* Define to 1 when the gnulib module readlink should be tested. */
#cmakedefine GNULIB_TEST_READLINK

/* Define to 1 when the gnulib module realloc-posix should be tested. */
#cmakedefine GNULIB_TEST_REALLOC_POSIX

/* Define to 1 when the gnulib module realpath should be tested. */
#cmakedefine GNULIB_TEST_REALPATH

/* Define to 1 when the gnulib module rmdir should be tested. */
#cmakedefine GNULIB_TEST_RMDIR

/* Define to 1 when the gnulib module setenv should be tested. */
#cmakedefine GNULIB_TEST_SETENV

/* Define to 1 when the gnulib module sigaction should be tested. */
#cmakedefine GNULIB_TEST_SIGACTION

/* Define to 1 when the gnulib module sigprocmask should be tested. */
#cmakedefine GNULIB_TEST_SIGPROCMASK

/* Define to 1 when the gnulib module snprintf should be tested. */
#cmakedefine GNULIB_TEST_SNPRINTF

/* Define to 1 when the gnulib module stat should be tested. */
#cmakedefine GNULIB_TEST_STAT

/* Define to 1 when the gnulib module stpcpy should be tested. */
#cmakedefine GNULIB_TEST_STPCPY

/* Define to 1 when the gnulib module stpncpy should be tested. */
#cmakedefine GNULIB_TEST_STPNCPY

/* Define to 1 when the gnulib module strchrnul should be tested. */
#cmakedefine GNULIB_TEST_STRCHRNUL

/* Define to 1 when the gnulib module strerror should be tested. */
#cmakedefine GNULIB_TEST_STRERROR

/* Define to 1 when the gnulib module strnlen should be tested. */
#cmakedefine GNULIB_TEST_STRNLEN

/* Define to 1 when the gnulib module strpbrk should be tested. */
#cmakedefine GNULIB_TEST_STRPBRK

/* Define to 1 when the gnulib module strstr should be tested. */
#cmakedefine GNULIB_TEST_STRSTR

/* Define to 1 when the gnulib module symlink should be tested. */
#cmakedefine GNULIB_TEST_SYMLINK

/* Define to 1 when the gnulib module unsetenv should be tested. */
#cmakedefine GNULIB_TEST_UNSETENV

/* Define to 1 when the gnulib module vasprintf should be tested. */
#cmakedefine GNULIB_TEST_VASPRINTF

/* Define to 1 when the gnulib module vsnprintf should be tested. */
#cmakedefine GNULIB_TEST_VSNPRINTF

/* Define to 1 when the gnulib module wctob should be tested. */
#cmakedefine GNULIB_TEST_WCTOB

/* Define to 1 when the gnulib module wcwidth should be tested. */
#cmakedefine GNULIB_TEST_WCWIDTH

/* Define to 1 when the gnulib module write should be tested. */
#cmakedefine GNULIB_TEST_WRITE

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module unistr/u16-mbtouc shall be considered present. */
#cmakedefine GNULIB_UNISTR_U16_MBTOUC

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module unistr/u8-mbtouc shall be considered present. */
#cmakedefine GNULIB_UNISTR_U8_MBTOUC

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module unistr/u8-mbtoucr shall be considered present. */
#cmakedefine GNULIB_UNISTR_U8_MBTOUCR

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module unistr/u8-mbtouc-unsafe shall be considered
   present. */
#cmakedefine GNULIB_UNISTR_U8_MBTOUC_UNSAFE

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module unistr/u8-uctomb shall be considered present. */
#cmakedefine GNULIB_UNISTR_U8_UCTOMB

/*************************************/
#cmakedefine GNULIB_ATOLL 0
#cmakedefine GNULIB_CALLOC_POSIX 0
#cmakedefine GNULIB_CANONICALIZE_FILE_NAME 1
#cmakedefine GNULIB_CHOWN 0
#cmakedefine GNULIB_CLOSE 0
#cmakedefine GNULIB_DPRINTF 0
#cmakedefine GNULIB_DUP2 0
#cmakedefine GNULIB_DUP3 0
#cmakedefine GNULIB_ENVIRON 1
#cmakedefine GNULIB_EUIDACCESS 0
#cmakedefine GNULIB_FACCESSAT 0
#cmakedefine GNULIB_FCHDIR 0
#cmakedefine GNULIB_FCHMODAT 0
#cmakedefine GNULIB_FCHOWNAT 0
#cmakedefine GNULIB_FCLOSE 0
#cmakedefine GNULIB_FCNTL 0
#cmakedefine GNULIB_FFLUSH 0
#cmakedefine GNULIB_FFSL 0
#cmakedefine GNULIB_FFSLL 0
#cmakedefine GNULIB_FGETC 1
#cmakedefine GNULIB_FGETS 1
#cmakedefine GNULIB_FOPEN 0
#cmakedefine GNULIB_FPRINTF 1
#cmakedefine GNULIB_FPRINTF_POSIX 0
#cmakedefine GNULIB_FPURGE 0
#cmakedefine GNULIB_FPUTC 1
#cmakedefine GNULIB_FPUTS 1
#cmakedefine GNULIB_FREAD 1
#cmakedefine GNULIB_FREOPEN 0
#cmakedefine GNULIB_FSCANF 1
#cmakedefine GNULIB_FSEEK 0
#cmakedefine GNULIB_FSEEKO 0
#cmakedefine GNULIB_FSTATAT 0
#cmakedefine GNULIB_FSYNC 0
#cmakedefine GNULIB_FTELL 0
#cmakedefine GNULIB_FTELLO 0
#cmakedefine GNULIB_FTRUNCATE 0
#cmakedefine GNULIB_FUTIMENS 0
#cmakedefine GNULIB_FWRITE 1
#cmakedefine GNULIB_GETC 1
#cmakedefine GNULIB_GETCHAR 1
#cmakedefine GNULIB_GETCWD 0
#cmakedefine GNULIB_GETDELIM 0
#cmakedefine GNULIB_GETDOMAINNAME 0
#cmakedefine GNULIB_GETDTABLESIZE 0
#cmakedefine GNULIB_GETGROUPS 0
#cmakedefine GNULIB_GETHOSTNAME 0
#cmakedefine GNULIB_GETLINE 0
#cmakedefine GNULIB_GETLOADAVG 0
#cmakedefine GNULIB_GETLOGIN 0
#cmakedefine GNULIB_GETLOGIN_R 0
#cmakedefine GNULIB_GETPAGESIZE 0
#cmakedefine GNULIB_GETS 1
#cmakedefine GNULIB_GETSUBOPT 0
#cmakedefine GNULIB_GETUSERSHELL 0
#cmakedefine GNULIB_GRANTPT 0
#cmakedefine GNULIB_GROUP_MEMBER 0
#cmakedefine GNULIB_LCHMOD 0
#cmakedefine GNULIB_LCHOWN 0
#cmakedefine GNULIB_LINK 0
#cmakedefine GNULIB_LINKAT 0
#cmakedefine GNULIB_LSEEK 0
#cmakedefine GNULIB_LSTAT 1
#cmakedefine GNULIB_MALLOC_POSIX 0
#cmakedefine GNULIB_MBSCASECMP 0
#cmakedefine GNULIB_MBSCASESTR 0
#cmakedefine GNULIB_MBSCHR 0
#cmakedefine GNULIB_MBSCSPN 0
#cmakedefine GNULIB_MBSLEN 0
#cmakedefine GNULIB_MBSNCASECMP 0
#cmakedefine GNULIB_MBSNLEN 0
#cmakedefine GNULIB_MBSPBRK 0
#cmakedefine GNULIB_MBSPCASECMP 0
#cmakedefine GNULIB_MBSRCHR 0
#cmakedefine GNULIB_MBSSEP 0
#cmakedefine GNULIB_MBSSPN 0
#cmakedefine GNULIB_MBSSTR 0
#cmakedefine GNULIB_MBSTOK_R 0
#cmakedefine GNULIB_MBTOWC 0
#cmakedefine GNULIB_MEMCHR 0
#cmakedefine GNULIB_MEMMEM 0
#cmakedefine GNULIB_MEMPCPY 0
#cmakedefine GNULIB_MEMRCHR 0
#cmakedefine GNULIB_MKDIRAT 0
#cmakedefine GNULIB_MKDTEMP 0
#cmakedefine GNULIB_MKFIFO 0
#cmakedefine GNULIB_MKFIFOAT 0
#cmakedefine GNULIB_MKNOD 0
#cmakedefine GNULIB_MKNODAT 0
#cmakedefine GNULIB_MKOSTEMP 0
#cmakedefine GNULIB_MKOSTEMPS 0
#cmakedefine GNULIB_MKSTEMP 0
#cmakedefine GNULIB_MKSTEMPS 0
#cmakedefine GNULIB_MKTIME 0
#cmakedefine GNULIB_NANOSLEEP 0
#cmakedefine GNULIB_NONBLOCKING 0
#cmakedefine GNULIB_OBSTACK_PRINTF 0
#cmakedefine GNULIB_OBSTACK_PRINTF_POSIX 0
#cmakedefine GNULIB_OPEN 0
#cmakedefine GNULIB_OPENAT 0
#cmakedefine GNULIB_PERROR 0
#cmakedefine GNULIB_PIPE 0
#cmakedefine GNULIB_PIPE2 0
#cmakedefine GNULIB_POPEN 0
#cmakedefine GNULIB_POSIXCHECK 0
#cmakedefine GNULIB_PREAD 0
#cmakedefine GNULIB_PRINTF 1
#cmakedefine GNULIB_PRINTF_POSIX 0
#cmakedefine GNULIB_PTHREAD_SIGMASK 0
#cmakedefine GNULIB_PTSNAME 0
#cmakedefine GNULIB_PUTC 1
#cmakedefine GNULIB_PUTCHAR 1
#cmakedefine GNULIB_PUTENV 0
#cmakedefine GNULIB_PUTS 1
#cmakedefine GNULIB_PWRITE 0
#cmakedefine GNULIB_RANDOM_R 0
#cmakedefine GNULIB_RAWMEMCHR 0
#cmakedefine GNULIB_READ 1
#cmakedefine GNULIB_READLINK 1
#cmakedefine GNULIB_READLINKAT 0
#cmakedefine GNULIB_REALLOC_POSIX 0
#cmakedefine GNULIB_REALPATH 1
#cmakedefine GNULIB_REMOVE 0
#cmakedefine GNULIB_RENAME 0
#cmakedefine GNULIB_RENAMEAT 0
#cmakedefine GNULIB_RMDIR 0
#cmakedefine GNULIB_RPMATCH 0
#cmakedefine GNULIB_SCANF 1
#cmakedefine GNULIB_SETENV 0
#cmakedefine GNULIB_SIGACTION 0
#cmakedefine GNULIB_SIGNAL_H_SIGPIPE 1
#cmakedefine GNULIB_SIGPROCMASK 1
#cmakedefine GNULIB_SLEEP 0
#cmakedefine GNULIB_SNPRINTF 0
#cmakedefine GNULIB_SPRINTF_POSIX 0
#cmakedefine GNULIB_STAT 1
#cmakedefine GNULIB_STDIO_H_NONBLOCKING 0
#cmakedefine GNULIB_STDIO_H_SIGPIPE 1
#cmakedefine GNULIB_STPCPY 0
#cmakedefine GNULIB_STPNCPY 0
#cmakedefine GNULIB_STRCASESTR 0
#cmakedefine GNULIB_STRCHRNUL 0
#cmakedefine GNULIB_STRDUP 0
#cmakedefine GNULIB_STRERROR 1
#cmakedefine GNULIB_STRERROR_R 0
#cmakedefine GNULIB_STRNCAT 0
#cmakedefine GNULIB_STRNDUP 0
#cmakedefine GNULIB_STRNLEN 0
#cmakedefine GNULIB_STRPBRK 0
#cmakedefine GNULIB_STRPTIME 0
#cmakedefine GNULIB_STRSEP 0
#cmakedefine GNULIB_STRSIGNAL 0
#cmakedefine GNULIB_STRSTR 0
#cmakedefine GNULIB_STRTOD 0
#cmakedefine GNULIB_STRTOK_R 0
#cmakedefine GNULIB_STRTOLL 0
#cmakedefine GNULIB_STRTOULL 0
#cmakedefine GNULIB_STRVERSCMP 0
#cmakedefine GNULIB_SYMLINK 0
#cmakedefine GNULIB_SYMLINKAT 0
#cmakedefine GNULIB_SYSTEM_POSIX 0
#cmakedefine GNULIB_TIMEGM 0
#cmakedefine GNULIB_TIME_R 0
#cmakedefine GNULIB_TMPFILE 0
#cmakedefine GNULIB_TTYNAME_R 0
#cmakedefine GNULIB_UNISTD_H_GETOPT 0
#cmakedefine GNULIB_UNISTD_H_NONBLOCKING 0
#cmakedefine GNULIB_UNISTD_H_SIGPIPE 1
#cmakedefine GNULIB_UNLINK 0
#cmakedefine GNULIB_UNLINKAT 0
#cmakedefine GNULIB_UNLOCKPT 0
#cmakedefine GNULIB_UNSETENV 0
#cmakedefine GNULIB_USLEEP 0
#cmakedefine GNULIB_UTIMENSAT 0
#cmakedefine GNULIB_VASPRINTF 0
#cmakedefine GNULIB_VDPRINTF 0
#cmakedefine GNULIB_VFPRINTF 1
#cmakedefine GNULIB_VFPRINTF_POSIX 0
#cmakedefine GNULIB_VFSCANF 0
#cmakedefine GNULIB_VPRINTF 1
#cmakedefine GNULIB_VPRINTF_POSIX 0
#cmakedefine GNULIB_VSCANF 0
#cmakedefine GNULIB_VSNPRINTF 0
#cmakedefine GNULIB_VSPRINTF_POSIX 0
#cmakedefine GNULIB_WCTOMB 0
#cmakedefine GNULIB_WRITE 0
#cmakedefine GNULIB__EXIT 0
/*************************************/

/* Define to 1 if you have the `acl' function. */
#cmakedefine HAVE_ACL

/* Define to 1 if you have the `aclx_get' function. */
#cmakedefine HAVE_ACLX_GET

/* Define to 1 if you have the `acl_copy_ext_native' function. */
#cmakedefine HAVE_ACL_COPY_EXT_NATIVE

/* Define to 1 if you have the `acl_create_entry_np' function. */
#cmakedefine HAVE_ACL_CREATE_ENTRY_NP

/* Define to 1 if you have the `acl_delete_def_file' function. */
#cmakedefine HAVE_ACL_DELETE_DEF_FILE

/* Define to 1 if you have the `acl_delete_fd_np' function. */
#cmakedefine HAVE_ACL_DELETE_FD_NP

/* Define to 1 if you have the `acl_delete_file_np' function. */
#cmakedefine HAVE_ACL_DELETE_FILE_NP

/* Define to 1 if you have the `acl_entries' function. */
#cmakedefine HAVE_ACL_ENTRIES

/* Define to 1 if you have the `acl_extended_file' function. */
#cmakedefine HAVE_ACL_EXTENDED_FILE

/* Define to 1 if the constant ACL_FIRST_ENTRY exists. */
#cmakedefine HAVE_ACL_FIRST_ENTRY

/* Define to 1 if you have the `acl_free' function. */
#cmakedefine HAVE_ACL_FREE

/* Define to 1 if you have the `acl_free_text' function. */
#cmakedefine HAVE_ACL_FREE_TEXT

/* Define to 1 if you have the `acl_from_mode' function. */
#cmakedefine HAVE_ACL_FROM_MODE

/* Define to 1 if you have the `acl_from_text' function. */
#cmakedefine HAVE_ACL_FROM_TEXT

/* Define to 1 if you have the `acl_get_fd' function. */
#cmakedefine HAVE_ACL_GET_FD

/* Define to 1 if you have the `acl_get_file' function. */
#cmakedefine HAVE_ACL_GET_FILE

/* Define to 1 if you have the <acl/libacl.h> header file. */
#cmakedefine HAVE_ACL_LIBACL_H

/* Define to 1 if you have the `acl_set_fd' function. */
#cmakedefine HAVE_ACL_SET_FD

/* Define to 1 if you have the `acl_set_file' function. */
#cmakedefine HAVE_ACL_SET_FILE

/* Define to 1 if you have the `acl_to_short_text' function. */
#cmakedefine HAVE_ACL_TO_SHORT_TEXT

/* Define to 1 if you have the `acl_trivial' function. */
#cmakedefine HAVE_ACL_TRIVIAL

/* Define to 1 if the ACL type ACL_TYPE_EXTENDED exists. */
#cmakedefine HAVE_ACL_TYPE_EXTENDED

/* Define to 1 if you have `alloca', as a function or macro. */
#cmakedefine HAVE_ALLOCA 1

/* Define to 1 if you have <alloca.h> and it should be used (not on Ultrix).
   */
#cmakedefine HAVE_ALLOCA_H 1

/* Define to 1 if you have the `argz_count' function. */
#cmakedefine HAVE_ARGZ_COUNT 1

/* Define to 1 if you have the <argz.h> header file. */
#cmakedefine HAVE_ARGZ_H 1

/* Define to 1 if you have the `argz_next' function. */
#cmakedefine HAVE_ARGZ_NEXT

/* Define to 1 if you have the `argz_stringify' function. */
#cmakedefine HAVE_ARGZ_STRINGIFY

/* Define to 1 if you have the <arpa/inet.h> header file. */
#cmakedefine HAVE_ARPA_INET_H

/* Define to 1 if you have the <arpa/nameser.h> header file. */
#cmakedefine HAVE_ARPA_NAMESER_H

/* Define to 1 if you have the `asprintf' function. */
#cmakedefine HAVE_ASPRINTF 1

/* Define to 1 if you have the `atexit' function. */
#cmakedefine HAVE_ATEXIT

/* Define to 1 if you have the <bp-sym.h> header file. */
#cmakedefine HAVE_BP_SYM_H

/* Define to 1 if you have the `btowc' function. */
#cmakedefine HAVE_BTOWC

/* Define to 1 if the compiler understands __builtin_expect. */
#cmakedefine HAVE_BUILTIN_EXPECT 1

/* Define to 1 if you have the <byteswap.h> header file. */
#cmakedefine HAVE_BYTESWAP_H

/* Define to 1 if you have the `canonicalize_file_name' function. */
#cmakedefine HAVE_CANONICALIZE_FILE_NAME 1

/* Define to 1 if you have the MacOS X function CFLocaleCopyCurrent in the
   CoreFoundation framework. */
#cmakedefine HAVE_CFLOCALECOPYCURRENT 1

/* Define to 1 if you have the MacOS X function CFPreferencesCopyAppValue in
   the CoreFoundation framework. */
#cmakedefine HAVE_CFPREFERENCESCOPYAPPVALUE 1

/* Define to 1 if you have the `chown' function. */
#cmakedefine HAVE_CHOWN

/* Define to 1 if you have the `confstr' function. */
#cmakedefine HAVE_CONFSTR

/* Define to 1 if you have the <ctype.h> header file. */
#cmakedefine HAVE_CTYPE_H 1

/* Define if the GNU dcgettext() function is already present or preinstalled.
   */
#cmakedefine HAVE_DCGETTEXT

/* Define to 1 if you have the declaration of `alarm', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_ALARM

/* Define to 1 if you have the declaration of `clearerr_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_CLEARERR_UNLOCKED

/* Define to 1 if you have the declaration of `feof_unlocked', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_FEOF_UNLOCKED 1

/* Define to 1 if you have the declaration of `ferror_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_FERROR_UNLOCKED 1

/* Define to 1 if you have the declaration of `fflush_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_FFLUSH_UNLOCKED 1

/* Define to 1 if you have the declaration of `fgets_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_FGETS_UNLOCKED 1

/* Define to 1 if you have the declaration of `fputc_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_FPUTC_UNLOCKED 1

/* Define to 1 if you have the declaration of `fputs_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_FPUTS_UNLOCKED 1

/* Define to 1 if you have the declaration of `fread_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_FREAD_UNLOCKED 1

/* Define to 1 if you have the declaration of `fwrite_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_FWRITE_UNLOCKED 1

/* Define to 1 if you have the declaration of `getchar_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_GETCHAR_UNLOCKED 1

/* Define to 1 if you have the declaration of `getc_unlocked', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_GETC_UNLOCKED 1

/* Define to 1 if you have the declaration of `getdelim', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_GETDELIM 1

/* Define to 1 if you have the declaration of `getenv', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_GETENV 1

/* Define to 1 if you have the declaration of `getline', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_GETLINE 1

/* Define to 1 if you have the declaration of `getopt_clip', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_GETOPT_CLIP 1

/* Define to 1 if you have the declaration of `isblank', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_ISBLANK

/* Define to 1 if you have a declaration of mbswidth() in <wchar.h>, and to 0
   otherwise. */
#cmakedefine HAVE_DECL_MBSWIDTH_IN_WCHAR_H

/* Define to 1 if you have the declaration of `optreset', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_OPTRESET 1

/* Define to 1 if you have the declaration of `program_invocation_name', and
   to 0 if you don't. */
#cmakedefine HAVE_DECL_PROGRAM_INVOCATION_NAME 1

/* Define to 1 if you have the declaration of `program_invocation_short_name',
   and to 0 if you don't. */
#cmakedefine HAVE_DECL_PROGRAM_INVOCATION_SHORT_NAME 1

/* Define to 1 if you have the declaration of `putchar_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_PUTCHAR_UNLOCKED 1

/* Define to 1 if you have the declaration of `putc_unlocked', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_PUTC_UNLOCKED 1

/* Define to 1 if you have the declaration of `snprintf', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_SNPRINTF

/* Define to 1 if you have the declaration of `strerror', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_STRERROR 1

/* Define to 1 if you have the declaration of `strerror_r', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_STRERROR_R

/* Define to 1 if you have the declaration of `strnlen', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_STRNLEN

/* Define to 1 if you have the declaration of `vsnprintf', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_VSNPRINTF

/* Define to 1 if you have the declaration of `wctob', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_WCTOB

/* Define to 1 if you have the declaration of `wcwidth', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_WCWIDTH 1

/* Define to 1 if you have the declaration of `_snprintf', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL__SNPRINTF 1

/* Define to 1 if you have the declaration of `_snwprintf', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL__SNWPRINTF 1

/* Define to 1 if you have the <dirent.h> header file. */
#cmakedefine HAVE_DIRENT_H

/* Define to 1 if you have the <dlfcn.h> header file. */
#cmakedefine HAVE_DLFCN_H 1

/* Define to 1 if you have the `dlopen' function. */
#cmakedefine HAVE_DLOPEN

/* Define to 1 if you have the <dl.h> header file. */
#cmakedefine HAVE_DL_H

/* Define to 1 if you have the `dup2' function. */
#cmakedefine HAVE_DUP2

/* Define if you have the declaration of environ. */
#cmakedefine HAVE_ENVIRON_DECL 1

/* Define to 1 if you have the <errno.h> header file. */
#cmakedefine HAVE_ERRNO_H 1

/* Define to 1 if you have the `fcntl' function. */
#cmakedefine HAVE_FCNTL

/* Define to 1 if you have the <fcntl.h> header file. */
#cmakedefine HAVE_FCNTL_H 1

/* Define to 1 if you have the <float.h> header file. */
#cmakedefine HAVE_FLOAT_H 1

/* Define to 1 if you have the `flockfile' function. */
#cmakedefine HAVE_FLOCKFILE

/* Define to 1 if you have the `fork' function. */
#cmakedefine HAVE_FORK

/* Define to 1 if you have the `funlockfile' function. */
#cmakedefine HAVE_FUNLOCKFILE

/* Define to 1 if you have the `fwprintf' function. */
#cmakedefine HAVE_FWPRINTF 1

/* Define to 1 if you have the `getacl' function. */
#cmakedefine HAVE_GETACL

/* Define to 1 if you have the `getaddrinfo' function. */
#cmakedefine HAVE_GETADDRINFO

/* Define to 1 if you have the `getcwd' function. */
#cmakedefine HAVE_GETCWD 1

/* Define to 1 if you have the `getdelim' function. */
#cmakedefine HAVE_GETDELIM

/* Define to 1 if you have the `getdtablesize' function. */
#cmakedefine HAVE_GETDTABLESIZE

/* Define to 1 if you have the `getegid' function. */
#cmakedefine HAVE_GETEGID 1

/* Define to 1 if you have the `geteuid' function. */
#cmakedefine HAVE_GETEUID 1

/* Define to 1 if you have the `getgid' function. */
#cmakedefine HAVE_GETGID 1

/* Define to 1 if you have the `gethostbyname' function. */
#cmakedefine HAVE_GETHOSTBYNAME

/* Define to 1 if you have the `gethostname' function. */
#cmakedefine HAVE_GETHOSTNAME

/* Define to 1 if you have the <getopt.h> header file. */
#cmakedefine HAVE_GETOPT_H 1

/* Define to 1 if you have the `getopt_long_only' function. */
#cmakedefine HAVE_GETOPT_LONG_ONLY 1

/* Define to 1 if you have the `getpagesize' function. */
#cmakedefine HAVE_GETPAGESIZE 1

/* Define to 1 if you have the `getrlimit' function. */
#cmakedefine HAVE_GETRLIMIT

/* Define if the GNU gettext() function is already present or preinstalled. */
#cmakedefine HAVE_GETTEXT

/* Define to 1 if you have the `gettimeofday' function. */
#cmakedefine HAVE_GETTIMEOFDAY

/* Define to 1 if you have the `getuid' function. */
#cmakedefine HAVE_GETUID 1

/* Define if you have the iconv() function and it works. */
#cmakedefine HAVE_ICONV @HAVE_ICONV@

/* Define to 1 if you have the <iconv.h> header file. */
#cmakedefine HAVE_ICONV_H 1

/* Define to 1 if you have the `inet_ntop' function. */
#cmakedefine HAVE_INET_NTOP

/* Define to 1 if the compiler supports one of the keywords 'inline',
   '__inline__', '__inline' and effectively inlines functions marked as such.
   */
#cmakedefine HAVE_INLINE

/* Define if you have the 'intmax_t' type in <stdint.h> or <inttypes.h>. */
#cmakedefine HAVE_INTMAX_T 1

/* Define to 1 if you have the <inttypes.h> header file. */
#cmakedefine HAVE_INTTYPES_H 1

/* Define if <inttypes.h> exists, doesn't clash with <sys/types.h>, and
   declares uintmax_t. */
#cmakedefine HAVE_INTTYPES_H_WITH_UINTMAX 1

/* Define if <sys/socket.h> defines AF_INET6. */
#cmakedefine HAVE_IPV6

/* Define to 1 if you have the `isascii' function. */
#cmakedefine HAVE_ISASCII

/* Define to 1 if you have the `isblank' function. */
#cmakedefine HAVE_ISBLANK

/* Define to 1 if you have the `iswblank' function. */
#cmakedefine HAVE_ISWBLANK 1

/* Define to 1 if you have the `iswcntrl' function. */
#cmakedefine HAVE_ISWCNTRL 1

/* Define to 1 if you have the `iswctype' function. */
#cmakedefine HAVE_ISWCTYPE

/* Define if you have <langinfo.h> and nl_langinfo(CODESET). */
#cmakedefine HAVE_LANGINFO_CODESET

/* Define if your <locale.h> file defines LC_MESSAGES. */
#cmakedefine HAVE_LC_MESSAGES

/* Define to 1 if you have the <libcroco-0.6/libcroco/libcroco-config.h>
   header file. */
#cmakedefine HAVE_LIBCROCO_0_6_LIBCROCO_LIBCROCO_CONFIG_H

/* Define if you have the libexpat library. */
#cmakedefine HAVE_LIBEXPAT

/* Define to 1 if you have the <libxml2/libxml/xmlexports.h> header file. */
#cmakedefine HAVE_LIBXML2_LIBXML_XMLEXPORTS_H

/* Define to 1 if you have the <libxml2/libxml/xmlversion.h> header file. */
#cmakedefine HAVE_LIBXML2_LIBXML_XMLVERSION_H

/* Define to 1 if you have the <limits.h> header file. */
#cmakedefine HAVE_LIMITS_H 1

/* Define to 1 if you have the <locale.h> header file. */
#cmakedefine HAVE_LOCALE_H 1

/* Define to 1 if you have the `localtime' function. */
#cmakedefine HAVE_LOCALTIME

/* Define to 1 if you support file names longer than 14 characters. */
#cmakedefine HAVE_LONG_FILE_NAMES

/* Define to 1 if the system has the type `long long int'. */
#cmakedefine HAVE_LONG_LONG_INT 1

/* Define to 1 if you have the `lstat' function. */
#cmakedefine HAVE_LSTAT

/* Define to 1 if you have the <mach-o/dyld.h> header file. */
#cmakedefine HAVE_MACH_O_DYLD_H

/* Define to 1 if you have the <malloc.h> header file. */
#cmakedefine HAVE_MALLOC_H

/* Define if the 'malloc' function is POSIX compliant. */
#cmakedefine HAVE_MALLOC_POSIX

/* Define to 1 if mmap()'s MAP_ANONYMOUS flag is available after including
   config.h and <sys/mman.h>. */
#cmakedefine HAVE_MAP_ANONYMOUS 1

/* Define to 1 if you have the <math.h> header file. */
#cmakedefine HAVE_MATH_H 1

/* Define to 1 if you have the `mbrtowc' function. */
#cmakedefine HAVE_MBRTOWC 1

/* Define to 1 if you have the `mbsinit' function. */
#cmakedefine HAVE_MBSINIT 1

/* Define to 1 if you have the `mbslen' function. */
#cmakedefine HAVE_MBSLEN 1

/* Define to 1 if you have the `mbsrtowcs' function. */
#cmakedefine HAVE_MBSRTOWCS

/* Define to 1 if <wchar.h> declares mbstate_t. */
#cmakedefine HAVE_MBSTATE_T 1

/* Define to 1 if you have the `memchr' function. */
#cmakedefine HAVE_MEMCHR 1

/* Define to 1 if you have the `memmove' function. */
#cmakedefine HAVE_MEMMOVE 1

/* Define to 1 if you have the <memory.h> header file. */
#cmakedefine HAVE_MEMORY_H 1

/* Define to 1 if you have the `mempcpy' function. */
#cmakedefine HAVE_MEMPCPY 1

/* Define to 1 if you have the `memset' function. */
#cmakedefine HAVE_MEMSET

/* Define to 1 if <limits.h> defines the MIN and MAX macros. */
#cmakedefine HAVE_MINMAX_IN_LIMITS_H

/* Define to 1 if <sys/param.h> defines the MIN and MAX macros. */
#cmakedefine HAVE_MINMAX_IN_SYS_PARAM_H

/* Define to 1 if you have the `mkdtemp' function. */
#cmakedefine HAVE_MKDTEMP

/* Define to 1 if you have a working `mmap' system call. */
#cmakedefine HAVE_MMAP 1

/* Define to 1 if you have the `mprotect' function. */
#cmakedefine HAVE_MPROTECT 1

/* Define to 1 if you have the `munmap' function. */
#cmakedefine HAVE_MUNMAP 1

/* Define to 1 if you have the <netdb.h> header file. */
#cmakedefine HAVE_NETDB_H

/* Define to 1 if you have the <netinet/in.h> header file. */
#cmakedefine HAVE_NETINET_IN_H

/* Define to 1 if you have the `newlocale' function. */
#cmakedefine HAVE_NEWLOCALE 1

/* Define to 1 if libc includes obstacks. */
#cmakedefine HAVE_OBSTACK

/* Define to 1 if you have the <OS.h> header file. */
#cmakedefine HAVE_OS_H

/* Define to 1 if you have the `pathconf' function. */
#cmakedefine HAVE_PATHCONF 1

/* Define to 1 if you have the <paths.h> header file. */
#cmakedefine HAVE_PATHS_H

/* Define to 1 if you have the `pipe' function. */
#cmakedefine HAVE_PIPE

/* Define to 1 if you have the `pipe2' function. */
#cmakedefine HAVE_PIPE2

/* Define if your printf() function supports format strings with positions. */
#cmakedefine HAVE_POSIX_PRINTF

/* Define to 1 if you have the `posix_spawn' function. */
#cmakedefine HAVE_POSIX_SPAWN

/* Define to 1 if the system has the type `posix_spawnattr_t'. */
#cmakedefine HAVE_POSIX_SPAWNATTR_T

/* Define to 1 if the system has the type `posix_spawn_file_actions_t'. */
#cmakedefine HAVE_POSIX_SPAWN_FILE_ACTIONS_T

/* Define to 1 if you have the `pthread_atfork' function. */
#cmakedefine HAVE_PTHREAD_ATFORK

/* Define if the <pthread.h> defines PTHREAD_MUTEX_RECURSIVE. */
#cmakedefine HAVE_PTHREAD_MUTEX_RECURSIVE

/* Define if the POSIX multithreading library has read/write locks. */
#cmakedefine HAVE_PTHREAD_RWLOCK

/* Define to 1 if the system has the type `ptrdiff_t'. */
#cmakedefine HAVE_PTRDIFF_T

/* Define to 1 if you have the `putenv' function. */
#cmakedefine HAVE_PUTENV

/* Define to 1 if you have the <pwd.h> header file. */
#cmakedefine HAVE_PWD_H 0

/* Define to 1 if you have the <random.h> header file. */
#cmakedefine HAVE_RANDOM_H @HAVE_RANDOM_H@

/* Define to 1 if you have the `rawmemchr' function. */
#cmakedefine HAVE_RAWMEMCHR

/* Define to 1 if accept is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_ACCEPT

/* Define to 1 if accept4 is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_ACCEPT4

/* Define to 1 if atoll is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_ATOLL 1

/* Define to 1 if bind is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_BIND

/* Define to 1 if btowc is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_BTOWC 1

/* Define to 1 if canonicalize_file_name is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_CANONICALIZE_FILE_NAME 1

/* Define to 1 if chown is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_CHOWN 1

/* Define to 1 if connect is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_CONNECT

/* Define to 1 if dprintf is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_DPRINTF

/* Define to 1 if dup2 is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_DUP2 1

/* Define to 1 if dup3 is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_DUP3 1

/* Define to 1 if duplocale is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_DUPLOCALE

/* Define to 1 if endusershell is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_ENDUSERSHELL 1

/* Define to 1 if environ is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_ENVIRON 1

/* Define to 1 if euidaccess is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_EUIDACCESS 1

/* Define to 1 if faccessat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FACCESSAT 1

/* Define to 1 if fchdir is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FCHDIR 1

/* Define to 1 if fchmodat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FCHMODAT 1

/* Define to 1 if fchownat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FCHOWNAT 1

/* Define to 1 if fcntl is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FCNTL

/* Define to 1 if fpurge is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FPURGE 1

/* Define to 1 if fseeko is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FSEEKO 1

/* Define to 1 if fstatat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FSTATAT 1

/* Define to 1 if fsync is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FSYNC 1

/* Define to 1 if ftello is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FTELLO 1

/* Define to 1 if ftruncate is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FTRUNCATE 1

/* Define to 1 if futimens is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_FUTIMENS 1

/* Define to 1 if getcwd is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETCWD 1

/* Define to 1 if getdelim is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETDELIM 1

/* Define to 1 if getdomainname is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETDOMAINNAME 1

/* Define to 1 if getdtablesize is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETDTABLESIZE 1

/* Define to 1 if getgroups is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETGROUPS 1

/* Define to 1 if gethostname is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETHOSTNAME 1

/* Define to 1 if getline is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETLINE 1

/* Define to 1 if getloadavg is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETLOADAVG 1

/* Define to 1 if getlogin is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETLOGIN 1

/* Define to 1 if getlogin_r is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETLOGIN_R 1

/* Define to 1 if getpagesize is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETPAGESIZE 1

/* Define to 1 if getpeername is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETPEERNAME

/* Define to 1 if getsockname is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETSOCKNAME

/* Define to 1 if getsockopt is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETSOCKOPT

/* Define to 1 if getsubopt is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETSUBOPT 1

/* Define to 1 if gettimeofday is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETTIMEOFDAY

/* Define to 1 if getusershell is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETUSERSHELL 1

/* Define to 1 if grantpt is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GRANTPT 1

/* Define to 1 if initstat_r is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_INITSTAT_R 1

/* Define to 1 if lchmod is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_LCHMOD

/* Define to 1 if lchown is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_LCHOWN

/* Define to 1 if link is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_LINK

/* Define to 1 if linkat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_LINKAT

/* Define to 1 if listen is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_LISTEN

/* Define to 1 if lseek is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_LSEEK

/* Define to 1 if lstat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_LSTAT

/* Define to 1 if mbrlen is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MBRLEN

/* Define to 1 if mbrtowc is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MBRTOWC

/* Define to 1 if mbsinit is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MBSINIT

/* Define to 1 if mbsnrtowcs is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MBSNRTOWCS

/* Define to 1 if mbsrtowcs is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MBSRTOWCS

/* Define to 1 if memmem is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MEMMEM

/* Define to 1 if mempcpy is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MEMPCPY

/* Define to 1 if memrchr is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MEMRCHR

/* Define to 1 if mkdirat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKDIRAT

/* Define to 1 if mkdtemp is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKDTEMP

/* Define to 1 if mkfifo is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKFIFO

/* Define to 1 if mkfifoat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKFIFOAT

/* Define to 1 if mknod is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKNOD

/* Define to 1 if mknodat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKNODAT

/* Define to 1 if mkostemp is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKOSTEMP

/* Define to 1 if mkostemps is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKOSTEMPS

/* Define to 1 if mkstemp is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKSTEMP

/* Define to 1 if mkstemps is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_MKSTEMPS

/* Define to 1 if openat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_OPENAT

/* Define to 1 if pipe2 is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_PIPE2

/* Define to 1 if popen is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_POPEN

/* Define to 1 if posix_spawn is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWN

/* Define to 1 if posix_spawnattr_destroy is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_DESTROY

/* Define to 1 if posix_spawnattr_getflags is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_GETFLAGS

/* Define to 1 if posix_spawnattr_getpgroup is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_GETPGROUP

/* Define to 1 if posix_spawnattr_getschedparam is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_GETSCHEDPARAM

/* Define to 1 if posix_spawnattr_getschedpolicy is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_GETSCHEDPOLICY

/* Define to 1 if posix_spawnattr_getsigdefault is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_GETSIGDEFAULT

/* Define to 1 if posix_spawnattr_getsigmask is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_GETSIGMASK

/* Define to 1 if posix_spawnattr_init is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_INIT

/* Define to 1 if posix_spawnattr_setflags is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_SETFLAGS

/* Define to 1 if posix_spawnattr_setpgroup is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_SETPGROUP

/* Define to 1 if posix_spawnattr_setschedparam is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_SETSCHEDPARAM

/* Define to 1 if posix_spawnattr_setschedpolicy is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_SETSCHEDPOLICY

/* Define to 1 if posix_spawnattr_setsigdefault is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_SETSIGDEFAULT

/* Define to 1 if posix_spawnattr_setsigmask is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNATTR_SETSIGMASK

/* Define to 1 if posix_spawnp is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWNP

/* Define to 1 if posix_spawn_file_actions_addclose is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWN_FILE_ACTIONS_ADDCLOSE

/* Define to 1 if posix_spawn_file_actions_adddup2 is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWN_FILE_ACTIONS_ADDDUP2

/* Define to 1 if posix_spawn_file_actions_addopen is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWN_FILE_ACTIONS_ADDOPEN

/* Define to 1 if posix_spawn_file_actions_destroy is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWN_FILE_ACTIONS_DESTROY

/* Define to 1 if posix_spawn_file_actions_init is declared even after
   undefining macros. */
#cmakedefine HAVE_RAW_DECL_POSIX_SPAWN_FILE_ACTIONS_INIT

/* Define to 1 if pread is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_PREAD

/* Define to 1 if ptsname is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_PTSNAME

/* Define to 1 if pwrite is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_PWRITE

/* Define to 1 if random_r is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RANDOM_R

/* Define to 1 if rawmemchr is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RAWMEMCHR

/* Define to 1 if readlink is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_READLINK

/* Define to 1 if readlinkat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_READLINKAT

/* Define to 1 if realpath is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_REALPATH

/* Define to 1 if recv is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RECV

/* Define to 1 if recvfrom is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RECVFROM

/* Define to 1 if renameat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RENAMEAT

/* Define to 1 if rmdir is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RMDIR

/* Define to 1 if rpmatch is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RPMATCH

/* Define to 1 if select is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SELECT

/* Define to 1 if send is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SEND

/* Define to 1 if sendto is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SENDTO

/* Define to 1 if setenv is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SETENV

/* Define to 1 if setsockopt is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SETSOCKOPT

/* Define to 1 if setstate_r is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SETSTATE_R

/* Define to 1 if setusershell is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SETUSERSHELL

/* Define to 1 if shutdown is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SHUTDOWN

/* Define to 1 if sigaction is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SIGACTION

/* Define to 1 if sigaddset is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SIGADDSET

/* Define to 1 if sigdelset is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SIGDELSET

/* Define to 1 if sigemptyset is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SIGEMPTYSET

/* Define to 1 if sigfillset is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SIGFILLSET

/* Define to 1 if sigismember is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SIGISMEMBER

/* Define to 1 if sigpending is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SIGPENDING

/* Define to 1 if sigprocmask is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SIGPROCMASK

/* Define to 1 if sleep is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SLEEP

/* Define to 1 if snprintf is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SNPRINTF

/* Define to 1 if socket is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SOCKET

/* Define to 1 if srandom_r is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SRANDOM_R

/* Define to 1 if stat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STAT

/* Define to 1 if stpcpy is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STPCPY

/* Define to 1 if stpncpy is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STPNCPY

/* Define to 1 if strcasestr is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRCASESTR

/* Define to 1 if strchrnul is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRCHRNUL

/* Define to 1 if strdup is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRDUP

/* Define to 1 if strncat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRNCAT

/* Define to 1 if strndup is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRNDUP

/* Define to 1 if strnlen is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRNLEN

/* Define to 1 if strpbrk is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRPBRK

/* Define to 1 if strsep is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRSEP

/* Define to 1 if strsignal is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRSIGNAL

/* Define to 1 if strtod is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRTOD

/* Define to 1 if strtok_r is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRTOK_R

/* Define to 1 if strtoll is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRTOLL

/* Define to 1 if strtoull is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRTOULL

/* Define to 1 if strverscmp is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_STRVERSCMP

/* Define to 1 if symlink is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SYMLINK

/* Define to 1 if symlinkat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SYMLINKAT

/* Define to 1 if tmpfile is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_TMPFILE

/* Define to 1 if ttyname_r is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_TTYNAME_R

/* Define to 1 if unlink is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_UNLINK

/* Define to 1 if unlinkat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_UNLINKAT

/* Define to 1 if unlockpt is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_UNLOCKPT

/* Define to 1 if unsetenv is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_UNSETENV

/* Define to 1 if usleep is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_USLEEP

/* Define to 1 if utimensat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_UTIMENSAT

/* Define to 1 if vdprintf is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_VDPRINTF

/* Define to 1 if vsnprintf is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_VSNPRINTF

/* Define to 1 if wcrtomb is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_WCRTOMB

/* Define to 1 if wcsnrtombs is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_WCSNRTOMBS

/* Define to 1 if wcsrtombs is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_WCSRTOMBS

/* Define to 1 if wctob is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_WCTOB

/* Define to 1 if wcwidth is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_WCWIDTH

/* Define to 1 if you have the `readlink' function. */
#cmakedefine HAVE_READLINK 1

/* Define if the 'realloc' function is POSIX compliant. */
#cmakedefine HAVE_REALLOC_POSIX

/* Define to 1 if you have the `realpath' function. */
#cmakedefine HAVE_REALPATH 1

/* Define to 1 if you have the <resolv.h> header file. */
#cmakedefine HAVE_RESOLV_H

/* Define to 1 if the system has the type `sa_family_t'. */
#cmakedefine HAVE_SA_FAMILY_T

/* Define to 1 if you have the <sched.h> header file. */
#cmakedefine HAVE_SCHED_H

/* Define to 1 if you have the `sched_setparam' function. */
#cmakedefine HAVE_SCHED_SETPARAM

/* Define to 1 if you have the `sched_setscheduler' function. */
#cmakedefine HAVE_SCHED_SETSCHEDULER

/* Define to 1 if you have the <search.h> header file. */
#cmakedefine HAVE_SEARCH_H 1

/* Define to 1 if you have the `select' function. */
#cmakedefine HAVE_SELECT

/* Define to 1 if you have the `setegid' function. */
#cmakedefine HAVE_SETEGID

/* Define to 1 if you have the `setenv' function. */
#cmakedefine HAVE_SETENV 1

/* Define to 1 if you have the `seteuid' function. */
#cmakedefine HAVE_SETEUID

/* Define to 1 if you have the `setlocale' function. */
#cmakedefine HAVE_SETLOCALE 1

/* Define to 1 if you have the `setrlimit' function. */
#cmakedefine HAVE_SETRLIMIT

/* Define to 1 if you have the `shlload' function. */
#cmakedefine HAVE_SHLLOAD

/* Define to 1 if you have the `shutdown' function. */
#cmakedefine HAVE_SHUTDOWN

/* Define to 1 if you have the `sigaction' function. */
#cmakedefine HAVE_SIGACTION

/* Define to 1 if you have the `sigaltstack' function. */
#cmakedefine HAVE_SIGALTSTACK

/* Define to 1 if <signal.h> defines the siginfo_t type, and struct sigaction
   has the sa_sigaction member and the SA_SIGINFO flag. */
#cmakedefine HAVE_SIGINFO

/* Define to 1 if the system has the type `siginfo_t'. */
#cmakedefine HAVE_SIGINFO_T

/* Define to 1 if you have the `siginterrupt' function. */
#cmakedefine HAVE_SIGINTERRUPT

/* Define to 1 if you have the <signal.h> header file. */
#cmakedefine HAVE_SIGNAL_H 1

/* Define to 1 if 'sig_atomic_t' is a signed integer type. */
#cmakedefine HAVE_SIGNED_SIG_ATOMIC_T 1

/* Define to 1 if 'wchar_t' is a signed integer type. */
#cmakedefine HAVE_SIGNED_WCHAR_T 1

/* Define to 1 if 'wint_t' is a signed integer type. */
#cmakedefine HAVE_SIGNED_WINT_T 1

/* Define to 1 if the system has the type `sigset_t'. */
#cmakedefine HAVE_SIGSET_T 1

/* Define to 1 if the system has the type `sig_atomic_t'. */
#cmakedefine HAVE_SIG_ATOMIC_T

/* Define to 1 if you have the `snprintf' function. */
#cmakedefine HAVE_SNPRINTF 1

/* Define if the return value of the snprintf function is the number of of
   bytes (excluding the terminating NUL) that would have been produced if the
   buffer had been large enough. */
#cmakedefine HAVE_SNPRINTF_RETVAL_C99

/* Define to 1 if you have the <spawn.h> header file. */
#cmakedefine HAVE_SPAWN_H

/* Define to 1 if you have the `stat' function. */
#cmakedefine HAVE_STAT

/* Define to 1 if you have the `statacl' function. */
#cmakedefine HAVE_STATACL

/* Define to 1 if you have the <stdarg.h> header file. */
#cmakedefine HAVE_STDARG_H 1

/* Define to 1 if stdbool.h conforms to C99. */
#cmakedefine HAVE_STDBOOL_H 1

/* Define to 1 if you have the <stddef.h> header file. */
#cmakedefine HAVE_STDDEF_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#cmakedefine HAVE_STDINT_H 1

/* Define if <stdint.h> exists, doesn't clash with <sys/types.h>, and declares
   uintmax_t. */
#cmakedefine HAVE_STDINT_H_WITH_UINTMAX 1

/* Define to 1 if you have the <stdio.h> header file. */
#cmakedefine HAVE_STDIO_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#cmakedefine HAVE_STDLIB_H 1

/* Define to 1 if you have the `stpcpy' function. */
#cmakedefine HAVE_STPCPY 1

/* Define if you have the stpncpy() function and it works. */
#cmakedefine HAVE_STPNCPY

/* Define to 1 if you have the `strcasecmp' function. */
#cmakedefine HAVE_STRCASECMP 1

/* Define to 1 if you have the `strchrnul' function. */
#cmakedefine HAVE_STRCHRNUL

/* Define to 1 if you have the `strcspn' function. */
#cmakedefine HAVE_STRCSPN

/* Define to 1 if you have the `strdup' function. */
#cmakedefine HAVE_STRDUP 1

/* Define to 1 if you have the `strerror_r' function. */
#cmakedefine HAVE_STRERROR_R

/* Define to 1 if you have the `strftime' function. */
#cmakedefine HAVE_STRFTIME

/* Define to 1 if you have the <strings.h> header file. */
#cmakedefine HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#cmakedefine HAVE_STRING_H 1

/* Define to 1 if you have the `strnlen' function. */
#cmakedefine HAVE_STRNLEN 1

/* Define to 1 if you have the `strpbrk' function. */
#cmakedefine HAVE_STRPBRK

/* Define to 1 if you have the `strtol' function. */
#cmakedefine HAVE_STRTOL 1

/* Define to 1 if you have the `strtoul' function. */
#cmakedefine HAVE_STRTOUL 1

/* Define to 1 if the system has the type `struct random_data'. */
#cmakedefine HAVE_STRUCT_RANDOM_DATA 1

/* Define to 1 if `sa_sigaction' is a member of `struct sigaction'. */
#cmakedefine HAVE_STRUCT_SIGACTION_SA_SIGACTION

/* Define to 1 if the system has the type `struct sockaddr_storage'. */
#cmakedefine HAVE_STRUCT_SOCKADDR_STORAGE

/* Define to 1 if `__names' is a member of `struct __locale_struct'. */
#cmakedefine HAVE_STRUCT___LOCALE_STRUCT___NAMES

/* Define to 1 if you have the `symlink' function. */
#cmakedefine HAVE_SYMLINK

/* Define to 1 if you have the <sys/acl.h> header file. */
#cmakedefine HAVE_SYS_ACL_H

/* Define to 1 if you have the <sys/bitypes.h> header file. */
#cmakedefine HAVE_SYS_BITYPES_H 1

/* Define to 1 if you have the <sys/inttypes.h> header file. */
#cmakedefine HAVE_SYS_INTTYPES_H 1

/* Define to 1 if you have the <sys/mman.h> header file. */
#cmakedefine HAVE_SYS_MMAN_H 1

/* Define to 1 if you have the <sys/param.h> header file. */
#cmakedefine HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/select.h> header file. */
#cmakedefine HAVE_SYS_SELECT_H

/* Define to 1 if you have the <sys/socket.h> header file. */
#cmakedefine HAVE_SYS_SOCKET_H

/* Define to 1 if you have the <sys/stat.h> header file. */
#cmakedefine HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/timeb.h> header file. */
#cmakedefine HAVE_SYS_TIMEB_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#cmakedefine HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#cmakedefine HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <sys/wait.h> header file. */
#cmakedefine HAVE_SYS_WAIT_H

/* Define if tgetent(), tgetnum(), tgetstr(), tgetflag() are among the termcap
   library functions. */
#cmakedefine HAVE_TERMCAP

/* Define if setupterm(), tigetnum(), tigetstr(), tigetflag() are among the
   termcap library functions. */
#cmakedefine HAVE_TERMINFO

/* Define to 1 if you have the <time.h> header file. */
#cmakedefine HAVE_TIME_H 1

/* Define if tparam() is among the termcap library functions. */
#cmakedefine HAVE_TPARAM

/* Define to 1 if you have the `tsearch' function. */
#cmakedefine HAVE_TSEARCH 1

/* Define if you have the 'uintmax_t' type in <stdint.h> or <inttypes.h>. */
#cmakedefine HAVE_UINTMAX_T 1

/* Define if <sys/wait.h> defines the 'union wait' type. */
#cmakedefine HAVE_UNION_WAIT

/* Define to 1 if you have the <unistd.h> header file. */
#cmakedefine HAVE_UNISTD_H 1

/* Define to 1 if you have the `unsetenv' function. */
#cmakedefine HAVE_UNSETENV

/* Define to 1 if the system has the type `unsigned long long int'. */
#cmakedefine HAVE_UNSIGNED_LONG_LONG_INT 1

/* Define to 1 if you have the `uselocale' function. */
#cmakedefine HAVE_USELOCALE 1

/* Define to 1 if you have the `utime' function. */
#cmakedefine HAVE_UTIME

/* Define to 1 if you have the `utimes' function. */
#cmakedefine HAVE_UTIMES

/* Define to 1 if you have the <utime.h> header file. */
#cmakedefine HAVE_UTIME_H

/* Define to 1 if you have the `vasnprintf' function. */
#cmakedefine HAVE_VASNPRINTF

/* Define to 1 if you have the `vasprintf' function. */
#cmakedefine HAVE_VASPRINTF

/* Define to 1 if you have the `vfork' function. */
#cmakedefine HAVE_VFORK

/* Define to 1 if you have the <vfork.h> header file. */
#cmakedefine HAVE_VFORK_H

/* Define to 1 or 0, depending whether the compiler supports simple visibility
   declarations. */
#cmakedefine HAVE_VISIBILITY 1

/* Define to 1 if you have the `vsnprintf' function. */
#cmakedefine HAVE_VSNPRINTF

/* Define to 1 if you have the `waitid' function. */
#cmakedefine HAVE_WAITID

/* Define to 1 if you have the `waitpid' function. */
#cmakedefine HAVE_WAITPID

/* Define to 1 if you have the <wchar.h> header file. */
#cmakedefine HAVE_WCHAR_H 1

/* Define if you have the 'wchar_t' type. */
#cmakedefine HAVE_WCHAR_T @HAVE_WCHAR_T@

/* Define to 1 if you have the `wcrtomb' function. */
#cmakedefine HAVE_WCRTOMB 1

/* Define to 1 if you have the `wcslen' function. */
#cmakedefine HAVE_WCSLEN 1

/* Define to 1 if you have the `wcsnlen' function. */
#cmakedefine HAVE_WCSNLEN 1

/* Define to 1 if you have the `wctob' function. */
#cmakedefine HAVE_WCTOB 1

/* Define to 1 if you have the <wctype.h> header file. */
#cmakedefine HAVE_WCTYPE_H 1

/* Define to 1 if you have the `wcwidth' function. */
#cmakedefine HAVE_WCWIDTH 1

/* Define to 1 if you have the <winsock2.h> header file. */
#cmakedefine HAVE_WINSOCK2_H 1

/* Define if you have the 'wint_t' type. */
#cmakedefine HAVE_WINT_T

/* Define to 1 if you have the `wmemchr' function. */
#cmakedefine HAVE_WMEMCHR

/* Define to 1 if you have the `wmemcpy' function. */
#cmakedefine HAVE_WMEMCPY

/* Define to 1 if you have the `wmempcpy' function. */
#cmakedefine HAVE_WMEMPCPY

/* Define to 1 if `fork' works. */
#cmakedefine HAVE_WORKING_FORK

/* Define to 1 if O_NOATIME works. */
#cmakedefine HAVE_WORKING_O_NOATIME 1

/* Define to 1 if O_NOFOLLOW works. */
#cmakedefine HAVE_WORKING_O_NOFOLLOW 1

/* Define to 1 if `vfork' works. */
#cmakedefine HAVE_WORKING_VFORK

/* Define to 1 if you have the <ws2tcpip.h> header file. */
#cmakedefine HAVE_WS2TCPIP_H

/* Define to 1 if you have the <xlocale.h> header file. */
#cmakedefine HAVE_XLOCALE_H

/* Define to 1 if the system has the type `_Bool'. */
#cmakedefine HAVE__BOOL 1

/* Define to 1 if you have the `_ftime' function. */
#cmakedefine HAVE__FTIME

/* Define to 1 if you have the `_NSGetExecutablePath' function. */
#cmakedefine HAVE__NSGETEXECUTABLEPATH 1

/* Define to 1 if you have the `_stat' function. */
#cmakedefine HAVE__STAT

/* Define to 1 if you have the `__fsetlocking' function. */
#cmakedefine HAVE___FSETLOCKING 1

/* Define to 1 if you have the `__secure_getenv' function. */
#cmakedefine HAVE___SECURE_GETENV

/* Define as const if the declaration of iconv() needs const. */
#cmakedefine ICONV_CONST

/* Define to a symbolic name denoting the flavor of iconv_open()
   implementation. */
#cmakedefine ICONV_FLAVOR

/* Define to the value of ${prefix}, as a string. */
#cmakedefine INSTALLPREFIX

/* Define if integer division by zero raises signal SIGFPE. */
#cmakedefine INTDIV0_RAISES_SIGFPE

#if FILE_SYSTEM_BACKSLASH_IS_FILE_NAME_SEPARATOR
# define ISSLASH(C) ((C) == '/' || (C) == '\\')
#else
# define ISSLASH(C) ((C) == '/')
#endif

/* Define to 1 if the C compiler is actually a C++ compiler. */
#cmakedefine IS_CPLUSPLUS

/* Define to 1 if `lstat' dereferences a symlink specified with a trailing
   slash. */
#cmakedefine LSTAT_FOLLOWS_SLASHED_SYMLINK 1

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#cmakedefine LT_OBJDIR

/* If malloc(0) is != NULL, define this to 1. Otherwise define this to 0. */
#cmakedefine MALLOC_0_IS_NONNULL 1

/* Define to a substitute value for mmap()'s MAP_ANONYMOUS flag. */
#cmakedefine MAP_ANONYMOUS

/* Define if the mbrtowc function has the NULL string argument bug. */
#cmakedefine MBRTOWC_NULL_ARG_BUG

/* Define if the mbrtowc function does not return 0 for a NUL character. */
#cmakedefine MBRTOWC_NUL_RETVAL_BUG

/* Define if the mbrtowc function returns a wrong return value. */
#cmakedefine MBRTOWC_RETVAL_BUG

/* Define to 1 if your C compiler doesn't accept -c and -o together. */
#cmakedefine NO_MINUS_C_MINUS_O

/* Define to 1 if open() fails to recognize a trailing slash. */
#cmakedefine OPEN_TRAILING_SLASH_BUG

/* Name of package */
#cmakedefine PACKAGE

/* Define to the address where bug reports for this package should be sent. */
#cmakedefine PACKAGE_BUGREPORT

/* Define to the full name of this package. */
#cmakedefine PACKAGE_NAME

/* Define to the full name and version of this package. */
#cmakedefine PACKAGE_STRING

/* Define to the one symbol short name of this package. */
#cmakedefine PACKAGE_TARNAME

/* Define to the home page for this package. */
#cmakedefine PACKAGE_URL

/* Define to the version of this package. */
#cmakedefine PACKAGE_VERSION

/* Define if <inttypes.h> exists and defines unusable PRI* macros. */
#cmakedefine PRI_MACROS_BROKEN

/* Define to the type that is the result of default argument promotions of
   type mode_t. */
#cmakedefine PROMOTED_MODE_T

/* Define if the pthread_in_use() detection is hard. */
#cmakedefine PTHREAD_IN_USE_DETECTION_HARD

/* Define to l, ll, u, ul, ull, etc., as suitable for constants of type
   'ptrdiff_t'. */
#cmakedefine PTRDIFF_T_SUFFIX

/* Define to 1 if readlink fails to recognize a trailing slash. */
#cmakedefine READLINK_TRAILING_SLASH_BUG 1

/* Define to 1 if stat needs help when passed a directory name with a trailing
   slash */
#cmakedefine REPLACE_FUNC_STAT_DIR 1

/* Define to 1 if stat needs help when passed a file name with a trailing
   slash */
#cmakedefine REPLACE_FUNC_STAT_FILE 1

/* Define this to 1 if strerror is broken. */
#cmakedefine REPLACE_STRERROR 1

/* Define if vasnprintf exists but is overridden by gnulib. */
#cmakedefine REPLACE_VASNPRINTF

/* Define as const if the declaration of setlocale() needs const. */
#cmakedefine SETLOCALE_CONST

/* Define if lists must be signal-safe. */
#cmakedefine SIGNAL_SAFE_LIST

/* Define to l, ll, u, ul, ull, etc., as suitable for constants of type
   'sig_atomic_t'. */
#cmakedefine SIG_ATOMIC_T_SUFFIX

/* Define as the maximum value of type 'size_t', if the system doesn't define
   it. */
#ifndef SIZE_MAX
# undef SIZE_MAX
#endif

/* Define to l, ll, u, ul, ull, etc., as suitable for constants of type
   'size_t'. */
#cmakedefine SIZE_T_SUFFIX

/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at runtime.
	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown */
#cmakedefine STACK_DIRECTION

/* Define to 1 if the `S_IS*' macros in <sys/stat.h> do not work properly. */
#cmakedefine STAT_MACROS_BROKEN

/* Define to 1 if you have the ANSI C header files. */
#cmakedefine STDC_HEADERS

/* Define to 1 if strerror_r returns char *. */
#cmakedefine STRERROR_R_CHAR_P

/* Define to nonzero if you want access control list support. */
#cmakedefine USE_ACL

/* Define if the POSIX multithreading library can be used. */
#cmakedefine USE_POSIX_THREADS

/* Define if references to the POSIX multithreading library should be made
   weak. */
#cmakedefine USE_POSIX_THREADS_WEAK

/* Define if the GNU Pth multithreading library can be used. */
#cmakedefine USE_PTH_THREADS

/* Define if references to the GNU Pth multithreading library should be made
   weak. */
#cmakedefine USE_PTH_THREADS_WEAK

/* Define if the old Solaris multithreading library can be used. */
#cmakedefine USE_SOLARIS_THREADS

/* Define if references to the old Solaris multithreading library should be
   made weak. */
#cmakedefine USE_SOLARIS_THREADS_WEAK

/* Define to 1 if you want getc etc. to use unlocked I/O if available.
   Unlocked I/O can improve performance in unithreaded apps, but it is not
   safe for multithreaded apps. */
#cmakedefine USE_UNLOCKED_IO

/* Define if the Win32 multithreading API can be used. */
#cmakedefine USE_WIN32_THREADS

/* Define to a working va_copy macro or replacement. */
#cmakedefine VA_COPY

/* Version number of package */
#cmakedefine VERSION

/* Define to 1 if unsetenv returns void instead of int. */
#cmakedefine VOID_UNSETENV

/* Define to l, ll, u, ul, ull, etc., as suitable for constants of type
   'wchar_t'. */
#cmakedefine WCHAR_T_SUFFIX

/* Define to l, ll, u, ul, ull, etc., as suitable for constants of type
   'wint_t'. */
#cmakedefine WINT_T_SUFFIX

/* Define when --enable-shared is used on mingw or Cygwin. */
#cmakedefine WOE32DLL

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
#  undef WORDS_BIGENDIAN
# endif
#endif

/* Define to 1 to internationalize bison runtime messages. */
#cmakedefine YYENABLE_NLS

/* Number of bits in a file offset, on hosts where this is settable. */
#cmakedefine _FILE_OFFSET_BITS

/* Define for large files, on AIX-style hosts. */
#cmakedefine _LARGE_FILES

/* Define to 1 if on MINIX. */
#cmakedefine _MINIX

/* Define to 2 if the system does not provide POSIX.1 features except with
   this defined. */
#cmakedefine _POSIX_1_SOURCE

/* Define to 1 if you need to in order for `stat' and other things to work. */
#cmakedefine _POSIX_SOURCE

/* Define to 500 only on HP-UX. */
#cmakedefine _XOPEN_SOURCE

/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
# undef _ALL_SOURCE
#endif
/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
# undef _GNU_SOURCE
#endif
/* Enable threading extensions on Solaris.  */
#ifndef _POSIX_PTHREAD_SEMANTICS
# undef _POSIX_PTHREAD_SEMANTICS
#endif
/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
# undef _TANDEM_SOURCE
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
# undef __EXTENSIONS__
#endif


/* Define to rpl_ if the getopt replacement functions and variables should be
   used. */
#cmakedefine __GETOPT_PREFIX

/* Define as 'access' if you don't have the eaccess() function. */
#cmakedefine eaccess

/* Define to a replacement function name for fnmatch(). */
#cmakedefine fnmatch

/* Define to `int' if <sys/types.h> doesn't define. */
#cmakedefine gid_t

/* A replacement for va_copy, if needed.  */
#define gl_va_copy(a,b) ((a) = (b))

/* Define to rpl_gmtime if the replacement function should be used. */
#cmakedefine gmtime

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#cmakedefine inline
#endif

/* Define to long or long long if <stdint.h> and <inttypes.h> don't define. */
#cmakedefine intmax_t

/* Work around a bug in Apple GCC 4.0.1 build 5465: In C99 mode, it supports
   the ISO C 99 semantics of 'extern inline' (unlike the GNU C semantics of
   earlier versions), but does not display it by setting __GNUC_STDC_INLINE__.
   __APPLE__ && __MACH__ test for MacOS X.
   __APPLE_CC__ tests for the Apple compiler and its version.
   __STDC_VERSION__ tests for the C99 mode.  */
#if defined __APPLE__ && defined __MACH__ && __APPLE_CC__ >= 5465 && !defined __cplusplus && __STDC_VERSION__ >= 199901L && !defined __GNUC_STDC_INLINE__
# define __GNUC_STDC_INLINE__ 1
#endif

/* Define to rpl_localtime if the replacement function should be used. */
#cmakedefine localtime

/* Define to a type if <wchar.h> does not define. */
#cmakedefine mbstate_t

/* Define to `int' if <sys/types.h> does not define. */
#cmakedefine mode_t

/* Define to the type of st_nlink in struct stat, or a supertype. */
#cmakedefine nlink_t

/* Define to `int' if <sys/types.h> does not define. */
#cmakedefine pid_t

/* Define as the type of the result of subtracting two pointers, if the system
   doesn't define it. */
#cmakedefine ptrdiff_t

/* Define to the equivalent of the C99 'restrict' keyword, or to
   nothing if this is not supported.  Do not define if restrict is
   supported directly.  */
#cmakedefine restrict
/* Work around a bug in Sun C++: it does not support _Restrict or
   __restrict__, even though the corresponding Sun C compiler ends up with
   "#define restrict _Restrict" or "#define restrict __restrict__" in the
   previous line.  Perhaps some future version of Sun C++ will work with
   restrict; if so, hopefully it defines __RESTRICT like Sun C does.  */
#if defined __SUNPRO_CC && !defined __RESTRICT
# define _Restrict
# define __restrict__
#endif

/* Define as an integer type suitable for memory locations that can be
   accessed atomically even in the presence of asynchnonous signals. */
#cmakedefine sig_atomic_t

/* Define to `unsigned int' if <sys/types.h> does not define. */
#cmakedefine size_t

/* Define as a signed type of the same size as size_t. */
#cmakedefine ssize_t

/* Define to `int' if <sys/types.h> doesn't define. */
#cmakedefine uid_t

/* Define to unsigned long or unsigned long long if <stdint.h> and
   <inttypes.h> don't define. */
#cmakedefine uintmax_t

/* Define as a marker that can be attached to declarations that might not
    be used.  This helps to reduce warnings, such as from
    GCC -Wunused-parameter.  */
#if __GNUC__ >= 3 || (__GNUC__ == 2 && __GNUC_MINOR__ >= 7)
# define _GL_UNUSED __attribute__ ((__unused__))
#else
# define _GL_UNUSED
#endif
/* The name _UNUSED_PARAMETER_ is an earlier spelling, although the name
   is a misnomer outside of parameter lists.  */
#define _UNUSED_PARAMETER_ _GL_UNUSED


/* Define as a macro for copying va_list variables. */
#cmakedefine va_copy

/* Define as `fork' if `vfork' does not work. */
#cmakedefine vfork

/* Define to wcscmp if the function wcscoll does not exist. */
#cmakedefine wcscoll


#define __libc_lock_t                   gl_lock_t
#define __libc_lock_define              gl_lock_define
#define __libc_lock_define_initialized  gl_lock_define_initialized
#define __libc_lock_init                gl_lock_init
#define __libc_lock_lock                gl_lock_lock
#define __libc_lock_unlock              gl_lock_unlock
#define __libc_lock_recursive_t                   gl_recursive_lock_t
#define __libc_lock_define_recursive              gl_recursive_lock_define
#define __libc_lock_define_initialized_recursive  gl_recursive_lock_define_initialized
#define __libc_lock_init_recursive                gl_recursive_lock_init
#define __libc_lock_lock_recursive                gl_recursive_lock_lock
#define __libc_lock_unlock_recursive              gl_recursive_lock_unlock
#define glthread_in_use  libintl_thread_in_use
#define glthread_lock_init_func     libintl_lock_init_func
#define glthread_lock_lock_func     libintl_lock_lock_func
#define glthread_lock_unlock_func   libintl_lock_unlock_func
#define glthread_lock_destroy_func  libintl_lock_destroy_func
#define glthread_rwlock_init_multithreaded     libintl_rwlock_init_multithreaded
#define glthread_rwlock_init_func              libintl_rwlock_init_func
#define glthread_rwlock_rdlock_multithreaded   libintl_rwlock_rdlock_multithreaded
#define glthread_rwlock_rdlock_func            libintl_rwlock_rdlock_func
#define glthread_rwlock_wrlock_multithreaded   libintl_rwlock_wrlock_multithreaded
#define glthread_rwlock_wrlock_func            libintl_rwlock_wrlock_func
#define glthread_rwlock_unlock_multithreaded   libintl_rwlock_unlock_multithreaded
#define glthread_rwlock_unlock_func            libintl_rwlock_unlock_func
#define glthread_rwlock_destroy_multithreaded  libintl_rwlock_destroy_multithreaded
#define glthread_rwlock_destroy_func           libintl_rwlock_destroy_func
#define glthread_recursive_lock_init_multithreaded     libintl_recursive_lock_init_multithreaded
#define glthread_recursive_lock_init_func              libintl_recursive_lock_init_func
#define glthread_recursive_lock_lock_multithreaded     libintl_recursive_lock_lock_multithreaded
#define glthread_recursive_lock_lock_func              libintl_recursive_lock_lock_func
#define glthread_recursive_lock_unlock_multithreaded   libintl_recursive_lock_unlock_multithreaded
#define glthread_recursive_lock_unlock_func            libintl_recursive_lock_unlock_func
#define glthread_recursive_lock_destroy_multithreaded  libintl_recursive_lock_destroy_multithreaded
#define glthread_recursive_lock_destroy_func           libintl_recursive_lock_destroy_func
#define glthread_once_func            libintl_once_func
#define glthread_once_singlethreaded  libintl_once_singlethreaded
#define glthread_once_multithreaded   libintl_once_multithreaded



#ifndef ENDIANNESS
# if defined __BIG_ENDIAN__
#  define ENDIANNESS 1
# endif
# if defined __LITTLE_ENDIAN__
#  define ENDIANNESS 0
# endif
#endif



/* A file name cannot consist of any character possible.  INVALID_PATH_CHAR
   contains the characters not allowed.  */
#if defined _MSC_VER || defined __MINGW32__
/* Woe32.  This string is valid for Windows NT/2000.  On Windows 95/98/ME some
   few characters in the range 0x80..0xff are invalid as well, but this doesn't
   matter much for our purposes.  */
# define INVALID_PATH_CHAR "\001\002\003\004\005\006\007\010\011\012\013\014\015\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037\"*/:<>?\\|"
#elif defined MSDOS
/* Something like this for MSDOG.  */
# define INVALID_PATH_CHAR "\001\002\003\004\005\006\007\010\011\012\013\014\015\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 \177\\:."
#else
/* Unix.  */
# define INVALID_PATH_CHAR "\001\002\003\004\005\006\007\010\011\012\013\014\015\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 \177/"
#endif

/* This is the page width for the message_print function.  It should
   not be set to more than 79 characters (Emacs users will appreciate
   it).  It is used to wrap the msgid and msgstr strings, and also to
   wrap the file position (#:) comments.  */
#define PAGE_WIDTH 79

/* On Windows, variables that may be in a DLL must be marked specially.  */
/*
#if ((defined _MSC_VER && defined _DLL) || defined WOE32DLL) && !defined IN_RELOCWRAPPER
# define DLL_VARIABLE __declspec (dllimport)
#else
# define DLL_VARIABLE
#endif
*/
#define DLL_VARIABLE

/* Extra OS/2 (emx+gcc) defines.  */
#ifdef __EMX__
# include "intl/os2compat.h"
#endif

#ifdef _MSC_VER
#define inline __inline
#endif
