.rdata
glabel D_800E77A4
.asciz "DKRACING-GHOSTS"
glabel D_800E77B4
.word 0
glabel D_800E77B8
.asciz "DKRACING-GHOSTS"
glabel D_800E77C8
.word 0

.text
glabel func_800753D8
/* 075FD8 800753D8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 075FDC 800753DC AFBF001C */  sw    $ra, 0x1c($sp)
/* 075FE0 800753E0 AFA40050 */  sw    $a0, 0x50($sp)
/* 075FE4 800753E4 0C01D637 */  jal   func_800758DC
/* 075FE8 800753E8 AFA50054 */   sw    $a1, 0x54($sp)
/* 075FEC 800753EC 10400007 */  beqz  $v0, .L8007540C
/* 075FF0 800753F0 3C05800E */   lui   $a1, %hi(D_800E77A4) # $a1, 0x800e
/* 075FF4 800753F4 8FA40050 */  lw    $a0, 0x50($sp)
/* 075FF8 800753F8 0C01D6BB */  jal   func_80075AEC
/* 075FFC 800753FC AFA20040 */   sw    $v0, 0x40($sp)
/* 076000 80075400 8FA20040 */  lw    $v0, 0x40($sp)
/* 076004 80075404 100000B0 */  b     .L800756C8
/* 076008 80075408 8FBF001C */   lw    $ra, 0x1c($sp)
.L8007540C:
/* 07600C 8007540C 8FA40050 */  lw    $a0, 0x50($sp)
/* 076010 80075410 3C06800E */  lui   $a2, %hi(D_800E77B4) # $a2, 0x800e
/* 076014 80075414 24C677B4 */  addiu $a2, %lo(D_800E77B4) # addiu $a2, $a2, 0x77b4
/* 076018 80075418 24A577A4 */  addiu $a1, %lo(D_800E77A4) # addiu $a1, $a1, 0x77a4
/* 07601C 8007541C 0C01D93A */  jal   func_800764E8
/* 076020 80075420 27A70034 */   addiu $a3, $sp, 0x34
/* 076024 80075424 144000A1 */  bnez  $v0, .L800756AC
/* 076028 80075428 00401825 */   move  $v1, $v0
/* 07602C 8007542C 8FA40050 */  lw    $a0, 0x50($sp)
/* 076030 80075430 8FA50034 */  lw    $a1, 0x34($sp)
/* 076034 80075434 0C01DA49 */  jal   func_80076924
/* 076038 80075438 27A60030 */   addiu $a2, $sp, 0x30
/* 07603C 8007543C 10400007 */  beqz  $v0, .L8007545C
/* 076040 80075440 240500FF */   li    $a1, 255
/* 076044 80075444 8FA40050 */  lw    $a0, 0x50($sp)
/* 076048 80075448 0C01D6BB */  jal   func_80075AEC
/* 07604C 8007544C AFA20040 */   sw    $v0, 0x40($sp)
/* 076050 80075450 8FA20040 */  lw    $v0, 0x40($sp)
/* 076054 80075454 1000009C */  b     .L800756C8
/* 076058 80075458 8FBF001C */   lw    $ra, 0x1c($sp)
.L8007545C:
/* 07605C 8007545C 8FA40030 */  lw    $a0, 0x30($sp)
/* 076060 80075460 0C01C327 */  jal   allocate_from_main_pool_safe
/* 076064 80075464 24840100 */   addiu $a0, $a0, 0x100
/* 076068 80075468 8FA40050 */  lw    $a0, 0x50($sp)
/* 07606C 8007546C 8FA50034 */  lw    $a1, 0x34($sp)
/* 076070 80075470 8FA70030 */  lw    $a3, 0x30($sp)
/* 076074 80075474 AFA20048 */  sw    $v0, 0x48($sp)
/* 076078 80075478 0C01D984 */  jal   read_data_from_controller_pak
/* 07607C 8007547C 00403025 */   move  $a2, $v0
/* 076080 80075480 8FA40050 */  lw    $a0, 0x50($sp)
/* 076084 80075484 0C01D6BB */  jal   func_80075AEC
/* 076088 80075488 AFA20040 */   sw    $v0, 0x40($sp)
/* 07608C 8007548C 8FA30040 */  lw    $v1, 0x40($sp)
/* 076090 80075490 8FAE0048 */  lw    $t6, 0x48($sp)
/* 076094 80075494 1460007F */  bnez  $v1, .L80075694
/* 076098 80075498 3C014748 */   lui   $at, (0x47485353 >> 16) # lui $at, 0x4748
/* 07609C 8007549C 8DCF0000 */  lw    $t7, ($t6)
/* 0760A0 800754A0 34215353 */  ori   $at, (0x47485353 & 0xFFFF) # ori $at, $at, 0x5353
/* 0760A4 800754A4 15E10076 */  bne   $t7, $at, .L80075680
/* 0760A8 800754A8 24030009 */   li    $v1, 9
/* 0760AC 800754AC 8FA80054 */  lw    $t0, 0x54($sp)
/* 0760B0 800754B0 8FA40030 */  lw    $a0, 0x30($sp)
/* 0760B4 800754B4 0008C080 */  sll   $t8, $t0, 2
/* 0760B8 800754B8 01D81021 */  addu  $v0, $t6, $t8
/* 0760BC 800754BC 84590006 */  lh    $t9, 6($v0)
/* 0760C0 800754C0 844A000A */  lh    $t2, 0xa($v0)
/* 0760C4 800754C4 AFB80024 */  sw    $t8, 0x24($sp)
/* 0760C8 800754C8 032A3823 */  subu  $a3, $t9, $t2
/* 0760CC 800754CC AFA70038 */  sw    $a3, 0x38($sp)
/* 0760D0 800754D0 240500FF */  li    $a1, 255
/* 0760D4 800754D4 0C01C327 */  jal   allocate_from_main_pool_safe
/* 0760D8 800754D8 24840100 */   addiu $a0, $a0, 0x100
/* 0760DC 800754DC 8FA40048 */  lw    $a0, 0x48($sp)
/* 0760E0 800754E0 8FA80024 */  lw    $t0, 0x24($sp)
/* 0760E4 800754E4 24830004 */  addiu $v1, $a0, 4
/* 0760E8 800754E8 AFA20044 */  sw    $v0, 0x44($sp)
/* 0760EC 800754EC 00684821 */  addu  $t1, $v1, $t0
/* 0760F0 800754F0 85260002 */  lh    $a2, 2($t1)
/* 0760F4 800754F4 AFA90020 */  sw    $t1, 0x20($sp)
/* 0760F8 800754F8 AFA30028 */  sw    $v1, 0x28($sp)
/* 0760FC 800754FC 0C032768 */  jal   bcopy
/* 076100 80075500 00402825 */   move  $a1, $v0
/* 076104 80075504 8FA80054 */  lw    $t0, 0x54($sp)
/* 076108 80075508 8FA30028 */  lw    $v1, 0x28($sp)
/* 07610C 8007550C 8FA70038 */  lw    $a3, 0x38($sp)
/* 076110 80075510 8FA90020 */  lw    $t1, 0x20($sp)
/* 076114 80075514 24010005 */  li    $at, 5
/* 076118 80075518 1101000F */  beq   $t0, $at, .L80075558
/* 07611C 8007551C 29010006 */   slti  $at, $t0, 6
/* 076120 80075520 85220006 */  lh    $v0, 6($t1)
/* 076124 80075524 8FAC0044 */  lw    $t4, 0x44($sp)
/* 076128 80075528 8FAB0048 */  lw    $t3, 0x48($sp)
/* 07612C 8007552C 846F001A */  lh    $t7, 0x1a($v1)
/* 076130 80075530 004C6821 */  addu  $t5, $v0, $t4
/* 076134 80075534 01A72821 */  addu  $a1, $t5, $a3
/* 076138 80075538 AFA70038 */  sw    $a3, 0x38($sp)
/* 07613C 8007553C 004B2021 */  addu  $a0, $v0, $t3
/* 076140 80075540 0C032768 */  jal   bcopy
/* 076144 80075544 01E23023 */   subu  $a2, $t7, $v0
/* 076148 80075548 8FA70038 */  lw    $a3, 0x38($sp)
/* 07614C 8007554C 8FA80054 */  lw    $t0, 0x54($sp)
/* 076150 80075550 00000000 */  nop   
/* 076154 80075554 29010006 */  slti  $at, $t0, 6
.L80075558:
/* 076158 80075558 10200039 */  beqz  $at, .L80075640
/* 07615C 8007555C 01001825 */   move  $v1, $t0
/* 076160 80075560 24050006 */  li    $a1, 6
/* 076164 80075564 00A83023 */  subu  $a2, $a1, $t0
/* 076168 80075568 30D80003 */  andi  $t8, $a2, 3
/* 07616C 8007556C 13000011 */  beqz  $t8, .L800755B4
/* 076170 80075570 03082021 */   addu  $a0, $t8, $t0
/* 076174 80075574 8FA90044 */  lw    $t1, 0x44($sp)
/* 076178 80075578 00087080 */  sll   $t6, $t0, 2
/* 07617C 8007557C 012E1021 */  addu  $v0, $t1, $t6
/* 076180 80075580 24420004 */  addiu $v0, $v0, 4
.L80075584:
/* 076184 80075584 844B0006 */  lh    $t3, 6($v0)
/* 076188 80075588 90590004 */  lbu   $t9, 4($v0)
/* 07618C 8007558C 904A0005 */  lbu   $t2, 5($v0)
/* 076190 80075590 24630001 */  addiu $v1, $v1, 1
/* 076194 80075594 01676021 */  addu  $t4, $t3, $a3
/* 076198 80075598 A44C0002 */  sh    $t4, 2($v0)
/* 07619C 8007559C 24420004 */  addiu $v0, $v0, 4
/* 0761A0 800755A0 A059FFFC */  sb    $t9, -4($v0)
/* 0761A4 800755A4 1483FFF7 */  bne   $a0, $v1, .L80075584
/* 0761A8 800755A8 A04AFFFD */   sb    $t2, -3($v0)
/* 0761AC 800755AC 10650025 */  beq   $v1, $a1, .L80075644
/* 0761B0 800755B0 8FA90044 */   lw    $t1, 0x44($sp)
.L800755B4:
/* 0761B4 800755B4 8FA90044 */  lw    $t1, 0x44($sp)
/* 0761B8 800755B8 00036880 */  sll   $t5, $v1, 2
/* 0761BC 800755BC 012D1021 */  addu  $v0, $t1, $t5
/* 0761C0 800755C0 24420004 */  addiu $v0, $v0, 4
.L800755C4:
/* 0761C4 800755C4 844C000A */  lh    $t4, 0xa($v0)
/* 0761C8 800755C8 844E0006 */  lh    $t6, 6($v0)
/* 0761CC 800755CC 904A0008 */  lbu   $t2, 8($v0)
/* 0761D0 800755D0 904B0009 */  lbu   $t3, 9($v0)
/* 0761D4 800755D4 904F0004 */  lbu   $t7, 4($v0)
/* 0761D8 800755D8 90580005 */  lbu   $t8, 5($v0)
/* 0761DC 800755DC 01876821 */  addu  $t5, $t4, $a3
/* 0761E0 800755E0 01C7C821 */  addu  $t9, $t6, $a3
/* 0761E4 800755E4 844E000E */  lh    $t6, 0xe($v0)
/* 0761E8 800755E8 844C0012 */  lh    $t4, 0x12($v0)
/* 0761EC 800755EC A04A0004 */  sb    $t2, 4($v0)
/* 0761F0 800755F0 A04B0005 */  sb    $t3, 5($v0)
/* 0761F4 800755F4 A04F0000 */  sb    $t7, ($v0)
/* 0761F8 800755F8 A0580001 */  sb    $t8, 1($v0)
/* 0761FC 800755FC 9058000D */  lbu   $t8, 0xd($v0)
/* 076200 80075600 904F000C */  lbu   $t7, 0xc($v0)
/* 076204 80075604 904B0011 */  lbu   $t3, 0x11($v0)
/* 076208 80075608 904A0010 */  lbu   $t2, 0x10($v0)
/* 07620C 8007560C A44D0006 */  sh    $t5, 6($v0)
/* 076210 80075610 A4590002 */  sh    $t9, 2($v0)
/* 076214 80075614 24630004 */  addiu $v1, $v1, 4
/* 076218 80075618 01C7C821 */  addu  $t9, $t6, $a3
/* 07621C 8007561C 01876821 */  addu  $t5, $t4, $a3
/* 076220 80075620 A44D000E */  sh    $t5, 0xe($v0)
/* 076224 80075624 A459000A */  sh    $t9, 0xa($v0)
/* 076228 80075628 24420010 */  addiu $v0, $v0, 0x10
/* 07622C 8007562C A058FFF9 */  sb    $t8, -7($v0)
/* 076230 80075630 A04FFFF8 */  sb    $t7, -8($v0)
/* 076234 80075634 A04BFFFD */  sb    $t3, -3($v0)
/* 076238 80075638 1465FFE2 */  bne   $v1, $a1, .L800755C4
/* 07623C 8007563C A04AFFFC */   sb    $t2, -4($v0)
.L80075640:
/* 076240 80075640 8FA90044 */  lw    $t1, 0x44($sp)
.L80075644:
/* 076244 80075644 3C06800E */  lui   $a2, %hi(D_800E77B8) # $a2, 0x800e
/* 076248 80075648 25220004 */  addiu $v0, $t1, 4
/* 07624C 8007564C 844F0016 */  lh    $t7, 0x16($v0)
/* 076250 80075650 3C07800E */  lui   $a3, %hi(D_800E77C8) # $a3, 0x800e
/* 076254 80075654 A44F001A */  sh    $t7, 0x1a($v0)
/* 076258 80075658 8FB80030 */  lw    $t8, 0x30($sp)
/* 07625C 8007565C 8FA50034 */  lw    $a1, 0x34($sp)
/* 076260 80075660 8FA40050 */  lw    $a0, 0x50($sp)
/* 076264 80075664 24E777C8 */  addiu $a3, %lo(D_800E77C8) # addiu $a3, $a3, 0x77c8
/* 076268 80075668 24C677B8 */  addiu $a2, %lo(D_800E77B8) # addiu $a2, $a2, 0x77b8
/* 07626C 8007566C AFA90010 */  sw    $t1, 0x10($sp)
/* 076270 80075670 0C01D9B5 */  jal   func_800766D4
/* 076274 80075674 AFB80014 */   sw    $t8, 0x14($sp)
/* 076278 80075678 10000001 */  b     .L80075680
/* 07627C 8007567C 00401825 */   move  $v1, $v0
.L80075680:
/* 076280 80075680 8FA40044 */  lw    $a0, 0x44($sp)
/* 076284 80075684 0C01C450 */  jal   free_from_memory_pool
/* 076288 80075688 AFA30040 */   sw    $v1, 0x40($sp)
/* 07628C 8007568C 8FA30040 */  lw    $v1, 0x40($sp)
/* 076290 80075690 00000000 */  nop   
.L80075694:
/* 076294 80075694 8FA40048 */  lw    $a0, 0x48($sp)
/* 076298 80075698 0C01C450 */  jal   free_from_memory_pool
/* 07629C 8007569C AFA30040 */   sw    $v1, 0x40($sp)
/* 0762A0 800756A0 8FA30040 */  lw    $v1, 0x40($sp)
/* 0762A4 800756A4 10000007 */  b     .L800756C4
/* 0762A8 800756A8 00601025 */   move  $v0, $v1
.L800756AC:
/* 0762AC 800756AC 8FA40050 */  lw    $a0, 0x50($sp)
/* 0762B0 800756B0 0C01D6BB */  jal   func_80075AEC
/* 0762B4 800756B4 AFA30040 */   sw    $v1, 0x40($sp)
/* 0762B8 800756B8 8FA30040 */  lw    $v1, 0x40($sp)
/* 0762BC 800756BC 00000000 */  nop   
/* 0762C0 800756C0 00601025 */  move  $v0, $v1
.L800756C4:
/* 0762C4 800756C4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800756C8:
/* 0762C8 800756C8 27BD0050 */  addiu $sp, $sp, 0x50
/* 0762CC 800756CC 03E00008 */  jr    $ra
/* 0762D0 800756D0 00000000 */   nop   

