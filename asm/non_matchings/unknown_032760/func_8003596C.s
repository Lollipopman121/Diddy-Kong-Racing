glabel func_8003596C
/* 03656C 8003596C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 036570 80035970 AFBF002C */  sw    $ra, 0x2c($sp)
/* 036574 80035974 AFB30024 */  sw    $s3, 0x24($sp)
/* 036578 80035978 00809825 */  move  $s3, $a0
/* 03657C 8003597C AFB40028 */  sw    $s4, 0x28($sp)
/* 036580 80035980 AFB20020 */  sw    $s2, 0x20($sp)
/* 036584 80035984 AFB1001C */  sw    $s1, 0x1c($sp)
/* 036588 80035988 AFB00018 */  sw    $s0, 0x18($sp)
/* 03658C 8003598C 0C003873 */  jal   func_8000E1CC
/* 036590 80035990 AFA5005C */   sw    $a1, 0x5c($sp)
/* 036594 80035994 14400006 */  bnez  $v0, .L800359B0
/* 036598 80035998 00000000 */   nop   
/* 03659C 8003599C 866E0006 */  lh    $t6, 6($s3)
/* 0365A0 800359A0 00000000 */  nop   
/* 0365A4 800359A4 35CF4000 */  ori   $t7, $t6, 0x4000
/* 0365A8 800359A8 10000005 */  b     .L800359C0
/* 0365AC 800359AC A66F0006 */   sh    $t7, 6($s3)
.L800359B0:
/* 0365B0 800359B0 86780006 */  lh    $t8, 6($s3)
/* 0365B4 800359B4 00000000 */  nop   
/* 0365B8 800359B8 3319BFFF */  andi  $t9, $t8, 0xbfff
/* 0365BC 800359BC A6790006 */  sh    $t9, 6($s3)
.L800359C0:
/* 0365C0 800359C0 8E68004C */  lw    $t0, 0x4c($s3)
/* 0365C4 800359C4 00000000 */  nop   
/* 0365C8 800359C8 91090013 */  lbu   $t1, 0x13($t0)
/* 0365CC 800359CC 00000000 */  nop   
/* 0365D0 800359D0 29210064 */  slti  $at, $t1, 0x64
/* 0365D4 800359D4 1020003D */  beqz  $at, .L80035ACC
/* 0365D8 800359D8 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0365DC 800359DC 866A0006 */  lh    $t2, 6($s3)
/* 0365E0 800359E0 00000000 */  nop   
/* 0365E4 800359E4 314B4000 */  andi  $t3, $t2, 0x4000
/* 0365E8 800359E8 15600038 */  bnez  $t3, .L80035ACC
/* 0365EC 800359EC 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0365F0 800359F0 0C006E9D */  jal   getPlayerStructArray
/* 0365F4 800359F4 27A40040 */   addiu $a0, $sp, 0x40
/* 0365F8 800359F8 8FAC0040 */  lw    $t4, 0x40($sp)
/* 0365FC 800359FC 00008825 */  move  $s1, $zero
/* 036600 80035A00 19800031 */  blez  $t4, .L80035AC8
/* 036604 80035A04 00409025 */   move  $s2, $v0
/* 036608 80035A08 24140001 */  li    $s4, 1
.L80035A0C:
/* 03660C 80035A0C 8E420000 */  lw    $v0, ($s2)
/* 036610 80035A10 00000000 */  nop   
/* 036614 80035A14 8C500064 */  lw    $s0, 0x64($v0)
/* 036618 80035A18 00000000 */  nop   
/* 03661C 80035A1C 920D01F5 */  lbu   $t5, 0x1f5($s0)
/* 036620 80035A20 00000000 */  nop   
/* 036624 80035A24 15A00024 */  bnez  $t5, .L80035AB8
/* 036628 80035A28 8FB90040 */   lw    $t9, 0x40($sp)
/* 03662C 80035A2C 820E01D3 */  lb    $t6, 0x1d3($s0)
/* 036630 80035A30 00000000 */  nop   
/* 036634 80035A34 29C1000F */  slti  $at, $t6, 0xf
/* 036638 80035A38 1020001F */  beqz  $at, .L80035AB8
/* 03663C 80035A3C 8FB90040 */   lw    $t9, 0x40($sp)
/* 036640 80035A40 C444000C */  lwc1  $f4, 0xc($v0)
/* 036644 80035A44 C666000C */  lwc1  $f6, 0xc($s3)
/* 036648 80035A48 C4480010 */  lwc1  $f8, 0x10($v0)
/* 03664C 80035A4C 46062001 */  sub.s $f0, $f4, $f6
/* 036650 80035A50 C66A0010 */  lwc1  $f10, 0x10($s3)
/* 036654 80035A54 46000102 */  mul.s $f4, $f0, $f0
/* 036658 80035A58 460A4081 */  sub.s $f2, $f8, $f10
/* 03665C 80035A5C C4500014 */  lwc1  $f16, 0x14($v0)
/* 036660 80035A60 C6720014 */  lwc1  $f18, 0x14($s3)
/* 036664 80035A64 46021182 */  mul.s $f6, $f2, $f2
/* 036668 80035A68 46128381 */  sub.s $f14, $f16, $f18
/* 03666C 80035A6C 460E7282 */  mul.s $f10, $f14, $f14
/* 036670 80035A70 46062200 */  add.s $f8, $f4, $f6
/* 036674 80035A74 0C0326B4 */  jal   sqrtf
/* 036678 80035A78 460A4300 */   add.s $f12, $f8, $f10
/* 03667C 80035A7C 444FF800 */  cfc1  $t7, $31
/* 036680 80035A80 00000000 */  nop   
/* 036684 80035A84 35E10003 */  ori   $at, $t7, 3
/* 036688 80035A88 38210002 */  xori  $at, $at, 2
/* 03668C 80035A8C 44C1F800 */  ctc1  $at, $31
/* 036690 80035A90 00000000 */  nop   
/* 036694 80035A94 46000424 */  cvt.w.s $f16, $f0
/* 036698 80035A98 44188000 */  mfc1  $t8, $f16
/* 03669C 80035A9C 44CFF800 */  ctc1  $t7, $31
/* 0366A0 80035AA0 2B010064 */  slti  $at, $t8, 0x64
/* 0366A4 80035AA4 10200004 */  beqz  $at, .L80035AB8
/* 0366A8 80035AA8 8FB90040 */   lw    $t9, 0x40($sp)
/* 0366AC 80035AAC A21401F5 */  sb    $s4, 0x1f5($s0)
/* 0366B0 80035AB0 AE13014C */  sw    $s3, 0x14c($s0)
/* 0366B4 80035AB4 8FB90040 */  lw    $t9, 0x40($sp)
.L80035AB8:
/* 0366B8 80035AB8 26310001 */  addiu $s1, $s1, 1
/* 0366BC 80035ABC 0239082A */  slt   $at, $s1, $t9
/* 0366C0 80035AC0 1420FFD2 */  bnez  $at, .L80035A0C
/* 0366C4 80035AC4 26520004 */   addiu $s2, $s2, 4
.L80035AC8:
/* 0366C8 80035AC8 8FBF002C */  lw    $ra, 0x2c($sp)
.L80035ACC:
/* 0366CC 80035ACC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0366D0 80035AD0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0366D4 80035AD4 8FB20020 */  lw    $s2, 0x20($sp)
/* 0366D8 80035AD8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0366DC 80035ADC 8FB40028 */  lw    $s4, 0x28($sp)
/* 0366E0 80035AE0 03E00008 */  jr    $ra
/* 0366E4 80035AE4 27BD0058 */   addiu $sp, $sp, 0x58

