glabel func_800C73F0
/* 0C7FF0 800C73F0 3C0E800E */  lui   $t6, %hi(D_800E3770) # $t6, 0x800e
/* 0C7FF4 800C73F4 8DCE3770 */  lw    $t6, %lo(D_800E3770)($t6)
/* 0C7FF8 800C73F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C7FFC 800C73FC 11C0000E */  beqz  $t6, .L800C7438
/* 0C8000 800C7400 AFBF0014 */   sw    $ra, 0x14($sp)
/* 0C8004 800C7404 3C03800E */  lui   $v1, %hi(D_800E377C) # $v1, 0x800e
/* 0C8008 800C7408 2463377C */  addiu $v1, %lo(D_800E377C) # addiu $v1, $v1, 0x377c
/* 0C800C 800C740C 8C620000 */  lw    $v0, ($v1)
/* 0C8010 800C7410 00000000 */  nop   
/* 0C8014 800C7414 18400008 */  blez  $v0, .L800C7438
/* 0C8018 800C7418 244FFFFF */   addiu $t7, $v0, -1
/* 0C801C 800C741C 15E00006 */  bnez  $t7, .L800C7438
/* 0C8020 800C7420 AC6F0000 */   sw    $t7, ($v1)
/* 0C8024 800C7424 3C048013 */  lui   $a0, %hi(D_8012ACA0) # $a0, 0x8013
/* 0C8028 800C7428 2484ACA0 */  addiu $a0, %lo(D_8012ACA0) # addiu $a0, $a0, -0x5360
/* 0C802C 800C742C 2405000A */  li    $a1, 10
/* 0C8030 800C7430 0C03238C */  jal   osSendMesg
/* 0C8034 800C7434 00003025 */   move  $a2, $zero
.L800C7438:
/* 0C8038 800C7438 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C803C 800C743C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C8040 800C7440 03E00008 */  jr    $ra
/* 0C8044 800C7444 00000000 */   nop   

/* 0C8048 800C7448 3C02800E */  lui   $v0, %hi(D_800E377C) # $v0, 0x800e
/* 0C804C 800C744C 8C42377C */  lw    $v0, %lo(D_800E377C)($v0)
/* 0C8050 800C7450 03E00008 */  jr    $ra
/* 0C8054 800C7454 00000000 */   nop   

