/* config.h.in.  Generated from configure.ac by autoheader.  */

/* Define if the compiler is building for multiple architectures of Apple
   platforms at once. */
#cmakedefine AA_APPLE_UNIVERSAL_BUILD

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

/* Define to 1 if translation of program messages to the user's native
   language is requested. */
#cmakedefine ENABLE_NLS

/* Define to 1 if the package shall run at any location in the file system. */
#cmakedefine ENABLE_RELOCATABLE

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

/* Define to 1 if realpath() can malloc memory, always gives an absolute path,
   and handles trailing slash correctly. */
#cmakedefine FUNC_REALPATH_WORKS

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module canonicalize-lgpl shall be considered present. */
#cmakedefine GNULIB_CANONICALIZE_LGPL

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module fwriteerror shall be considered present. */
#cmakedefine GNULIB_FWRITEERROR

/* Define to a C preprocessor expression that evaluates to 1 or 0, depending
   whether the gnulib module sigpipe shall be considered present. */
#cmakedefine GNULIB_SIGPIPE

/* Define to 1 when the gnulib module canonicalize_file_name should be tested.
   */
#cmakedefine GNULIB_TEST_CANONICALIZE_FILE_NAME

/* Define to 1 when the gnulib module environ should be tested. */
#cmakedefine GNULIB_TEST_ENVIRON

/* Define to 1 when the gnulib module getopt-gnu should be tested. */
#cmakedefine GNULIB_TEST_GETOPT_GNU

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

/* Define to 1 when the gnulib module mbsstr should be tested. */
#cmakedefine GNULIB_TEST_MBSSTR

/* Define to 1 when the gnulib module memchr should be tested. */
#cmakedefine GNULIB_TEST_MEMCHR

/* Define to 1 when the gnulib module readlink should be tested. */
#cmakedefine GNULIB_TEST_READLINK

/* Define to 1 when the gnulib module realpath should be tested. */
#cmakedefine GNULIB_TEST_REALPATH

/* Define to 1 when the gnulib module sigprocmask should be tested. */
#cmakedefine GNULIB_TEST_SIGPROCMASK

/* Define to 1 when the gnulib module stat should be tested. */
#cmakedefine GNULIB_TEST_STAT

/* Define to 1 when the gnulib module strerror should be tested. */
#cmakedefine GNULIB_TEST_STRERROR

/* Define to 1 when the gnulib module strnlen should be tested. */
#cmakedefine GNULIB_TEST_STRNLEN

/* Define to 1 when the gnulib module wcwidth should be tested. */
#cmakedefine GNULIB_TEST_WCWIDTH

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
#cmakedefine HAVE_ARGZ_NEXT 1

/* Define to 1 if you have the `argz_stringify' function. */
#cmakedefine HAVE_ARGZ_STRINGIFY 1

/* Define to 1 if you have the `asprintf' function. */
#cmakedefine HAVE_ASPRINTF 1

/* Define to 1 if you have the `atexit' function. */
#cmakedefine HAVE_ATEXIT 1

/* Define to 1 if you have the <bp-sym.h> header file. */
#cmakedefine HAVE_BP_SYM_H 1

/* Define to 1 if the compiler understands __builtin_expect. */
#cmakedefine HAVE_BUILTIN_EXPECT 1

/* Define to 1 if you have the `canonicalize_file_name' function. */
#cmakedefine HAVE_CANONICALIZE_FILE_NAME 1

/* Define to 1 if you have the MacOS X function CFLocaleCopyCurrent in the
   CoreFoundation framework. */
#cmakedefine HAVE_CFLOCALECOPYCURRENT 1

/* Define to 1 if you have the MacOS X function CFPreferencesCopyAppValue in
   the CoreFoundation framework. */
#cmakedefine HAVE_CFPREFERENCESCOPYAPPVALUE 1

/* Define if the GNU dcgettext() function is already present or preinstalled.
   */
#cmakedefine HAVE_DCGETTEXT

/* Define to 1 if you have the declaration of `clearerr_unlocked', and to 0 if
   you don't. */
#cmakedefine HAVE_DECL_CLEARERR_UNLOCKED 1

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

/* Define to 1 if you have the declaration of `getenv', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_GETENV 1

/* Define to 1 if you have the declaration of `getopt_clip', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_GETOPT_CLIP 1

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

/* Define to 1 if you have the declaration of `strerror', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_STRERROR 1

/* Define to 1 if you have the declaration of `strerror_r', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_STRERROR_R 1

/* Define to 1 if you have the declaration of `strnlen', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_STRNLEN 1

/* Define to 1 if you have the declaration of `wcwidth', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_WCWIDTH 1

/* Define to 1 if you have the declaration of `_snprintf', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL__SNPRINTF 1

/* Define to 1 if you have the declaration of `_snwprintf', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL__SNWPRINTF 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#cmakedefine HAVE_DLFCN_H 1

/* Define if you have the declaration of environ. */
#cmakedefine HAVE_ENVIRON_DECL 1

/* Define to 1 if you have the <errno.h> header file. */
#cmakedefine HAVE_ERRNO_H 1

/* Define to 1 if you have the `fwprintf' function. */
#cmakedefine HAVE_FWPRINTF 1

/* Define to 1 if you have the `getcwd' function. */
#cmakedefine HAVE_GETCWD 1

/* Define to 1 if you have the `_getcwd' function. */
#cmakedefine HAVE_GETCWD2 1

/* Define to 1 if you have the `getegid' function. */
#cmakedefine HAVE_GETEGID 1

/* Define to 1 if you have the `geteuid' function. */
#cmakedefine HAVE_GETEUID 1

/* Define to 1 if you have the `getgid' function. */
#cmakedefine HAVE_GETGID 1

/* Define to 1 if you have the <getopt.h> header file. */
#cmakedefine HAVE_GETOPT_H 1

/* Define to 1 if you have the `getopt_long_only' function. */
#cmakedefine HAVE_GETOPT_LONG_ONLY 1

/* Define to 1 if you have the `getpagesize' function. */
#cmakedefine HAVE_GETPAGESIZE 1

/* Define if the GNU gettext() function is already present or preinstalled. */
#cmakedefine HAVE_GETTEXT 1

/* Define to 1 if you have the `getuid' function. */
#cmakedefine HAVE_GETUID 1

/* Define if you have the iconv() function and it works. */
#cmakedefine HAVE_ICONV @HAVE_ICONV@

/* Define to 1 if you have the <iconv.h> header file. */
#cmakedefine HAVE_ICONV_H 1

/* Define if you have the 'intmax_t' type in <stdint.h> or <inttypes.h>. */
#cmakedefine HAVE_INTMAX_T 1

/* Define to 1 if you have the <inttypes.h> header file. */
#cmakedefine HAVE_INTTYPES_H 1

/* Define if <inttypes.h> exists, doesn't clash with <sys/types.h>, and
   declares uintmax_t. */
#cmakedefine HAVE_INTTYPES_H_WITH_UINTMAX 1

/* Define to 1 if you have the `iswblank' function. */
#cmakedefine HAVE_ISWBLANK 1

/* Define to 1 if you have the `iswcntrl' function. */
#cmakedefine HAVE_ISWCNTRL 1

/* Define if you have <langinfo.h> and nl_langinfo(CODESET). */
#cmakedefine HAVE_LANGINFO_CODESET

/* Define if your <locale.h> file defines LC_MESSAGES. */
#cmakedefine HAVE_LC_MESSAGES

/* Define to 1 if you have the <limits.h> header file. */
#cmakedefine HAVE_LIMITS_H 1

/* Define to 1 if the system has the type `long long int'. */
#cmakedefine HAVE_LONG_LONG_INT 1

/* Define to 1 if you have the `lstat' function. */
#cmakedefine HAVE_LSTAT 1

/* Define to 1 if you have the <mach-o/dyld.h> header file. */
#cmakedefine HAVE_MACH_O_DYLD_H 1

/* Define if the 'malloc' function is POSIX compliant. */
#cmakedefine HAVE_MALLOC_POSIX

/* Define to 1 if mmap()'s MAP_ANONYMOUS flag is available after including
   config.h and <sys/mman.h>. */
#cmakedefine HAVE_MAP_ANONYMOUS 1

/* Define to 1 if you have the `mbrtowc' function. */
#cmakedefine HAVE_MBRTOWC 1

/* Define to 1 if you have the `mbsinit' function. */
#cmakedefine HAVE_MBSINIT 1

/* Define to 1 if you have the `mbslen' function. */
#cmakedefine HAVE_MBSLEN 1

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

/* Define to 1 if you have a working `mmap' system call. */
#cmakedefine HAVE_MMAP 1

/* Define to 1 if you have the `mprotect' function. */
#cmakedefine HAVE_MPROTECT 1

/* Define to 1 if you have the `munmap' function. */
#cmakedefine HAVE_MUNMAP 1

/* Define to 1 if you have the `newlocale' function. */
#cmakedefine HAVE_NEWLOCALE 1

/* Define to 1 if you have the `pathconf' function. */
#cmakedefine HAVE_PATHCONF 1

/* Define if your printf() function supports format strings with positions. */
#cmakedefine HAVE_POSIX_PRINTF

/* Define if the <pthread.h> defines PTHREAD_MUTEX_RECURSIVE. */
#cmakedefine HAVE_PTHREAD_MUTEX_RECURSIVE

/* Define if the POSIX multithreading library has read/write locks. */
#cmakedefine HAVE_PTHREAD_RWLOCK

/* Define to 1 if you have the `putenv' function. */
#cmakedefine HAVE_PUTENV 1

/* Define to 1 if you have the <random.h> header file. */
#cmakedefine HAVE_RANDOM_H 1

/* Define to 1 if atoll is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_ATOLL 1

/* Define to 1 if btowc is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_BTOWC 1

/* Define to 1 if canonicalize_file_name is declared even after undefining
   macros. */
#cmakedefine HAVE_RAW_DECL_CANONICALIZE_FILE_NAME 1

/* Define to 1 if chown is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_CHOWN 1

/* Define to 1 if dprintf is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_DPRINTF 1

/* Define to 1 if dup2 is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_DUP2 1

/* Define to 1 if dup3 is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_DUP3 1

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

/* Define to 1 if getsubopt is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_GETSUBOPT 1

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

/* Define to 1 if pipe2 is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_PIPE2

/* Define to 1 if popen is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_POPEN

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

/* Define to 1 if renameat is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RENAMEAT

/* Define to 1 if rmdir is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RMDIR

/* Define to 1 if rpmatch is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_RPMATCH

/* Define to 1 if setenv is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SETENV

/* Define to 1 if setstate_r is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SETSTATE_R

/* Define to 1 if setusershell is declared even after undefining macros. */
#cmakedefine HAVE_RAW_DECL_SETUSERSHELL

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

/* Define to 1 if you have the `realpath' function. */
#cmakedefine HAVE_REALPATH 1

/* Define to 1 if you have the <search.h> header file. */
#cmakedefine HAVE_SEARCH_H 1

/* Define to 1 if you have the `setenv' function. */
#cmakedefine HAVE_SETENV 1

/* Define to 1 if you have the `setlocale' function. */
#cmakedefine HAVE_SETLOCALE 1

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

/* Define to 1 if you have the `snprintf' function. */
#cmakedefine HAVE_SNPRINTF 1

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

/* Define to 1 if you have the `strcasecmp' function. */
#cmakedefine HAVE_STRCASECMP 1

/* Define to 1 if you have the `strdup' function. */
#cmakedefine HAVE_STRDUP 1

/* Define to 1 if you have the `strerror_r' function. */
#cmakedefine HAVE_STRERROR_R 1

/* Define to 1 if you have the <strings.h> header file. */
#cmakedefine HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#cmakedefine HAVE_STRING_H 1

/* Define to 1 if you have the `strnlen' function. */
#cmakedefine HAVE_STRNLEN 1

/* Define to 1 if you have the `strtol' function. */
#cmakedefine HAVE_STRTOL 1

/* Define to 1 if you have the `strtoul' function. */
#cmakedefine HAVE_STRTOUL 1

/* Define to 1 if the system has the type `struct random_data'. */
#cmakedefine HAVE_STRUCT_RANDOM_DATA 1

/* Define to 1 if you have the <sys/bitypes.h> header file. */
#cmakedefine HAVE_SYS_BITYPES_H 1

/* Define to 1 if you have the <sys/inttypes.h> header file. */
#cmakedefine HAVE_SYS_INTTYPES_H 1

/* Define to 1 if you have the <sys/mman.h> header file. */
#cmakedefine HAVE_SYS_MMAN_H 1

/* Define to 1 if you have the <sys/param.h> header file. */
#cmakedefine HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#cmakedefine HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#cmakedefine HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#cmakedefine HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#cmakedefine HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <time.h> header file. */
#cmakedefine HAVE_TIME_H 1

/* Define to 1 if you have the `tsearch' function. */
#cmakedefine HAVE_TSEARCH 1

/* Define if you have the 'uintmax_t' type in <stdint.h> or <inttypes.h>. */
#cmakedefine HAVE_UINTMAX_T 1

/* Define to 1 if you have the <unistd.h> header file. */
#cmakedefine HAVE_UNISTD_H 1

/* Define to 1 if the system has the type `unsigned long long int'. */
#cmakedefine HAVE_UNSIGNED_LONG_LONG_INT 1

/* Define to 1 if you have the `uselocale' function. */
#cmakedefine HAVE_USELOCALE 1

/* Define to 1 or 0, depending whether the compiler supports simple visibility
   declarations. */
#cmakedefine HAVE_VISIBILITY 1

/* Define to 1 if you have the <wchar.h> header file. */
#cmakedefine HAVE_WCHAR_H 1

/* Define if you have the 'wchar_t' type. */
#cmakedefine HAVE_WCHAR_T

/* Define to 1 if you have the `wcrtomb' function. */
#cmakedefine HAVE_WCRTOMB 1

/* Define to 1 if you have the `wcslen' function. */
#cmakedefine HAVE_WCSLEN 1

/* Define to 1 if you have the `wcsnlen' function. */
#cmakedefine HAVE_WCSNLEN 1

/* Define to 1 if you have the <wctype.h> header file. */
#cmakedefine HAVE_WCTYPE_H 1

/* Define to 1 if you have the `wcwidth' function. */
#cmakedefine HAVE_WCWIDTH 1

/* Define to 1 if you have the <winsock2.h> header file. */
#cmakedefine HAVE_WINSOCK2_H 1

/* Define if you have the 'wint_t' type. */
#cmakedefine HAVE_WINT_T

/* Define to 1 if O_NOATIME works. */
#cmakedefine HAVE_WORKING_O_NOATIME 1

/* Define to 1 if O_NOFOLLOW works. */
#cmakedefine HAVE_WORKING_O_NOFOLLOW 1

/* Define to 1 if the system has the type `_Bool'. */
#cmakedefine HAVE__BOOL 1

/* Define to 1 if you have the `_NSGetExecutablePath' function. */
#cmakedefine HAVE__NSGETEXECUTABLEPATH 1

/* Define to 1 if you have the `__fsetlocking' function. */
#cmakedefine HAVE___FSETLOCKING 1

/* Define as const if the declaration of iconv() needs const. */
#cmakedefine ICONV_CONST @ICONV_CONST@

/* Define to a symbolic name denoting the flavor of iconv_open()
   implementation. */
#cmakedefine ICONV_FLAVOR

/* Define to the value of ${prefix}, as a string. */
#cmakedefine INSTALLPREFIX

/* Define if integer division by zero raises signal SIGFPE. */
#cmakedefine INTDIV0_RAISES_SIGFPE 1

#if FILE_SYSTEM_BACKSLASH_IS_FILE_NAME_SEPARATOR
# define ISSLASH(C) ((C) == '/' || (C) == '\\')
#else
# define ISSLASH(C) ((C) == '/')
#endif

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

/* Version number of package */
#cmakedefine VERSION

/* Define to l, ll, u, ul, ull, etc., as suitable for constants of type
   'wchar_t'. */
#cmakedefine WCHAR_T_SUFFIX

/* Define to l, ll, u, ul, ull, etc., as suitable for constants of type
   'wint_t'. */
#cmakedefine WINT_T_SUFFIX

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

/* Define to `int' if <sys/types.h> doesn't define. */
#cmakedefine gid_t

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#cmakedefine inline
#endif

/* Work around a bug in Apple GCC 4.0.1 build 5465: In C99 mode, it supports
   the ISO C 99 semantics of 'extern inline' (unlike the GNU C semantics of
   earlier versions), but does not display it by setting __GNUC_STDC_INLINE__.
   __APPLE__ && __MACH__ test for MacOS X.
   __APPLE_CC__ tests for the Apple compiler and its version.
   __STDC_VERSION__ tests for the C99 mode.  */
#if defined __APPLE__ && defined __MACH__ && __APPLE_CC__ >= 5465 && !defined __cplusplus && __STDC_VERSION__ >= 199901L && !defined __GNUC_STDC_INLINE__
# define __GNUC_STDC_INLINE__ 1
#endif

/* Define to a type if <wchar.h> does not define. */
#cmakedefine mbstate_t

/* Define to the type of st_nlink in struct stat, or a supertype. */
#cmakedefine nlink_t

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

/* Define to `unsigned int' if <sys/types.h> does not define. */
#cmakedefine size_t

/* Define as a signed type of the same size as size_t. */
#cmakedefine ssize_t

/* Define to `int' if <sys/types.h> doesn't define. */
#cmakedefine uid_t

/* Define to unsigned long or unsigned long long if <stdint.h> and
   <inttypes.h> don't define. */
#cmakedefine uintmax_t @uintmax_t@
#cmakedefine intmax_t @intmax_t@

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



/* On Windows, variables that may be in a DLL must be marked specially.  */
#if (defined _MSC_VER && defined _DLL) && !defined IN_RELOCWRAPPER
# define DLL_VARIABLE __declspec (dllimport)
#else
# define DLL_VARIABLE
#endif

/* Extra OS/2 (emx+gcc) defines.  */
#ifdef __EMX__
# include "intl/os2compat.h"
#endif

#ifdef _MSC_VER
#define inline __inline
#endif
