.late_rodata
glabel D_800E6058
.double 1.2

.text
glabel func_80038AD4
/* 0396D4 80038AD4 44852000 */  mtc1  $a1, $f4
/* 0396D8 80038AD8 3C0E8000 */  lui   $t6, %hi(osTvType) # $t6, 0x8000
/* 0396DC 80038ADC 468020A0 */  cvt.s.w $f2, $f4
/* 0396E0 80038AE0 8DCE0300 */  lw    $t6, %lo(osTvType)($t6)
/* 0396E4 80038AE4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0396E8 80038AE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0396EC 80038AEC 15C00007 */  bnez  $t6, .L80038B0C
/* 0396F0 80038AF0 46001006 */   mov.s $f0, $f2
/* 0396F4 80038AF4 3C01800E */  lui   $at, %hi(D_800E6058 + 4) # $at, 0x800e
/* 0396F8 80038AF8 C4296058 */  lwc1  $f9, %lo(D_800E6058)($at)
/* 0396FC 80038AFC C428605C */  lwc1  $f8, %lo(D_800E6058 + 4)($at)
/* 039700 80038B00 460011A1 */  cvt.d.s $f6, $f2
/* 039704 80038B04 46283282 */  mul.d $f10, $f6, $f8
/* 039708 80038B08 46205020 */  cvt.s.d $f0, $f10
.L80038B0C:
/* 03970C 80038B0C 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 039710 80038B10 44819800 */  mtc1  $at, $f19
/* 039714 80038B14 44809000 */  mtc1  $zero, $f18
/* 039718 80038B18 46000421 */  cvt.d.s $f16, $f0
/* 03971C 80038B1C 46328102 */  mul.d $f4, $f16, $f18
/* 039720 80038B20 848F0018 */  lh    $t7, 0x18($a0)
/* 039724 80038B24 C4860010 */  lwc1  $f6, 0x10($a0)
/* 039728 80038B28 0005C080 */  sll   $t8, $a1, 2
/* 03972C 80038B2C 01F8C821 */  addu  $t9, $t7, $t8
/* 039730 80038B30 A4990018 */  sh    $t9, 0x18($a0)
/* 039734 80038B34 46003221 */  cvt.d.s $f8, $f6
/* 039738 80038B38 46244280 */  add.d $f10, $f8, $f4
/* 03973C 80038B3C 84880018 */  lh    $t0, 0x18($a0)
/* 039740 80038B40 46205420 */  cvt.s.d $f16, $f10
/* 039744 80038B44 29010100 */  slti  $at, $t0, 0x100
/* 039748 80038B48 14200006 */  bnez  $at, .L80038B64
/* 03974C 80038B4C E4900010 */   swc1  $f16, 0x10($a0)
/* 039750 80038B50 0C003FEE */  jal   gParticlePtrList_addObject
/* 039754 80038B54 AFA40018 */   sw    $a0, 0x18($sp)
/* 039758 80038B58 8FA40018 */  lw    $a0, 0x18($sp)
/* 03975C 80038B5C 240900FF */  li    $t1, 255
/* 039760 80038B60 A4890018 */  sh    $t1, 0x18($a0)
.L80038B64:
/* 039764 80038B64 8FBF0014 */  lw    $ra, 0x14($sp)
/* 039768 80038B68 27BD0018 */  addiu $sp, $sp, 0x18
/* 03976C 80038B6C 03E00008 */  jr    $ra
/* 039770 80038B70 00000000 */   nop   

