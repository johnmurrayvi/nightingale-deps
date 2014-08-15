
#ifndef _ICONV_STRERROR_H_
#define _ICONV_STRERROR_H_

#if REPLACE_STRERROR

#ifdef __cplusplus
extern "C" {
#endif

# undef strerror
# define strerror(n) rpl_strerror(n)

extern char * rpl_strerror (int n);

#ifdef __cplusplus
}
#endif


#endif // REPLACE_STRERROR
#endif // _ICONV_STRERROR_H_
