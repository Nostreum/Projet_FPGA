/*****************************************************/
/* Various timer routines.                           */
/* Al Aburto, aburto@nosc.mil, 18 Feb 1997           */
/*                                                   */
/* t = dtime() outputs the current time in seconds.  */
/* Use CAUTION as some of these routines will mess   */
/* up when timing across the hour mark!!!            */
/*                                                   */
/* For timing I use the 'user' time whenever         */
/* possible. Using 'user+sys' time is a separate     */
/* issue.                                            */
/*                                                   */
/* Example Usage:                                    */
/* [timer options added here]                        */
/* main()                                            */
/* {                                                 */
/* double starttime,benchtime,dtime();               */
/*                                                   */
/* starttime = dtime();                              */
/* [routine to time]                                 */
/* benchtime = dtime() - starttime;                  */
/* }                                                 */
/*                                                   */
/* [timer code below added here]                     */
/*****************************************************/

#ifndef __TIMERS_B_H__
#define __TIMERS_B_H__
/***************************************************************/
/* Timer options. You MUST uncomment one of the options below  */
/* or compile, for example, with the '-DUNIX' option.          */
/***************************************************************/
/* #define TIMER_Amiga       */
/* #define TIMER_UNIX*/
/*#define TIMER_DEC_ALPHA    */
/* #define TIMER_UNIX_Old */
/* #define TIMER_VMS         */
/* #define TIMER_BORLAND_C   */
/* #define TIMER_MSC         */
/* #define TIMER_MAC        */ 
/* #define TIMER_IPSC        */
/* #define TIMER_FORTRAN_SEC */
/* #define TIMER_GTODay      */
/* #define TIMER_CTimer      */
/* #define TIMER_UXPM        */
/* #define TIMER_MAC_TMgr    */
/* #define TIMER_MAC_OSX     */
/* #define TIMER_MACH_OSX */
/* #define TIMER_PARIX       */
/* #define TIMER_POSIX9      */
/* #define TIMER_POSIX       */
/* #define TIMER_WIN32_Old   */
/* #define TIMER_WIN32	*/
/* #define TIMER_WIN64 */
/*#define TIMER_POSIX6       */
/* #define TIMER_RISCOS      */
/* #define TIMER_LINUX       */
/*****************************/

#ifdef __cplusplus
#ifdef PRAGMA_VERBOSE
#pragma message ("C++")
#endif
extern "C" {
#endif

//#pragma message ("include timers_b.h")
    
//#define MAC_OSX
//#define MACH_OSX    
//#define POSIX
//#define POSIX6
    
//#if defined(POSIX) && defined(__APPLE__)
//#define MACH_OSX
//#endif
    
//#pragma message("include timers_b.h")

// chrono macro Activation / Deactivation 
#define ENABLE_CHRONO 1

/*
 * Choice of chronometer : 
 * dtime = classical counter
 * tsc = time stamp code = cycle counter
 */

#define ENABLE_CHRONO_DTIME 1
//#define ENABLE_CHRONO_TSC 1

// there can be only one, Highlander !
#if defined(ENABLE_CHRONO_DTIME) && defined(ENABLE_CHRONO_TSC)
  #undef ENABLE_CHRONO_DTIME
#endif

#if defined(ENABLE_CHRONO)
  
  #ifdef ENABLE_CHRONO_DTIME
    #ifdef VERBOSE_PRAGMA
    #pragma message("dtime chronometer activated")
    #endif
    #define CHRONO_ZERO     0.0
    #define CHRONO_TYPE     double
    #define CHRONO_FUNCTION dtime()
  #endif

  #ifdef ENABLE_CHRONO_TSC
    #ifdef VERBOSE_PRAGMA
    #pragma message("dcycle chronometer activated")
    #endif
    #define CHRONO_ZERO 0
    #define CHRONO_TYPE     double
    #define CHRONO_FUNCTION dcycle()
  #endif


  // empecher 2 START ou 2 STOP de suite en ajoutant une bascule afin de verifier l'enchainement des chronometres

  //#define CHRONO(x) double chronometer##x; 
  #define CHRONO0_VAR CHRONO_TYPE chrono0_start, chrono0_stop, chrono0_diff = CHRONO_ZERO
  #define CHRONO1_VAR CHRONO_TYPE chrono1_start, chrono1_stop, chrono1_diff = CHRONO_ZERO
  #define CHRONO2_VAR CHRONO_TYPE chrono2_start, chrono2_stop, chrono2_diff = CHRONO_ZERO
  #define CHRONO3_VAR CHRONO_TYPE chrono3_start, chrono3_stop, chrono3_diff = CHRONO_ZERO
  #define CHRONO4_VAR CHRONO_TYPE chrono4_start, chrono4_stop, chrono4_diff = CHRONO_ZERO
  #define CHRONO5_VAR CHRONO_TYPE chrono5_start, chrono5_stop, chrono5_diff = CHRONO_ZERO
  #define CHRONO6_VAR CHRONO_TYPE chrono6_start, chrono6_stop, chrono6_diff = CHRONO_ZERO
  #define CHRONO7_VAR CHRONO_TYPE chrono7_start, chrono7_stop, chrono7_diff = CHRONO_ZERO

  #define CHRONO0_RESET chrono0_start = chrono0_stop = chrono0_diff = CHRONO_ZERO
  #define CHRONO1_RESET chrono1_start = chrono1_stop = chrono1_diff = CHRONO_ZERO
  #define CHRONO2_RESET chrono2_start = chrono2_stop = chrono2_diff = CHRONO_ZERO
  #define CHRONO3_RESET chrono3_start = chrono3_stop = chrono3_diff = CHRONO_ZERO
  #define CHRONO4_RESET chrono4_start = chrono4_stop = chrono4_diff = CHRONO_ZERO
  #define CHRONO5_RESET chrono5_start = chrono5_stop = chrono5_diff = CHRONO_ZERO
  #define CHRONO6_RESET chrono6_start = chrono6_stop = chrono6_diff = CHRONO_ZERO
  #define CHRONO7_RESET chrono7_start = chrono7_stop = chrono7_diff = CHRONO_ZERO

  #define CHRONO0_START chrono0_start = CHRONO_FUNCTION
  #define CHRONO1_START chrono1_start = CHRONO_FUNCTION
  #define CHRONO2_START chrono2_start = CHRONO_FUNCTION
  #define CHRONO3_START chrono3_start = CHRONO_FUNCTION
  #define CHRONO4_START chrono4_start = CHRONO_FUNCTION
  #define CHRONO5_START chrono5_start = CHRONO_FUNCTION
  #define CHRONO6_START chrono6_start = CHRONO_FUNCTION
  #define CHRONO7_START chrono7_start = CHRONO_FUNCTION

  #define CHRONO0_STOP chrono0_stop = CHRONO_FUNCTION; chrono0_diff += chrono0_stop - chrono0_start
  #define CHRONO1_STOP chrono1_stop = CHRONO_FUNCTION; chrono1_diff += chrono1_stop - chrono1_start
  #define CHRONO2_STOP chrono2_stop = CHRONO_FUNCTION; chrono2_diff += chrono2_stop - chrono2_start
  #define CHRONO3_STOP chrono3_stop = CHRONO_FUNCTION; chrono3_diff += chrono3_stop - chrono3_start
  #define CHRONO4_STOP chrono4_stop = CHRONO_FUNCTION; chrono4_diff += chrono4_stop - chrono4_start
  #define CHRONO5_STOP chrono5_stop = CHRONO_FUNCTION; chrono5_diff += chrono5_stop - chrono5_start
  #define CHRONO6_STOP chrono6_stop = CHRONO_FUNCTION; chrono6_diff += chrono6_stop - chrono6_start
  #define CHRONO7_STOP chrono7_stop = CHRONO_FUNCTION; chrono7_diff += chrono7_stop - chrono7_start

  #define CHRONO0_EVAL chrono0_diff
  #define CHRONO1_EVAL chrono1_diff
  #define CHRONO2_EVAL chrono2_diff
  #define CHRONO3_EVAL chrono3_diff
  #define CHRONO4_EVAL chrono4_diff
  #define CHRONO5_EVAL chrono5_diff
  #define CHRONO6_EVAL chrono6_diff
  #define CHRONO7_EVAL chrono6_diff

  #define CHRONO0(X) CHRONO0_START; X; CHRONO0_STOP;
  #define CHRONO1(X) CHRONO1_START; X; CHRONO1_STOP;
  #define CHRONO2(X) CHRONO2_START; X; CHRONO2_STOP;
  #define CHRONO3(X) CHRONO3_START; X; CHRONO3_STOP;
  #define CHRONO4(X) CHRONO4_START; X; CHRONO4_STOP;
  #define CHRONO5(X) CHRONO5_START; X; CHRONO5_STOP;
  #define CHRONO6(X) CHRONO6_START; X; CHRONO6_STOP;
  #define CHRONO7(X) CHRONO7_START; X; CHRONO7_STOP;

#else

  #define CHRONO0_VAR
  #define CHRONO1_VAR
  #define CHRONO2_VAR
  #define CHRONO3_VAR
  #define CHRONO4_VAR
  #define CHRONO5_VAR
  #define CHRONO6_VAR
  #define CHRONO7_VAR

  #define CHRONO0_RESET
  #define CHRONO1_RESET
  #define CHRONO2_RESET
  #define CHRONO3_RESET
  #define CHRONO4_RESET
  #define CHRONO5_RESET
  #define CHRONO6_RESET
  #define CHRONO7_RESET

  #define CHRONO0_START
  #define CHRONO1_START
  #define CHRONO2_START
  #define CHRONO3_START
  #define CHRONO4_START
  #define CHRONO5_START
  #define CHRONO6_START
  #define CHRONO7_START

  #define CHRONO0_STOP
  #define CHRONO1_STOP
  #define CHRONO2_STOP
  #define CHRONO3_STOP
  #define CHRONO4_STOP
  #define CHRONO5_STOP
  #define CHRONO6_STOP
  #define CHRONO7_STOP

  #define CHRONO0_EVAL 0
  #define CHRONO1_EVAL 0
  #define CHRONO2_EVAL 0
  #define CHRONO3_EVAL 0
  #define CHRONO4_EVAL 0
  #define CHRONO5_EVAL 0
  #define CHRONO6_EVAL 0
  #define CHRONO7_EVAL 0

  #define CHRONO0(X) CHRONO0_START; X; CHRONO0_STOP;
  #define CHRONO1(X) CHRONO1_START; X; CHRONO1_STOP;
  #define CHRONO2(X) CHRONO2_START; X; CHRONO2_STOP;
  #define CHRONO3(X) CHRONO3_START; X; CHRONO3_STOP;
  #define CHRONO4(X) CHRONO4_START; X; CHRONO4_STOP;
  #define CHRONO5(X) CHRONO5_START; X; CHRONO5_STOP;
  #define CHRONO6(X) CHRONO6_START; X; CHRONO6_STOP;
  #define CHRONO7(X) CHRONO7_START; X; CHRONO7_STOP;

#endif
    

double dtime(void);
// dtime is always defined
// dcycle can be defined for only few arch: Power(PC) and Intel/AMD

#ifdef LINUX
long long i64cycle(void);
#endif // LINUX

#ifdef WIN32
unsigned __int64  readTSC(void);
unsigned __int64 i64cycle(void);
double             dcycle(void);
#endif

#if defined(_i386_) || defined(__x86_64__)
unsigned long long int readTSC(void);
unsigned long long int i64cycle(void);
double dcycle(void);
#endif
    
#if defined(_ARCH_PPC)
__inline__ unsigned long long  readTSC(void);
__inline__ unsigned long long i64cycle(void);
double                          dcycle(void);
#endif    

#ifdef __cplusplus
}
#endif


#endif /*__TIMERS_B_H__*/
