/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x800C9B30 */

#ifdef NON_MATCHING
//This needs to be compiled with mips3, which isn't yet supported
long long __d_to_ll(double d) {
   return d;
}
long long __f_to_ll(float f) {
   return f;
}
unsigned long long __d_to_ull(double d) {
   return d;
}
unsigned long long __f_to_ull(float f) {
   return f;
}
double __ll_to_d(long long s) {
   return s;
}
float __ll_to_f(long long s) {
   return s;
}
double __ull_to_d(unsigned long long u) {
   return u;
}
float __ull_to_f(unsigned long long u) {
   return u;
}
#else
#include "types.h"
#include "macros.h"

GLOBAL_ASM("lib/asm/non_matchings/unknown_0CA730/__d_to_ll.s")
GLOBAL_ASM("lib/asm/non_matchings/unknown_0CA730/__f_to_ll.s")
GLOBAL_ASM("lib/asm/non_matchings/unknown_0CA730/__ll_to_f.s")
#endif
