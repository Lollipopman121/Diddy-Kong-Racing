glabel func_80070A2C
/* 07162C 80070A2C 44862000 */  mtc1  $a2, $f4
/* 071630 80070A30 46006006 */  mov.s $f0, $f12
/* 071634 80070A34 44873000 */  mtc1  $a3, $f6
/* 071638 80070A38 46002301 */  sub.s $f12, $f4, $f0
/* 07163C 80070A3C 46007086 */  mov.s $f2, $f14
/* 071640 80070A40 C7A80010 */  lwc1  $f8, 0x10($sp)
/* 071644 80070A44 46023381 */  sub.s $f14, $f6, $f2
/* 071648 80070A48 460C6302 */  mul.s $f12, $f12, $f12
/* 07164C 80070A4C C7AA0014 */  lwc1  $f10, 0x14($sp)
/* 071650 80070A50 46044401 */  sub.s $f16, $f8, $f4
/* 071654 80070A54 460E7382 */  mul.s $f14, $f14, $f14
/* 071658 80070A58 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 07165C 80070A5C 46065481 */  sub.s $f18, $f10, $f6
/* 071660 80070A60 46108402 */  mul.s $f16, $f16, $f16
/* 071664 80070A64 46080001 */  sub.s $f0, $f0, $f8
/* 071668 80070A68 46129482 */  mul.s $f18, $f18, $f18
/* 07166C 80070A6C 460A1081 */  sub.s $f2, $f2, $f10
/* 071670 80070A70 46000002 */  mul.s $f0, $f0, $f0
/* 071674 80070A74 44815000 */  mtc1  $at, $f10
/* 071678 80070A78 460E6300 */  add.s $f12, $f12, $f14
/* 07167C 80070A7C 46021082 */  mul.s $f2, $f2, $f2
/* 071680 80070A80 46128400 */  add.s $f16, $f16, $f18
/* 071684 80070A84 46006304 */  sqrt.s $f12, $f12
/* 071688 80070A88 46008404 */  sqrt.s $f16, $f16
/* 07168C 80070A8C 46020000 */  add.s $f0, $f0, $f2
/* 071690 80070A90 44801000 */  mtc1  $zero, $f2
/* 071694 80070A94 46106480 */  add.s $f18, $f12, $f16
/* 071698 80070A98 46000004 */  sqrt.s $f0, $f0
/* 07169C 80070A9C 46009480 */  add.s $f18, $f18, $f0
/* 0716A0 80070AA0 46125482 */  mul.s $f18, $f10, $f18
/* 0716A4 80070AA4 460C9101 */  sub.s $f4, $f18, $f12
/* 0716A8 80070AA8 46009201 */  sub.s $f8, $f18, $f0
/* 0716AC 80070AAC 46122002 */  mul.s $f0, $f4, $f18
/* 0716B0 80070AB0 46109181 */  sub.s $f6, $f18, $f16
/* 0716B4 80070AB4 46083182 */  mul.s $f6, $f6, $f8
/* 0716B8 80070AB8 00000000 */  nop   
/* 0716BC 80070ABC 46060002 */  mul.s $f0, $f0, $f6
/* 0716C0 80070AC0 4602003C */  c.lt.s $f0, $f2
/* 0716C4 80070AC4 45020002 */  bc1fl .L80070AD0
/* 0716C8 80070AC8 00000000 */   nop   
/* 0716CC 80070ACC 46001006 */  mov.s $f0, $f2
.L80070AD0:
/* 0716D0 80070AD0 03E00008 */  jr    $ra
/* 0716D4 80070AD4 46000004 */   sqrt.s $f0, $f0


