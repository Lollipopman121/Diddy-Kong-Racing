glabel func_80030A74
/* 031674 80030A74 27BDFF80 */  addiu $sp, $sp, -0x80
/* 031678 80030A78 AFBF0024 */  sw    $ra, 0x24($sp)
/* 03167C 80030A7C AFB30020 */  sw    $s3, 0x20($sp)
/* 031680 80030A80 AFB2001C */  sw    $s2, 0x1c($sp)
/* 031684 80030A84 AFB10018 */  sw    $s1, 0x18($sp)
/* 031688 80030A88 AFB00014 */  sw    $s0, 0x14($sp)
/* 03168C 80030A8C 8C8B003C */  lw    $t3, 0x3c($a0)
/* 031690 80030A90 00808025 */  move  $s0, $a0
/* 031694 80030A94 00009825 */  move  $s3, $zero
/* 031698 80030A98 AFA00040 */  sw    $zero, 0x40($sp)
/* 03169C 80030A9C 0C019944 */  jal   func_80066510
/* 0316A0 80030AA0 AFAB0044 */   sw    $t3, 0x44($sp)
/* 0316A4 80030AA4 8FAB0044 */  lw    $t3, 0x44($sp)
/* 0316A8 80030AA8 8FBF0040 */  lw    $ra, 0x40($sp)
/* 0316AC 80030AAC 1040000B */  beqz  $v0, .L80030ADC
/* 0316B0 80030AB0 27A40074 */   addiu $a0, $sp, 0x74
/* 0316B4 80030AB4 AFBF0040 */  sw    $ra, 0x40($sp)
/* 0316B8 80030AB8 0C01A75F */  jal   func_80069D7C
/* 0316BC 80030ABC AFAB0044 */   sw    $t3, 0x44($sp)
/* 0316C0 80030AC0 0C019884 */  jal   func_80066210
/* 0316C4 80030AC4 00409825 */   move  $s3, $v0
/* 0316C8 80030AC8 8FAB0044 */  lw    $t3, 0x44($sp)
/* 0316CC 80030ACC 8FBF0040 */  lw    $ra, 0x40($sp)
/* 0316D0 80030AD0 244E0001 */  addiu $t6, $v0, 1
/* 0316D4 80030AD4 10000005 */  b     .L80030AEC
/* 0316D8 80030AD8 AFAE0074 */   sw    $t6, 0x74($sp)
.L80030ADC:
/* 0316DC 80030ADC 0C006E9D */  jal   getPlayerStructArray
/* 0316E0 80030AE0 AFAB0044 */   sw    $t3, 0x44($sp)
/* 0316E4 80030AE4 8FAB0044 */  lw    $t3, 0x44($sp)
/* 0316E8 80030AE8 0040F825 */  move  $ra, $v0
.L80030AEC:
/* 0316EC 80030AEC 8FAF0074 */  lw    $t7, 0x74($sp)
/* 0316F0 80030AF0 C7AC004C */  lwc1  $f12, 0x4c($sp)
/* 0316F4 80030AF4 19E000B3 */  blez  $t7, .L80030DC4
/* 0316F8 80030AF8 00003025 */   move  $a2, $zero
/* 0316FC 80030AFC 3C0C8012 */  lui   $t4, %hi(D_8011D388) # $t4, 0x8012
/* 031700 80030B00 C7A20050 */  lwc1  $f2, 0x50($sp)
/* 031704 80030B04 258CD388 */  addiu $t4, %lo(D_8011D388) # addiu $t4, $t4, -0x2c78
/* 031708 80030B08 24120044 */  li    $s2, 68
/* 03170C 80030B0C 2411FFFF */  li    $s1, -1
/* 031710 80030B10 240D0038 */  li    $t5, 56
.L80030B14:
/* 031714 80030B14 13E00018 */  beqz  $ra, .L80030B78
/* 031718 80030B18 02205025 */   move  $t2, $s1
/* 03171C 80030B1C 0006C080 */  sll   $t8, $a2, 2
/* 031720 80030B20 03F8C821 */  addu  $t9, $ra, $t8
/* 031724 80030B24 8F240000 */  lw    $a0, ($t9)
/* 031728 80030B28 00000000 */  nop   
/* 03172C 80030B2C 8C830064 */  lw    $v1, 0x64($a0)
/* 031730 80030B30 00000000 */  nop   
/* 031734 80030B34 84620000 */  lh    $v0, ($v1)
/* 031738 80030B38 00000000 */  nop   
/* 03173C 80030B3C 0440001F */  bltz  $v0, .L80030BBC
/* 031740 80030B40 28410004 */   slti  $at, $v0, 4
/* 031744 80030B44 1020001D */  beqz  $at, .L80030BBC
/* 031748 80030B48 00000000 */   nop   
/* 03174C 80030B4C 004D0019 */  multu $v0, $t5
/* 031750 80030B50 00007012 */  mflo  $t6
/* 031754 80030B54 018E7821 */  addu  $t7, $t4, $t6
/* 031758 80030B58 8DF80034 */  lw    $t8, 0x34($t7)
/* 03175C 80030B5C 00000000 */  nop   
/* 031760 80030B60 12180016 */  beq   $s0, $t8, .L80030BBC
/* 031764 80030B64 00000000 */   nop   
/* 031768 80030B68 C482000C */  lwc1  $f2, 0xc($a0)
/* 03176C 80030B6C C48C0014 */  lwc1  $f12, 0x14($a0)
/* 031770 80030B70 10000012 */  b     .L80030BBC
/* 031774 80030B74 00405025 */   move  $t2, $v0
.L80030B78:
/* 031778 80030B78 28C10004 */  slti  $at, $a2, 4
/* 03177C 80030B7C 1020000F */  beqz  $at, .L80030BBC
/* 031780 80030B80 00000000 */   nop   
/* 031784 80030B84 00CD0019 */  multu $a2, $t5
/* 031788 80030B88 0000C812 */  mflo  $t9
/* 03178C 80030B8C 01997021 */  addu  $t6, $t4, $t9
/* 031790 80030B90 8DCF0034 */  lw    $t7, 0x34($t6)
/* 031794 80030B94 00000000 */  nop   
/* 031798 80030B98 120F0008 */  beq   $s0, $t7, .L80030BBC
/* 03179C 80030B9C 00000000 */   nop   
/* 0317A0 80030BA0 00D20019 */  multu $a2, $s2
/* 0317A4 80030BA4 00C05025 */  move  $t2, $a2
/* 0317A8 80030BA8 0000C012 */  mflo  $t8
/* 0317AC 80030BAC 02781021 */  addu  $v0, $s3, $t8
/* 0317B0 80030BB0 C442000C */  lwc1  $f2, 0xc($v0)
/* 0317B4 80030BB4 C44C0014 */  lwc1  $f12, 0x14($v0)
/* 0317B8 80030BB8 00000000 */  nop   
.L80030BBC:
/* 0317BC 80030BBC 1151007C */  beq   $t2, $s1, .L80030DB0
/* 0317C0 80030BC0 8FAE0074 */   lw    $t6, 0x74($sp)
/* 0317C4 80030BC4 C604000C */  lwc1  $f4, 0xc($s0)
/* 0317C8 80030BC8 C6060014 */  lwc1  $f6, 0x14($s0)
/* 0317CC 80030BCC 46041081 */  sub.s $f2, $f2, $f4
/* 0317D0 80030BD0 C6000078 */  lwc1  $f0, 0x78($s0)
/* 0317D4 80030BD4 46021202 */  mul.s $f8, $f2, $f2
/* 0317D8 80030BD8 46066301 */  sub.s $f12, $f12, $f6
/* 0317DC 80030BDC 460C6282 */  mul.s $f10, $f12, $f12
/* 0317E0 80030BE0 460A4400 */  add.s $f16, $f8, $f10
/* 0317E4 80030BE4 4600803C */  c.lt.s $f16, $f0
/* 0317E8 80030BE8 00000000 */  nop   
/* 0317EC 80030BEC 45000070 */  bc1f  .L80030DB0
/* 0317F0 80030BF0 8FAE0074 */   lw    $t6, 0x74($sp)
/* 0317F4 80030BF4 8564000C */  lh    $a0, 0xc($t3)
/* 0317F8 80030BF8 8563000E */  lh    $v1, 0xe($t3)
/* 0317FC 80030BFC 91670009 */  lbu   $a3, 9($t3)
/* 031800 80030C00 9168000A */  lbu   $t0, 0xa($t3)
/* 031804 80030C04 9169000B */  lbu   $t1, 0xb($t3)
/* 031808 80030C08 85650010 */  lh    $a1, 0x10($t3)
/* 03180C 80030C0C 0064082A */  slt   $at, $v1, $a0
/* 031810 80030C10 10200003 */  beqz  $at, .L80030C20
/* 031814 80030C14 00801025 */   move  $v0, $a0
/* 031818 80030C18 00602025 */  move  $a0, $v1
/* 03181C 80030C1C 00401825 */  move  $v1, $v0
.L80030C20:
/* 031820 80030C20 28610400 */  slti  $at, $v1, 0x400
/* 031824 80030C24 14200003 */  bnez  $at, .L80030C34
/* 031828 80030C28 2462FFFB */   addiu $v0, $v1, -5
/* 03182C 80030C2C 240303FF */  li    $v1, 1023
/* 031830 80030C30 2462FFFB */  addiu $v0, $v1, -5
.L80030C34:
/* 031834 80030C34 0082082A */  slt   $at, $a0, $v0
/* 031838 80030C38 14200002 */  bnez  $at, .L80030C44
/* 03183C 80030C3C 00000000 */   nop   
/* 031840 80030C40 00402025 */  move  $a0, $v0
.L80030C44:
/* 031844 80030C44 014D0019 */  multu $t2, $t5
/* 031848 80030C48 00077400 */  sll   $t6, $a3, 0x10
/* 03184C 80030C4C 0000C812 */  mflo  $t9
/* 031850 80030C50 01991021 */  addu  $v0, $t4, $t9
/* 031854 80030C54 8C4F0000 */  lw    $t7, ($v0)
/* 031858 80030C58 A0470028 */  sb    $a3, 0x28($v0)
/* 03185C 80030C5C 01CFC023 */  subu  $t8, $t6, $t7
/* 031860 80030C60 0305001A */  div   $zero, $t8, $a1
/* 031864 80030C64 8C4F0004 */  lw    $t7, 4($v0)
/* 031868 80030C68 00087400 */  sll   $t6, $t0, 0x10
/* 03186C 80030C6C A0480029 */  sb    $t0, 0x29($v0)
/* 031870 80030C70 A049002A */  sb    $t1, 0x2a($v0)
/* 031874 80030C74 A444002C */  sh    $a0, 0x2c($v0)
/* 031878 80030C78 A443002E */  sh    $v1, 0x2e($v0)
/* 03187C 80030C7C 14A00002 */  bnez  $a1, .L80030C88
/* 031880 80030C80 00000000 */   nop   
/* 031884 80030C84 0007000D */  break 7
.L80030C88:
/* 031888 80030C88 2401FFFF */  li    $at, -1
/* 03188C 80030C8C 14A10004 */  bne   $a1, $at, .L80030CA0
/* 031890 80030C90 3C018000 */   lui   $at, 0x8000
/* 031894 80030C94 17010002 */  bne   $t8, $at, .L80030CA0
/* 031898 80030C98 00000000 */   nop   
/* 03189C 80030C9C 0006000D */  break 6
.L80030CA0:
/* 0318A0 80030CA0 01CFC023 */  subu  $t8, $t6, $t7
/* 0318A4 80030CA4 8C4F0008 */  lw    $t7, 8($v0)
/* 0318A8 80030CA8 00097400 */  sll   $t6, $t1, 0x10
/* 0318AC 80030CAC AC450030 */  sw    $a1, 0x30($v0)
/* 0318B0 80030CB0 AC500034 */  sw    $s0, 0x34($v0)
/* 0318B4 80030CB4 0000C812 */  mflo  $t9
/* 0318B8 80030CB8 AC590014 */  sw    $t9, 0x14($v0)
/* 0318BC 80030CBC 00000000 */  nop   
/* 0318C0 80030CC0 0305001A */  div   $zero, $t8, $a1
/* 0318C4 80030CC4 14A00002 */  bnez  $a1, .L80030CD0
/* 0318C8 80030CC8 00000000 */   nop   
/* 0318CC 80030CCC 0007000D */  break 7
.L80030CD0:
/* 0318D0 80030CD0 2401FFFF */  li    $at, -1
/* 0318D4 80030CD4 14A10004 */  bne   $a1, $at, .L80030CE8
/* 0318D8 80030CD8 3C018000 */   lui   $at, 0x8000
/* 0318DC 80030CDC 17010002 */  bne   $t8, $at, .L80030CE8
/* 0318E0 80030CE0 00000000 */   nop   
/* 0318E4 80030CE4 0006000D */  break 6
.L80030CE8:
/* 0318E8 80030CE8 01CFC023 */  subu  $t8, $t6, $t7
/* 0318EC 80030CEC 8C4F000C */  lw    $t7, 0xc($v0)
/* 0318F0 80030CF0 00047400 */  sll   $t6, $a0, 0x10
/* 0318F4 80030CF4 0000C812 */  mflo  $t9
/* 0318F8 80030CF8 AC590018 */  sw    $t9, 0x18($v0)
/* 0318FC 80030CFC 00000000 */  nop   
/* 031900 80030D00 0305001A */  div   $zero, $t8, $a1
/* 031904 80030D04 14A00002 */  bnez  $a1, .L80030D10
/* 031908 80030D08 00000000 */   nop   
/* 03190C 80030D0C 0007000D */  break 7
.L80030D10:
/* 031910 80030D10 2401FFFF */  li    $at, -1
/* 031914 80030D14 14A10004 */  bne   $a1, $at, .L80030D28
/* 031918 80030D18 3C018000 */   lui   $at, 0x8000
/* 03191C 80030D1C 17010002 */  bne   $t8, $at, .L80030D28
/* 031920 80030D20 00000000 */   nop   
/* 031924 80030D24 0006000D */  break 6
.L80030D28:
/* 031928 80030D28 01CFC023 */  subu  $t8, $t6, $t7
/* 03192C 80030D2C 8C4F0010 */  lw    $t7, 0x10($v0)
/* 031930 80030D30 00037400 */  sll   $t6, $v1, 0x10
/* 031934 80030D34 0000C812 */  mflo  $t9
/* 031938 80030D38 AC59001C */  sw    $t9, 0x1c($v0)
/* 03193C 80030D3C 00000000 */  nop   
/* 031940 80030D40 0305001A */  div   $zero, $t8, $a1
/* 031944 80030D44 14A00002 */  bnez  $a1, .L80030D50
/* 031948 80030D48 00000000 */   nop   
/* 03194C 80030D4C 0007000D */  break 7
.L80030D50:
/* 031950 80030D50 2401FFFF */  li    $at, -1
/* 031954 80030D54 14A10004 */  bne   $a1, $at, .L80030D68
/* 031958 80030D58 3C018000 */   lui   $at, 0x8000
/* 03195C 80030D5C 17010002 */  bne   $t8, $at, .L80030D68
/* 031960 80030D60 00000000 */   nop   
/* 031964 80030D64 0006000D */  break 6
.L80030D68:
/* 031968 80030D68 01CFC023 */  subu  $t8, $t6, $t7
/* 03196C 80030D6C 0000C812 */  mflo  $t9
/* 031970 80030D70 AC590020 */  sw    $t9, 0x20($v0)
/* 031974 80030D74 00000000 */  nop   
/* 031978 80030D78 0305001A */  div   $zero, $t8, $a1
/* 03197C 80030D7C 14A00002 */  bnez  $a1, .L80030D88
/* 031980 80030D80 00000000 */   nop   
/* 031984 80030D84 0007000D */  break 7
.L80030D88:
/* 031988 80030D88 2401FFFF */  li    $at, -1
/* 03198C 80030D8C 14A10004 */  bne   $a1, $at, .L80030DA0
/* 031990 80030D90 3C018000 */   lui   $at, 0x8000
/* 031994 80030D94 17010002 */  bne   $t8, $at, .L80030DA0
/* 031998 80030D98 00000000 */   nop   
/* 03199C 80030D9C 0006000D */  break 6
.L80030DA0:
/* 0319A0 80030DA0 0000C812 */  mflo  $t9
/* 0319A4 80030DA4 AC590024 */  sw    $t9, 0x24($v0)
/* 0319A8 80030DA8 00000000 */  nop   
/* 0319AC 80030DAC 8FAE0074 */  lw    $t6, 0x74($sp)
.L80030DB0:
/* 0319B0 80030DB0 24C60001 */  addiu $a2, $a2, 1
/* 0319B4 80030DB4 14CEFF57 */  bne   $a2, $t6, .L80030B14
/* 0319B8 80030DB8 00000000 */   nop   
/* 0319BC 80030DBC E7AC004C */  swc1  $f12, 0x4c($sp)
/* 0319C0 80030DC0 E7A20050 */  swc1  $f2, 0x50($sp)
.L80030DC4:
/* 0319C4 80030DC4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0319C8 80030DC8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0319CC 80030DCC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0319D0 80030DD0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0319D4 80030DD4 8FB30020 */  lw    $s3, 0x20($sp)
/* 0319D8 80030DD8 03E00008 */  jr    $ra
/* 0319DC 80030DDC 27BD0080 */   addiu $sp, $sp, 0x80

