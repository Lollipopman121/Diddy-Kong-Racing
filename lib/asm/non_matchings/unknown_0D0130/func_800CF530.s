glabel func_800CF530
/* 0D0130 800CF530 27BDFB78 */  addiu $sp, $sp, -0x488
/* 0D0134 800CF534 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D0138 800CF538 AFA40488 */  sw    $a0, 0x488($sp)
/* 0D013C 800CF53C AFA00034 */  sw    $zero, 0x34($sp)
/* 0D0140 800CF540 0C0356F0 */  jal   __osCheckId
/* 0D0144 800CF544 8FA40488 */   lw    $a0, 0x488($sp)
/* 0D0148 800CF548 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D014C 800CF54C 8FAE0480 */  lw    $t6, 0x480($sp)
/* 0D0150 800CF550 24010002 */  li    $at, 2
/* 0D0154 800CF554 15C10004 */  bne   $t6, $at, .L800CF568
/* 0D0158 800CF558 00000000 */   nop   
/* 0D015C 800CF55C 0C035659 */  jal   __osGetId
/* 0D0160 800CF560 8FA40488 */   lw    $a0, 0x488($sp)
/* 0D0164 800CF564 AFA20480 */  sw    $v0, 0x480($sp)
.L800CF568:
/* 0D0168 800CF568 8FAF0480 */  lw    $t7, 0x480($sp)
/* 0D016C 800CF56C 11E00003 */  beqz  $t7, .L800CF57C
/* 0D0170 800CF570 00000000 */   nop   
/* 0D0174 800CF574 1000019B */  b     .L800CFBE4
/* 0D0178 800CF578 01E01025 */   move  $v0, $t7
.L800CF57C:
/* 0D017C 800CF57C 8FA40488 */  lw    $a0, 0x488($sp)
/* 0D0180 800CF580 0C033EFD */  jal   func_800CFBF4
/* 0D0184 800CF584 27A50038 */   addiu $a1, $sp, 0x38
/* 0D0188 800CF588 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D018C 800CF58C 8FB80480 */  lw    $t8, 0x480($sp)
/* 0D0190 800CF590 13000003 */  beqz  $t8, .L800CF5A0
/* 0D0194 800CF594 00000000 */   nop   
/* 0D0198 800CF598 10000192 */  b     .L800CFBE4
/* 0D019C 800CF59C 03001025 */   move  $v0, $t8
.L800CF5A0:
/* 0D01A0 800CF5A0 8FB90488 */  lw    $t9, 0x488($sp)
/* 0D01A4 800CF5A4 AFA00484 */  sw    $zero, 0x484($sp)
/* 0D01A8 800CF5A8 8F280050 */  lw    $t0, 0x50($t9)
/* 0D01AC 800CF5AC 190000C0 */  blez  $t0, .L800CF8B0
/* 0D01B0 800CF5B0 00000000 */   nop   
.L800CF5B4:
/* 0D01B4 800CF5B4 8FA90488 */  lw    $t1, 0x488($sp)
/* 0D01B8 800CF5B8 8FAB0484 */  lw    $t3, 0x484($sp)
/* 0D01BC 800CF5BC 27A7025C */  addiu $a3, $sp, 0x25c
/* 0D01C0 800CF5C0 8D2A005C */  lw    $t2, 0x5c($t1)
/* 0D01C4 800CF5C4 8D240004 */  lw    $a0, 4($t1)
/* 0D01C8 800CF5C8 8D250008 */  lw    $a1, 8($t1)
/* 0D01CC 800CF5CC 0C033728 */  jal   __osContRamRead
/* 0D01D0 800CF5D0 014B3021 */   addu  $a2, $t2, $t3
/* 0D01D4 800CF5D4 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D01D8 800CF5D8 8FAC0480 */  lw    $t4, 0x480($sp)
/* 0D01DC 800CF5DC 11800003 */  beqz  $t4, .L800CF5EC
/* 0D01E0 800CF5E0 00000000 */   nop   
/* 0D01E4 800CF5E4 1000017F */  b     .L800CFBE4
/* 0D01E8 800CF5E8 01801025 */   move  $v0, $t4
.L800CF5EC:
/* 0D01EC 800CF5EC 97AD0260 */  lhu   $t5, 0x260($sp)
/* 0D01F0 800CF5F0 11A0007D */  beqz  $t5, .L800CF7E8
/* 0D01F4 800CF5F4 00000000 */   nop   
/* 0D01F8 800CF5F8 8FAE025C */  lw    $t6, 0x25c($sp)
/* 0D01FC 800CF5FC 11C0007A */  beqz  $t6, .L800CF7E8
/* 0D0200 800CF600 00000000 */   nop   
/* 0D0204 800CF604 97AF0262 */  lhu   $t7, 0x262($sp)
/* 0D0208 800CF608 8FA80488 */  lw    $t0, 0x488($sp)
/* 0D020C 800CF60C 241800FF */  li    $t8, 255
/* 0D0210 800CF610 A7AF047C */  sh    $t7, 0x47c($sp)
/* 0D0214 800CF614 AFA0002C */  sw    $zero, 0x2c($sp)
/* 0D0218 800CF618 AFA00028 */  sw    $zero, 0x28($sp)
/* 0D021C 800CF61C A3B80033 */  sb    $t8, 0x33($sp)
/* 0D0220 800CF620 97B9047C */  lhu   $t9, 0x47c($sp)
/* 0D0224 800CF624 8D090060 */  lw    $t1, 0x60($t0)
/* 0D0228 800CF628 0329082A */  slt   $at, $t9, $t1
/* 0D022C 800CF62C 14200042 */  bnez  $at, .L800CF738
/* 0D0230 800CF630 00000000 */   nop   
/* 0D0234 800CF634 93AA047C */  lbu   $t2, 0x47c($sp)
/* 0D0238 800CF638 910B0064 */  lbu   $t3, 0x64($t0)
/* 0D023C 800CF63C 014B082A */  slt   $at, $t2, $t3
/* 0D0240 800CF640 1020003D */  beqz  $at, .L800CF738
/* 0D0244 800CF644 00000000 */   nop   
/* 0D0248 800CF648 93AC047D */  lbu   $t4, 0x47d($sp)
/* 0D024C 800CF64C 1980003A */  blez  $t4, .L800CF738
/* 0D0250 800CF650 29810080 */   slti  $at, $t4, 0x80
/* 0D0254 800CF654 10200038 */  beqz  $at, .L800CF738
/* 0D0258 800CF658 00000000 */   nop   
.L800CF65C:
/* 0D025C 800CF65C 93AD0033 */  lbu   $t5, 0x33($sp)
/* 0D0260 800CF660 93AE047C */  lbu   $t6, 0x47c($sp)
/* 0D0264 800CF664 11AE000F */  beq   $t5, $t6, .L800CF6A4
/* 0D0268 800CF668 00000000 */   nop   
/* 0D026C 800CF66C A3AE0033 */  sb    $t6, 0x33($sp)
/* 0D0270 800CF670 8FA40488 */  lw    $a0, 0x488($sp)
/* 0D0274 800CF674 27A5027C */  addiu $a1, $sp, 0x27c
/* 0D0278 800CF678 00003025 */  move  $a2, $zero
/* 0D027C 800CF67C 0C03572F */  jal   __osPfsRWInode
/* 0D0280 800CF680 01C03825 */   move  $a3, $t6
/* 0D0284 800CF684 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D0288 800CF688 8FAF0480 */  lw    $t7, 0x480($sp)
/* 0D028C 800CF68C 11E00005 */  beqz  $t7, .L800CF6A4
/* 0D0290 800CF690 24010003 */   li    $at, 3
/* 0D0294 800CF694 11E10003 */  beq   $t7, $at, .L800CF6A4
/* 0D0298 800CF698 00000000 */   nop   
/* 0D029C 800CF69C 10000151 */  b     .L800CFBE4
/* 0D02A0 800CF6A0 01E01025 */   move  $v0, $t7
.L800CF6A4:
/* 0D02A4 800CF6A4 97B8047C */  lhu   $t8, 0x47c($sp)
/* 0D02A8 800CF6A8 8FA40488 */  lw    $a0, 0x488($sp)
/* 0D02AC 800CF6AC 27A60038 */  addiu $a2, $sp, 0x38
/* 0D02B0 800CF6B0 A7B80004 */  sh    $t8, 4($sp)
/* 0D02B4 800CF6B4 0C033F6A */  jal   func_800CFDA8
/* 0D02B8 800CF6B8 8FA50004 */   lw    $a1, 4($sp)
/* 0D02BC 800CF6BC 8FB90028 */  lw    $t9, 0x28($sp)
/* 0D02C0 800CF6C0 00594823 */  subu  $t1, $v0, $t9
/* 0D02C4 800CF6C4 AFA9002C */  sw    $t1, 0x2c($sp)
/* 0D02C8 800CF6C8 8FA8002C */  lw    $t0, 0x2c($sp)
/* 0D02CC 800CF6CC 1500001A */  bnez  $t0, .L800CF738
/* 0D02D0 800CF6D0 00000000 */   nop   
/* 0D02D4 800CF6D4 93AC047D */  lbu   $t4, 0x47d($sp)
/* 0D02D8 800CF6D8 240A0001 */  li    $t2, 1
/* 0D02DC 800CF6DC 27AE027C */  addiu $t6, $sp, 0x27c
/* 0D02E0 800CF6E0 000C6840 */  sll   $t5, $t4, 1
/* 0D02E4 800CF6E4 AFAA0028 */  sw    $t2, 0x28($sp)
/* 0D02E8 800CF6E8 01AE7821 */  addu  $t7, $t5, $t6
/* 0D02EC 800CF6EC 95E10000 */  lhu   $at, ($t7)
/* 0D02F0 800CF6F0 27AB047C */  addiu $t3, $sp, 0x47c
/* 0D02F4 800CF6F4 A5610000 */  sh    $at, ($t3)
/* 0D02F8 800CF6F8 8FAA0488 */  lw    $t2, 0x488($sp)
/* 0D02FC 800CF6FC 97A8047C */  lhu   $t0, 0x47c($sp)
/* 0D0300 800CF700 8D4C0060 */  lw    $t4, 0x60($t2)
/* 0D0304 800CF704 010C082A */  slt   $at, $t0, $t4
/* 0D0308 800CF708 1420000B */  bnez  $at, .L800CF738
/* 0D030C 800CF70C 00000000 */   nop   
/* 0D0310 800CF710 93AD047C */  lbu   $t5, 0x47c($sp)
/* 0D0314 800CF714 914E0064 */  lbu   $t6, 0x64($t2)
/* 0D0318 800CF718 01AE082A */  slt   $at, $t5, $t6
/* 0D031C 800CF71C 10200006 */  beqz  $at, .L800CF738
/* 0D0320 800CF720 00000000 */   nop   
/* 0D0324 800CF724 93B9047D */  lbu   $t9, 0x47d($sp)
/* 0D0328 800CF728 1B200003 */  blez  $t9, .L800CF738
/* 0D032C 800CF72C 2B210080 */   slti  $at, $t9, 0x80
/* 0D0330 800CF730 1420FFCA */  bnez  $at, .L800CF65C
/* 0D0334 800CF734 00000000 */   nop   
.L800CF738:
/* 0D0338 800CF738 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0D033C 800CF73C 17000005 */  bnez  $t8, .L800CF754
/* 0D0340 800CF740 00000000 */   nop   
/* 0D0344 800CF744 97AB047C */  lhu   $t3, 0x47c($sp)
/* 0D0348 800CF748 24010001 */  li    $at, 1
/* 0D034C 800CF74C 11610050 */  beq   $t3, $at, .L800CF890
/* 0D0350 800CF750 00000000 */   nop   
.L800CF754:
/* 0D0354 800CF754 8FAF0488 */  lw    $t7, 0x488($sp)
/* 0D0358 800CF758 A7A00260 */  sh    $zero, 0x260($sp)
/* 0D035C 800CF75C AFA0025C */  sw    $zero, 0x25c($sp)
/* 0D0360 800CF760 A7A00262 */  sh    $zero, 0x262($sp)
/* 0D0364 800CF764 A3A00264 */  sb    $zero, 0x264($sp)
/* 0D0368 800CF768 A7A00266 */  sh    $zero, 0x266($sp)
/* 0D036C 800CF76C 91E90065 */  lbu   $t1, 0x65($t7)
/* 0D0370 800CF770 1120000A */  beqz  $t1, .L800CF79C
/* 0D0374 800CF774 00000000 */   nop   
/* 0D0378 800CF778 A1E00065 */  sb    $zero, 0x65($t7)
/* 0D037C 800CF77C 0C0357F7 */  jal   __osPfsSelectBank
/* 0D0380 800CF780 8FA40488 */   lw    $a0, 0x488($sp)
/* 0D0384 800CF784 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D0388 800CF788 8FA80480 */  lw    $t0, 0x480($sp)
/* 0D038C 800CF78C 11000003 */  beqz  $t0, .L800CF79C
/* 0D0390 800CF790 00000000 */   nop   
/* 0D0394 800CF794 10000113 */  b     .L800CFBE4
/* 0D0398 800CF798 01001025 */   move  $v0, $t0
.L800CF79C:
/* 0D039C 800CF79C 8FAC0488 */  lw    $t4, 0x488($sp)
/* 0D03A0 800CF7A0 8FAD0484 */  lw    $t5, 0x484($sp)
/* 0D03A4 800CF7A4 27A7025C */  addiu $a3, $sp, 0x25c
/* 0D03A8 800CF7A8 8D8A005C */  lw    $t2, 0x5c($t4)
/* 0D03AC 800CF7AC 8D840004 */  lw    $a0, 4($t4)
/* 0D03B0 800CF7B0 8D850008 */  lw    $a1, 8($t4)
/* 0D03B4 800CF7B4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0D03B8 800CF7B8 0C03363C */  jal   __osContRamWrite
/* 0D03BC 800CF7BC 014D3021 */   addu  $a2, $t2, $t5
/* 0D03C0 800CF7C0 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D03C4 800CF7C4 8FAE0480 */  lw    $t6, 0x480($sp)
/* 0D03C8 800CF7C8 11C00003 */  beqz  $t6, .L800CF7D8
/* 0D03CC 800CF7CC 00000000 */   nop   
/* 0D03D0 800CF7D0 10000104 */  b     .L800CFBE4
/* 0D03D4 800CF7D4 01C01025 */   move  $v0, $t6
.L800CF7D8:
/* 0D03D8 800CF7D8 8FB90034 */  lw    $t9, 0x34($sp)
/* 0D03DC 800CF7DC 27380001 */  addiu $t8, $t9, 1
/* 0D03E0 800CF7E0 1000002B */  b     .L800CF890
/* 0D03E4 800CF7E4 AFB80034 */   sw    $t8, 0x34($sp)
.L800CF7E8:
/* 0D03E8 800CF7E8 97AB0260 */  lhu   $t3, 0x260($sp)
/* 0D03EC 800CF7EC 15600004 */  bnez  $t3, .L800CF800
/* 0D03F0 800CF7F0 00000000 */   nop   
/* 0D03F4 800CF7F4 8FA9025C */  lw    $t1, 0x25c($sp)
/* 0D03F8 800CF7F8 11200025 */  beqz  $t1, .L800CF890
/* 0D03FC 800CF7FC 00000000 */   nop   
.L800CF800:
/* 0D0400 800CF800 8FAF0488 */  lw    $t7, 0x488($sp)
/* 0D0404 800CF804 A7A00260 */  sh    $zero, 0x260($sp)
/* 0D0408 800CF808 AFA0025C */  sw    $zero, 0x25c($sp)
/* 0D040C 800CF80C A7A00262 */  sh    $zero, 0x262($sp)
/* 0D0410 800CF810 A3A00264 */  sb    $zero, 0x264($sp)
/* 0D0414 800CF814 A7A00266 */  sh    $zero, 0x266($sp)
/* 0D0418 800CF818 91E80065 */  lbu   $t0, 0x65($t7)
/* 0D041C 800CF81C 1100000A */  beqz  $t0, .L800CF848
/* 0D0420 800CF820 00000000 */   nop   
/* 0D0424 800CF824 A1E00065 */  sb    $zero, 0x65($t7)
/* 0D0428 800CF828 0C0357F7 */  jal   __osPfsSelectBank
/* 0D042C 800CF82C 8FA40488 */   lw    $a0, 0x488($sp)
/* 0D0430 800CF830 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D0434 800CF834 8FAC0480 */  lw    $t4, 0x480($sp)
/* 0D0438 800CF838 11800003 */  beqz  $t4, .L800CF848
/* 0D043C 800CF83C 00000000 */   nop   
/* 0D0440 800CF840 100000E8 */  b     .L800CFBE4
/* 0D0444 800CF844 01801025 */   move  $v0, $t4
.L800CF848:
/* 0D0448 800CF848 8FAA0488 */  lw    $t2, 0x488($sp)
/* 0D044C 800CF84C 8FAE0484 */  lw    $t6, 0x484($sp)
/* 0D0450 800CF850 27A7025C */  addiu $a3, $sp, 0x25c
/* 0D0454 800CF854 8D4D005C */  lw    $t5, 0x5c($t2)
/* 0D0458 800CF858 8D440004 */  lw    $a0, 4($t2)
/* 0D045C 800CF85C 8D450008 */  lw    $a1, 8($t2)
/* 0D0460 800CF860 AFA00010 */  sw    $zero, 0x10($sp)
/* 0D0464 800CF864 0C03363C */  jal   __osContRamWrite
/* 0D0468 800CF868 01AE3021 */   addu  $a2, $t5, $t6
/* 0D046C 800CF86C AFA20480 */  sw    $v0, 0x480($sp)
/* 0D0470 800CF870 8FB90480 */  lw    $t9, 0x480($sp)
/* 0D0474 800CF874 13200003 */  beqz  $t9, .L800CF884
/* 0D0478 800CF878 00000000 */   nop   
/* 0D047C 800CF87C 100000D9 */  b     .L800CFBE4
/* 0D0480 800CF880 03201025 */   move  $v0, $t9
.L800CF884:
/* 0D0484 800CF884 8FB80034 */  lw    $t8, 0x34($sp)
/* 0D0488 800CF888 270B0001 */  addiu $t3, $t8, 1
/* 0D048C 800CF88C AFAB0034 */  sw    $t3, 0x34($sp)
.L800CF890:
/* 0D0490 800CF890 8FA90484 */  lw    $t1, 0x484($sp)
/* 0D0494 800CF894 8FAF0488 */  lw    $t7, 0x488($sp)
/* 0D0498 800CF898 25280001 */  addiu $t0, $t1, 1
/* 0D049C 800CF89C AFA80484 */  sw    $t0, 0x484($sp)
/* 0D04A0 800CF8A0 8DEC0050 */  lw    $t4, 0x50($t7)
/* 0D04A4 800CF8A4 010C082A */  slt   $at, $t0, $t4
/* 0D04A8 800CF8A8 1420FF42 */  bnez  $at, .L800CF5B4
/* 0D04AC 800CF8AC 00000000 */   nop   
.L800CF8B0:
/* 0D04B0 800CF8B0 8FAA0488 */  lw    $t2, 0x488($sp)
/* 0D04B4 800CF8B4 AFA00484 */  sw    $zero, 0x484($sp)
/* 0D04B8 800CF8B8 8D4D0050 */  lw    $t5, 0x50($t2)
/* 0D04BC 800CF8BC 19A0002C */  blez  $t5, .L800CF970
/* 0D04C0 800CF8C0 00000000 */   nop   
.L800CF8C4:
/* 0D04C4 800CF8C4 8FAE0488 */  lw    $t6, 0x488($sp)
/* 0D04C8 800CF8C8 8FB80484 */  lw    $t8, 0x484($sp)
/* 0D04CC 800CF8CC 27A7025C */  addiu $a3, $sp, 0x25c
/* 0D04D0 800CF8D0 8DD9005C */  lw    $t9, 0x5c($t6)
/* 0D04D4 800CF8D4 8DC40004 */  lw    $a0, 4($t6)
/* 0D04D8 800CF8D8 8DC50008 */  lw    $a1, 8($t6)
/* 0D04DC 800CF8DC 0C033728 */  jal   __osContRamRead
/* 0D04E0 800CF8E0 03383021 */   addu  $a2, $t9, $t8
/* 0D04E4 800CF8E4 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D04E8 800CF8E8 8FAB0480 */  lw    $t3, 0x480($sp)
/* 0D04EC 800CF8EC 11600003 */  beqz  $t3, .L800CF8FC
/* 0D04F0 800CF8F0 00000000 */   nop   
/* 0D04F4 800CF8F4 100000BB */  b     .L800CFBE4
/* 0D04F8 800CF8F8 01601025 */   move  $v0, $t3
.L800CF8FC:
/* 0D04FC 800CF8FC 97A90260 */  lhu   $t1, 0x260($sp)
/* 0D0500 800CF900 1120000F */  beqz  $t1, .L800CF940
/* 0D0504 800CF904 00000000 */   nop   
/* 0D0508 800CF908 8FAF025C */  lw    $t7, 0x25c($sp)
/* 0D050C 800CF90C 11E0000C */  beqz  $t7, .L800CF940
/* 0D0510 800CF910 00000000 */   nop   
/* 0D0514 800CF914 8FAC0488 */  lw    $t4, 0x488($sp)
/* 0D0518 800CF918 97A80262 */  lhu   $t0, 0x262($sp)
/* 0D051C 800CF91C 958A0062 */  lhu   $t2, 0x62($t4)
/* 0D0520 800CF920 010A082A */  slt   $at, $t0, $t2
/* 0D0524 800CF924 14200006 */  bnez  $at, .L800CF940
/* 0D0528 800CF928 00000000 */   nop   
/* 0D052C 800CF92C 8FAD0484 */  lw    $t5, 0x484($sp)
/* 0D0530 800CF930 000D7040 */  sll   $t6, $t5, 1
/* 0D0534 800CF934 03AEC821 */  addu  $t9, $sp, $t6
/* 0D0538 800CF938 10000005 */  b     .L800CF950
/* 0D053C 800CF93C A728023C */   sh    $t0, 0x23c($t9)
.L800CF940:
/* 0D0540 800CF940 8FB80484 */  lw    $t8, 0x484($sp)
/* 0D0544 800CF944 00185840 */  sll   $t3, $t8, 1
/* 0D0548 800CF948 03AB4821 */  addu  $t1, $sp, $t3
/* 0D054C 800CF94C A520023C */  sh    $zero, 0x23c($t1)
.L800CF950:
/* 0D0550 800CF950 8FAF0484 */  lw    $t7, 0x484($sp)
/* 0D0554 800CF954 8FAA0488 */  lw    $t2, 0x488($sp)
/* 0D0558 800CF958 25EC0001 */  addiu $t4, $t7, 1
/* 0D055C 800CF95C AFAC0484 */  sw    $t4, 0x484($sp)
/* 0D0560 800CF960 8D4D0050 */  lw    $t5, 0x50($t2)
/* 0D0564 800CF964 018D082A */  slt   $at, $t4, $t5
/* 0D0568 800CF968 1420FFD6 */  bnez  $at, .L800CF8C4
/* 0D056C 800CF96C 00000000 */   nop   
.L800CF970:
/* 0D0570 800CF970 8FA80488 */  lw    $t0, 0x488($sp)
/* 0D0574 800CF974 A3A00033 */  sb    $zero, 0x33($sp)
/* 0D0578 800CF978 910E0064 */  lbu   $t6, 0x64($t0)
/* 0D057C 800CF97C 19C0008B */  blez  $t6, .L800CFBAC
/* 0D0580 800CF980 00000000 */   nop   
.L800CF984:
/* 0D0584 800CF984 8FA40488 */  lw    $a0, 0x488($sp)
/* 0D0588 800CF988 27A5027C */  addiu $a1, $sp, 0x27c
/* 0D058C 800CF98C 00003025 */  move  $a2, $zero
/* 0D0590 800CF990 0C03572F */  jal   __osPfsRWInode
/* 0D0594 800CF994 93A70033 */   lbu   $a3, 0x33($sp)
/* 0D0598 800CF998 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D059C 800CF99C 8FB90480 */  lw    $t9, 0x480($sp)
/* 0D05A0 800CF9A0 13200005 */  beqz  $t9, .L800CF9B8
/* 0D05A4 800CF9A4 24010003 */   li    $at, 3
/* 0D05A8 800CF9A8 13210003 */  beq   $t9, $at, .L800CF9B8
/* 0D05AC 800CF9AC 00000000 */   nop   
/* 0D05B0 800CF9B0 1000008C */  b     .L800CFBE4
/* 0D05B4 800CF9B4 03201025 */   move  $v0, $t9
.L800CF9B8:
/* 0D05B8 800CF9B8 93B80033 */  lbu   $t8, 0x33($sp)
/* 0D05BC 800CF9BC 1B000004 */  blez  $t8, .L800CF9D0
/* 0D05C0 800CF9C0 00000000 */   nop   
/* 0D05C4 800CF9C4 240B0001 */  li    $t3, 1
/* 0D05C8 800CF9C8 10000004 */  b     .L800CF9DC
/* 0D05CC 800CF9CC AFAB0024 */   sw    $t3, 0x24($sp)
.L800CF9D0:
/* 0D05D0 800CF9D0 8FA90488 */  lw    $t1, 0x488($sp)
/* 0D05D4 800CF9D4 8D2F0060 */  lw    $t7, 0x60($t1)
/* 0D05D8 800CF9D8 AFAF0024 */  sw    $t7, 0x24($sp)
.L800CF9DC:
/* 0D05DC 800CF9DC 8FAA0024 */  lw    $t2, 0x24($sp)
/* 0D05E0 800CF9E0 AFA00484 */  sw    $zero, 0x484($sp)
/* 0D05E4 800CF9E4 1940000D */  blez  $t2, .L800CFA1C
/* 0D05E8 800CF9E8 00000000 */   nop   
.L800CF9EC:
/* 0D05EC 800CF9EC 8FAC0484 */  lw    $t4, 0x484($sp)
/* 0D05F0 800CF9F0 000C6840 */  sll   $t5, $t4, 1
/* 0D05F4 800CF9F4 03AD4021 */  addu  $t0, $sp, $t5
/* 0D05F8 800CF9F8 9508027C */  lhu   $t0, 0x27c($t0)
/* 0D05FC 800CF9FC 03AD7021 */  addu  $t6, $sp, $t5
/* 0D0600 800CFA00 A5C8037C */  sh    $t0, 0x37c($t6)
/* 0D0604 800CFA04 8FB90484 */  lw    $t9, 0x484($sp)
/* 0D0608 800CFA08 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0D060C 800CFA0C 27380001 */  addiu $t8, $t9, 1
/* 0D0610 800CFA10 030B082A */  slt   $at, $t8, $t3
/* 0D0614 800CFA14 1420FFF5 */  bnez  $at, .L800CF9EC
/* 0D0618 800CFA18 AFB80484 */   sw    $t8, 0x484($sp)
.L800CFA1C:
/* 0D061C 800CFA1C 8FA90484 */  lw    $t1, 0x484($sp)
/* 0D0620 800CFA20 29210080 */  slti  $at, $t1, 0x80
/* 0D0624 800CFA24 1020000B */  beqz  $at, .L800CFA54
/* 0D0628 800CFA28 00000000 */   nop   
.L800CFA2C:
/* 0D062C 800CFA2C 8FAA0484 */  lw    $t2, 0x484($sp)
/* 0D0630 800CFA30 240F0003 */  li    $t7, 3
/* 0D0634 800CFA34 000A6040 */  sll   $t4, $t2, 1
/* 0D0638 800CFA38 03AC4021 */  addu  $t0, $sp, $t4
/* 0D063C 800CFA3C A50F037C */  sh    $t7, 0x37c($t0)
/* 0D0640 800CFA40 8FAD0484 */  lw    $t5, 0x484($sp)
/* 0D0644 800CFA44 25AE0001 */  addiu $t6, $t5, 1
/* 0D0648 800CFA48 29C10080 */  slti  $at, $t6, 0x80
/* 0D064C 800CFA4C 1420FFF7 */  bnez  $at, .L800CFA2C
/* 0D0650 800CFA50 AFAE0484 */   sw    $t6, 0x484($sp)
.L800CFA54:
/* 0D0654 800CFA54 8FB90488 */  lw    $t9, 0x488($sp)
/* 0D0658 800CFA58 AFA00484 */  sw    $zero, 0x484($sp)
/* 0D065C 800CFA5C 8F380050 */  lw    $t8, 0x50($t9)
/* 0D0660 800CFA60 1B00003E */  blez  $t8, .L800CFB5C
/* 0D0664 800CFA64 00000000 */   nop   
.L800CFA68:
/* 0D0668 800CFA68 8FAB0484 */  lw    $t3, 0x484($sp)
/* 0D066C 800CFA6C 27AA023C */  addiu $t2, $sp, 0x23c
/* 0D0670 800CFA70 93A80033 */  lbu   $t0, 0x33($sp)
/* 0D0674 800CFA74 000B4840 */  sll   $t1, $t3, 1
/* 0D0678 800CFA78 012A7821 */  addu  $t7, $t1, $t2
/* 0D067C 800CFA7C 91EC0000 */  lbu   $t4, ($t7)
/* 0D0680 800CFA80 1588002E */  bne   $t4, $t0, .L800CFB3C
/* 0D0684 800CFA84 00000000 */   nop   
/* 0D0688 800CFA88 8FAE0488 */  lw    $t6, 0x488($sp)
/* 0D068C 800CFA8C 95ED0000 */  lhu   $t5, ($t7)
/* 0D0690 800CFA90 95D90062 */  lhu   $t9, 0x62($t6)
/* 0D0694 800CFA94 01B9082A */  slt   $at, $t5, $t9
/* 0D0698 800CFA98 14200028 */  bnez  $at, .L800CFB3C
/* 0D069C 800CFA9C 00000000 */   nop   
.L800CFAA0:
/* 0D06A0 800CFAA0 8FB80484 */  lw    $t8, 0x484($sp)
/* 0D06A4 800CFAA4 27A8027C */  addiu $t0, $sp, 0x27c
/* 0D06A8 800CFAA8 27AA0020 */  addiu $t2, $sp, 0x20
/* 0D06AC 800CFAAC 00185840 */  sll   $t3, $t8, 1
/* 0D06B0 800CFAB0 03AB4821 */  addu  $t1, $sp, $t3
/* 0D06B4 800CFAB4 9129023D */  lbu   $t1, 0x23d($t1)
/* 0D06B8 800CFAB8 00096040 */  sll   $t4, $t1, 1
/* 0D06BC 800CFABC 01887821 */  addu  $t7, $t4, $t0
/* 0D06C0 800CFAC0 A3A90023 */  sb    $t1, 0x23($sp)
/* 0D06C4 800CFAC4 95E10000 */  lhu   $at, ($t7)
/* 0D06C8 800CFAC8 27A80020 */  addiu $t0, $sp, 0x20
/* 0D06CC 800CFACC 27A9037C */  addiu $t1, $sp, 0x37c
/* 0D06D0 800CFAD0 A5410000 */  sh    $at, ($t2)
/* 0D06D4 800CFAD4 93B80023 */  lbu   $t8, 0x23($sp)
/* 0D06D8 800CFAD8 95010000 */  lhu   $at, ($t0)
/* 0D06DC 800CFADC 00185840 */  sll   $t3, $t8, 1
/* 0D06E0 800CFAE0 01696021 */  addu  $t4, $t3, $t1
/* 0D06E4 800CFAE4 A5810000 */  sh    $at, ($t4)
/* 0D06E8 800CFAE8 8FAF0484 */  lw    $t7, 0x484($sp)
/* 0D06EC 800CFAEC 27A90020 */  addiu $t1, $sp, 0x20
/* 0D06F0 800CFAF0 95210000 */  lhu   $at, ($t1)
/* 0D06F4 800CFAF4 27B8023C */  addiu $t8, $sp, 0x23c
/* 0D06F8 800CFAF8 000FC840 */  sll   $t9, $t7, 1
/* 0D06FC 800CFAFC 03385821 */  addu  $t3, $t9, $t8
/* 0D0700 800CFB00 A5610000 */  sh    $at, ($t3)
/* 0D0704 800CFB04 8FA80484 */  lw    $t0, 0x484($sp)
/* 0D0708 800CFB08 27AF023C */  addiu $t7, $sp, 0x23c
/* 0D070C 800CFB0C 93AD0033 */  lbu   $t5, 0x33($sp)
/* 0D0710 800CFB10 00085040 */  sll   $t2, $t0, 1
/* 0D0714 800CFB14 014FC821 */  addu  $t9, $t2, $t7
/* 0D0718 800CFB18 93380000 */  lbu   $t8, ($t9)
/* 0D071C 800CFB1C 170D0007 */  bne   $t8, $t5, .L800CFB3C
/* 0D0720 800CFB20 00000000 */   nop   
/* 0D0724 800CFB24 8FAB0488 */  lw    $t3, 0x488($sp)
/* 0D0728 800CFB28 972E0000 */  lhu   $t6, ($t9)
/* 0D072C 800CFB2C 95690062 */  lhu   $t1, 0x62($t3)
/* 0D0730 800CFB30 01C9082A */  slt   $at, $t6, $t1
/* 0D0734 800CFB34 1020FFDA */  beqz  $at, .L800CFAA0
/* 0D0738 800CFB38 00000000 */   nop   
.L800CFB3C:
/* 0D073C 800CFB3C 8FAC0484 */  lw    $t4, 0x484($sp)
/* 0D0740 800CFB40 8FAA0488 */  lw    $t2, 0x488($sp)
/* 0D0744 800CFB44 25880001 */  addiu $t0, $t4, 1
/* 0D0748 800CFB48 AFA80484 */  sw    $t0, 0x484($sp)
/* 0D074C 800CFB4C 8D4F0050 */  lw    $t7, 0x50($t2)
/* 0D0750 800CFB50 010F082A */  slt   $at, $t0, $t7
/* 0D0754 800CFB54 1420FFC4 */  bnez  $at, .L800CFA68
/* 0D0758 800CFB58 00000000 */   nop   
.L800CFB5C:
/* 0D075C 800CFB5C 8FA40488 */  lw    $a0, 0x488($sp)
/* 0D0760 800CFB60 27A5037C */  addiu $a1, $sp, 0x37c
/* 0D0764 800CFB64 24060001 */  li    $a2, 1
/* 0D0768 800CFB68 0C03572F */  jal   __osPfsRWInode
/* 0D076C 800CFB6C 93A70033 */   lbu   $a3, 0x33($sp)
/* 0D0770 800CFB70 AFA20480 */  sw    $v0, 0x480($sp)
/* 0D0774 800CFB74 8FB80480 */  lw    $t8, 0x480($sp)
/* 0D0778 800CFB78 13000003 */  beqz  $t8, .L800CFB88
/* 0D077C 800CFB7C 00000000 */   nop   
/* 0D0780 800CFB80 10000018 */  b     .L800CFBE4
/* 0D0784 800CFB84 03001025 */   move  $v0, $t8
.L800CFB88:
/* 0D0788 800CFB88 93AD0033 */  lbu   $t5, 0x33($sp)
/* 0D078C 800CFB8C 8FAE0488 */  lw    $t6, 0x488($sp)
/* 0D0790 800CFB90 25B90001 */  addiu $t9, $t5, 1
/* 0D0794 800CFB94 A3B90033 */  sb    $t9, 0x33($sp)
/* 0D0798 800CFB98 91C90064 */  lbu   $t1, 0x64($t6)
/* 0D079C 800CFB9C 332B00FF */  andi  $t3, $t9, 0xff
/* 0D07A0 800CFBA0 0169082A */  slt   $at, $t3, $t1
/* 0D07A4 800CFBA4 1420FF77 */  bnez  $at, .L800CF984
/* 0D07A8 800CFBA8 00000000 */   nop   
.L800CFBAC:
/* 0D07AC 800CFBAC 8FAC0034 */  lw    $t4, 0x34($sp)
/* 0D07B0 800CFBB0 11800006 */  beqz  $t4, .L800CFBCC
/* 0D07B4 800CFBB4 00000000 */   nop   
/* 0D07B8 800CFBB8 8FAA0488 */  lw    $t2, 0x488($sp)
/* 0D07BC 800CFBBC 8D480000 */  lw    $t0, ($t2)
/* 0D07C0 800CFBC0 350F0002 */  ori   $t7, $t0, 2
/* 0D07C4 800CFBC4 10000006 */  b     .L800CFBE0
/* 0D07C8 800CFBC8 AD4F0000 */   sw    $t7, ($t2)
.L800CFBCC:
/* 0D07CC 800CFBCC 8FB80488 */  lw    $t8, 0x488($sp)
/* 0D07D0 800CFBD0 2401FFFD */  li    $at, -3
/* 0D07D4 800CFBD4 8F0D0000 */  lw    $t5, ($t8)
/* 0D07D8 800CFBD8 01A1C824 */  and   $t9, $t5, $at
/* 0D07DC 800CFBDC AF190000 */  sw    $t9, ($t8)
.L800CFBE0:
/* 0D07E0 800CFBE0 00001025 */  move  $v0, $zero
.L800CFBE4:
/* 0D07E4 800CFBE4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D07E8 800CFBE8 27BD0488 */  addiu $sp, $sp, 0x488
/* 0D07EC 800CFBEC 03E00008 */  jr    $ra
/* 0D07F0 800CFBF0 00000000 */   nop   

