glabel func_80074B34
/* 075734 80074B34 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 075738 80074B38 AFBF001C */  sw    $ra, 0x1c($sp)
/* 07573C 80074B3C AFA40058 */  sw    $a0, 0x58($sp)
/* 075740 80074B40 AFA5005C */  sw    $a1, 0x5c($sp)
/* 075744 80074B44 AFA60060 */  sw    $a2, 0x60($sp)
/* 075748 80074B48 AFA70064 */  sw    $a3, 0x64($sp)
/* 07574C 80074B4C 0C01D637 */  jal   func_800758DC
/* 075750 80074B50 AFA00040 */   sw    $zero, 0x40($sp)
/* 075754 80074B54 10400007 */  beqz  $v0, .L80074B74
/* 075758 80074B58 3C05800E */   lui   $a1, %hi(D_800E773C) # $a1, 0x800e
/* 07575C 80074B5C 8FA40058 */  lw    $a0, 0x58($sp)
/* 075760 80074B60 0C01D6BB */  jal   func_80075AEC
/* 075764 80074B64 AFA2004C */   sw    $v0, 0x4c($sp)
/* 075768 80074B68 8FA2004C */  lw    $v0, 0x4c($sp)
/* 07576C 80074B6C 100000CF */  b     .L80074EAC
/* 075770 80074B70 8FBF001C */   lw    $ra, 0x1c($sp)
.L80074B74:
/* 075774 80074B74 8FA20064 */  lw    $v0, 0x64($sp)
/* 075778 80074B78 24A5773C */  addiu $a1, %lo(D_800E773C) # addiu $a1, $a1, 0x773c
/* 07577C 80074B7C 10400006 */  beqz  $v0, .L80074B98
/* 075780 80074B80 3C06800E */   lui   $a2, %hi(D_800E774C) # $a2, 0x800e
/* 075784 80074B84 8FAF0068 */  lw    $t7, 0x68($sp)
/* 075788 80074B88 240EFFFF */  li    $t6, -1
/* 07578C 80074B8C 3418FFFF */  li    $t8, 65535
/* 075790 80074B90 A5EE0000 */  sh    $t6, ($t7)
/* 075794 80074B94 A4580000 */  sh    $t8, ($v0)
.L80074B98:
/* 075798 80074B98 8FA40058 */  lw    $a0, 0x58($sp)
/* 07579C 80074B9C 24C6774C */  addiu $a2, %lo(D_800E774C) # addiu $a2, $a2, 0x774c
/* 0757A0 80074BA0 0C01D93A */  jal   func_800764E8
/* 0757A4 80074BA4 27A70048 */   addiu $a3, $sp, 0x48
/* 0757A8 80074BA8 144000A1 */  bnez  $v0, .L80074E30
/* 0757AC 80074BAC 00403825 */   move  $a3, $v0
/* 0757B0 80074BB0 24040100 */  li    $a0, 256
/* 0757B4 80074BB4 0C01C327 */  jal   allocate_from_main_pool_safe
/* 0757B8 80074BB8 240500FF */   li    $a1, 255
/* 0757BC 80074BBC 8FB90058 */  lw    $t9, 0x58($sp)
/* 0757C0 80074BC0 3C0B8012 */  lui   $t3, %hi(pfs) # $t3, 0x8012
/* 0757C4 80074BC4 00195080 */  sll   $t2, $t9, 2
/* 0757C8 80074BC8 01595023 */  subu  $t2, $t2, $t9
/* 0757CC 80074BCC 000A5080 */  sll   $t2, $t2, 2
/* 0757D0 80074BD0 01595021 */  addu  $t2, $t2, $t9
/* 0757D4 80074BD4 000A50C0 */  sll   $t2, $t2, 3
/* 0757D8 80074BD8 256B4018 */  addiu $t3, %lo(pfs) # addiu $t3, $t3, 0x4018
/* 0757DC 80074BDC 014B6021 */  addu  $t4, $t2, $t3
/* 0757E0 80074BE0 AFA20050 */  sw    $v0, 0x50($sp)
/* 0757E4 80074BE4 AFAC0030 */  sw    $t4, 0x30($sp)
/* 0757E8 80074BE8 8D8D0000 */  lw    $t5, ($t4)
/* 0757EC 80074BEC 01802825 */  move  $a1, $t4
/* 0757F0 80074BF0 31AE0001 */  andi  $t6, $t5, 1
/* 0757F4 80074BF4 15C00004 */  bnez  $t6, .L80074C08
/* 0757F8 80074BF8 3C048012 */   lui   $a0, %hi(D_80124010) # $a0, 0x8012
/* 0757FC 80074BFC 8C844010 */  lw    $a0, %lo(D_80124010)($a0)
/* 075800 80074C00 0C033B48 */  jal   func_800CED20
/* 075804 80074C04 03203025 */   move  $a2, $t9
.L80074C08:
/* 075808 80074C08 8FA40058 */  lw    $a0, 0x58($sp)
/* 07580C 80074C0C 8FA50048 */  lw    $a1, 0x48($sp)
/* 075810 80074C10 8FA60050 */  lw    $a2, 0x50($sp)
/* 075814 80074C14 0C01D984 */  jal   read_data_from_controller_pak
/* 075818 80074C18 24070100 */   li    $a3, 256
/* 07581C 80074C1C 87A8005E */  lh    $t0, 0x5e($sp)
/* 075820 80074C20 87A90062 */  lh    $t1, 0x62($sp)
/* 075824 80074C24 1440003F */  bnez  $v0, .L80074D24
/* 075828 80074C28 00403825 */   move  $a3, $v0
/* 07582C 80074C2C 8FA60050 */  lw    $a2, 0x50($sp)
/* 075830 80074C30 3C014748 */  lui   $at, (0x47485353 >> 16) # lui $at, 0x4748
/* 075834 80074C34 8CCF0000 */  lw    $t7, ($a2)
/* 075838 80074C38 34215353 */  ori   $at, (0x47485353 & 0xFFFF) # ori $at, $at, 0x5353
/* 07583C 80074C3C 15E10038 */  bne   $t7, $at, .L80074D20
/* 075840 80074C40 24C50004 */   addiu $a1, $a2, 4
/* 075844 80074C44 00001825 */  move  $v1, $zero
/* 075848 80074C48 00A01025 */  move  $v0, $a1
.L80074C4C:
/* 07584C 80074C4C 90580000 */  lbu   $t8, ($v0)
/* 075850 80074C50 24630004 */  addiu $v1, $v1, 4
/* 075854 80074C54 1518000D */  bne   $t0, $t8, .L80074C8C
/* 075858 80074C58 28610018 */   slti  $at, $v1, 0x18
/* 07585C 80074C5C 904A0001 */  lbu   $t2, 1($v0)
/* 075860 80074C60 00000000 */  nop   
/* 075864 80074C64 152A0009 */  bne   $t1, $t2, .L80074C8C
/* 075868 80074C68 00000000 */   nop   
/* 07586C 80074C6C 844B0002 */  lh    $t3, 2($v0)
/* 075870 80074C70 00000000 */  nop   
/* 075874 80074C74 AFAB0040 */  sw    $t3, 0x40($sp)
/* 075878 80074C78 844D0006 */  lh    $t5, 6($v0)
/* 07587C 80074C7C 00000000 */  nop   
/* 075880 80074C80 01AB6023 */  subu  $t4, $t5, $t3
/* 075884 80074C84 10000003 */  b     .L80074C94
/* 075888 80074C88 AFAC003C */   sw    $t4, 0x3c($sp)
.L80074C8C:
/* 07588C 80074C8C 1420FFEF */  bnez  $at, .L80074C4C
/* 075890 80074C90 24420004 */   addiu $v0, $v0, 4
.L80074C94:
/* 075894 80074C94 8FB90040 */  lw    $t9, 0x40($sp)
/* 075898 80074C98 240300FF */  li    $v1, 255
/* 07589C 80074C9C 17200021 */  bnez  $t9, .L80074D24
/* 0758A0 80074CA0 24040002 */   li    $a0, 2
/* 0758A4 80074CA4 90AF0000 */  lbu   $t7, ($a1)
/* 0758A8 80074CA8 24070006 */  li    $a3, 6
/* 0758AC 80074CAC 146F0002 */  bne   $v1, $t7, .L80074CB8
/* 0758B0 80074CB0 00A01025 */   move  $v0, $a1
/* 0758B4 80074CB4 24070008 */  li    $a3, 8
.L80074CB8:
/* 0758B8 80074CB8 90580004 */  lbu   $t8, 4($v0)
/* 0758BC 80074CBC 00045080 */  sll   $t2, $a0, 2
/* 0758C0 80074CC0 14780002 */  bne   $v1, $t8, .L80074CCC
/* 0758C4 80074CC4 00AA1021 */   addu  $v0, $a1, $t2
/* 0758C8 80074CC8 24070008 */  li    $a3, 8
.L80074CCC:
/* 0758CC 80074CCC 904B0000 */  lbu   $t3, ($v0)
/* 0758D0 80074CD0 00000000 */  nop   
/* 0758D4 80074CD4 146B0002 */  bne   $v1, $t3, .L80074CE0
/* 0758D8 80074CD8 00000000 */   nop   
/* 0758DC 80074CDC 24070008 */  li    $a3, 8
.L80074CE0:
/* 0758E0 80074CE0 904D0004 */  lbu   $t5, 4($v0)
/* 0758E4 80074CE4 00000000 */  nop   
/* 0758E8 80074CE8 146D0002 */  bne   $v1, $t5, .L80074CF4
/* 0758EC 80074CEC 00000000 */   nop   
/* 0758F0 80074CF0 24070008 */  li    $a3, 8
.L80074CF4:
/* 0758F4 80074CF4 904E0008 */  lbu   $t6, 8($v0)
/* 0758F8 80074CF8 00000000 */  nop   
/* 0758FC 80074CFC 146E0002 */  bne   $v1, $t6, .L80074D08
/* 075900 80074D00 00000000 */   nop   
/* 075904 80074D04 24070008 */  li    $a3, 8
.L80074D08:
/* 075908 80074D08 904C000C */  lbu   $t4, 0xc($v0)
/* 07590C 80074D0C 00000000 */  nop   
/* 075910 80074D10 146C0005 */  bne   $v1, $t4, .L80074D28
/* 075914 80074D14 8FA40050 */   lw    $a0, 0x50($sp)
/* 075918 80074D18 10000002 */  b     .L80074D24
/* 07591C 80074D1C 24070008 */   li    $a3, 8
.L80074D20:
/* 075920 80074D20 24070009 */  li    $a3, 9
.L80074D24:
/* 075924 80074D24 8FA40050 */  lw    $a0, 0x50($sp)
.L80074D28:
/* 075928 80074D28 0C01C450 */  jal   free_from_memory_pool
/* 07592C 80074D2C AFA7004C */   sw    $a3, 0x4c($sp)
/* 075930 80074D30 8FB90040 */  lw    $t9, 0x40($sp)
/* 075934 80074D34 8FA7004C */  lw    $a3, 0x4c($sp)
/* 075938 80074D38 13200037 */  beqz  $t9, .L80074E18
/* 07593C 80074D3C 8FAB0040 */   lw    $t3, 0x40($sp)
/* 075940 80074D40 8FAF0064 */  lw    $t7, 0x64($sp)
/* 075944 80074D44 8FA4003C */  lw    $a0, 0x3c($sp)
/* 075948 80074D48 11E00032 */  beqz  $t7, .L80074E14
/* 07594C 80074D4C 24840100 */   addiu $a0, $a0, 0x100
/* 075950 80074D50 0C01C327 */  jal   allocate_from_main_pool_safe
/* 075954 80074D54 240500FF */   li    $a1, 255
/* 075958 80074D58 8FB8003C */  lw    $t8, 0x3c($sp)
/* 07595C 80074D5C 8FA40030 */  lw    $a0, 0x30($sp)
/* 075960 80074D60 8FA50048 */  lw    $a1, 0x48($sp)
/* 075964 80074D64 8FA70040 */  lw    $a3, 0x40($sp)
/* 075968 80074D68 AFA20050 */  sw    $v0, 0x50($sp)
/* 07596C 80074D6C 00003025 */  move  $a2, $zero
/* 075970 80074D70 AFA20014 */  sw    $v0, 0x14($sp)
/* 075974 80074D74 0C033BF7 */  jal   osPfsReadWriteFile
/* 075978 80074D78 AFB80010 */   sw    $t8, 0x10($sp)
/* 07597C 80074D7C 14400020 */  bnez  $v0, .L80074E00
/* 075980 80074D80 24070009 */   li    $a3, 9
/* 075984 80074D84 8FA40050 */  lw    $a0, 0x50($sp)
/* 075988 80074D88 0C01D293 */  jal   func_80074A4C
/* 07598C 80074D8C 00000000 */   nop   
/* 075990 80074D90 8FAA0050 */  lw    $t2, 0x50($sp)
/* 075994 80074D94 8FAE0064 */  lw    $t6, 0x64($sp)
/* 075998 80074D98 854B0000 */  lh    $t3, ($t2)
/* 07599C 80074D9C 00000000 */  nop   
/* 0759A0 80074DA0 144B0015 */  bne   $v0, $t3, .L80074DF8
/* 0759A4 80074DA4 00000000 */   nop   
/* 0759A8 80074DA8 914D0002 */  lbu   $t5, 2($t2)
/* 0759AC 80074DAC 8FA2006C */  lw    $v0, 0x6c($sp)
/* 0759B0 80074DB0 A5CD0000 */  sh    $t5, ($t6)
/* 0759B4 80074DB4 8FB90068 */  lw    $t9, 0x68($sp)
/* 0759B8 80074DB8 854C0004 */  lh    $t4, 4($t2)
/* 0759BC 80074DBC 00000000 */  nop   
/* 0759C0 80074DC0 A72C0000 */  sh    $t4, ($t9)
/* 0759C4 80074DC4 854F0006 */  lh    $t7, 6($t2)
/* 0759C8 80074DC8 00000000 */  nop   
/* 0759CC 80074DCC A44F0000 */  sh    $t7, ($v0)
/* 0759D0 80074DD0 84460000 */  lh    $a2, ($v0)
/* 0759D4 80074DD4 8FA40050 */  lw    $a0, 0x50($sp)
/* 0759D8 80074DD8 0006C080 */  sll   $t8, $a2, 2
/* 0759DC 80074DDC 8FA50070 */  lw    $a1, 0x70($sp)
/* 0759E0 80074DE0 0306C023 */  subu  $t8, $t8, $a2
/* 0759E4 80074DE4 00183080 */  sll   $a2, $t8, 2
/* 0759E8 80074DE8 0C032768 */  jal   bcopy
/* 0759EC 80074DEC 24840008 */   addiu $a0, $a0, 8
/* 0759F0 80074DF0 10000003 */  b     .L80074E00
/* 0759F4 80074DF4 00003825 */   move  $a3, $zero
.L80074DF8:
/* 0759F8 80074DF8 10000001 */  b     .L80074E00
/* 0759FC 80074DFC 24070009 */   li    $a3, 9
.L80074E00:
/* 075A00 80074E00 8FA40050 */  lw    $a0, 0x50($sp)
/* 075A04 80074E04 0C01C450 */  jal   free_from_memory_pool
/* 075A08 80074E08 AFA7004C */   sw    $a3, 0x4c($sp)
/* 075A0C 80074E0C 8FA7004C */  lw    $a3, 0x4c($sp)
/* 075A10 80074E10 00000000 */  nop   
.L80074E14:
/* 075A14 80074E14 8FAB0040 */  lw    $t3, 0x40($sp)
.L80074E18:
/* 075A18 80074E18 8FAD0064 */  lw    $t5, 0x64($sp)
/* 075A1C 80074E1C 11600005 */  beqz  $t3, .L80074E34
/* 075A20 80074E20 8FA40058 */   lw    $a0, 0x58($sp)
/* 075A24 80074E24 15A00003 */  bnez  $t5, .L80074E34
/* 075A28 80074E28 8FA40058 */   lw    $a0, 0x58($sp)
/* 075A2C 80074E2C 00003825 */  move  $a3, $zero
.L80074E30:
/* 075A30 80074E30 8FA40058 */  lw    $a0, 0x58($sp)
.L80074E34:
/* 075A34 80074E34 0C01D6BB */  jal   func_80075AEC
/* 075A38 80074E38 AFA7004C */   sw    $a3, 0x4c($sp)
/* 075A3C 80074E3C 8FA7004C */  lw    $a3, 0x4c($sp)
/* 075A40 80074E40 24010005 */  li    $at, 5
/* 075A44 80074E44 14E10017 */  bne   $a3, $at, .L80074EA4
/* 075A48 80074E48 27A50038 */   addiu $a1, $sp, 0x38
/* 075A4C 80074E4C 8FA40058 */  lw    $a0, 0x58($sp)
/* 075A50 80074E50 27A60034 */  addiu $a2, $sp, 0x34
/* 075A54 80074E54 0C01D865 */  jal   func_80076194
/* 075A58 80074E58 AFA7004C */   sw    $a3, 0x4c($sp)
/* 075A5C 80074E5C 8FA7004C */  lw    $a3, 0x4c($sp)
/* 075A60 80074E60 1440000E */  bnez  $v0, .L80074E9C
/* 075A64 80074E64 00000000 */   nop   
/* 075A68 80074E68 0C01D2C7 */  jal   func_80074B1C
/* 075A6C 80074E6C AFA7004C */   sw    $a3, 0x4c($sp)
/* 075A70 80074E70 8FAE0038 */  lw    $t6, 0x38($sp)
/* 075A74 80074E74 8FA7004C */  lw    $a3, 0x4c($sp)
/* 075A78 80074E78 01C2082A */  slt   $at, $t6, $v0
/* 075A7C 80074E7C 14200005 */  bnez  $at, .L80074E94
/* 075A80 80074E80 00000000 */   nop   
/* 075A84 80074E84 8FAC0034 */  lw    $t4, 0x34($sp)
/* 075A88 80074E88 00000000 */  nop   
/* 075A8C 80074E8C 15800006 */  bnez  $t4, .L80074EA8
/* 075A90 80074E90 00E01025 */   move  $v0, $a3
.L80074E94:
/* 075A94 80074E94 10000004 */  b     .L80074EA8
/* 075A98 80074E98 24020004 */   li    $v0, 4
.L80074E9C:
/* 075A9C 80074E9C 10000002 */  b     .L80074EA8
/* 075AA0 80074EA0 24020009 */   li    $v0, 9
.L80074EA4:
/* 075AA4 80074EA4 00E01025 */  move  $v0, $a3
.L80074EA8:
/* 075AA8 80074EA8 8FBF001C */  lw    $ra, 0x1c($sp)
.L80074EAC:
/* 075AAC 80074EAC 27BD0058 */  addiu $sp, $sp, 0x58
/* 075AB0 80074EB0 03E00008 */  jr    $ra
/* 075AB4 80074EB4 00000000 */   nop   

