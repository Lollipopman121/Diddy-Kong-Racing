glabel func_8002342C
/* 02402C 8002342C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 024030 80023430 AFB3003C */  sw    $s3, 0x3c($sp)
/* 024034 80023434 3C138012 */  lui   $s3, %hi(objCount) # $s3, 0x8012
/* 024038 80023438 2673AE5C */  addiu $s3, %lo(objCount) # addiu $s3, $s3, -0x51a4
/* 02403C 8002343C 8E6E0000 */  lw    $t6, ($s3)
/* 024040 80023440 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 024044 80023444 AFB60048 */  sw    $s6, 0x48($sp)
/* 024048 80023448 AFB10034 */  sw    $s1, 0x34($sp)
/* 02404C 8002344C E7B90028 */  swc1  $f25, 0x28($sp)
/* 024050 80023450 E7B8002C */  swc1  $f24, 0x2c($sp)
/* 024054 80023454 E7B70020 */  swc1  $f23, 0x20($sp)
/* 024058 80023458 E7B60024 */  swc1  $f22, 0x24($sp)
/* 02405C 8002345C 4480A000 */  mtc1  $zero, $f20
/* 024060 80023460 46006586 */  mov.s $f22, $f12
/* 024064 80023464 46007606 */  mov.s $f24, $f14
/* 024068 80023468 AFBF004C */  sw    $ra, 0x4c($sp)
/* 02406C 8002346C AFB50044 */  sw    $s5, 0x44($sp)
/* 024070 80023470 AFB40040 */  sw    $s4, 0x40($sp)
/* 024074 80023474 AFB20038 */  sw    $s2, 0x38($sp)
/* 024078 80023478 AFB00030 */  sw    $s0, 0x30($sp)
/* 02407C 8002347C E7B50018 */  swc1  $f21, 0x18($sp)
/* 024080 80023480 00008825 */  move  $s1, $zero
/* 024084 80023484 19C00027 */  blez  $t6, .L80023524
/* 024088 80023488 0000B025 */   move  $s6, $zero
/* 02408C 8002348C 3C148012 */  lui   $s4, %hi(gObjPtrList) # $s4, 0x8012
/* 024090 80023490 2694AE58 */  addiu $s4, %lo(gObjPtrList) # addiu $s4, $s4, -0x51a8
/* 024094 80023494 00009025 */  move  $s2, $zero
/* 024098 80023498 24150057 */  li    $s5, 87
.L8002349C:
/* 02409C 8002349C 8E8F0000 */  lw    $t7, ($s4)
/* 0240A0 800234A0 00000000 */  nop   
/* 0240A4 800234A4 01F2C021 */  addu  $t8, $t7, $s2
/* 0240A8 800234A8 8F020000 */  lw    $v0, ($t8)
/* 0240AC 800234AC 00000000 */  nop   
/* 0240B0 800234B0 84590006 */  lh    $t9, 6($v0)
/* 0240B4 800234B4 00000000 */  nop   
/* 0240B8 800234B8 33288000 */  andi  $t0, $t9, 0x8000
/* 0240BC 800234BC 15000014 */  bnez  $t0, .L80023510
/* 0240C0 800234C0 00000000 */   nop   
/* 0240C4 800234C4 84490048 */  lh    $t1, 0x48($v0)
/* 0240C8 800234C8 00000000 */  nop   
/* 0240CC 800234CC 16A90010 */  bne   $s5, $t1, .L80023510
/* 0240D0 800234D0 00000000 */   nop   
/* 0240D4 800234D4 C444000C */  lwc1  $f4, 0xc($v0)
/* 0240D8 800234D8 C4460014 */  lwc1  $f6, 0x14($v0)
/* 0240DC 800234DC 46162001 */  sub.s $f0, $f4, $f22
/* 0240E0 800234E0 00408025 */  move  $s0, $v0
/* 0240E4 800234E4 46000202 */  mul.s $f8, $f0, $f0
/* 0240E8 800234E8 46183081 */  sub.s $f2, $f6, $f24
/* 0240EC 800234EC 46021282 */  mul.s $f10, $f2, $f2
/* 0240F0 800234F0 0C0326B4 */  jal   sqrtf
/* 0240F4 800234F4 460A4300 */   add.s $f12, $f8, $f10
/* 0240F8 800234F8 4600A03C */  c.lt.s $f20, $f0
/* 0240FC 800234FC 00000000 */  nop   
/* 024100 80023500 45000003 */  bc1f  .L80023510
/* 024104 80023504 00000000 */   nop   
/* 024108 80023508 46000506 */  mov.s $f20, $f0
/* 02410C 8002350C 0200B025 */  move  $s6, $s0
.L80023510:
/* 024110 80023510 8E6A0000 */  lw    $t2, ($s3)
/* 024114 80023514 26310001 */  addiu $s1, $s1, 1
/* 024118 80023518 022A082A */  slt   $at, $s1, $t2
/* 02411C 8002351C 1420FFDF */  bnez  $at, .L8002349C
/* 024120 80023520 26520004 */   addiu $s2, $s2, 4
.L80023524:
/* 024124 80023524 8FBF004C */  lw    $ra, 0x4c($sp)
/* 024128 80023528 02C01025 */  move  $v0, $s6
/* 02412C 8002352C 8FB60048 */  lw    $s6, 0x48($sp)
/* 024130 80023530 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 024134 80023534 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 024138 80023538 C7B70020 */  lwc1  $f23, 0x20($sp)
/* 02413C 8002353C C7B60024 */  lwc1  $f22, 0x24($sp)
/* 024140 80023540 C7B90028 */  lwc1  $f25, 0x28($sp)
/* 024144 80023544 C7B8002C */  lwc1  $f24, 0x2c($sp)
/* 024148 80023548 8FB00030 */  lw    $s0, 0x30($sp)
/* 02414C 8002354C 8FB10034 */  lw    $s1, 0x34($sp)
/* 024150 80023550 8FB20038 */  lw    $s2, 0x38($sp)
/* 024154 80023554 8FB3003C */  lw    $s3, 0x3c($sp)
/* 024158 80023558 8FB40040 */  lw    $s4, 0x40($sp)
/* 02415C 8002355C 8FB50044 */  lw    $s5, 0x44($sp)
/* 024160 80023560 03E00008 */  jr    $ra
/* 024164 80023564 27BD0050 */   addiu $sp, $sp, 0x50

