.late_rodata
glabel D_800E5FF8
.double 1.2
glabel D_800E6000
.float 0.2

.text
glabel func_80034860
/* 035460 80034860 44852000 */  mtc1  $a1, $f4
/* 035464 80034864 3C0F8000 */  lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 035468 80034868 468020A0 */  cvt.s.w $f2, $f4
/* 03546C 8003486C 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 035470 80034870 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 035474 80034874 AFB00028 */  sw    $s0, 0x28($sp)
/* 035478 80034878 00808025 */  move  $s0, $a0
/* 03547C 8003487C AFBF002C */  sw    $ra, 0x2c($sp)
/* 035480 80034880 AFA50064 */  sw    $a1, 0x64($sp)
/* 035484 80034884 00004025 */  move  $t0, $zero
/* 035488 80034888 15E00007 */  bnez  $t7, .L800348A8
/* 03548C 8003488C 46001006 */   mov.s $f0, $f2
/* 035490 80034890 3C01800E */  lui   $at, %hi(D_800E5FF8 + 4) # $at, 0x800e
/* 035494 80034894 C4295FF8 */  lwc1  $f9, %lo(D_800E5FF8)($at)
/* 035498 80034898 C4285FFC */  lwc1  $f8, %lo(D_800E5FF8 + 4)($at)
/* 03549C 8003489C 460011A1 */  cvt.d.s $f6, $f2
/* 0354A0 800348A0 46283282 */  mul.d $f10, $f6, $f8
/* 0354A4 800348A4 46205020 */  cvt.s.d $f0, $f10
.L800348A8:
/* 0354A8 800348A8 C612001C */  lwc1  $f18, 0x1c($s0)
/* 0354AC 800348AC C610000C */  lwc1  $f16, 0xc($s0)
/* 0354B0 800348B0 46009102 */  mul.s $f4, $f18, $f0
/* 0354B4 800348B4 3C014110 */  li    $at, 0x41100000 # 9.000000
/* 0354B8 800348B8 2605000C */  addiu $a1, $s0, 0xc
/* 0354BC 800348BC 24040001 */  li    $a0, 1
/* 0354C0 800348C0 46048180 */  add.s $f6, $f16, $f4
/* 0354C4 800348C4 27A60040 */  addiu $a2, $sp, 0x40
/* 0354C8 800348C8 E7A60040 */  swc1  $f6, 0x40($sp)
/* 0354CC 800348CC C60A0020 */  lwc1  $f10, 0x20($s0)
/* 0354D0 800348D0 C6080010 */  lwc1  $f8, 0x10($s0)
/* 0354D4 800348D4 46005482 */  mul.s $f18, $f10, $f0
/* 0354D8 800348D8 2407FFFF */  li    $a3, -1
/* 0354DC 800348DC 46124400 */  add.s $f16, $f8, $f18
/* 0354E0 800348E0 44819000 */  mtc1  $at, $f18
/* 0354E4 800348E4 E7B00044 */  swc1  $f16, 0x44($sp)
/* 0354E8 800348E8 C6060024 */  lwc1  $f6, 0x24($s0)
/* 0354EC 800348EC C6040014 */  lwc1  $f4, 0x14($s0)
/* 0354F0 800348F0 46003282 */  mul.s $f10, $f6, $f0
/* 0354F4 800348F4 E7A0005C */  swc1  $f0, 0x5c($sp)
/* 0354F8 800348F8 A3A8004F */  sb    $t0, 0x4f($sp)
/* 0354FC 800348FC AFA50034 */  sw    $a1, 0x34($sp)
/* 035500 80034900 460A2200 */  add.s $f8, $f4, $f10
/* 035504 80034904 E7B2003C */  swc1  $f18, 0x3c($sp)
/* 035508 80034908 0C00C44C */  jal   func_80031130
/* 03550C 8003490C E7A80048 */   swc1  $f8, 0x48($sp)
/* 035510 80034910 8FA40034 */  lw    $a0, 0x34($sp)
/* 035514 80034914 24180001 */  li    $t8, 1
/* 035518 80034918 27B90038 */  addiu $t9, $sp, 0x38
/* 03551C 8003491C AFA00038 */  sw    $zero, 0x38($sp)
/* 035520 80034920 AFB90014 */  sw    $t9, 0x14($sp)
/* 035524 80034924 AFB80010 */  sw    $t8, 0x10($sp)
/* 035528 80034928 27A50040 */  addiu $a1, $sp, 0x40
/* 03552C 8003492C 27A6003C */  addiu $a2, $sp, 0x3c
/* 035530 80034930 0C00C580 */  jal   func_80031600
/* 035534 80034934 27A7004E */   addiu $a3, $sp, 0x4e
/* 035538 80034938 8FA90038 */  lw    $t1, 0x38($sp)
/* 03553C 8003493C 83A8004F */  lb    $t0, 0x4f($sp)
/* 035540 80034940 C7A0005C */  lwc1  $f0, 0x5c($sp)
/* 035544 80034944 11200014 */  beqz  $t1, .L80034998
/* 035548 80034948 00000000 */   nop   
/* 03554C 8003494C C7B00040 */  lwc1  $f16, 0x40($sp)
/* 035550 80034950 C606000C */  lwc1  $f6, 0xc($s0)
/* 035554 80034954 C6120010 */  lwc1  $f18, 0x10($s0)
/* 035558 80034958 46068101 */  sub.s $f4, $f16, $f6
/* 03555C 8003495C 00000000 */  nop   
/* 035560 80034960 46002283 */  div.s $f10, $f4, $f0
/* 035564 80034964 E60A001C */  swc1  $f10, 0x1c($s0)
/* 035568 80034968 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 03556C 8003496C C60A0014 */  lwc1  $f10, 0x14($s0)
/* 035570 80034970 46124401 */  sub.s $f16, $f8, $f18
/* 035574 80034974 00000000 */  nop   
/* 035578 80034978 46008183 */  div.s $f6, $f16, $f0
/* 03557C 8003497C E6060020 */  swc1  $f6, 0x20($s0)
/* 035580 80034980 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 035584 80034984 00000000 */  nop   
/* 035588 80034988 460A2201 */  sub.s $f8, $f4, $f10
/* 03558C 8003498C 00000000 */  nop   
/* 035590 80034990 46004483 */  div.s $f18, $f8, $f0
/* 035594 80034994 E6120024 */  swc1  $f18, 0x24($s0)
.L80034998:
/* 035598 80034998 C610001C */  lwc1  $f16, 0x1c($s0)
/* 03559C 8003499C C6040020 */  lwc1  $f4, 0x20($s0)
/* 0355A0 800349A0 46008182 */  mul.s $f6, $f16, $f0
/* 0355A4 800349A4 C6080024 */  lwc1  $f8, 0x24($s0)
/* 0355A8 800349A8 A3A8004F */  sb    $t0, 0x4f($sp)
/* 0355AC 800349AC 02002025 */  move  $a0, $s0
/* 0355B0 800349B0 46002282 */  mul.s $f10, $f4, $f0
/* 0355B4 800349B4 44053000 */  mfc1  $a1, $f6
/* 0355B8 800349B8 46004482 */  mul.s $f18, $f8, $f0
/* 0355BC 800349BC 44065000 */  mfc1  $a2, $f10
/* 0355C0 800349C0 44079000 */  mfc1  $a3, $f18
/* 0355C4 800349C4 0C00455C */  jal   func_80011570
/* 0355C8 800349C8 00000000 */   nop   
/* 0355CC 800349CC 8FAA0038 */  lw    $t2, 0x38($sp)
/* 0355D0 800349D0 83A8004F */  lb    $t0, 0x4f($sp)
/* 0355D4 800349D4 1140000E */  beqz  $t2, .L80034A10
/* 0355D8 800349D8 3C014210 */   li    $at, 0x42100000 # 36.000000
/* 0355DC 800349DC C6100010 */  lwc1  $f16, 0x10($s0)
/* 0355E0 800349E0 44813000 */  mtc1  $at, $f6
/* 0355E4 800349E4 3C01800E */  lui   $at, %hi(D_800E6000) # $at, 0x800e
/* 0355E8 800349E8 C60C000C */  lwc1  $f12, 0xc($s0)
/* 0355EC 800349EC 8E060014 */  lw    $a2, 0x14($s0)
/* 0355F0 800349F0 C4246000 */  lwc1  $f4, %lo(D_800E6000)($at)
/* 0355F4 800349F4 AFA00018 */  sw    $zero, 0x18($sp)
/* 0355F8 800349F8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0355FC 800349FC 2407002C */  li    $a3, 44
/* 035600 80034A00 46068381 */  sub.s $f14, $f16, $f6
/* 035604 80034A04 0C00FF11 */  jal   func_8003FC44
/* 035608 80034A08 E7A40014 */   swc1  $f4, 0x14($sp)
/* 03560C 80034A0C 24080001 */  li    $t0, 1
.L80034A10:
/* 035610 80034A10 8E020078 */  lw    $v0, 0x78($s0)
/* 035614 80034A14 8FAB0064 */  lw    $t3, 0x64($sp)
/* 035618 80034A18 18400003 */  blez  $v0, .L80034A28
/* 03561C 80034A1C 004B6023 */   subu  $t4, $v0, $t3
/* 035620 80034A20 10000002 */  b     .L80034A2C
/* 035624 80034A24 AE0C0078 */   sw    $t4, 0x78($s0)
.L80034A28:
/* 035628 80034A28 24080001 */  li    $t0, 1
.L80034A2C:
/* 03562C 80034A2C 8E03004C */  lw    $v1, 0x4c($s0)
/* 035630 80034A30 00000000 */  nop   
/* 035634 80034A34 906D0013 */  lbu   $t5, 0x13($v1)
/* 035638 80034A38 00000000 */  nop   
/* 03563C 80034A3C 29A10050 */  slti  $at, $t5, 0x50
/* 035640 80034A40 10200023 */  beqz  $at, .L80034AD0
/* 035644 80034A44 00000000 */   nop   
/* 035648 80034A48 8C620000 */  lw    $v0, ($v1)
/* 03564C 80034A4C 00000000 */  nop   
/* 035650 80034A50 1040001F */  beqz  $v0, .L80034AD0
/* 035654 80034A54 00000000 */   nop   
/* 035658 80034A58 844E0048 */  lh    $t6, 0x48($v0)
/* 03565C 80034A5C 24040001 */  li    $a0, 1
/* 035660 80034A60 148E001B */  bne   $a0, $t6, .L80034AD0
/* 035664 80034A64 2407002C */   li    $a3, 44
/* 035668 80034A68 8C430064 */  lw    $v1, 0x64($v0)
/* 03566C 80034A6C 2401FFFF */  li    $at, -1
/* 035670 80034A70 846F0000 */  lh    $t7, ($v1)
/* 035674 80034A74 24080001 */  li    $t0, 1
/* 035678 80034A78 11E10002 */  beq   $t7, $at, .L80034A84
/* 03567C 80034A7C 24190011 */   li    $t9, 17
/* 035680 80034A80 A0640187 */  sb    $a0, 0x187($v1)
.L80034A84:
/* 035684 80034A84 8E02007C */  lw    $v0, 0x7c($s0)
/* 035688 80034A88 241800B4 */  li    $t8, 180
/* 03568C 80034A8C 10400002 */  beqz  $v0, .L80034A98
/* 035690 80034A90 3C014210 */   li    $at, 0x42100000 # 36.000000
/* 035694 80034A94 A458000C */  sh    $t8, 0xc($v0)
.L80034A98:
/* 035698 80034A98 C60A0010 */  lwc1  $f10, 0x10($s0)
/* 03569C 80034A9C 44814000 */  mtc1  $at, $f8
/* 0356A0 80034AA0 C60C000C */  lwc1  $f12, 0xc($s0)
/* 0356A4 80034AA4 8E060014 */  lw    $a2, 0x14($s0)
/* 0356A8 80034AA8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0356AC 80034AAC 44819000 */  mtc1  $at, $f18
/* 0356B0 80034AB0 A3A8004F */  sb    $t0, 0x4f($sp)
/* 0356B4 80034AB4 AFA00018 */  sw    $zero, 0x18($sp)
/* 0356B8 80034AB8 AFB90010 */  sw    $t9, 0x10($sp)
/* 0356BC 80034ABC 46085381 */  sub.s $f14, $f10, $f8
/* 0356C0 80034AC0 0C00FF11 */  jal   func_8003FC44
/* 0356C4 80034AC4 E7B20014 */   swc1  $f18, 0x14($sp)
/* 0356C8 80034AC8 83A8004F */  lb    $t0, 0x4f($sp)
/* 0356CC 80034ACC 00000000 */  nop   
.L80034AD0:
/* 0356D0 80034AD0 11000004 */  beqz  $t0, .L80034AE4
/* 0356D4 80034AD4 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0356D8 80034AD8 0C003FEE */  jal   gParticlePtrList_addObject
/* 0356DC 80034ADC 02002025 */   move  $a0, $s0
/* 0356E0 80034AE0 8FBF002C */  lw    $ra, 0x2c($sp)
.L80034AE4:
/* 0356E4 80034AE4 8FB00028 */  lw    $s0, 0x28($sp)
/* 0356E8 80034AE8 03E00008 */  jr    $ra
/* 0356EC 80034AEC 27BD0060 */   addiu $sp, $sp, 0x60

