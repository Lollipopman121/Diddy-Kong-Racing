glabel func_8006F9B8
/* 0705B8 8006F9B8 84880000 */  lh    $t0, ($a0)
/* 0705BC 8006F9BC 84AB0000 */  lh    $t3, ($a1)
/* 0705C0 8006F9C0 84890002 */  lh    $t1, 2($a0)
/* 0705C4 8006F9C4 84AC0002 */  lh    $t4, 2($a1)
/* 0705C8 8006F9C8 010B0018 */  mult  $t0, $t3
/* 0705CC 8006F9CC 848A0004 */  lh    $t2, 4($a0)
/* 0705D0 8006F9D0 84AD0004 */  lh    $t5, 4($a1)
/* 0705D4 8006F9D4 00007012 */  mflo  $t6
/* 0705D8 8006F9D8 00000000 */  nop   
/* 0705DC 8006F9DC 00000000 */  nop   
/* 0705E0 8006F9E0 012C0018 */  mult  $t1, $t4
/* 0705E4 8006F9E4 00007812 */  mflo  $t7
/* 0705E8 8006F9E8 01CF7020 */  add   $t6, $t6, $t7
/* 0705EC 8006F9EC 00000000 */  nop   
/* 0705F0 8006F9F0 014D0018 */  mult  $t2, $t5
/* 0705F4 8006F9F4 0000C012 */  mflo  $t8
/* 0705F8 8006F9F8 01D87020 */  add   $t6, $t6, $t8
/* 0705FC 8006F9FC 000E7303 */  sra   $t6, $t6, 0xc
/* 070600 8006FA00 01CB0018 */  mult  $t6, $t3
/* 070604 8006FA04 00005812 */  mflo  $t3
/* 070608 8006FA08 000B5B43 */  sra   $t3, $t3, 0xd
/* 07060C 8006FA0C 01685822 */  sub   $t3, $t3, $t0
/* 070610 8006FA10 01CC0018 */  mult  $t6, $t4
/* 070614 8006FA14 A48B0006 */  sh    $t3, 6($a0)
/* 070618 8006FA18 00006012 */  mflo  $t4
/* 07061C 8006FA1C 000C6343 */  sra   $t4, $t4, 0xd
/* 070620 8006FA20 01896022 */  sub   $t4, $t4, $t1
/* 070624 8006FA24 01CD0018 */  mult  $t6, $t5
/* 070628 8006FA28 A48C0008 */  sh    $t4, 8($a0)
/* 07062C 8006FA2C 00006812 */  mflo  $t5
/* 070630 8006FA30 000D6B43 */  sra   $t5, $t5, 0xd
/* 070634 8006FA34 01A86822 */  sub   $t5, $t5, $t0
/* 070638 8006FA38 03E00008 */  jr    $ra
/* 07063C 8006FA3C A48D000A */   sh    $t5, 0xa($a0)

