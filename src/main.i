# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "/usr/local/avr/include/inttypes.h" 1 3
# 37 "/usr/local/avr/include/inttypes.h" 3
# 1 "/usr/local/lib/gcc/avr/5.4.0/include/stdint.h" 1 3 4
# 9 "/usr/local/lib/gcc/avr/5.4.0/include/stdint.h" 3 4
# 1 "/usr/local/avr/include/stdint.h" 1 3 4
# 125 "/usr/local/avr/include/stdint.h" 3 4

# 125 "/usr/local/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/usr/local/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/usr/local/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/usr/local/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/usr/local/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/local/lib/gcc/avr/5.4.0/include/stdint.h" 2 3 4
# 38 "/usr/local/avr/include/inttypes.h" 2 3
# 77 "/usr/local/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 2 "main.c" 2
# 1 "/usr/local/avr/include/avr/io.h" 1 3
# 99 "/usr/local/avr/include/avr/io.h" 3
# 1 "/usr/local/avr/include/avr/sfr_defs.h" 1 3
# 100 "/usr/local/avr/include/avr/io.h" 2 3
# 372 "/usr/local/avr/include/avr/io.h" 3
# 1 "/usr/local/avr/include/avr/iotn9.h" 1 3
# 373 "/usr/local/avr/include/avr/io.h" 2 3
# 585 "/usr/local/avr/include/avr/io.h" 3
# 1 "/usr/local/avr/include/avr/portpins.h" 1 3
# 586 "/usr/local/avr/include/avr/io.h" 2 3

# 1 "/usr/local/avr/include/avr/common.h" 1 3
# 588 "/usr/local/avr/include/avr/io.h" 2 3

# 1 "/usr/local/avr/include/avr/version.h" 1 3
# 590 "/usr/local/avr/include/avr/io.h" 2 3


# 1 "/usr/local/avr/include/avr/xmega.h" 1 3
# 593 "/usr/local/avr/include/avr/io.h" 2 3



# 1 "/usr/local/avr/include/avr/fuse.h" 1 3
# 597 "/usr/local/avr/include/avr/io.h" 2 3


# 1 "/usr/local/avr/include/avr/lock.h" 1 3
# 600 "/usr/local/avr/include/avr/io.h" 2 3
# 3 "main.c" 2
# 1 "/usr/local/avr/include/avr/interrupt.h" 1 3
# 4 "main.c" 2
# 1 "/usr/local/avr/include/util/delay.h" 1 3
# 45 "/usr/local/avr/include/util/delay.h" 3
# 1 "/usr/local/avr/include/util/delay_basic.h" 1 3
# 40 "/usr/local/avr/include/util/delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "/usr/local/avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/local/avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "/usr/local/avr/include/util/delay.h" 2 3
# 1 "/usr/local/avr/include/math.h" 1 3
# 127 "/usr/local/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/local/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "/usr/local/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "/usr/local/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "/usr/local/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "/usr/local/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "/usr/local/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "/usr/local/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "/usr/local/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "/usr/local/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "/usr/local/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 47 "/usr/local/avr/include/util/delay.h" 2 3
# 86 "/usr/local/avr/include/util/delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "/usr/local/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 174 "/usr/local/avr/include/util/delay.h"
          1000000
# 174 "/usr/local/avr/include/util/delay.h" 3
               ) / 1e3) * __ms;
# 184 "/usr/local/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 210 "/usr/local/avr/include/util/delay.h" 3
}
# 254 "/usr/local/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 263 "/usr/local/avr/include/util/delay.h"
          1000000
# 263 "/usr/local/avr/include/util/delay.h" 3
               ) / 1e6) * __us;
# 273 "/usr/local/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 299 "/usr/local/avr/include/util/delay.h" 3
}
# 5 "main.c" 2






# 10 "main.c"
inline static void on(uint8_t pin) {
 
# 11 "main.c" 3
(*(volatile uint8_t *)((0x02) + 0x00)) 
# 11 "main.c"
      |= 
# 11 "main.c" 3
         (1 << (
# 11 "main.c"
         pin
# 11 "main.c" 3
         ))
# 11 "main.c"
                 ;
}

inline static void off(uint8_t pin) {
 
# 15 "main.c" 3
(*(volatile uint8_t *)((0x02) + 0x00)) 
# 15 "main.c"
      &= ~
# 15 "main.c" 3
          (1 << (
# 15 "main.c"
          pin
# 15 "main.c" 3
          ))
# 15 "main.c"
                  ;
}

volatile uint8_t inputTimeout, outputPulseDone;
volatile uint16_t pulseLength;

inline static void startInputPulseTimer() {
 inputTimeout = 0;
 
# 23 "main.c" 3
(*(volatile uint8_t *)((0x2E) + 0x00)) 
# 23 "main.c"
       = 0;
 
# 24 "main.c" 3
(*(volatile uint16_t *)((0x28) + 0x00)) 
# 24 "main.c"
      = 0;
 
# 25 "main.c" 3
(*(volatile uint8_t *)((0x2B) + 0x00)) 
# 25 "main.c"
       = 
# 25 "main.c" 3
         (1 << (0))
# 25 "main.c"
                   ;
 
# 26 "main.c" 3
(*(volatile uint8_t *)((0x2D) + 0x00)) 
# 26 "main.c"
       = 
# 26 "main.c" 3
         (1 << (0)) 
# 26 "main.c"
                   | 
# 26 "main.c" 3
                     (1 << (1))
# 26 "main.c"
                              ;
}

inline static void stopInputPulseTimer() {
 pulseLength = 
# 30 "main.c" 3
              (*(volatile uint16_t *)((0x28) + 0x00))
# 30 "main.c"
                   ;
 
# 31 "main.c" 3
(*(volatile uint8_t *)((0x2D) + 0x00)) 
# 31 "main.c"
       = 0;
}

inline static void startOutputPulseTimer() {
 outputPulseDone = 0;
 
# 36 "main.c" 3
(*(volatile uint8_t *)((0x2E) + 0x00)) 
# 36 "main.c"
       = 0;
 
# 37 "main.c" 3
(*(volatile uint8_t *)((0x2A) + 0x00)) 
# 37 "main.c"
      |= 
# 37 "main.c" 3
         (1 << (1))
# 37 "main.c"
                   ;
 
# 38 "main.c" 3
(*(volatile uint8_t *)((0x2B) + 0x00)) 
# 38 "main.c"
       = 
# 38 "main.c" 3
         (1 << (0)) 
# 38 "main.c"
                    | 
# 38 "main.c" 3
                      (1 << (1))
# 38 "main.c"
                                 ;
 
# 39 "main.c" 3
(*(volatile uint16_t *)((0x26) + 0x00)) 
# 39 "main.c"
      = pulseLength;
 
# 40 "main.c" 3
(*(volatile uint16_t *)((0x28) + 0x00)) 
# 40 "main.c"
      = 0;
 
# 41 "main.c" 3
(*(volatile uint8_t *)((0x2D) + 0x00)) 
# 41 "main.c"
       = 
# 41 "main.c" 3
         (1 << (0)) 
# 41 "main.c"
                   | 
# 41 "main.c" 3
                     (1 << (1))
# 41 "main.c"
                              ;
}

inline static stopOutputPulseTimer() {
 
# 45 "main.c" 3
(*(volatile uint8_t *)((0x2D) + 0x00)) 
# 45 "main.c"
       = 0;
}

inline static uint8_t isNotaGlitch() {
 return 
# 49 "main.c" 3
       (*(volatile uint16_t *)((0x28) + 0x00)) 
# 49 "main.c"
             > 15;
}


# 52 "main.c" 3
void __vector_4 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_4 (void)
# 52 "main.c"
                 {
 inputTimeout = 1;
 outputPulseDone = 1;
 
# 55 "main.c" 3
(*(volatile uint8_t *)((0x2D) + 0x00)) 
# 55 "main.c"
       = 0;
}


# 58 "main.c" 3
void __vector_5 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_5 (void) 
# 58 "main.c"
                    {
 outputPulseDone = 1;
}

inline static uint8_t isInputHigh() {
 return (
# 63 "main.c" 3
        (*(volatile uint8_t *)((0x00) + 0x00)) 
# 63 "main.c"
             & 
# 63 "main.c" 3
               (1 << (2))
# 63 "main.c"
                         );
}

inline static uint8_t isInputLow() {
 return !(
# 67 "main.c" 3
         (*(volatile uint8_t *)((0x00) + 0x00)) 
# 67 "main.c"
              & 
# 67 "main.c" 3
                (1 << (2))
# 67 "main.c"
                          );
}

void main(void) {

 
# 72 "main.c" 3
(*(volatile uint8_t *)((0x01) + 0x00)) 
# 72 "main.c"
     |= 
# 72 "main.c" 3
        (1 << (1)) 
# 72 "main.c"
                 | 
# 72 "main.c" 3
                   (1 << (0))
# 72 "main.c"
                              ;
 on(
# 73 "main.c" 3
   0
# 73 "main.c"
         );
 _delay_ms(1);

 
# 76 "main.c" 3
__asm__ __volatile__ ("sei" ::: "memory")
# 76 "main.c"
     ;

 while(1) {
  while(isInputHigh()) {

  }

  startInputPulseTimer();
  while(isInputLow() && !inputTimeout) {
   if(isNotaGlitch()) {
    on(
# 86 "main.c" 3
      1
# 86 "main.c"
         );
   }

  }
  stopInputPulseTimer();
  off(
# 91 "main.c" 3
     1
# 91 "main.c"
        );

  if(inputTimeout) {
   while(isInputLow()) {

   }
  } else {
   if(isNotaGlitch()) {
    off(
# 99 "main.c" 3
       0
# 99 "main.c"
             );
    startOutputPulseTimer();
    while(!outputPulseDone) {

    }
    stopOutputPulseTimer();
    on(
# 105 "main.c" 3
      0
# 105 "main.c"
            );
   }
  }
 }
}
