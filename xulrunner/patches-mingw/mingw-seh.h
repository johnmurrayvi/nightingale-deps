
#ifndef _MINGW_SEH_H_
#define _MINGW_SEH_H_

// Note the unmatched braces in these macros.  These are to allow one to use
// the same variable name more than once (new scope).
#define __seh_try                                                             \
{                                                                             \
    __SEH_EXCEPTION_REGISTRATION _lseh_er;                                    \
    __SEH_HANDLER _lseh_handler;                                              \
                                                                              \
    _lseh_er.handler =                                                        \
        reinterpret_cast<PEXCEPTION_HANDLER>(__SEH_HANDLER::ExceptionRouter); \
    _lseh_er.exthandler = &_lseh_handler;                                     \
    asm volatile ("movl %%fs:0, %0" : "=r" (_lseh_er.prev));                  \
    asm volatile ("movl %0, %%fs:0" : : "r" (&_lseh_er));                     \
    int _lseh_setjmp_res = setjmp(_lseh_handler.context);                     \
    while(true) {                                                             \
        if(_lseh_setjmp_res != 0) {                                           \
            break;                                                            \
        }                                                                     \


#define __seh_except(rec, ctx)                                                \
        break;                                                                \
    }                                                                         \
    PEXCEPTION_RECORD rec = &_lseh_handler.excRecord;                         \
    PCONTEXT ctx = &_lseh_handler.excContext;                                 \
                                                                              \
    asm volatile ("movl %0, %%fs:0" : : "r" (_lseh_er.prev));                 \
    if(_lseh_setjmp_res != 0)
    
#define __seh_end }

#endif // _MINGW_SEH_H_
