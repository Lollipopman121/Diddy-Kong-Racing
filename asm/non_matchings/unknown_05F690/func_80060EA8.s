glabel func_80060EA8
/* 061AA8 80060EA8 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 061AAC 80060EAC AFBF0044 */  sw    $ra, 0x44($sp)
/* 061AB0 80060EB0 AFBE0040 */  sw    $fp, 0x40($sp)
/* 061AB4 80060EB4 AFB7003C */  sw    $s7, 0x3c($sp)
/* 061AB8 80060EB8 AFB60038 */  sw    $s6, 0x38($sp)
/* 061ABC 80060EBC AFB50034 */  sw    $s5, 0x34($sp)
/* 061AC0 80060EC0 AFB40030 */  sw    $s4, 0x30($sp)
/* 061AC4 80060EC4 AFB3002C */  sw    $s3, 0x2c($sp)
/* 061AC8 80060EC8 AFB20028 */  sw    $s2, 0x28($sp)
/* 061ACC 80060ECC AFB10024 */  sw    $s1, 0x24($sp)
/* 061AD0 80060ED0 AFB00020 */  sw    $s0, 0x20($sp)
/* 061AD4 80060ED4 E7B50018 */  swc1  $f21, 0x18($sp)
/* 061AD8 80060ED8 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 061ADC 80060EDC AFA400B8 */  sw    $a0, 0xb8($sp)
/* 061AE0 80060EE0 84830028 */  lh    $v1, 0x28($a0)
/* 061AE4 80060EE4 8C9F0038 */  lw    $ra, 0x38($a0)
/* 061AE8 80060EE8 AC800040 */  sw    $zero, 0x40($a0)
/* 061AEC 80060EEC 00003825 */  move  $a3, $zero
/* 061AF0 80060EF0 1860001B */  blez  $v1, .L80060F60
/* 061AF4 80060EF4 00008825 */   move  $s1, $zero
/* 061AF8 80060EF8 240D000C */  li    $t5, 12
.L80060EFC:
/* 061AFC 80060EFC 022D0019 */  multu $s1, $t5
/* 061B00 80060F00 240100FF */  li    $at, 255
/* 061B04 80060F04 26310001 */  addiu $s1, $s1, 1
/* 061B08 80060F08 00007812 */  mflo  $t7
/* 061B0C 80060F0C 03EF1021 */  addu  $v0, $ra, $t7
/* 061B10 80060F10 90580006 */  lbu   $t8, 6($v0)
/* 061B14 80060F14 00000000 */  nop   
/* 061B18 80060F18 17010006 */  bne   $t8, $at, .L80060F34
/* 061B1C 80060F1C 00000000 */   nop   
/* 061B20 80060F20 8C590008 */  lw    $t9, 8($v0)
/* 061B24 80060F24 00000000 */  nop   
/* 061B28 80060F28 332E8000 */  andi  $t6, $t9, 0x8000
/* 061B2C 80060F2C 11C00008 */  beqz  $t6, .L80060F50
/* 061B30 80060F30 0011C400 */   sll   $t8, $s1, 0x10
.L80060F34:
/* 061B34 80060F34 844F000E */  lh    $t7, 0xe($v0)
/* 061B38 80060F38 84590002 */  lh    $t9, 2($v0)
/* 061B3C 80060F3C 00EFC021 */  addu  $t8, $a3, $t7
/* 061B40 80060F40 03193823 */  subu  $a3, $t8, $t9
/* 061B44 80060F44 00077400 */  sll   $t6, $a3, 0x10
/* 061B48 80060F48 000E3C03 */  sra   $a3, $t6, 0x10
/* 061B4C 80060F4C 0011C400 */  sll   $t8, $s1, 0x10
.L80060F50:
/* 061B50 80060F50 00188C03 */  sra   $s1, $t8, 0x10
/* 061B54 80060F54 0223082A */  slt   $at, $s1, $v1
/* 061B58 80060F58 1420FFE8 */  bnez  $at, .L80060EFC
/* 061B5C 80060F5C 00000000 */   nop   
.L80060F60:
/* 061B60 80060F60 18E00295 */  blez  $a3, .L800619B8
/* 061B64 80060F64 3C05FF7F */   lui   $a1, (0xFF7F7FFF >> 16) # lui $a1, 0xff7f
/* 061B68 80060F68 8FAE00B8 */  lw    $t6, 0xb8($sp)
/* 061B6C 80060F6C 34A57FFF */  ori   $a1, (0xFF7F7FFF & 0xFFFF) # ori $a1, $a1, 0x7fff
/* 061B70 80060F70 8DCF0008 */  lw    $t7, 8($t6)
/* 061B74 80060F74 8DD30004 */  lw    $s3, 4($t6)
/* 061B78 80060F78 AFAF00B0 */  sw    $t7, 0xb0($sp)
/* 061B7C 80060F7C 85C40026 */  lh    $a0, 0x26($t6)
/* 061B80 80060F80 AFBF00A4 */  sw    $ra, 0xa4($sp)
/* 061B84 80060F84 0004C080 */  sll   $t8, $a0, 2
/* 061B88 80060F88 0304C023 */  subu  $t8, $t8, $a0
/* 061B8C 80060F8C 00182080 */  sll   $a0, $t8, 2
/* 061B90 80060F90 0C01C344 */  jal   allocate_from_main_pool
/* 061B94 80060F94 A7A70098 */   sh    $a3, 0x98($sp)
/* 061B98 80060F98 87A70098 */  lh    $a3, 0x98($sp)
/* 061B9C 80060F9C 8FBF00A4 */  lw    $ra, 0xa4($sp)
/* 061BA0 80060FA0 14400003 */  bnez  $v0, .L80060FB0
/* 061BA4 80060FA4 AFA200AC */   sw    $v0, 0xac($sp)
/* 061BA8 80060FA8 10000284 */  b     .L800619BC
/* 061BAC 80060FAC 24020001 */   li    $v0, 1
.L80060FB0:
/* 061BB0 80060FB0 00072080 */  sll   $a0, $a3, 2
/* 061BB4 80060FB4 00872023 */  subu  $a0, $a0, $a3
/* 061BB8 80060FB8 3C05FF7F */  lui   $a1, (0xFF7F7FFF >> 16) # lui $a1, 0xff7f
/* 061BBC 80060FBC AFBF00A4 */  sw    $ra, 0xa4($sp)
/* 061BC0 80060FC0 34A57FFF */  ori   $a1, (0xFF7F7FFF & 0xFFFF) # ori $a1, $a1, 0x7fff
/* 061BC4 80060FC4 0C01C344 */  jal   allocate_from_main_pool
/* 061BC8 80060FC8 00042040 */   sll   $a0, $a0, 1
/* 061BCC 80060FCC 8FBF00A4 */  lw    $ra, 0xa4($sp)
/* 061BD0 80060FD0 240D000C */  li    $t5, 12
/* 061BD4 80060FD4 14400006 */  bnez  $v0, .L80060FF0
/* 061BD8 80060FD8 AFA200A0 */   sw    $v0, 0xa0($sp)
/* 061BDC 80060FDC 8FA400AC */  lw    $a0, 0xac($sp)
/* 061BE0 80060FE0 0C01C450 */  jal   func_80071140
/* 061BE4 80060FE4 00000000 */   nop   
/* 061BE8 80060FE8 10000274 */  b     .L800619BC
/* 061BEC 80060FEC 24020001 */   li    $v0, 1
.L80060FF0:
/* 061BF0 80060FF0 8FB900B8 */  lw    $t9, 0xb8($sp)
/* 061BF4 80060FF4 00008825 */  move  $s1, $zero
/* 061BF8 80060FF8 87230028 */  lh    $v1, 0x28($t9)
/* 061BFC 80060FFC 27B70064 */  addiu $s7, $sp, 0x64
/* 061C00 80061000 1860008B */  blez  $v1, .L80061230
/* 061C04 80061004 27B60070 */   addiu $s6, $sp, 0x70
/* 061C08 80061008 4480A000 */  mtc1  $zero, $f20
/* 061C0C 8006100C 27BE0058 */  addiu $fp, $sp, 0x58
/* 061C10 80061010 2412000A */  li    $s2, 10
.L80061014:
/* 061C14 80061014 022D0019 */  multu $s1, $t5
/* 061C18 80061018 00007812 */  mflo  $t7
/* 061C1C 8006101C 03EF1021 */  addu  $v0, $ra, $t7
/* 061C20 80061020 84550004 */  lh    $s5, 4($v0)
/* 061C24 80061024 844E0010 */  lh    $t6, 0x10($v0)
/* 061C28 80061028 84540002 */  lh    $s4, 2($v0)
/* 061C2C 8006102C 02AE082A */  slt   $at, $s5, $t6
/* 061C30 80061030 10200079 */  beqz  $at, .L80061218
/* 061C34 80061034 00000000 */   nop   
/* 061C38 80061038 AFA20050 */  sw    $v0, 0x50($sp)
/* 061C3C 8006103C 8FB800B0 */  lw    $t8, 0xb0($sp)
.L80061040:
/* 061C40 80061040 0015C900 */  sll   $t9, $s5, 4
/* 061C44 80061044 00003825 */  move  $a3, $zero
/* 061C48 80061048 03192021 */  addu  $a0, $t8, $t9
.L8006104C:
/* 061C4C 8006104C 00877821 */  addu  $t7, $a0, $a3
/* 061C50 80061050 91EE0001 */  lbu   $t6, 1($t7)
/* 061C54 80061054 00071080 */  sll   $v0, $a3, 2
/* 061C58 80061058 01D43021 */  addu  $a2, $t6, $s4
/* 061C5C 8006105C 0006C400 */  sll   $t8, $a2, 0x10
/* 061C60 80061060 0018CC03 */  sra   $t9, $t8, 0x10
/* 061C64 80061064 03320019 */  multu $t9, $s2
/* 061C68 80061068 02C2C021 */  addu  $t8, $s6, $v0
/* 061C6C 8006106C 24E70001 */  addiu $a3, $a3, 1
/* 061C70 80061070 00007812 */  mflo  $t7
/* 061C74 80061074 026F1821 */  addu  $v1, $s3, $t7
/* 061C78 80061078 846E0000 */  lh    $t6, ($v1)
/* 061C7C 8006107C 02E27821 */  addu  $t7, $s7, $v0
/* 061C80 80061080 448E2000 */  mtc1  $t6, $f4
/* 061C84 80061084 00000000 */  nop   
/* 061C88 80061088 468021A0 */  cvt.s.w $f6, $f4
/* 061C8C 8006108C E7060000 */  swc1  $f6, ($t8)
/* 061C90 80061090 84790002 */  lh    $t9, 2($v1)
/* 061C94 80061094 03C2C021 */  addu  $t8, $fp, $v0
/* 061C98 80061098 44994000 */  mtc1  $t9, $f8
/* 061C9C 8006109C 0007CC00 */  sll   $t9, $a3, 0x10
/* 061CA0 800610A0 468042A0 */  cvt.s.w $f10, $f8
/* 061CA4 800610A4 00193C03 */  sra   $a3, $t9, 0x10
/* 061CA8 800610A8 28E10003 */  slti  $at, $a3, 3
/* 061CAC 800610AC E5EA0000 */  swc1  $f10, ($t7)
/* 061CB0 800610B0 846E0004 */  lh    $t6, 4($v1)
/* 061CB4 800610B4 00000000 */  nop   
/* 061CB8 800610B8 448E8000 */  mtc1  $t6, $f16
/* 061CBC 800610BC 00000000 */  nop   
/* 061CC0 800610C0 468084A0 */  cvt.s.w $f18, $f16
/* 061CC4 800610C4 1420FFE1 */  bnez  $at, .L8006104C
/* 061CC8 800610C8 E7120000 */   swc1  $f18, ($t8)
/* 061CCC 800610CC C7A40058 */  lwc1  $f4, 0x58($sp)
/* 061CD0 800610D0 C7A60060 */  lwc1  $f6, 0x60($sp)
/* 061CD4 800610D4 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 061CD8 800610D8 C7B00068 */  lwc1  $f16, 0x68($sp)
/* 061CDC 800610DC 02AD0019 */  multu $s5, $t5
/* 061CE0 800610E0 46062201 */  sub.s $f8, $f4, $f6
/* 061CE4 800610E4 8FAE00AC */  lw    $t6, 0xac($sp)
/* 061CE8 800610E8 46105481 */  sub.s $f18, $f10, $f16
/* 061CEC 800610EC C7B0005C */  lwc1  $f16, 0x5c($sp)
/* 061CF0 800610F0 46124182 */  mul.s $f6, $f8, $f18
/* 061CF4 800610F4 C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 061CF8 800610F8 46102201 */  sub.s $f8, $f4, $f16
/* 061CFC 800610FC 46125101 */  sub.s $f4, $f10, $f18
/* 061D00 80061100 0000C012 */  mflo  $t8
/* 061D04 80061104 46044402 */  mul.s $f16, $f8, $f4
/* 061D08 80061108 01D88021 */  addu  $s0, $t6, $t8
/* 061D0C 8006110C 46103281 */  sub.s $f10, $f6, $f16
/* 061D10 80061110 E60A0000 */  swc1  $f10, ($s0)
/* 061D14 80061114 C7B00078 */  lwc1  $f16, 0x78($sp)
/* 061D18 80061118 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 061D1C 8006111C C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 061D20 80061120 C7B20058 */  lwc1  $f18, 0x58($sp)
/* 061D24 80061124 46103281 */  sub.s $f10, $f6, $f16
/* 061D28 80061128 C7B00060 */  lwc1  $f16, 0x60($sp)
/* 061D2C 8006112C 46089101 */  sub.s $f4, $f18, $f8
/* 061D30 80061130 C6020000 */  lwc1  $f2, ($s0)
/* 061D34 80061134 460A2202 */  mul.s $f8, $f4, $f10
/* 061D38 80061138 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* 061D3C 8006113C 46109101 */  sub.s $f4, $f18, $f16
/* 061D40 80061140 460A3481 */  sub.s $f18, $f6, $f10
/* 061D44 80061144 46122402 */  mul.s $f16, $f4, $f18
/* 061D48 80061148 46104181 */  sub.s $f6, $f8, $f16
/* 061D4C 8006114C E6060004 */  swc1  $f6, 4($s0)
/* 061D50 80061150 C7B0006C */  lwc1  $f16, 0x6c($sp)
/* 061D54 80061154 C7A80064 */  lwc1  $f8, 0x64($sp)
/* 061D58 80061158 C7A40074 */  lwc1  $f4, 0x74($sp)
/* 061D5C 8006115C C7AA0070 */  lwc1  $f10, 0x70($sp)
/* 061D60 80061160 46104181 */  sub.s $f6, $f8, $f16
/* 061D64 80061164 C7B00068 */  lwc1  $f16, 0x68($sp)
/* 061D68 80061168 46045481 */  sub.s $f18, $f10, $f4
/* 061D6C 8006116C C60E0004 */  lwc1  $f14, 4($s0)
/* 061D70 80061170 46069102 */  mul.s $f4, $f18, $f6
/* 061D74 80061174 C7A60078 */  lwc1  $f6, 0x78($sp)
/* 061D78 80061178 46104481 */  sub.s $f18, $f8, $f16
/* 061D7C 8006117C 46065201 */  sub.s $f8, $f10, $f6
/* 061D80 80061180 46089402 */  mul.s $f16, $f18, $f8
/* 061D84 80061184 46102281 */  sub.s $f10, $f4, $f16
/* 061D88 80061188 46021182 */  mul.s $f6, $f2, $f2
/* 061D8C 8006118C E60A0008 */  swc1  $f10, 8($s0)
/* 061D90 80061190 C6000008 */  lwc1  $f0, 8($s0)
/* 061D94 80061194 AFBF00A4 */  sw    $ra, 0xa4($sp)
/* 061D98 80061198 460E7482 */  mul.s $f18, $f14, $f14
/* 061D9C 8006119C 00000000 */  nop   
/* 061DA0 800611A0 46000102 */  mul.s $f4, $f0, $f0
/* 061DA4 800611A4 46123200 */  add.s $f8, $f6, $f18
/* 061DA8 800611A8 0C0326B4 */  jal   sqrtf
/* 061DAC 800611AC 46082300 */   add.s $f12, $f4, $f8
/* 061DB0 800611B0 46140032 */  c.eq.s $f0, $f20
/* 061DB4 800611B4 8FBF00A4 */  lw    $ra, 0xa4($sp)
/* 061DB8 800611B8 4501000B */  bc1t  .L800611E8
/* 061DBC 800611BC 240D000C */   li    $t5, 12
/* 061DC0 800611C0 C6100000 */  lwc1  $f16, ($s0)
/* 061DC4 800611C4 C6060004 */  lwc1  $f6, 4($s0)
/* 061DC8 800611C8 C6040008 */  lwc1  $f4, 8($s0)
/* 061DCC 800611CC 46008283 */  div.s $f10, $f16, $f0
/* 061DD0 800611D0 00000000 */  nop   
/* 061DD4 800611D4 46003483 */  div.s $f18, $f6, $f0
/* 061DD8 800611D8 E60A0000 */  swc1  $f10, ($s0)
/* 061DDC 800611DC 46002203 */  div.s $f8, $f4, $f0
/* 061DE0 800611E0 E6120004 */  swc1  $f18, 4($s0)
/* 061DE4 800611E4 E6080008 */  swc1  $f8, 8($s0)
.L800611E8:
/* 061DE8 800611E8 8FAE0050 */  lw    $t6, 0x50($sp)
/* 061DEC 800611EC 26B50001 */  addiu $s5, $s5, 1
/* 061DF0 800611F0 85D80010 */  lh    $t8, 0x10($t6)
/* 061DF4 800611F4 0015CC00 */  sll   $t9, $s5, 0x10
/* 061DF8 800611F8 0019AC03 */  sra   $s5, $t9, 0x10
/* 061DFC 800611FC 02B8082A */  slt   $at, $s5, $t8
/* 061E00 80061200 1420FF8F */  bnez  $at, .L80061040
/* 061E04 80061204 8FB800B0 */   lw    $t8, 0xb0($sp)
/* 061E08 80061208 8FB900B8 */  lw    $t9, 0xb8($sp)
/* 061E0C 8006120C 00000000 */  nop   
/* 061E10 80061210 87230028 */  lh    $v1, 0x28($t9)
/* 061E14 80061214 00000000 */  nop   
.L80061218:
/* 061E18 80061218 26310001 */  addiu $s1, $s1, 1
/* 061E1C 8006121C 00117C00 */  sll   $t7, $s1, 0x10
/* 061E20 80061220 000F8C03 */  sra   $s1, $t7, 0x10
/* 061E24 80061224 0223082A */  slt   $at, $s1, $v1
/* 061E28 80061228 1420FF7A */  bnez  $at, .L80061014
/* 061E2C 8006122C 00000000 */   nop   
.L80061230:
/* 061E30 80061230 8FB800B8 */  lw    $t8, 0xb8($sp)
/* 061E34 80061234 4480A000 */  mtc1  $zero, $f20
/* 061E38 80061238 87040024 */  lh    $a0, 0x24($t8)
/* 061E3C 8006123C AFBF00A4 */  sw    $ra, 0xa4($sp)
/* 061E40 80061240 3C05FF7F */  lui   $a1, %hi(0xFF7F0001) # $a1, 0xff7f
/* 061E44 80061244 0004C840 */  sll   $t9, $a0, 1
/* 061E48 80061248 2412000A */  li    $s2, 10
/* 061E4C 8006124C 03202025 */  move  $a0, $t9
/* 061E50 80061250 0C01C344 */  jal   allocate_from_main_pool
/* 061E54 80061254 34A57FFF */   ori   $a1, (0xFF7F7FFF & 0xFFFF) # ori $a1, $a1, 0x7fff
/* 061E58 80061258 8FBF00A4 */  lw    $ra, 0xa4($sp)
/* 061E5C 8006125C 240D000C */  li    $t5, 12
/* 061E60 80061260 14400009 */  bnez  $v0, .L80061288
/* 061E64 80061264 0040B825 */   move  $s7, $v0
/* 061E68 80061268 8FA400AC */  lw    $a0, 0xac($sp)
/* 061E6C 8006126C 0C01C450 */  jal   func_80071140
/* 061E70 80061270 00000000 */   nop   
/* 061E74 80061274 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 061E78 80061278 0C01C450 */  jal   func_80071140
/* 061E7C 8006127C 00000000 */   nop   
/* 061E80 80061280 100001CE */  b     .L800619BC
/* 061E84 80061284 24020001 */   li    $v0, 1
.L80061288:
/* 061E88 80061288 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* 061E8C 8006128C 0000B025 */  move  $s6, $zero
/* 061E90 80061290 85E30028 */  lh    $v1, 0x28($t7)
/* 061E94 80061294 00008825 */  move  $s1, $zero
/* 061E98 80061298 186000E6 */  blez  $v1, .L80061634
/* 061E9C 8006129C 2414FFFF */   li    $s4, -1
/* 061EA0 800612A0 241000FE */  li    $s0, 254
.L800612A4:
/* 061EA4 800612A4 022D0019 */  multu $s1, $t5
/* 061EA8 800612A8 00007012 */  mflo  $t6
/* 061EAC 800612AC 03EEC021 */  addu  $t8, $ra, $t6
/* 061EB0 800612B0 AFB80050 */  sw    $t8, 0x50($sp)
/* 061EB4 800612B4 870F000E */  lh    $t7, 0xe($t8)
/* 061EB8 800612B8 870B0002 */  lh    $t3, 2($t8)
/* 061EBC 800612BC 00000000 */  nop   
/* 061EC0 800612C0 016F082A */  slt   $at, $t3, $t7
/* 061EC4 800612C4 102000D5 */  beqz  $at, .L8006161C
/* 061EC8 800612C8 00000000 */   nop   
/* 061ECC 800612CC 8FAE0050 */  lw    $t6, 0x50($sp)
.L800612D0:
/* 061ED0 800612D0 00000000 */  nop   
/* 061ED4 800612D4 91CC0006 */  lbu   $t4, 6($t6)
/* 061ED8 800612D8 00000000 */  nop   
/* 061EDC 800612DC 298100FE */  slti  $at, $t4, 0xfe
/* 061EE0 800612E0 10200058 */  beqz  $at, .L80061444
/* 061EE4 800612E4 00000000 */   nop   
/* 061EE8 800612E8 01720019 */  multu $t3, $s2
/* 061EEC 800612EC 00143400 */  sll   $a2, $s4, 0x10
/* 061EF0 800612F0 0006C403 */  sra   $t8, $a2, 0x10
/* 061EF4 800612F4 03003025 */  move  $a2, $t8
/* 061EF8 800612F8 00002825 */  move  $a1, $zero
/* 061EFC 800612FC 0000C812 */  mflo  $t9
/* 061F00 80061300 02791821 */  addu  $v1, $s3, $t9
/* 061F04 80061304 84680000 */  lh    $t0, ($v1)
/* 061F08 80061308 84690002 */  lh    $t1, 2($v1)
/* 061F0C 8006130C 846A0004 */  lh    $t2, 4($v1)
/* 061F10 80061310 06200040 */  bltz  $s1, .L80061414
/* 061F14 80061314 00000000 */   nop   
.L80061318:
/* 061F18 80061318 00AD0019 */  multu $a1, $t5
/* 061F1C 8006131C 00007812 */  mflo  $t7
/* 061F20 80061320 03EF3821 */  addu  $a3, $ra, $t7
/* 061F24 80061324 90EE0006 */  lbu   $t6, 6($a3)
/* 061F28 80061328 00000000 */  nop   
/* 061F2C 8006132C 158E0031 */  bne   $t4, $t6, .L800613F4
/* 061F30 80061330 00000000 */   nop   
/* 061F34 80061334 84E40002 */  lh    $a0, 2($a3)
/* 061F38 80061338 14B10003 */  bne   $a1, $s1, .L80061348
/* 061F3C 8006133C 008B082A */   slt   $at, $a0, $t3
/* 061F40 80061340 14200008 */  bnez  $at, .L80061364
/* 061F44 80061344 00000000 */   nop   
.L80061348:
/* 061F48 80061348 10B1002A */  beq   $a1, $s1, .L800613F4
/* 061F4C 8006134C 00000000 */   nop   
/* 061F50 80061350 84F8000E */  lh    $t8, 0xe($a3)
/* 061F54 80061354 00000000 */  nop   
/* 061F58 80061358 0098082A */  slt   $at, $a0, $t8
/* 061F5C 8006135C 10200025 */  beqz  $at, .L800613F4
/* 061F60 80061360 00000000 */   nop   
.L80061364:
/* 061F64 80061364 04C10023 */  bgez  $a2, .L800613F4
/* 061F68 80061368 00000000 */   nop   
.L8006136C:
/* 061F6C 8006136C 00920019 */  multu $a0, $s2
/* 061F70 80061370 0000C812 */  mflo  $t9
/* 061F74 80061374 02791821 */  addu  $v1, $s3, $t9
/* 061F78 80061378 846F0000 */  lh    $t7, ($v1)
/* 061F7C 8006137C 00000000 */  nop   
/* 061F80 80061380 150F000B */  bne   $t0, $t7, .L800613B0
/* 061F84 80061384 00000000 */   nop   
/* 061F88 80061388 846E0002 */  lh    $t6, 2($v1)
/* 061F8C 8006138C 00000000 */  nop   
/* 061F90 80061390 152E0007 */  bne   $t1, $t6, .L800613B0
/* 061F94 80061394 00000000 */   nop   
/* 061F98 80061398 84780004 */  lh    $t8, 4($v1)
/* 061F9C 8006139C 0004C840 */  sll   $t9, $a0, 1
/* 061FA0 800613A0 15580003 */  bne   $t2, $t8, .L800613B0
/* 061FA4 800613A4 00597821 */   addu  $t7, $v0, $t9
/* 061FA8 800613A8 85E60000 */  lh    $a2, ($t7)
/* 061FAC 800613AC 00000000 */  nop   
.L800613B0:
/* 061FB0 800613B0 24840001 */  addiu $a0, $a0, 1
/* 061FB4 800613B4 00047400 */  sll   $t6, $a0, 0x10
/* 061FB8 800613B8 000EC403 */  sra   $t8, $t6, 0x10
/* 061FBC 800613BC 14B10004 */  bne   $a1, $s1, .L800613D0
/* 061FC0 800613C0 03002025 */   move  $a0, $t8
/* 061FC4 800613C4 030B082A */  slt   $at, $t8, $t3
/* 061FC8 800613C8 14200008 */  bnez  $at, .L800613EC
/* 061FCC 800613CC 00000000 */   nop   
.L800613D0:
/* 061FD0 800613D0 10B10008 */  beq   $a1, $s1, .L800613F4
/* 061FD4 800613D4 00000000 */   nop   
/* 061FD8 800613D8 84F9000E */  lh    $t9, 0xe($a3)
/* 061FDC 800613DC 00000000 */  nop   
/* 061FE0 800613E0 0099082A */  slt   $at, $a0, $t9
/* 061FE4 800613E4 10200003 */  beqz  $at, .L800613F4
/* 061FE8 800613E8 00000000 */   nop   
.L800613EC:
/* 061FEC 800613EC 04C0FFDF */  bltz  $a2, .L8006136C
/* 061FF0 800613F0 00000000 */   nop   
.L800613F4:
/* 061FF4 800613F4 24A50001 */  addiu $a1, %lo(0xFF7F0001) # addiu $a1, $a1, 1
/* 061FF8 800613F8 00057C00 */  sll   $t7, $a1, 0x10
/* 061FFC 800613FC 000F2C03 */  sra   $a1, $t7, 0x10
/* 062000 80061400 0225082A */  slt   $at, $s1, $a1
/* 062004 80061404 14200003 */  bnez  $at, .L80061414
/* 062008 80061408 00000000 */   nop   
/* 06200C 8006140C 04C0FFC2 */  bltz  $a2, .L80061318
/* 062010 80061410 00000000 */   nop   
.L80061414:
/* 062014 80061414 04C10008 */  bgez  $a2, .L80061438
/* 062018 80061418 000BC040 */   sll   $t8, $t3, 1
/* 06201C 8006141C 000BC040 */  sll   $t8, $t3, 1
/* 062020 80061420 0058C821 */  addu  $t9, $v0, $t8
/* 062024 80061424 A7360000 */  sh    $s6, ($t9)
/* 062028 80061428 26D60001 */  addiu $s6, $s6, 1
/* 06202C 8006142C 00167C00 */  sll   $t7, $s6, 0x10
/* 062030 80061430 1000006E */  b     .L800615EC
/* 062034 80061434 000FB403 */   sra   $s6, $t7, 0x10
.L80061438:
/* 062038 80061438 0058C821 */  addu  $t9, $v0, $t8
/* 06203C 8006143C 1000006B */  b     .L800615EC
/* 062040 80061440 A7260000 */   sh    $a2, ($t9)
.L80061444:
/* 062044 80061444 160C0007 */  bne   $s0, $t4, .L80061464
/* 062048 80061448 000B7840 */   sll   $t7, $t3, 1
/* 06204C 8006144C 004F7021 */  addu  $t6, $v0, $t7
/* 062050 80061450 A5D60000 */  sh    $s6, ($t6)
/* 062054 80061454 26D60001 */  addiu $s6, $s6, 1
/* 062058 80061458 0016C400 */  sll   $t8, $s6, 0x10
/* 06205C 8006145C 10000063 */  b     .L800615EC
/* 062060 80061460 0018B403 */   sra   $s6, $t8, 0x10
.L80061464:
/* 062064 80061464 8FAF0050 */  lw    $t7, 0x50($sp)
/* 062068 80061468 00000000 */  nop   
/* 06206C 8006146C 8DEE0008 */  lw    $t6, 8($t7)
/* 062070 80061470 00000000 */  nop   
/* 062074 80061474 31D88000 */  andi  $t8, $t6, 0x8000
/* 062078 80061478 1300005A */  beqz  $t8, .L800615E4
/* 06207C 8006147C 000BC040 */   sll   $t8, $t3, 1
/* 062080 80061480 01720019 */  multu $t3, $s2
/* 062084 80061484 00143400 */  sll   $a2, $s4, 0x10
/* 062088 80061488 0006CC03 */  sra   $t9, $a2, 0x10
/* 06208C 8006148C 03203025 */  move  $a2, $t9
/* 062090 80061490 00002825 */  move  $a1, $zero
/* 062094 80061494 00007812 */  mflo  $t7
/* 062098 80061498 026F1821 */  addu  $v1, $s3, $t7
/* 06209C 8006149C 84680000 */  lh    $t0, ($v1)
/* 0620A0 800614A0 84690002 */  lh    $t1, 2($v1)
/* 0620A4 800614A4 846A0004 */  lh    $t2, 4($v1)
/* 0620A8 800614A8 06200041 */  bltz  $s1, .L800615B0
/* 0620AC 800614AC 00000000 */   nop   
.L800614B0:
/* 0620B0 800614B0 00AD0019 */  multu $a1, $t5
/* 0620B4 800614B4 00007012 */  mflo  $t6
/* 0620B8 800614B8 03EE3821 */  addu  $a3, $ra, $t6
/* 0620BC 800614BC 8CF80008 */  lw    $t8, 8($a3)
/* 0620C0 800614C0 00000000 */  nop   
/* 0620C4 800614C4 33198000 */  andi  $t9, $t8, 0x8000
/* 0620C8 800614C8 13200031 */  beqz  $t9, .L80061590
/* 0620CC 800614CC 00000000 */   nop   
/* 0620D0 800614D0 84E40002 */  lh    $a0, 2($a3)
/* 0620D4 800614D4 14B10003 */  bne   $a1, $s1, .L800614E4
/* 0620D8 800614D8 008B082A */   slt   $at, $a0, $t3
/* 0620DC 800614DC 14200008 */  bnez  $at, .L80061500
/* 0620E0 800614E0 00000000 */   nop   
.L800614E4:
/* 0620E4 800614E4 10B1002A */  beq   $a1, $s1, .L80061590
/* 0620E8 800614E8 00000000 */   nop   
/* 0620EC 800614EC 84EF000E */  lh    $t7, 0xe($a3)
/* 0620F0 800614F0 00000000 */  nop   
/* 0620F4 800614F4 008F082A */  slt   $at, $a0, $t7
/* 0620F8 800614F8 10200025 */  beqz  $at, .L80061590
/* 0620FC 800614FC 00000000 */   nop   
.L80061500:
/* 062100 80061500 04C10023 */  bgez  $a2, .L80061590
/* 062104 80061504 00000000 */   nop   
.L80061508:
/* 062108 80061508 00920019 */  multu $a0, $s2
/* 06210C 8006150C 00007012 */  mflo  $t6
/* 062110 80061510 026E1821 */  addu  $v1, $s3, $t6
/* 062114 80061514 84780000 */  lh    $t8, ($v1)
/* 062118 80061518 00000000 */  nop   
/* 06211C 8006151C 1518000B */  bne   $t0, $t8, .L8006154C
/* 062120 80061520 00000000 */   nop   
/* 062124 80061524 84790002 */  lh    $t9, 2($v1)
/* 062128 80061528 00000000 */  nop   
/* 06212C 8006152C 15390007 */  bne   $t1, $t9, .L8006154C
/* 062130 80061530 00000000 */   nop   
/* 062134 80061534 846F0004 */  lh    $t7, 4($v1)
/* 062138 80061538 00047040 */  sll   $t6, $a0, 1
/* 06213C 8006153C 154F0003 */  bne   $t2, $t7, .L8006154C
/* 062140 80061540 004EC021 */   addu  $t8, $v0, $t6
/* 062144 80061544 87060000 */  lh    $a2, ($t8)
/* 062148 80061548 00000000 */  nop   
.L8006154C:
/* 06214C 8006154C 24840001 */  addiu $a0, $a0, 1
/* 062150 80061550 0004CC00 */  sll   $t9, $a0, 0x10
/* 062154 80061554 00197C03 */  sra   $t7, $t9, 0x10
/* 062158 80061558 14B10004 */  bne   $a1, $s1, .L8006156C
/* 06215C 8006155C 01E02025 */   move  $a0, $t7
/* 062160 80061560 01EB082A */  slt   $at, $t7, $t3
/* 062164 80061564 14200008 */  bnez  $at, .L80061588
/* 062168 80061568 00000000 */   nop   
.L8006156C:
/* 06216C 8006156C 10B10008 */  beq   $a1, $s1, .L80061590
/* 062170 80061570 00000000 */   nop   
/* 062174 80061574 84EE000E */  lh    $t6, 0xe($a3)
/* 062178 80061578 00000000 */  nop   
/* 06217C 8006157C 008E082A */  slt   $at, $a0, $t6
/* 062180 80061580 10200003 */  beqz  $at, .L80061590
/* 062184 80061584 00000000 */   nop   
.L80061588:
/* 062188 80061588 04C0FFDF */  bltz  $a2, .L80061508
/* 06218C 8006158C 00000000 */   nop   
.L80061590:
/* 062190 80061590 24A50001 */  addiu $a1, $a1, 1
/* 062194 80061594 0005C400 */  sll   $t8, $a1, 0x10
/* 062198 80061598 00182C03 */  sra   $a1, $t8, 0x10
/* 06219C 8006159C 0225082A */  slt   $at, $s1, $a1
/* 0621A0 800615A0 14200003 */  bnez  $at, .L800615B0
/* 0621A4 800615A4 00000000 */   nop   
/* 0621A8 800615A8 04C0FFC1 */  bltz  $a2, .L800614B0
/* 0621AC 800615AC 00000000 */   nop   
.L800615B0:
/* 0621B0 800615B0 04C10008 */  bgez  $a2, .L800615D4
/* 0621B4 800615B4 000B7840 */   sll   $t7, $t3, 1
/* 0621B8 800615B8 000B7840 */  sll   $t7, $t3, 1
/* 0621BC 800615BC 004F7021 */  addu  $t6, $v0, $t7
/* 0621C0 800615C0 A5D60000 */  sh    $s6, ($t6)
/* 0621C4 800615C4 26D60001 */  addiu $s6, $s6, 1
/* 0621C8 800615C8 0016C400 */  sll   $t8, $s6, 0x10
/* 0621CC 800615CC 10000007 */  b     .L800615EC
/* 0621D0 800615D0 0018B403 */   sra   $s6, $t8, 0x10
.L800615D4:
/* 0621D4 800615D4 004F7021 */  addu  $t6, $v0, $t7
/* 0621D8 800615D8 10000004 */  b     .L800615EC
/* 0621DC 800615DC A5C60000 */   sh    $a2, ($t6)
/* 0621E0 800615E0 000BC040 */  sll   $t8, $t3, 1
.L800615E4:
/* 0621E4 800615E4 0058C821 */  addu  $t9, $v0, $t8
/* 0621E8 800615E8 A7340000 */  sh    $s4, ($t9)
.L800615EC:
/* 0621EC 800615EC 8FB80050 */  lw    $t8, 0x50($sp)
/* 0621F0 800615F0 256B0001 */  addiu $t3, $t3, 1
/* 0621F4 800615F4 8719000E */  lh    $t9, 0xe($t8)
/* 0621F8 800615F8 000B7C00 */  sll   $t7, $t3, 0x10
/* 0621FC 800615FC 000F5C03 */  sra   $t3, $t7, 0x10
/* 062200 80061600 0179082A */  slt   $at, $t3, $t9
/* 062204 80061604 1420FF32 */  bnez  $at, .L800612D0
/* 062208 80061608 8FAE0050 */   lw    $t6, 0x50($sp)
/* 06220C 8006160C 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* 062210 80061610 00000000 */  nop   
/* 062214 80061614 85E30028 */  lh    $v1, 0x28($t7)
/* 062218 80061618 00000000 */  nop   
.L8006161C:
/* 06221C 8006161C 26310001 */  addiu $s1, $s1, 1
/* 062220 80061620 00117400 */  sll   $t6, $s1, 0x10
/* 062224 80061624 000E8C03 */  sra   $s1, $t6, 0x10
/* 062228 80061628 0223082A */  slt   $at, $s1, $v1
/* 06222C 8006162C 1420FF1D */  bnez  $at, .L800612A4
/* 062230 80061630 00000000 */   nop   
.L80061634:
/* 062234 80061634 00162080 */  sll   $a0, $s6, 2
/* 062238 80061638 00962023 */  subu  $a0, $a0, $s6
/* 06223C 8006163C 3C05FF7F */  lui   $a1, (0xFF7F7FFF >> 16) # lui $a1, 0xff7f
/* 062240 80061640 AFBF00A4 */  sw    $ra, 0xa4($sp)
/* 062244 80061644 34A57FFF */  ori   $a1, (0xFF7F7FFF & 0xFFFF) # ori $a1, $a1, 0x7fff
/* 062248 80061648 0C01C344 */  jal   allocate_from_main_pool
/* 06224C 8006164C 00042080 */   sll   $a0, $a0, 2
/* 062250 80061650 8FBF00A4 */  lw    $ra, 0xa4($sp)
/* 062254 80061654 240D000C */  li    $t5, 12
/* 062258 80061658 1440000B */  bnez  $v0, .L80061688
/* 06225C 8006165C 00409025 */   move  $s2, $v0
/* 062260 80061660 8FA400AC */  lw    $a0, 0xac($sp)
/* 062264 80061664 0C01C450 */  jal   func_80071140
/* 062268 80061668 00000000 */   nop   
/* 06226C 8006166C 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 062270 80061670 0C01C450 */  jal   func_80071140
/* 062274 80061674 00000000 */   nop   
/* 062278 80061678 0C01C450 */  jal   func_80071140
/* 06227C 8006167C 02E02025 */   move  $a0, $s7
/* 062280 80061680 100000CE */  b     .L800619BC
/* 062284 80061684 24020001 */   li    $v0, 1
.L80061688:
/* 062288 80061688 00003825 */  move  $a3, $zero
/* 06228C 8006168C 1AC0000C */  blez  $s6, .L800616C0
/* 062290 80061690 00008825 */   move  $s1, $zero
.L80061694:
/* 062294 80061694 00ED0019 */  multu $a3, $t5
/* 062298 80061698 24E70001 */  addiu $a3, $a3, 1
/* 06229C 8006169C 00077C00 */  sll   $t7, $a3, 0x10
/* 0622A0 800616A0 000F3C03 */  sra   $a3, $t7, 0x10
/* 0622A4 800616A4 00F6082A */  slt   $at, $a3, $s6
/* 0622A8 800616A8 0000C812 */  mflo  $t9
/* 0622AC 800616AC 00591821 */  addu  $v1, $v0, $t9
/* 0622B0 800616B0 E4740000 */  swc1  $f20, ($v1)
/* 0622B4 800616B4 E4740004 */  swc1  $f20, 4($v1)
/* 0622B8 800616B8 1420FFF6 */  bnez  $at, .L80061694
/* 0622BC 800616BC E4740008 */   swc1  $f20, 8($v1)
.L800616C0:
/* 0622C0 800616C0 8FB800B8 */  lw    $t8, 0xb8($sp)
/* 0622C4 800616C4 00000000 */  nop   
/* 0622C8 800616C8 87030028 */  lh    $v1, 0x28($t8)
/* 0622CC 800616CC 00000000 */  nop   
/* 0622D0 800616D0 1860004F */  blez  $v1, .L80061810
/* 0622D4 800616D4 00000000 */   nop   
.L800616D8:
/* 0622D8 800616D8 022D0019 */  multu $s1, $t5
/* 0622DC 800616DC 240100FF */  li    $at, 255
/* 0622E0 800616E0 26310001 */  addiu $s1, $s1, 1
/* 0622E4 800616E4 0000C812 */  mflo  $t9
/* 0622E8 800616E8 03F94021 */  addu  $t0, $ra, $t9
/* 0622EC 800616EC 910F0006 */  lbu   $t7, 6($t0)
/* 0622F0 800616F0 00000000 */  nop   
/* 0622F4 800616F4 15E10006 */  bne   $t7, $at, .L80061710
/* 0622F8 800616F8 00000000 */   nop   
/* 0622FC 800616FC 8D0E0008 */  lw    $t6, 8($t0)
/* 062300 80061700 00000000 */  nop   
/* 062304 80061704 31D88000 */  andi  $t8, $t6, 0x8000
/* 062308 80061708 1300003D */  beqz  $t8, .L80061800
/* 06230C 8006170C 0011C400 */   sll   $t8, $s1, 0x10
.L80061710:
/* 062310 80061710 85150004 */  lh    $s5, 4($t0)
/* 062314 80061714 85190010 */  lh    $t9, 0x10($t0)
/* 062318 80061718 85140002 */  lh    $s4, 2($t0)
/* 06231C 8006171C 02B9082A */  slt   $at, $s5, $t9
/* 062320 80061720 10200037 */  beqz  $at, .L80061800
/* 062324 80061724 0011C400 */   sll   $t8, $s1, 0x10
/* 062328 80061728 8FA900B0 */  lw    $t1, 0xb0($sp)
/* 06232C 8006172C 8FA500AC */  lw    $a1, 0xac($sp)
/* 062330 80061730 00000000 */  nop   
/* 062334 80061734 00157900 */  sll   $t7, $s5, 4
.L80061738:
/* 062338 80061738 012F2021 */  addu  $a0, $t1, $t7
/* 06233C 8006173C 00003825 */  move  $a3, $zero
/* 062340 80061740 00877021 */  addu  $t6, $a0, $a3
.L80061744:
/* 062344 80061744 91D80001 */  lbu   $t8, 1($t6)
/* 062348 80061748 24E70001 */  addiu $a3, $a3, 1
/* 06234C 8006174C 03143021 */  addu  $a2, $t8, $s4
/* 062350 80061750 0006CC00 */  sll   $t9, $a2, 0x10
/* 062354 80061754 00197C03 */  sra   $t7, $t9, 0x10
/* 062358 80061758 000F7040 */  sll   $t6, $t7, 1
/* 06235C 8006175C 02EEC021 */  addu  $t8, $s7, $t6
/* 062360 80061760 87060000 */  lh    $a2, ($t8)
/* 062364 80061764 00077400 */  sll   $t6, $a3, 0x10
/* 062368 80061768 04C00016 */  bltz  $a2, .L800617C4
/* 06236C 8006176C 000E3C03 */   sra   $a3, $t6, 0x10
/* 062370 80061770 00CD0019 */  multu $a2, $t5
/* 062374 80061774 0000C812 */  mflo  $t9
/* 062378 80061778 00591821 */  addu  $v1, $v0, $t9
/* 06237C 8006177C C4700000 */  lwc1  $f16, ($v1)
/* 062380 80061780 02AD0019 */  multu $s5, $t5
/* 062384 80061784 C4720004 */  lwc1  $f18, 4($v1)
/* 062388 80061788 00007812 */  mflo  $t7
/* 06238C 8006178C 00AF8021 */  addu  $s0, $a1, $t7
/* 062390 80061790 C60A0000 */  lwc1  $f10, ($s0)
/* 062394 80061794 00000000 */  nop   
/* 062398 80061798 460A8180 */  add.s $f6, $f16, $f10
/* 06239C 8006179C C4700008 */  lwc1  $f16, 8($v1)
/* 0623A0 800617A0 E4660000 */  swc1  $f6, ($v1)
/* 0623A4 800617A4 C6040004 */  lwc1  $f4, 4($s0)
/* 0623A8 800617A8 00000000 */  nop   
/* 0623AC 800617AC 46049200 */  add.s $f8, $f18, $f4
/* 0623B0 800617B0 E4680004 */  swc1  $f8, 4($v1)
/* 0623B4 800617B4 C60A0008 */  lwc1  $f10, 8($s0)
/* 0623B8 800617B8 00000000 */  nop   
/* 0623BC 800617BC 460A8180 */  add.s $f6, $f16, $f10
/* 0623C0 800617C0 E4660008 */  swc1  $f6, 8($v1)
.L800617C4:
/* 0623C4 800617C4 28E10003 */  slti  $at, $a3, 3
/* 0623C8 800617C8 1420FFDE */  bnez  $at, .L80061744
/* 0623CC 800617CC 00877021 */   addu  $t6, $a0, $a3
/* 0623D0 800617D0 26B50001 */  addiu $s5, $s5, 1
/* 0623D4 800617D4 85030010 */  lh    $v1, 0x10($t0)
/* 0623D8 800617D8 0015CC00 */  sll   $t9, $s5, 0x10
/* 0623DC 800617DC 0019AC03 */  sra   $s5, $t9, 0x10
/* 0623E0 800617E0 02A3082A */  slt   $at, $s5, $v1
/* 0623E4 800617E4 1420FFD4 */  bnez  $at, .L80061738
/* 0623E8 800617E8 00157900 */   sll   $t7, $s5, 4
/* 0623EC 800617EC 8FAE00B8 */  lw    $t6, 0xb8($sp)
/* 0623F0 800617F0 00000000 */  nop   
/* 0623F4 800617F4 85C30028 */  lh    $v1, 0x28($t6)
/* 0623F8 800617F8 00000000 */  nop   
/* 0623FC 800617FC 0011C400 */  sll   $t8, $s1, 0x10
.L80061800:
/* 062400 80061800 00188C03 */  sra   $s1, $t8, 0x10
/* 062404 80061804 0223082A */  slt   $at, $s1, $v1
/* 062408 80061808 1420FFB3 */  bnez  $at, .L800616D8
/* 06240C 8006180C 00000000 */   nop   
.L80061810:
/* 062410 80061810 1AC00027 */  blez  $s6, .L800618B0
/* 062414 80061814 00003825 */   move  $a3, $zero
.L80061818:
/* 062418 80061818 00ED0019 */  multu $a3, $t5
/* 06241C 8006181C 00007812 */  mflo  $t7
/* 062420 80061820 024F8021 */  addu  $s0, $s2, $t7
/* 062424 80061824 C6020000 */  lwc1  $f2, ($s0)
/* 062428 80061828 C60E0004 */  lwc1  $f14, 4($s0)
/* 06242C 8006182C 46021482 */  mul.s $f18, $f2, $f2
/* 062430 80061830 C6000008 */  lwc1  $f0, 8($s0)
/* 062434 80061834 A7A70098 */  sh    $a3, 0x98($sp)
/* 062438 80061838 460E7102 */  mul.s $f4, $f14, $f14
/* 06243C 8006183C 00000000 */  nop   
/* 062440 80061840 46000402 */  mul.s $f16, $f0, $f0
/* 062444 80061844 46049200 */  add.s $f8, $f18, $f4
/* 062448 80061848 0C0326B4 */  jal   sqrtf
/* 06244C 8006184C 46088300 */   add.s $f12, $f16, $f8
/* 062450 80061850 46140032 */  c.eq.s $f0, $f20
/* 062454 80061854 87A70098 */  lh    $a3, 0x98($sp)
/* 062458 80061858 4501000E */  bc1t  .L80061894
/* 06245C 8006185C 240D000C */   li    $t5, 12
/* 062460 80061860 3C013900 */  li    $at, 0x39000000 # 0.000122
/* 062464 80061864 44815000 */  mtc1  $at, $f10
/* 062468 80061868 C6060000 */  lwc1  $f6, ($s0)
/* 06246C 8006186C 460A0082 */  mul.s $f2, $f0, $f10
/* 062470 80061870 C6040004 */  lwc1  $f4, 4($s0)
/* 062474 80061874 C6080008 */  lwc1  $f8, 8($s0)
/* 062478 80061878 46023483 */  div.s $f18, $f6, $f2
/* 06247C 8006187C 00000000 */  nop   
/* 062480 80061880 46022403 */  div.s $f16, $f4, $f2
/* 062484 80061884 E6120000 */  swc1  $f18, ($s0)
/* 062488 80061888 46024283 */  div.s $f10, $f8, $f2
/* 06248C 8006188C E6100004 */  swc1  $f16, 4($s0)
/* 062490 80061890 E60A0008 */  swc1  $f10, 8($s0)
.L80061894:
/* 062494 80061894 24E70001 */  addiu $a3, $a3, 1
/* 062498 80061898 00077400 */  sll   $t6, $a3, 0x10
/* 06249C 8006189C 000E3C03 */  sra   $a3, $t6, 0x10
/* 0624A0 800618A0 00F6082A */  slt   $at, $a3, $s6
/* 0624A4 800618A4 1420FFDC */  bnez  $at, .L80061818
/* 0624A8 800618A8 00000000 */   nop   
/* 0624AC 800618AC 00003825 */  move  $a3, $zero
.L800618B0:
/* 0624B0 800618B0 8FAA00B8 */  lw    $t2, 0xb8($sp)
/* 0624B4 800618B4 8FA900A0 */  lw    $t1, 0xa0($sp)
/* 0624B8 800618B8 85450024 */  lh    $a1, 0x24($t2)
/* 0624BC 800618BC 00002025 */  move  $a0, $zero
/* 0624C0 800618C0 18A00034 */  blez  $a1, .L80061994
/* 0624C4 800618C4 24080006 */   li    $t0, 6
/* 0624C8 800618C8 0007C840 */  sll   $t9, $a3, 1
.L800618CC:
/* 0624CC 800618CC 02F97821 */  addu  $t7, $s7, $t9
/* 0624D0 800618D0 85E60000 */  lh    $a2, ($t7)
/* 0624D4 800618D4 24E70001 */  addiu $a3, $a3, 1
/* 0624D8 800618D8 04C0002A */  bltz  $a2, .L80061984
/* 0624DC 800618DC 0007CC00 */   sll   $t9, $a3, 0x10
/* 0624E0 800618E0 00880019 */  multu $a0, $t0
/* 0624E4 800618E4 4459F800 */  cfc1  $t9, $31
/* 0624E8 800618E8 24840001 */  addiu $a0, $a0, 1
/* 0624EC 800618EC 37210003 */  ori   $at, $t9, 3
/* 0624F0 800618F0 38210002 */  xori  $at, $at, 2
/* 0624F4 800618F4 44C1F800 */  ctc1  $at, $31
/* 0624F8 800618F8 00007012 */  mflo  $t6
/* 0624FC 800618FC 012E1821 */  addu  $v1, $t1, $t6
/* 062500 80061900 00000000 */  nop   
/* 062504 80061904 00CD0019 */  multu $a2, $t5
/* 062508 80061908 0000C012 */  mflo  $t8
/* 06250C 8006190C 02581021 */  addu  $v0, $s2, $t8
/* 062510 80061910 C4460000 */  lwc1  $f6, ($v0)
/* 062514 80061914 00000000 */  nop   
/* 062518 80061918 460034A4 */  cvt.w.s $f18, $f6
/* 06251C 8006191C 44D9F800 */  ctc1  $t9, $31
/* 062520 80061920 440F9000 */  mfc1  $t7, $f18
/* 062524 80061924 00000000 */  nop   
/* 062528 80061928 444EF800 */  cfc1  $t6, $31
/* 06252C 8006192C A46F0000 */  sh    $t7, ($v1)
/* 062530 80061930 35C10003 */  ori   $at, $t6, 3
/* 062534 80061934 38210002 */  xori  $at, $at, 2
/* 062538 80061938 44C1F800 */  ctc1  $at, $31
/* 06253C 8006193C C4440004 */  lwc1  $f4, 4($v0)
/* 062540 80061940 37210003 */  ori   $at, $t9, 3
/* 062544 80061944 46002424 */  cvt.w.s $f16, $f4
/* 062548 80061948 38210002 */  xori  $at, $at, 2
/* 06254C 8006194C 44188000 */  mfc1  $t8, $f16
/* 062550 80061950 44CEF800 */  ctc1  $t6, $31
/* 062554 80061954 A4780002 */  sh    $t8, 2($v1)
/* 062558 80061958 C4480008 */  lwc1  $f8, 8($v0)
/* 06255C 8006195C 44C1F800 */  ctc1  $at, $31
/* 062560 80061960 00047400 */  sll   $t6, $a0, 0x10
/* 062564 80061964 460042A4 */  cvt.w.s $f10, $f8
/* 062568 80061968 000E2403 */  sra   $a0, $t6, 0x10
/* 06256C 8006196C 440F5000 */  mfc1  $t7, $f10
/* 062570 80061970 44D9F800 */  ctc1  $t9, $31
/* 062574 80061974 A46F0004 */  sh    $t7, 4($v1)
/* 062578 80061978 85450024 */  lh    $a1, 0x24($t2)
/* 06257C 8006197C 00000000 */  nop   
/* 062580 80061980 0007CC00 */  sll   $t9, $a3, 0x10
.L80061984:
/* 062584 80061984 00193C03 */  sra   $a3, $t9, 0x10
/* 062588 80061988 00E5082A */  slt   $at, $a3, $a1
/* 06258C 8006198C 1420FFCF */  bnez  $at, .L800618CC
/* 062590 80061990 0007C840 */   sll   $t9, $a3, 1
.L80061994:
/* 062594 80061994 8FA900A0 */  lw    $t1, 0xa0($sp)
/* 062598 80061998 02E02025 */  move  $a0, $s7
/* 06259C 8006199C 0C01C450 */  jal   func_80071140
/* 0625A0 800619A0 AD490040 */   sw    $t1, 0x40($t2)
/* 0625A4 800619A4 0C01C450 */  jal   func_80071140
/* 0625A8 800619A8 02402025 */   move  $a0, $s2
/* 0625AC 800619AC 8FA400AC */  lw    $a0, 0xac($sp)
/* 0625B0 800619B0 0C01C450 */  jal   func_80071140
/* 0625B4 800619B4 00000000 */   nop   
.L800619B8:
/* 0625B8 800619B8 00001025 */  move  $v0, $zero
.L800619BC:
/* 0625BC 800619BC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0625C0 800619C0 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 0625C4 800619C4 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 0625C8 800619C8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0625CC 800619CC 8FB10024 */  lw    $s1, 0x24($sp)
/* 0625D0 800619D0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0625D4 800619D4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0625D8 800619D8 8FB40030 */  lw    $s4, 0x30($sp)
/* 0625DC 800619DC 8FB50034 */  lw    $s5, 0x34($sp)
/* 0625E0 800619E0 8FB60038 */  lw    $s6, 0x38($sp)
/* 0625E4 800619E4 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0625E8 800619E8 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0625EC 800619EC 03E00008 */  jr    $ra
/* 0625F0 800619F0 27BD00B8 */   addiu $sp, $sp, 0xb8

