glabel func_8001BB18
/* 01C718 8001BB18 3C028012 */  lui   $v0, %hi(playerCount) # $v0, 0x8012
/* 01C71C 8001BB1C 8C42AEF0 */  lw    $v0, %lo(playerCount)($v0)
/* 01C720 8001BB20 00000000 */  nop   
/* 01C724 8001BB24 14400003 */  bnez  $v0, .L8001BB34
/* 01C728 8001BB28 00000000 */   nop   
/* 01C72C 8001BB2C 03E00008 */  jr    $ra
/* 01C730 8001BB30 00001025 */   move  $v0, $zero

.L8001BB34:
/* 01C734 8001BB34 04800003 */  bltz  $a0, .L8001BB44
/* 01C738 8001BB38 0082082A */   slt   $at, $a0, $v0
/* 01C73C 8001BB3C 14200003 */  bnez  $at, .L8001BB4C
/* 01C740 8001BB40 3C0E8012 */   lui   $t6, 0x8012
.L8001BB44:
/* 01C744 8001BB44 03E00008 */  jr    $ra
/* 01C748 8001BB48 00001025 */   move  $v0, $zero

.L8001BB4C:
/* 01C74C 8001BB4C 8DCEAEEC */  lw    $t6, -0x5114($t6)
/* 01C750 8001BB50 00047880 */  sll   $t7, $a0, 2
/* 01C754 8001BB54 01CFC021 */  addu  $t8, $t6, $t7
/* 01C758 8001BB58 8F020000 */  lw    $v0, ($t8)
/* 01C75C 8001BB5C 00000000 */  nop   
/* 01C760 8001BB60 03E00008 */  jr    $ra
/* 01C764 8001BB64 00000000 */   nop   

/* 01C768 8001BB68 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 01C76C 8001BB6C AFB3002C */  sw    $s3, 0x2c($sp)
/* 01C770 8001BB70 AFB20028 */  sw    $s2, 0x28($sp)
/* 01C774 8001BB74 00A09025 */  move  $s2, $a1
/* 01C778 8001BB78 00C09825 */  move  $s3, $a2
/* 01C77C 8001BB7C AFBF0034 */  sw    $ra, 0x34($sp)
/* 01C780 8001BB80 AFB10024 */  sw    $s1, 0x24($sp)
/* 01C784 8001BB84 00808825 */  move  $s1, $a0
/* 01C788 8001BB88 AFB40030 */  sw    $s4, 0x30($sp)
/* 01C78C 8001BB8C AFB00020 */  sw    $s0, 0x20($sp)
/* 01C790 8001BB90 24060002 */  li    $a2, 2
/* 01C794 8001BB94 0C01ED32 */  jal   func_8007B4C8
/* 01C798 8001BB98 00002825 */   move  $a1, $zero
/* 01C79C 8001BB9C 3C148012 */  lui   $s4, %hi(D_8011AED0) # $s4, 0x8012
/* 01C7A0 8001BBA0 2694AED0 */  addiu $s4, %lo(D_8011AED0) # addiu $s4, $s4, -0x5130
/* 01C7A4 8001BBA4 8E820000 */  lw    $v0, ($s4)
/* 01C7A8 8001BBA8 00000000 */  nop   
/* 01C7AC 8001BBAC 28410004 */  slti  $at, $v0, 4
/* 01C7B0 8001BBB0 1420001C */  bnez  $at, .L8001BC24
/* 01C7B4 8001BBB4 8FBF0034 */   lw    $ra, 0x34($sp)
/* 01C7B8 8001BBB8 1840000D */  blez  $v0, .L8001BBF0
/* 01C7BC 8001BBBC 00008025 */   move  $s0, $zero
/* 01C7C0 8001BBC0 02002025 */  move  $a0, $s0
.L8001BBC4:
/* 01C7C4 8001BBC4 00002825 */  move  $a1, $zero
/* 01C7C8 8001BBC8 02203025 */  move  $a2, $s1
/* 01C7CC 8001BBCC 02403825 */  move  $a3, $s2
/* 01C7D0 8001BBD0 0C006F10 */  jal   func_8001BC40
/* 01C7D4 8001BBD4 AFB30010 */   sw    $s3, 0x10($sp)
/* 01C7D8 8001BBD8 8E820000 */  lw    $v0, ($s4)
/* 01C7DC 8001BBDC 26100001 */  addiu $s0, $s0, 1
/* 01C7E0 8001BBE0 0202082A */  slt   $at, $s0, $v0
/* 01C7E4 8001BBE4 1420FFF7 */  bnez  $at, .L8001BBC4
/* 01C7E8 8001BBE8 02002025 */   move  $a0, $s0
/* 01C7EC 8001BBEC 00008025 */  move  $s0, $zero
.L8001BBF0:
/* 01C7F0 8001BBF0 1840000B */  blez  $v0, .L8001BC20
/* 01C7F4 8001BBF4 02002025 */   move  $a0, $s0
.L8001BBF8:
/* 01C7F8 8001BBF8 24050001 */  li    $a1, 1
/* 01C7FC 8001BBFC 02203025 */  move  $a2, $s1
/* 01C800 8001BC00 02403825 */  move  $a3, $s2
/* 01C804 8001BC04 0C006F10 */  jal   func_8001BC40
/* 01C808 8001BC08 AFB30010 */   sw    $s3, 0x10($sp)
/* 01C80C 8001BC0C 8E8E0000 */  lw    $t6, ($s4)
/* 01C810 8001BC10 26100001 */  addiu $s0, $s0, 1
/* 01C814 8001BC14 020E082A */  slt   $at, $s0, $t6
/* 01C818 8001BC18 1420FFF7 */  bnez  $at, .L8001BBF8
/* 01C81C 8001BC1C 02002025 */   move  $a0, $s0
.L8001BC20:
/* 01C820 8001BC20 8FBF0034 */  lw    $ra, 0x34($sp)
.L8001BC24:
/* 01C824 8001BC24 8FB00020 */  lw    $s0, 0x20($sp)
/* 01C828 8001BC28 8FB10024 */  lw    $s1, 0x24($sp)
/* 01C82C 8001BC2C 8FB20028 */  lw    $s2, 0x28($sp)
/* 01C830 8001BC30 8FB3002C */  lw    $s3, 0x2c($sp)
/* 01C834 8001BC34 8FB40030 */  lw    $s4, 0x30($sp)
/* 01C838 8001BC38 03E00008 */  jr    $ra
/* 01C83C 8001BC3C 27BD0038 */   addiu $sp, $sp, 0x38

