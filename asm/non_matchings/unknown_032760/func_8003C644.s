.rdata
glabel D_800E5FC8
.asciz "Illegal door no!!!\n"

.text
glabel func_8003C644
/* 03D244 8003C644 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03D248 8003C648 AFBF001C */  sw    $ra, 0x1c($sp)
/* 03D24C 8003C64C AFB10018 */  sw    $s1, 0x18($sp)
/* 03D250 8003C650 AFB00014 */  sw    $s0, 0x14($sp)
/* 03D254 8003C654 80A60009 */  lb    $a2, 9($a1)
/* 03D258 8003C658 2401FFFF */  li    $at, -1
/* 03D25C 8003C65C 00808025 */  move  $s0, $a0
/* 03D260 8003C660 14C10005 */  bne   $a2, $at, .L8003C678
/* 03D264 8003C664 00A08825 */   move  $s1, $a1
/* 03D268 8003C668 0C003308 */  jal   func_8000CC20
/* 03D26C 8003C66C 00000000 */   nop   
/* 03D270 8003C670 10000004 */  b     .L8003C684
/* 03D274 8003C674 A2220009 */   sb    $v0, 9($s1)
.L8003C678:
/* 03D278 8003C678 02002025 */  move  $a0, $s0
/* 03D27C 8003C67C 0C0032FC */  jal   func_8000CBF0
/* 03D280 8003C680 00C02825 */   move  $a1, $a2
.L8003C684:
/* 03D284 8003C684 822E0009 */  lb    $t6, 9($s1)
/* 03D288 8003C688 2401FFFF */  li    $at, -1
/* 03D28C 8003C68C 15C10003 */  bne   $t6, $at, .L8003C69C
/* 03D290 8003C690 3C04800E */   lui   $a0, %hi(D_800E5FC8) # $a0, 0x800e
/* 03D294 8003C694 0C032755 */  jal   func_800C9D54
/* 03D298 8003C698 24845FC8 */   addiu $a0, %lo(D_800E5FC8) # addiu $a0, $a0, 0x5fc8
.L8003C69C:
/* 03D29C 8003C69C 92380008 */  lbu   $t8, 8($s1)
/* 03D2A0 8003C6A0 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 03D2A4 8003C6A4 44982000 */  mtc1  $t8, $f4
/* 03D2A8 8003C6A8 44811000 */  mtc1  $at, $f2
/* 03D2AC 8003C6AC 46802020 */  cvt.s.w $f0, $f4
/* 03D2B0 8003C6B0 3C014300 */  li    $at, 0x43000000 # 128.000000
/* 03D2B4 8003C6B4 44813000 */  mtc1  $at, $f6
/* 03D2B8 8003C6B8 4602003C */  c.lt.s $f0, $f2
/* 03D2BC 8003C6BC 00000000 */  nop   
/* 03D2C0 8003C6C0 45000003 */  bc1f  .L8003C6D0
/* 03D2C4 8003C6C4 00000000 */   nop   
/* 03D2C8 8003C6C8 46001006 */  mov.s $f0, $f2
/* 03D2CC 8003C6CC 00000000 */  nop   
.L8003C6D0:
/* 03D2D0 8003C6D0 46060003 */  div.s $f0, $f0, $f6
/* 03D2D4 8003C6D4 8E020064 */  lw    $v0, 0x64($s0)
/* 03D2D8 8003C6D8 E6000008 */  swc1  $f0, 8($s0)
/* 03D2DC 8003C6DC 9228000A */  lbu   $t0, 0xa($s1)
/* 03D2E0 8003C6E0 00000000 */  nop   
/* 03D2E4 8003C6E4 00084A80 */  sll   $t1, $t0, 0xa
/* 03D2E8 8003C6E8 A6090000 */  sh    $t1, ($s0)
/* 03D2EC 8003C6EC 86040000 */  lh    $a0, ($s0)
/* 03D2F0 8003C6F0 0C01C1F1 */  jal   func_800707C4
/* 03D2F4 8003C6F4 AFA20020 */   sw    $v0, 0x20($sp)
/* 03D2F8 8003C6F8 8FA20020 */  lw    $v0, 0x20($sp)
/* 03D2FC 8003C6FC 44804000 */  mtc1  $zero, $f8
/* 03D300 8003C700 E4400000 */  swc1  $f0, ($v0)
/* 03D304 8003C704 E4480004 */  swc1  $f8, 4($v0)
/* 03D308 8003C708 86040000 */  lh    $a0, ($s0)
/* 03D30C 8003C70C 0C01C1FE */  jal   func_800707F8
/* 03D310 8003C710 00000000 */   nop   
/* 03D314 8003C714 8FA20020 */  lw    $v0, 0x20($sp)
/* 03D318 8003C718 240C0002 */  li    $t4, 2
/* 03D31C 8003C71C E4400008 */  swc1  $f0, 8($v0)
/* 03D320 8003C720 C610000C */  lwc1  $f16, 0xc($s0)
/* 03D324 8003C724 C44A0000 */  lwc1  $f10, ($v0)
/* 03D328 8003C728 C6040014 */  lwc1  $f4, 0x14($s0)
/* 03D32C 8003C72C 46105482 */  mul.s $f18, $f10, $f16
/* 03D330 8003C730 00000000 */  nop   
/* 03D334 8003C734 46040182 */  mul.s $f6, $f0, $f4
/* 03D338 8003C738 46069200 */  add.s $f8, $f18, $f6
/* 03D33C 8003C73C 46004287 */  neg.s $f10, $f8
/* 03D340 8003C740 E44A000C */  swc1  $f10, 0xc($v0)
/* 03D344 8003C744 922A0008 */  lbu   $t2, 8($s1)
/* 03D348 8003C748 00000000 */  nop   
/* 03D34C 8003C74C AC4A0010 */  sw    $t2, 0x10($v0)
/* 03D350 8003C750 922B000D */  lbu   $t3, 0xd($s1)
/* 03D354 8003C754 00000000 */  nop   
/* 03D358 8003C758 A04B0014 */  sb    $t3, 0x14($v0)
/* 03D35C 8003C75C 8E0D004C */  lw    $t5, 0x4c($s0)
/* 03D360 8003C760 00000000 */  nop   
/* 03D364 8003C764 A5AC0014 */  sh    $t4, 0x14($t5)
/* 03D368 8003C768 8E0E004C */  lw    $t6, 0x4c($s0)
/* 03D36C 8003C76C 00000000 */  nop   
/* 03D370 8003C770 A1C00011 */  sb    $zero, 0x11($t6)
/* 03D374 8003C774 8E18004C */  lw    $t8, 0x4c($s0)
/* 03D378 8003C778 922F0008 */  lbu   $t7, 8($s1)
/* 03D37C 8003C77C 00000000 */  nop   
/* 03D380 8003C780 A30F0010 */  sb    $t7, 0x10($t8)
/* 03D384 8003C784 8E19004C */  lw    $t9, 0x4c($s0)
/* 03D388 8003C788 00000000 */  nop   
/* 03D38C 8003C78C A3200012 */  sb    $zero, 0x12($t9)
/* 03D390 8003C790 8FBF001C */  lw    $ra, 0x1c($sp)
/* 03D394 8003C794 8FB10018 */  lw    $s1, 0x18($sp)
/* 03D398 8003C798 8FB00014 */  lw    $s0, 0x14($sp)
/* 03D39C 8003C79C 03E00008 */  jr    $ra
/* 03D3A0 8003C7A0 27BD0028 */   addiu $sp, $sp, 0x28

