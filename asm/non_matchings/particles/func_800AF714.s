glabel func_800AF714
/* 0B0314 800AF714 27BDFF80 */  addiu $sp, $sp, -0x80
/* 0B0318 800AF718 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0B031C 800AF71C AFBE0038 */  sw    $fp, 0x38($sp)
/* 0B0320 800AF720 AFB70034 */  sw    $s7, 0x34($sp)
/* 0B0324 800AF724 AFB60030 */  sw    $s6, 0x30($sp)
/* 0B0328 800AF728 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0B032C 800AF72C AFB40028 */  sw    $s4, 0x28($sp)
/* 0B0330 800AF730 AFB30024 */  sw    $s3, 0x24($sp)
/* 0B0334 800AF734 AFB20020 */  sw    $s2, 0x20($sp)
/* 0B0338 800AF738 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0B033C 800AF73C AFB00018 */  sw    $s0, 0x18($sp)
/* 0B0340 800AF740 AFA50084 */  sw    $a1, 0x84($sp)
/* 0B0344 800AF744 8C930064 */  lw    $s3, 0x64($a0)
/* 0B0348 800AF748 8C970074 */  lw    $s7, 0x74($a0)
/* 0B034C 800AF74C 827E01D6 */  lb    $fp, 0x1d6($s3)
/* 0B0350 800AF750 00809025 */  move  $s2, $a0
/* 0B0354 800AF754 0C004B8A */  jal   object_do_player_tumble
/* 0B0358 800AF758 00008025 */   move  $s0, $zero
/* 0B035C 800AF75C 8E4E0040 */  lw    $t6, 0x40($s2)
/* 0B0360 800AF760 24160002 */  li    $s6, 2
/* 0B0364 800AF764 81CF0057 */  lb    $t7, 0x57($t6)
/* 0B0368 800AF768 241500FF */  li    $s5, 255
/* 0B036C 800AF76C 19E00125 */  blez  $t7, .L800AFC04
/* 0B0370 800AF770 3C14800E */   lui   $s4, %hi(D_800E2E84) # $s4, 0x800e
/* 0B0374 800AF774 3C11800E */  lui   $s1, %hi(D_800E2D00) # $s1, 0x800e
/* 0B0378 800AF778 26312D00 */  addiu $s1, %lo(D_800E2D00) # addiu $s1, $s1, 0x2d00
/* 0B037C 800AF77C 26942E84 */  addiu $s4, %lo(D_800E2E84) # addiu $s4, $s4, 0x2e84
.L800AF780:
/* 0B0380 800AF780 32F80001 */  andi  $t8, $s7, 1
/* 0B0384 800AF784 130000E8 */  beqz  $t8, .L800AFB28
/* 0B0388 800AF788 00000000 */   nop   
/* 0B038C 800AF78C 13C00008 */  beqz  $fp, .L800AF7B0
/* 0B0390 800AF790 240B0001 */   li    $t3, 1
/* 0B0394 800AF794 24010001 */  li    $at, 1
/* 0B0398 800AF798 13C10099 */  beq   $fp, $at, .L800AFA00
/* 0B039C 800AF79C 00000000 */   nop   
/* 0B03A0 800AF7A0 13D60083 */  beq   $fp, $s6, .L800AF9B0
/* 0B03A4 800AF7A4 00000000 */   nop   
/* 0B03A8 800AF7A8 100000AA */  b     .L800AFA54
/* 0B03AC 800AF7AC 00000000 */   nop   
.L800AF7B0:
/* 0B03B0 800AF7B0 0600004C */  bltz  $s0, .L800AF8E4
/* 0B03B4 800AF7B4 2A01000A */   slti  $at, $s0, 0xa
/* 0B03B8 800AF7B8 1020004B */  beqz  $at, .L800AF8E8
/* 0B03BC 800AF7BC 2401000A */   li    $at, 10
/* 0B03C0 800AF7C0 8662016E */  lh    $v0, 0x16e($s3)
/* 0B03C4 800AF7C4 00106140 */  sll   $t4, $s0, 5
/* 0B03C8 800AF7C8 04410002 */  bgez  $v0, .L800AF7D4
/* 0B03CC 800AF7CC 3C18800E */   lui   $t8, %hi(gParticlesAssetTable) # $t8, 0x800e
/* 0B03D0 800AF7D0 00021023 */  negu  $v0, $v0
.L800AF7D4:
/* 0B03D4 800AF7D4 2442FFE8 */  addiu $v0, $v0, -0x18
/* 0B03D8 800AF7D8 1840009E */  blez  $v0, .L800AFA54
/* 0B03DC 800AF7DC 28410021 */   slti  $at, $v0, 0x21
/* 0B03E0 800AF7E0 8E59006C */  lw    $t9, 0x6c($s2)
/* 0B03E4 800AF7E4 8F182CF0 */  lw    $t8, %lo(gParticlesAssetTable)($t8)
/* 0B03E8 800AF7E8 032C6821 */  addu  $t5, $t9, $t4
/* 0B03EC 800AF7EC 85AE0008 */  lh    $t6, 8($t5)
/* 0B03F0 800AF7F0 3C0D800E */  lui   $t5, %hi(D_800E2EC4) # $t5, 0x800e
/* 0B03F4 800AF7F4 000E7880 */  sll   $t7, $t6, 2
/* 0B03F8 800AF7F8 25AD2EC4 */  addiu $t5, %lo(D_800E2EC4) # addiu $t5, $t5, 0x2ec4
/* 0B03FC 800AF7FC 00106080 */  sll   $t4, $s0, 2
/* 0B0400 800AF800 030FC821 */  addu  $t9, $t8, $t7
/* 0B0404 800AF804 8F270000 */  lw    $a3, ($t9)
/* 0B0408 800AF808 018D4021 */  addu  $t0, $t4, $t5
/* 0B040C 800AF80C 14200002 */  bnez  $at, .L800AF818
/* 0B0410 800AF810 250A0003 */   addiu $t2, $t0, 3
/* 0B0414 800AF814 24020020 */  li    $v0, 32
.L800AF818:
/* 0B0418 800AF818 00420019 */  multu $v0, $v0
/* 0B041C 800AF81C 90E40014 */  lbu   $a0, 0x14($a3)
/* 0B0420 800AF820 910F0000 */  lbu   $t7, ($t0)
/* 0B0424 800AF824 00024900 */  sll   $t1, $v0, 4
/* 0B0428 800AF828 01E4C823 */  subu  $t9, $t7, $a0
/* 0B042C 800AF82C 28410011 */  slti  $at, $v0, 0x11
/* 0B0430 800AF830 00007012 */  mflo  $t6
/* 0B0434 800AF834 000EC083 */  sra   $t8, $t6, 2
/* 0B0438 800AF838 01381823 */  subu  $v1, $t1, $t8
/* 0B043C 800AF83C 03230019 */  multu $t9, $v1
/* 0B0440 800AF840 91190001 */  lbu   $t9, 1($t0)
/* 0B0444 800AF844 00006012 */  mflo  $t4
/* 0B0448 800AF848 000C6A03 */  sra   $t5, $t4, 8
/* 0B044C 800AF84C 01A47021 */  addu  $t6, $t5, $a0
/* 0B0450 800AF850 000E7E00 */  sll   $t7, $t6, 0x18
/* 0B0454 800AF854 AE2F0000 */  sw    $t7, ($s1)
/* 0B0458 800AF858 90E50015 */  lbu   $a1, 0x15($a3)
/* 0B045C 800AF85C 00000000 */  nop   
/* 0B0460 800AF860 03256023 */  subu  $t4, $t9, $a1
/* 0B0464 800AF864 01830019 */  multu $t4, $v1
/* 0B0468 800AF868 00006812 */  mflo  $t5
/* 0B046C 800AF86C 000D7203 */  sra   $t6, $t5, 8
/* 0B0470 800AF870 00AEC021 */  addu  $t8, $a1, $t6
/* 0B0474 800AF874 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B0478 800AF878 01F96825 */  or    $t5, $t7, $t9
/* 0B047C 800AF87C AE2D0000 */  sw    $t5, ($s1)
/* 0B0480 800AF880 90E60016 */  lbu   $a2, 0x16($a3)
/* 0B0484 800AF884 910E0002 */  lbu   $t6, 2($t0)
/* 0B0488 800AF888 00000000 */  nop   
/* 0B048C 800AF88C 01C6C023 */  subu  $t8, $t6, $a2
/* 0B0490 800AF890 03030019 */  multu $t8, $v1
/* 0B0494 800AF894 00007812 */  mflo  $t7
/* 0B0498 800AF898 000FCA03 */  sra   $t9, $t7, 8
/* 0B049C 800AF89C 00D96021 */  addu  $t4, $a2, $t9
/* 0B04A0 800AF8A0 000C7200 */  sll   $t6, $t4, 8
/* 0B04A4 800AF8A4 01AEC025 */  or    $t8, $t5, $t6
/* 0B04A8 800AF8A8 14200002 */  bnez  $at, .L800AF8B4
/* 0B04AC 800AF8AC AE380000 */   sw    $t8, ($s1)
/* 0B04B0 800AF8B0 24090100 */  li    $t1, 256
.L800AF8B4:
/* 0B04B4 800AF8B4 90E20017 */  lbu   $v0, 0x17($a3)
/* 0B04B8 800AF8B8 91590000 */  lbu   $t9, ($t2)
/* 0B04BC 800AF8BC 8E2F0000 */  lw    $t7, ($s1)
/* 0B04C0 800AF8C0 03226023 */  subu  $t4, $t9, $v0
/* 0B04C4 800AF8C4 01890019 */  multu $t4, $t1
/* 0B04C8 800AF8C8 3C01800E */  lui   $at, %hi(D_800E2D00) # $at, 0x800e
/* 0B04CC 800AF8CC 00006812 */  mflo  $t5
/* 0B04D0 800AF8D0 000D7203 */  sra   $t6, $t5, 8
/* 0B04D4 800AF8D4 004EC021 */  addu  $t8, $v0, $t6
/* 0B04D8 800AF8D8 01F8C825 */  or    $t9, $t7, $t8
/* 0B04DC 800AF8DC 1000005D */  b     .L800AFA54
/* 0B04E0 800AF8E0 AC392D00 */   sw    $t9, %lo(D_800E2D00)($at)
.L800AF8E4:
/* 0B04E4 800AF8E4 2401000A */  li    $at, 10
.L800AF8E8:
/* 0B04E8 800AF8E8 12010009 */  beq   $s0, $at, .L800AF910
/* 0B04EC 800AF8EC 2401000B */   li    $at, 11
/* 0B04F0 800AF8F0 12010011 */  beq   $s0, $at, .L800AF938
/* 0B04F4 800AF8F4 2401000C */   li    $at, 12
/* 0B04F8 800AF8F8 12010019 */  beq   $s0, $at, .L800AF960
/* 0B04FC 800AF8FC 2401000D */   li    $at, 13
/* 0B0500 800AF900 12010021 */  beq   $s0, $at, .L800AF988
/* 0B0504 800AF904 00000000 */   nop   
/* 0B0508 800AF908 10000052 */  b     .L800AFA54
/* 0B050C 800AF90C 00000000 */   nop   
.L800AF910:
/* 0B0510 800AF910 926201DE */  lbu   $v0, 0x1de($s3)
/* 0B0514 800AF914 00000000 */  nop   
/* 0B0518 800AF918 16A20002 */  bne   $s5, $v0, .L800AF924
/* 0B051C 800AF91C 304C000F */   andi  $t4, $v0, 0xf
/* 0B0520 800AF920 00005825 */  move  $t3, $zero
.L800AF924:
/* 0B0524 800AF924 000C6880 */  sll   $t5, $t4, 2
/* 0B0528 800AF928 028D7021 */  addu  $t6, $s4, $t5
/* 0B052C 800AF92C 8DCF0000 */  lw    $t7, ($t6)
/* 0B0530 800AF930 10000048 */  b     .L800AFA54
/* 0B0534 800AF934 AE2F0000 */   sw    $t7, ($s1)
.L800AF938:
/* 0B0538 800AF938 926201DF */  lbu   $v0, 0x1df($s3)
/* 0B053C 800AF93C 00000000 */  nop   
/* 0B0540 800AF940 16A20002 */  bne   $s5, $v0, .L800AF94C
/* 0B0544 800AF944 3058000F */   andi  $t8, $v0, 0xf
/* 0B0548 800AF948 00005825 */  move  $t3, $zero
.L800AF94C:
/* 0B054C 800AF94C 0018C880 */  sll   $t9, $t8, 2
/* 0B0550 800AF950 02996021 */  addu  $t4, $s4, $t9
/* 0B0554 800AF954 8D8D0000 */  lw    $t5, ($t4)
/* 0B0558 800AF958 1000003E */  b     .L800AFA54
/* 0B055C 800AF95C AE2D0000 */   sw    $t5, ($s1)
.L800AF960:
/* 0B0560 800AF960 926201DC */  lbu   $v0, 0x1dc($s3)
/* 0B0564 800AF964 00000000 */  nop   
/* 0B0568 800AF968 16A20002 */  bne   $s5, $v0, .L800AF974
/* 0B056C 800AF96C 304E000F */   andi  $t6, $v0, 0xf
/* 0B0570 800AF970 00005825 */  move  $t3, $zero
.L800AF974:
/* 0B0574 800AF974 000E7880 */  sll   $t7, $t6, 2
/* 0B0578 800AF978 028FC021 */  addu  $t8, $s4, $t7
/* 0B057C 800AF97C 8F190000 */  lw    $t9, ($t8)
/* 0B0580 800AF980 10000034 */  b     .L800AFA54
/* 0B0584 800AF984 AE390000 */   sw    $t9, ($s1)
.L800AF988:
/* 0B0588 800AF988 926201DD */  lbu   $v0, 0x1dd($s3)
/* 0B058C 800AF98C 00000000 */  nop   
/* 0B0590 800AF990 16A20002 */  bne   $s5, $v0, .L800AF99C
/* 0B0594 800AF994 304C000F */   andi  $t4, $v0, 0xf
/* 0B0598 800AF998 00005825 */  move  $t3, $zero
.L800AF99C:
/* 0B059C 800AF99C 000C6880 */  sll   $t5, $t4, 2
/* 0B05A0 800AF9A0 028D7021 */  addu  $t6, $s4, $t5
/* 0B05A4 800AF9A4 8DCF0000 */  lw    $t7, ($t6)
/* 0B05A8 800AF9A8 1000002A */  b     .L800AFA54
/* 0B05AC 800AF9AC AE2F0000 */   sw    $t7, ($s1)
.L800AF9B0:
/* 0B05B0 800AF9B0 16000009 */  bnez  $s0, .L800AF9D8
/* 0B05B4 800AF9B4 24010001 */   li    $at, 1
/* 0B05B8 800AF9B8 927801DC */  lbu   $t8, 0x1dc($s3)
/* 0B05BC 800AF9BC 00000000 */  nop   
/* 0B05C0 800AF9C0 3319000F */  andi  $t9, $t8, 0xf
/* 0B05C4 800AF9C4 00196080 */  sll   $t4, $t9, 2
/* 0B05C8 800AF9C8 028C6821 */  addu  $t5, $s4, $t4
/* 0B05CC 800AF9CC 8DAE0000 */  lw    $t6, ($t5)
/* 0B05D0 800AF9D0 10000020 */  b     .L800AFA54
/* 0B05D4 800AF9D4 AE2E0000 */   sw    $t6, ($s1)
.L800AF9D8:
/* 0B05D8 800AF9D8 1601001E */  bne   $s0, $at, .L800AFA54
/* 0B05DC 800AF9DC 00000000 */   nop   
/* 0B05E0 800AF9E0 926F01DD */  lbu   $t7, 0x1dd($s3)
/* 0B05E4 800AF9E4 00000000 */  nop   
/* 0B05E8 800AF9E8 31F8000F */  andi  $t8, $t7, 0xf
/* 0B05EC 800AF9EC 0018C880 */  sll   $t9, $t8, 2
/* 0B05F0 800AF9F0 02996021 */  addu  $t4, $s4, $t9
/* 0B05F4 800AF9F4 8D8D0000 */  lw    $t5, ($t4)
/* 0B05F8 800AF9F8 10000016 */  b     .L800AFA54
/* 0B05FC 800AF9FC AE2D0000 */   sw    $t5, ($s1)
.L800AFA00:
/* 0B0600 800AFA00 12160003 */  beq   $s0, $s6, .L800AFA10
/* 0B0604 800AFA04 24010003 */   li    $at, 3
/* 0B0608 800AFA08 16010012 */  bne   $s0, $at, .L800AFA54
/* 0B060C 800AFA0C 00000000 */   nop   
.L800AFA10:
/* 0B0610 800AFA10 826E0002 */  lb    $t6, 2($s3)
/* 0B0614 800AFA14 3C198012 */  lui   $t9, %hi(D_80127C88) # $t9, 0x8012
/* 0B0618 800AFA18 31CF0007 */  andi  $t7, $t6, 7
/* 0B061C 800AFA1C 000FC040 */  sll   $t8, $t7, 1
/* 0B0620 800AFA20 27397C88 */  addiu $t9, %lo(D_80127C88) # addiu $t9, $t9, 0x7c88
/* 0B0624 800AFA24 8FAC0084 */  lw    $t4, 0x84($sp)
/* 0B0628 800AFA28 03191821 */  addu  $v1, $t8, $t9
/* 0B062C 800AFA2C 84620000 */  lh    $v0, ($v1)
/* 0B0630 800AFA30 000C6880 */  sll   $t5, $t4, 2
/* 0B0634 800AFA34 004D1021 */  addu  $v0, $v0, $t5
/* 0B0638 800AFA38 28410101 */  slti  $at, $v0, 0x101
/* 0B063C 800AFA3C 14200002 */  bnez  $at, .L800AFA48
/* 0B0640 800AFA40 00000000 */   nop   
/* 0B0644 800AFA44 24020100 */  li    $v0, 256
.L800AFA48:
/* 0B0648 800AFA48 A4620000 */  sh    $v0, ($v1)
/* 0B064C 800AFA4C 3C01800E */  lui   $at, %hi(gParticleOpacity) # $at, 0x800e
/* 0B0650 800AFA50 AC222EEC */  sw    $v0, %lo(gParticleOpacity)($at)
.L800AFA54:
/* 0B0654 800AFA54 11600060 */  beqz  $t3, .L800AFBD8
/* 0B0658 800AFA58 00000000 */   nop   
/* 0B065C 800AFA5C 8E46006C */  lw    $a2, 0x6c($s2)
/* 0B0660 800AFA60 00103940 */  sll   $a3, $s0, 5
/* 0B0664 800AFA64 00C71021 */  addu  $v0, $a2, $a3
/* 0B0668 800AFA68 84430004 */  lh    $v1, 4($v0)
/* 0B066C 800AFA6C 02402025 */  move  $a0, $s2
/* 0B0670 800AFA70 306E8000 */  andi  $t6, $v1, 0x8000
/* 0B0674 800AFA74 15C00009 */  bnez  $t6, .L800AFA9C
/* 0B0678 800AFA78 02002825 */   move  $a1, $s0
/* 0B067C 800AFA7C 0C02BD4B */  jal   func_800AF52C
/* 0B0680 800AFA80 AFA70044 */   sw    $a3, 0x44($sp)
/* 0B0684 800AFA84 8FA70044 */  lw    $a3, 0x44($sp)
/* 0B0688 800AFA88 8E46006C */  lw    $a2, 0x6c($s2)
/* 0B068C 800AFA8C 00000000 */  nop   
/* 0B0690 800AFA90 00C71021 */  addu  $v0, $a2, $a3
/* 0B0694 800AFA94 84430004 */  lh    $v1, 4($v0)
/* 0B0698 800AFA98 00000000 */  nop   
.L800AFA9C:
/* 0B069C 800AFA9C 306F4000 */  andi  $t7, $v1, 0x4000
/* 0B06A0 800AFAA0 11E00007 */  beqz  $t7, .L800AFAC0
/* 0B06A4 800AFAA4 30790400 */   andi  $t9, $v1, 0x400
/* 0B06A8 800AFAA8 0010C140 */  sll   $t8, $s0, 5
/* 0B06AC 800AFAAC 00D82821 */  addu  $a1, $a2, $t8
/* 0B06B0 800AFAB0 0C02BF97 */  jal   func_800AFE5C
/* 0B06B4 800AFAB4 02402025 */   move  $a0, $s2
/* 0B06B8 800AFAB8 10000048 */  b     .L800AFBDC
/* 0B06BC 800AFABC AE200000 */   sw    $zero, ($s1)
.L800AFAC0:
/* 0B06C0 800AFAC0 13200006 */  beqz  $t9, .L800AFADC
/* 0B06C4 800AFAC4 02402025 */   move  $a0, $s2
/* 0B06C8 800AFAC8 00106140 */  sll   $t4, $s0, 5
/* 0B06CC 800AFACC 0C02BF97 */  jal   func_800AFE5C
/* 0B06D0 800AFAD0 00CC2821 */   addu  $a1, $a2, $t4
/* 0B06D4 800AFAD4 10000041 */  b     .L800AFBDC
/* 0B06D8 800AFAD8 AE200000 */   sw    $zero, ($s1)
.L800AFADC:
/* 0B06DC 800AFADC 844D000A */  lh    $t5, 0xa($v0)
/* 0B06E0 800AFAE0 8FAE0084 */  lw    $t6, 0x84($sp)
/* 0B06E4 800AFAE4 02402025 */  move  $a0, $s2
/* 0B06E8 800AFAE8 01AE7821 */  addu  $t7, $t5, $t6
/* 0B06EC 800AFAEC A44F000A */  sh    $t7, 0xa($v0)
/* 0B06F0 800AFAF0 8E46006C */  lw    $a2, 0x6c($s2)
/* 0B06F4 800AFAF4 00106940 */  sll   $t5, $s0, 5
/* 0B06F8 800AFAF8 00C71021 */  addu  $v0, $a2, $a3
/* 0B06FC 800AFAFC 8C590000 */  lw    $t9, ($v0)
/* 0B0700 800AFB00 8458000A */  lh    $t8, 0xa($v0)
/* 0B0704 800AFB04 872C0040 */  lh    $t4, 0x40($t9)
/* 0B0708 800AFB08 00000000 */  nop   
/* 0B070C 800AFB0C 030C082A */  slt   $at, $t8, $t4
/* 0B0710 800AFB10 14200031 */  bnez  $at, .L800AFBD8
/* 0B0714 800AFB14 00000000 */   nop   
/* 0B0718 800AFB18 0C02BF97 */  jal   func_800AFE5C
/* 0B071C 800AFB1C 00CD2821 */   addu  $a1, $a2, $t5
/* 0B0720 800AFB20 1000002E */  b     .L800AFBDC
/* 0B0724 800AFB24 AE200000 */   sw    $zero, ($s1)
.L800AFB28:
/* 0B0728 800AFB28 8E46006C */  lw    $a2, 0x6c($s2)
/* 0B072C 800AFB2C 00107140 */  sll   $t6, $s0, 5
/* 0B0730 800AFB30 00CE1021 */  addu  $v0, $a2, $t6
/* 0B0734 800AFB34 84430004 */  lh    $v1, 4($v0)
/* 0B0738 800AFB38 00000000 */  nop   
/* 0B073C 800AFB3C 306F8000 */  andi  $t7, $v1, 0x8000
/* 0B0740 800AFB40 11E00025 */  beqz  $t7, .L800AFBD8
/* 0B0744 800AFB44 30794000 */   andi  $t9, $v1, 0x4000
/* 0B0748 800AFB48 13200009 */  beqz  $t9, .L800AFB70
/* 0B074C 800AFB4C 306C0400 */   andi  $t4, $v1, 0x400
/* 0B0750 800AFB50 0010C140 */  sll   $t8, $s0, 5
/* 0B0754 800AFB54 00D81021 */  addu  $v0, $a2, $t8
/* 0B0758 800AFB58 A0400006 */  sb    $zero, 6($v0)
/* 0B075C 800AFB5C 02402025 */  move  $a0, $s2
/* 0B0760 800AFB60 0C02BDB9 */  jal   func_800AF6E4
/* 0B0764 800AFB64 02002825 */   move  $a1, $s0
/* 0B0768 800AFB68 10000011 */  b     .L800AFBB0
/* 0B076C 800AFB6C 00000000 */   nop   
.L800AFB70:
/* 0B0770 800AFB70 1180000D */  beqz  $t4, .L800AFBA8
/* 0B0774 800AFB74 02402025 */   move  $a0, $s2
/* 0B0778 800AFB78 00106940 */  sll   $t5, $s0, 5
/* 0B077C 800AFB7C 346E0200 */  ori   $t6, $v1, 0x200
/* 0B0780 800AFB80 00CD2021 */  addu  $a0, $a2, $t5
/* 0B0784 800AFB84 A44E0004 */  sh    $t6, 4($v0)
/* 0B0788 800AFB88 908F0006 */  lbu   $t7, 6($a0)
/* 0B078C 800AFB8C 02402025 */  move  $a0, $s2
/* 0B0790 800AFB90 15E00007 */  bnez  $t7, .L800AFBB0
/* 0B0794 800AFB94 00000000 */   nop   
/* 0B0798 800AFB98 0C02BDB9 */  jal   func_800AF6E4
/* 0B079C 800AFB9C 02002825 */   move  $a1, $s0
/* 0B07A0 800AFBA0 10000003 */  b     .L800AFBB0
/* 0B07A4 800AFBA4 00000000 */   nop   
.L800AFBA8:
/* 0B07A8 800AFBA8 0C02BDB9 */  jal   func_800AF6E4
/* 0B07AC 800AFBAC 02002825 */   move  $a1, $s0
.L800AFBB0:
/* 0B07B0 800AFBB0 12160003 */  beq   $s0, $s6, .L800AFBC0
/* 0B07B4 800AFBB4 24010003 */   li    $at, 3
/* 0B07B8 800AFBB8 16010007 */  bne   $s0, $at, .L800AFBD8
/* 0B07BC 800AFBBC 00000000 */   nop   
.L800AFBC0:
/* 0B07C0 800AFBC0 82790002 */  lb    $t9, 2($s3)
/* 0B07C4 800AFBC4 3C018012 */  lui   $at, %hi(D_80127C88) # $at, 0x8012
/* 0B07C8 800AFBC8 33380007 */  andi  $t8, $t9, 7
/* 0B07CC 800AFBCC 00186040 */  sll   $t4, $t8, 1
/* 0B07D0 800AFBD0 002C0821 */  addu  $at, $at, $t4
/* 0B07D4 800AFBD4 A4207C88 */  sh    $zero, %lo(D_80127C88)($at)
.L800AFBD8:
/* 0B07D8 800AFBD8 AE200000 */  sw    $zero, ($s1)
.L800AFBDC:
/* 0B07DC 800AFBDC 240E0100 */  li    $t6, 256
/* 0B07E0 800AFBE0 3C01800E */  lui   $at, %hi(gParticleOpacity) # $at, 0x800e
/* 0B07E4 800AFBE4 AC2E2EEC */  sw    $t6, %lo(gParticleOpacity)($at)
/* 0B07E8 800AFBE8 8E4F0040 */  lw    $t7, 0x40($s2)
/* 0B07EC 800AFBEC 26100001 */  addiu $s0, $s0, 1
/* 0B07F0 800AFBF0 81F90057 */  lb    $t9, 0x57($t7)
/* 0B07F4 800AFBF4 00176842 */  srl   $t5, $s7, 1
/* 0B07F8 800AFBF8 0219082A */  slt   $at, $s0, $t9
/* 0B07FC 800AFBFC 1420FEE0 */  bnez  $at, .L800AF780
/* 0B0800 800AFC00 01A0B825 */   move  $s7, $t5
.L800AFC04:
/* 0B0804 800AFC04 0C004BCC */  jal   object_undo_player_tumble
/* 0B0808 800AFC08 02402025 */   move  $a0, $s2
/* 0B080C 800AFC0C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0B0810 800AFC10 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B0814 800AFC14 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0B0818 800AFC18 8FB20020 */  lw    $s2, 0x20($sp)
/* 0B081C 800AFC1C 8FB30024 */  lw    $s3, 0x24($sp)
/* 0B0820 800AFC20 8FB40028 */  lw    $s4, 0x28($sp)
/* 0B0824 800AFC24 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0B0828 800AFC28 8FB60030 */  lw    $s6, 0x30($sp)
/* 0B082C 800AFC2C 8FB70034 */  lw    $s7, 0x34($sp)
/* 0B0830 800AFC30 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0B0834 800AFC34 03E00008 */  jr    $ra
/* 0B0838 800AFC38 27BD0080 */   addiu $sp, $sp, 0x80

