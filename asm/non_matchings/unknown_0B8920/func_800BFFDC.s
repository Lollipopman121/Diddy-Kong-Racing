glabel func_800BFFDC
/* 0C0BDC 800BFFDC 3C0E800E */  lui   $t6, %hi(D_800E3198) # $t6, 0x800e
/* 0C0BE0 800BFFE0 8DCE3198 */  lw    $t6, %lo(D_800E3198)($t6)
/* 0C0BE4 800BFFE4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0C0BE8 800BFFE8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C0BEC 800BFFEC 00808025 */  move  $s0, $a0
/* 0C0BF0 800BFFF0 108E005B */  beq   $a0, $t6, .L800C0160
/* 0C0BF4 800BFFF4 AFBF001C */   sw    $ra, 0x1c($sp)
/* 0C0BF8 800BFFF8 0C006E9D */  jal   getPlayerStructArray
/* 0C0BFC 800BFFFC 27A40050 */   addiu $a0, $sp, 0x50
/* 0C0C00 800C0000 8FA50050 */  lw    $a1, 0x50($sp)
/* 0C0C04 800C0004 00000000 */  nop   
/* 0C0C08 800C0008 18A00056 */  blez  $a1, .L800C0164
/* 0C0C0C 800C000C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0C0C10 800C0010 18A00012 */  blez  $a1, .L800C005C
/* 0C0C14 800C0014 00003025 */   move  $a2, $zero
/* 0C0C18 800C0018 00057880 */  sll   $t7, $a1, 2
/* 0C0C1C 800C001C 0000C080 */  sll   $t8, $zero, 2
/* 0C0C20 800C0020 00581821 */  addu  $v1, $v0, $t8
/* 0C0C24 800C0024 01E23821 */  addu  $a3, $t7, $v0
.L800C0028:
/* 0C0C28 800C0028 8C650000 */  lw    $a1, ($v1)
/* 0C0C2C 800C002C 24630004 */  addiu $v1, $v1, 4
/* 0C0C30 800C0030 8CA40064 */  lw    $a0, 0x64($a1)
/* 0C0C34 800C0034 0067082B */  sltu  $at, $v1, $a3
/* 0C0C38 800C0038 84990000 */  lh    $t9, ($a0)
/* 0C0C3C 800C003C 00000000 */  nop   
/* 0C0C40 800C0040 17200002 */  bnez  $t9, .L800C004C
/* 0C0C44 800C0044 00000000 */   nop   
/* 0C0C48 800C0048 00A03025 */  move  $a2, $a1
.L800C004C:
/* 0C0C4C 800C004C 10200003 */  beqz  $at, .L800C005C
/* 0C0C50 800C0050 00000000 */   nop   
/* 0C0C54 800C0054 10C0FFF4 */  beqz  $a2, .L800C0028
/* 0C0C58 800C0058 00000000 */   nop   
.L800C005C:
/* 0C0C5C 800C005C 10C00041 */  beqz  $a2, .L800C0164
/* 0C0C60 800C0060 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0C0C64 800C0064 8E02003C */  lw    $v0, 0x3c($s0)
/* 0C0C68 800C0068 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C0C6C 800C006C 94480008 */  lhu   $t0, 8($v0)
/* 0C0C70 800C0070 3C038013 */  lui   $v1, %hi(D_8012A720) # $v1, 0x8013
/* 0C0C74 800C0074 44882000 */  mtc1  $t0, $f4
/* 0C0C78 800C0078 05010004 */  bgez  $t0, .L800C008C
/* 0C0C7C 800C007C 46802020 */   cvt.s.w $f0, $f4
/* 0C0C80 800C0080 44813000 */  mtc1  $at, $f6
/* 0C0C84 800C0084 00000000 */  nop   
/* 0C0C88 800C0088 46060000 */  add.s $f0, $f0, $f6
.L800C008C:
/* 0C0C8C 800C008C C4C8000C */  lwc1  $f8, 0xc($a2)
/* 0C0C90 800C0090 C60A000C */  lwc1  $f10, 0xc($s0)
/* 0C0C94 800C0094 46000002 */  mul.s $f0, $f0, $f0
/* 0C0C98 800C0098 460A4081 */  sub.s $f2, $f8, $f10
/* 0C0C9C 800C009C C4D00010 */  lwc1  $f16, 0x10($a2)
/* 0C0CA0 800C00A0 C6120010 */  lwc1  $f18, 0x10($s0)
/* 0C0CA4 800C00A4 46021202 */  mul.s $f8, $f2, $f2
/* 0C0CA8 800C00A8 46128301 */  sub.s $f12, $f16, $f18
/* 0C0CAC 800C00AC C4C40014 */  lwc1  $f4, 0x14($a2)
/* 0C0CB0 800C00B0 C6060014 */  lwc1  $f6, 0x14($s0)
/* 0C0CB4 800C00B4 460C6282 */  mul.s $f10, $f12, $f12
/* 0C0CB8 800C00B8 46062381 */  sub.s $f14, $f4, $f6
/* 0C0CBC 800C00BC 460E7482 */  mul.s $f18, $f14, $f14
/* 0C0CC0 800C00C0 460A4400 */  add.s $f16, $f8, $f10
/* 0C0CC4 800C00C4 46128100 */  add.s $f4, $f16, $f18
/* 0C0CC8 800C00C8 4600203C */  c.lt.s $f4, $f0
/* 0C0CCC 800C00CC 00000000 */  nop   
/* 0C0CD0 800C00D0 45000024 */  bc1f  .L800C0164
/* 0C0CD4 800C00D4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0C0CD8 800C00D8 9449000A */  lhu   $t1, 0xa($v0)
/* 0C0CDC 800C00DC 2463A720 */  addiu $v1, %lo(D_8012A720) # addiu $v1, $v1, -0x58e0
/* 0C0CE0 800C00E0 44893000 */  mtc1  $t1, $f6
/* 0C0CE4 800C00E4 05210005 */  bgez  $t1, .L800C00FC
/* 0C0CE8 800C00E8 46803220 */   cvt.s.w $f8, $f6
/* 0C0CEC 800C00EC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C0CF0 800C00F0 44815000 */  mtc1  $at, $f10
/* 0C0CF4 800C00F4 00000000 */  nop   
/* 0C0CF8 800C00F8 460A4200 */  add.s $f8, $f8, $f10
.L800C00FC:
/* 0C0CFC 800C00FC 3C013B80 */  li    $at, 0x3B800000 # 0.003906
/* 0C0D00 800C0100 44818000 */  mtc1  $at, $f16
/* 0C0D04 800C0104 3C018013 */  lui   $at, %hi(D_8012A008) # $at, 0x8013
/* 0C0D08 800C0108 46104482 */  mul.s $f18, $f8, $f16
/* 0C0D0C 800C010C E4720000 */  swc1  $f18, ($v1)
/* 0C0D10 800C0110 944A000C */  lhu   $t2, 0xc($v0)
/* 0C0D14 800C0114 C426A008 */  lwc1  $f6, %lo(D_8012A008)($at)
/* 0C0D18 800C0118 C4640000 */  lwc1  $f4, ($v1)
/* 0C0D1C 800C011C 448A4000 */  mtc1  $t2, $f8
/* 0C0D20 800C0120 46062281 */  sub.s $f10, $f4, $f6
/* 0C0D24 800C0124 05410005 */  bgez  $t2, .L800C013C
/* 0C0D28 800C0128 46804420 */   cvt.s.w $f16, $f8
/* 0C0D2C 800C012C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0C0D30 800C0130 44819000 */  mtc1  $at, $f18
/* 0C0D34 800C0134 00000000 */  nop   
/* 0C0D38 800C0138 46128400 */  add.s $f16, $f16, $f18
.L800C013C:
/* 0C0D3C 800C013C 00000000 */  nop   
/* 0C0D40 800C0140 46105103 */  div.s $f4, $f10, $f16
/* 0C0D44 800C0144 3C018013 */  lui   $at, %hi(D_8012A724) # $at, 0x8013
/* 0C0D48 800C0148 E424A724 */  swc1  $f4, %lo(D_8012A724)($at)
/* 0C0D4C 800C014C 944B000C */  lhu   $t3, 0xc($v0)
/* 0C0D50 800C0150 3C018013 */  lui   $at, %hi(D_8012A728) # $at, 0x8013
/* 0C0D54 800C0154 AC2BA728 */  sw    $t3, %lo(D_8012A728)($at)
/* 0C0D58 800C0158 3C01800E */  lui   $at, %hi(D_800E3198) # $at, 0x800e
/* 0C0D5C 800C015C AC303198 */  sw    $s0, %lo(D_800E3198)($at)
.L800C0160:
/* 0C0D60 800C0160 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C0164:
/* 0C0D64 800C0164 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C0D68 800C0168 03E00008 */  jr    $ra
/* 0C0D6C 800C016C 27BD0058 */   addiu $sp, $sp, 0x58

