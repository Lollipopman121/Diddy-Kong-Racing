.late_rodata
glabel D_800E83B0
.float 0.67
glabel D_800E83B4
.float 2.83

.text
glabel MenuTitleScreenLoop
/* 0845E4 800839E4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0845E8 800839E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0845EC 800839EC 0C01A748 */  jal   func_80069D20
/* 0845F0 800839F0 AFA40030 */   sw    $a0, 0x30($sp)
/* 0845F4 800839F4 3C038012 */  lui   $v1, %hi(D_801263BC) # $v1, 0x8012
/* 0845F8 800839F8 246363BC */  addiu $v1, %lo(D_801263BC) # addiu $v1, $v1, 0x63bc
/* 0845FC 800839FC 8C6E0000 */  lw    $t6, ($v1)
/* 084600 80083A00 8FAF0030 */  lw    $t7, 0x30($sp)
/* 084604 80083A04 AFA20018 */  sw    $v0, 0x18($sp)
/* 084608 80083A08 01CFC021 */  addu  $t8, $t6, $t7
/* 08460C 80083A0C 3319003F */  andi  $t9, $t8, 0x3f
/* 084610 80083A10 0C02393B */  jal   func_8008E4EC
/* 084614 80083A14 AC790000 */   sw    $t9, ($v1)
/* 084618 80083A18 3C098000 */  lui   $t1, %hi(osTvType) # $t1, 0x8000
/* 08461C 80083A1C 8D290300 */  lw    $t1, %lo(osTvType)($t1)
/* 084620 80083A20 8FAB0030 */  lw    $t3, 0x30($sp)
/* 084624 80083A24 1520000A */  bnez  $t1, .L80083A50
/* 084628 80083A28 3C02800E */   lui   $v0, %hi(D_800DF47C) # $v0, 0x800e
/* 08462C 80083A2C 8FAA0030 */  lw    $t2, 0x30($sp)
/* 084630 80083A30 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 084634 80083A34 448A2000 */  mtc1  $t2, $f4
/* 084638 80083A38 44814000 */  mtc1  $at, $f8
/* 08463C 80083A3C 468021A0 */  cvt.s.w $f6, $f4
/* 084640 80083A40 00000000 */  nop   
/* 084644 80083A44 46083283 */  div.s $f10, $f6, $f8
/* 084648 80083A48 10000008 */  b     .L80083A6C
/* 08464C 80083A4C E7AA001C */   swc1  $f10, 0x1c($sp)
.L80083A50:
/* 084650 80083A50 448B8000 */  mtc1  $t3, $f16
/* 084654 80083A54 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 084658 80083A58 468084A0 */  cvt.s.w $f18, $f16
/* 08465C 80083A5C 44812000 */  mtc1  $at, $f4
/* 084660 80083A60 00000000 */  nop   
/* 084664 80083A64 46049183 */  div.s $f6, $f18, $f4
/* 084668 80083A68 E7A6001C */  swc1  $f6, 0x1c($sp)
.L80083A6C:
/* 08466C 80083A6C 8C42F47C */  lw    $v0, %lo(D_800DF47C)($v0)
/* 084670 80083A70 8FA40030 */  lw    $a0, 0x30($sp)
/* 084674 80083A74 28410014 */  slti  $at, $v0, 0x14
/* 084678 80083A78 10200007 */  beqz  $at, .L80083A98
/* 08467C 80083A7C 00000000 */   nop   
/* 084680 80083A80 8FA5001C */  lw    $a1, 0x1c($sp)
/* 084684 80083A84 0C020DDF */  jal   func_8008377C
/* 084688 80083A88 00000000 */   nop   
/* 08468C 80083A8C 3C02800E */  lui   $v0, %hi(D_800DF47C) # $v0, 0x800e
/* 084690 80083A90 8C42F47C */  lw    $v0, %lo(D_800DF47C)($v0)
/* 084694 80083A94 00000000 */  nop   
.L80083A98:
/* 084698 80083A98 10400005 */  beqz  $v0, .L80083AB0
/* 08469C 80083A9C 3C088012 */   lui   $t0, %hi(D_80126864) # $t0, 0x8012
/* 0846A0 80083AA0 8FAC0030 */  lw    $t4, 0x30($sp)
/* 0846A4 80083AA4 3C01800E */  lui   $at, %hi(D_800DF47C) # $at, 0x800e
/* 0846A8 80083AA8 004C6821 */  addu  $t5, $v0, $t4
/* 0846AC 80083AAC AC2DF47C */  sw    $t5, %lo(D_800DF47C)($at)
.L80083AB0:
/* 0846B0 80083AB0 25086864 */  addiu $t0, %lo(D_80126864) # addiu $t0, $t0, 0x6864
/* 0846B4 80083AB4 3C028012 */  lui   $v0, %hi(D_80126874) # $v0, 0x8012
/* 0846B8 80083AB8 8C426874 */  lw    $v0, %lo(D_80126874)($v0)
/* 0846BC 80083ABC 8D0E0000 */  lw    $t6, ($t0)
/* 0846C0 80083AC0 80590000 */  lb    $t9, ($v0)
/* 0846C4 80083AC4 004E7821 */  addu  $t7, $v0, $t6
/* 0846C8 80083AC8 81F80000 */  lb    $t8, ($t7)
/* 0846CC 80083ACC 3C078012 */  lui   $a3, %hi(D_80126868) # $a3, 0x8012
/* 0846D0 80083AD0 17190007 */  bne   $t8, $t9, .L80083AF0
/* 0846D4 80083AD4 24E76868 */   addiu $a3, %lo(D_80126868) # addiu $a3, $a3, 0x6868
/* 0846D8 80083AD8 3C098012 */  lui   $t1, %hi(D_801263D8) # $t1, 0x8012
/* 0846DC 80083ADC 8D2963D8 */  lw    $t1, %lo(D_801263D8)($t1)
/* 0846E0 80083AE0 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0846E4 80083AE4 3C018012 */  lui   $at, %hi(D_801263D8) # $at, 0x8012
/* 0846E8 80083AE8 012A5821 */  addu  $t3, $t1, $t2
/* 0846EC 80083AEC AC2B63D8 */  sw    $t3, %lo(D_801263D8)($at)
.L80083AF0:
/* 0846F0 80083AF0 84E30000 */  lh    $v1, ($a3)
/* 0846F4 80083AF4 00003025 */  move  $a2, $zero
/* 0846F8 80083AF8 1860001D */  blez  $v1, .L80083B70
/* 0846FC 80083AFC 3C02800E */   lui   $v0, %hi(D_800DF47C) # $v0, 0x800e
/* 084700 80083B00 8FAC0030 */  lw    $t4, 0x30($sp)
/* 084704 80083B04 00000000 */  nop   
/* 084708 80083B08 006C6823 */  subu  $t5, $v1, $t4
/* 08470C 80083B0C A4ED0000 */  sh    $t5, ($a3)
/* 084710 80083B10 84E30000 */  lh    $v1, ($a3)
/* 084714 80083B14 8FAE0030 */  lw    $t6, 0x30($sp)
/* 084718 80083B18 2861003C */  slti  $at, $v1, 0x3c
/* 08471C 80083B1C 1020000E */  beqz  $at, .L80083B58
/* 084720 80083B20 006E7821 */   addu  $t7, $v1, $t6
/* 084724 80083B24 29E1003C */  slti  $at, $t7, 0x3c
/* 084728 80083B28 1420000B */  bnez  $at, .L80083B58
/* 08472C 80083B2C 2404FD00 */   li    $a0, -768
/* 084730 80083B30 0C000326 */  jal   func_80000C98
/* 084734 80083B34 AFA00028 */   sw    $zero, 0x28($sp)
/* 084738 80083B38 3C04800E */  lui   $a0, %hi(D_800E1E08) # $a0, 0x800e
/* 08473C 80083B3C 0C030076 */  jal   func_800C01D8
/* 084740 80083B40 24841E08 */   addiu $a0, %lo(D_800E1E08) # addiu $a0, $a0, 0x1e08
/* 084744 80083B44 3C078012 */  lui   $a3, %hi(D_80126868) # $a3, 0x8012
/* 084748 80083B48 24E76868 */  addiu $a3, %lo(D_80126868) # addiu $a3, $a3, 0x6868
/* 08474C 80083B4C 84E30000 */  lh    $v1, ($a3)
/* 084750 80083B50 8FA60028 */  lw    $a2, 0x28($sp)
/* 084754 80083B54 00000000 */  nop   
.L80083B58:
/* 084758 80083B58 3C02800E */  lui   $v0, %hi(D_800DF47C) # $v0, 0x800e
/* 08475C 80083B5C 8C42F47C */  lw    $v0, %lo(D_800DF47C)($v0)
/* 084760 80083B60 1C600006 */  bgtz  $v1, .L80083B7C
/* 084764 80083B64 00000000 */   nop   
/* 084768 80083B68 10000004 */  b     .L80083B7C
/* 08476C 80083B6C 24060001 */   li    $a2, 1
.L80083B70:
/* 084770 80083B70 A4E00000 */  sh    $zero, ($a3)
/* 084774 80083B74 8C42F47C */  lw    $v0, %lo(D_800DF47C)($v0)
/* 084778 80083B78 00000000 */  nop   
.L80083B7C:
/* 08477C 80083B7C 1440003F */  bnez  $v0, .L80083C7C
/* 084780 80083B80 00000000 */   nop   
/* 084784 80083B84 0C008531 */  jal   func_800214C4
/* 084788 80083B88 AFA60028 */   sw    $a2, 0x28($sp)
/* 08478C 80083B8C 8FA60028 */  lw    $a2, 0x28($sp)
/* 084790 80083B90 3C078012 */  lui   $a3, %hi(D_80126868) # $a3, 0x8012
/* 084794 80083B94 3C088012 */  lui   $t0, %hi(D_80126864) # $t0, 0x8012
/* 084798 80083B98 25086864 */  addiu $t0, %lo(D_80126864) # addiu $t0, $t0, 0x6864
/* 08479C 80083B9C 14400003 */  bnez  $v0, .L80083BAC
/* 0847A0 80083BA0 24E76868 */   addiu $a3, %lo(D_80126868) # addiu $a3, $a3, 0x6868
/* 0847A4 80083BA4 10C00035 */  beqz  $a2, .L80083C7C
/* 0847A8 80083BA8 00000000 */   nop   
.L80083BAC:
/* 0847AC 80083BAC 8D180000 */  lw    $t8, ($t0)
/* 0847B0 80083BB0 3C028012 */  lui   $v0, %hi(D_80126874) # $v0, 0x8012
/* 0847B4 80083BB4 27190003 */  addiu $t9, $t8, 3
/* 0847B8 80083BB8 AD190000 */  sw    $t9, ($t0)
/* 0847BC 80083BBC 8C426874 */  lw    $v0, %lo(D_80126874)($v0)
/* 0847C0 80083BC0 2401FFFF */  li    $at, -1
/* 0847C4 80083BC4 00591821 */  addu  $v1, $v0, $t9
/* 0847C8 80083BC8 806A0000 */  lb    $t2, ($v1)
/* 0847CC 80083BCC 240D0001 */  li    $t5, 1
/* 0847D0 80083BD0 15410003 */  bne   $t2, $at, .L80083BE0
/* 0847D4 80083BD4 240E05DC */   li    $t6, 1500
/* 0847D8 80083BD8 AD000000 */  sw    $zero, ($t0)
/* 0847DC 80083BDC 00401821 */  addu  $v1, $v0, $zero
.L80083BE0:
/* 0847E0 80083BE0 3C028012 */  lui   $v0, %hi(D_8012686C) # $v0, 0x8012
/* 0847E4 80083BE4 2442686C */  addiu $v0, %lo(D_8012686C) # addiu $v0, $v0, 0x686c
/* 0847E8 80083BE8 8C4C0000 */  lw    $t4, ($v0)
/* 0847EC 80083BEC 00000000 */  nop   
/* 0847F0 80083BF0 15800002 */  bnez  $t4, .L80083BFC
/* 0847F4 80083BF4 00000000 */   nop   
/* 0847F8 80083BF8 AC4D0000 */  sw    $t5, ($v0)
.L80083BFC:
/* 0847FC 80083BFC 80650001 */  lb    $a1, 1($v1)
/* 084800 80083C00 2401FFFE */  li    $at, -2
/* 084804 80083C04 14A10003 */  bne   $a1, $at, .L80083C14
/* 084808 80083C08 A4E00000 */   sh    $zero, ($a3)
/* 08480C 80083C0C 00002825 */  move  $a1, $zero
/* 084810 80083C10 A4EE0000 */  sh    $t6, ($a3)
.L80083C14:
/* 084814 80083C14 80640000 */  lb    $a0, ($v1)
/* 084818 80083C18 80660002 */  lb    $a2, 2($v1)
/* 08481C 80083C1C 0C01B8BA */  jal   func_8006E2E8
/* 084820 80083C20 00000000 */   nop   
/* 084824 80083C24 3C088012 */  lui   $t0, %hi(D_80126864) # $t0, 0x8012
/* 084828 80083C28 25086864 */  addiu $t0, %lo(D_80126864) # addiu $t0, $t0, 0x6864
/* 08482C 80083C2C 3C028012 */  lui   $v0, %hi(D_80126874) # $v0, 0x8012
/* 084830 80083C30 8C426874 */  lw    $v0, %lo(D_80126874)($v0)
/* 084834 80083C34 8D0F0000 */  lw    $t7, ($t0)
/* 084838 80083C38 80490000 */  lb    $t1, ($v0)
/* 08483C 80083C3C 004FC021 */  addu  $t8, $v0, $t7
/* 084840 80083C40 83190000 */  lb    $t9, ($t8)
/* 084844 80083C44 00000000 */  nop   
/* 084848 80083C48 1729000C */  bne   $t9, $t1, .L80083C7C
/* 08484C 80083C4C 00000000 */   nop   
/* 084850 80083C50 44804000 */  mtc1  $zero, $f8
/* 084854 80083C54 3C018012 */  lui   $at, %hi(D_801268D8) # $at, 0x8012
/* 084858 80083C58 E42868D8 */  swc1  $f8, %lo(D_801268D8)($at)
/* 08485C 80083C5C 3C018012 */  lui   $at, %hi(D_801268E0) # $at, 0x8012
/* 084860 80083C60 AC2068E0 */  sw    $zero, %lo(D_801268E0)($at)
/* 084864 80083C64 3C018012 */  lui   $at, %hi(D_801268DC) # $at, 0x8012
/* 084868 80083C68 AC2068DC */  sw    $zero, %lo(D_801268DC)($at)
/* 08486C 80083C6C 3C01800E */  lui   $at, %hi(D_800DF9F4) # $at, 0x800e
/* 084870 80083C70 AC20F9F4 */  sw    $zero, %lo(D_800DF9F4)($at)
/* 084874 80083C74 3C018012 */  lui   $at, %hi(D_801263D8) # $at, 0x8012
/* 084878 80083C78 AC2063D8 */  sw    $zero, %lo(D_801263D8)($at)
.L80083C7C:
/* 08487C 80083C7C 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 084880 80083C80 2463686C */  addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
/* 084884 80083C84 8C620000 */  lw    $v0, ($v1)
/* 084888 80083C88 00000000 */  nop   
/* 08488C 80083C8C 1040004D */  beqz  $v0, .L80083DC4
/* 084890 80083C90 28410020 */   slti  $at, $v0, 0x20
/* 084894 80083C94 1020001A */  beqz  $at, .L80083D00
/* 084898 80083C98 24010001 */   li    $at, 1
/* 08489C 80083C9C 14410007 */  bne   $v0, $at, .L80083CBC
/* 0848A0 80083CA0 24040016 */   li    $a0, 22
/* 0848A4 80083CA4 0C000741 */  jal   func_80001D04
/* 0848A8 80083CA8 00002825 */   move  $a1, $zero
/* 0848AC 80083CAC 3C028012 */  lui   $v0, %hi(D_8012686C) # $v0, 0x8012
/* 0848B0 80083CB0 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 0848B4 80083CB4 8C42686C */  lw    $v0, %lo(D_8012686C)($v0)
/* 0848B8 80083CB8 2463686C */  addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
.L80083CBC:
/* 0848BC 80083CBC 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0848C0 80083CC0 240D0020 */  li    $t5, 32
/* 0848C4 80083CC4 004A5821 */  addu  $t3, $v0, $t2
/* 0848C8 80083CC8 29610020 */  slti  $at, $t3, 0x20
/* 0848CC 80083CCC 1420003D */  bnez  $at, .L80083DC4
/* 0848D0 80083CD0 AC6B0000 */   sw    $t3, ($v1)
/* 0848D4 80083CD4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0848D8 80083CD8 44815000 */  mtc1  $at, $f10
/* 0848DC 80083CDC 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0848E0 80083CE0 AC6D0000 */  sw    $t5, ($v1)
/* 0848E4 80083CE4 24040011 */  li    $a0, 17
/* 0848E8 80083CE8 00002825 */  move  $a1, $zero
/* 0848EC 80083CEC 0C000741 */  jal   func_80001D04
/* 0848F0 80083CF0 E5CA0030 */   swc1  $f10, 0x30($t6)
/* 0848F4 80083CF4 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 0848F8 80083CF8 10000032 */  b     .L80083DC4
/* 0848FC 80083CFC 2463686C */   addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
.L80083D00:
/* 084900 80083D00 3C028012 */  lui   $v0, %hi(D_80126870) # $v0, 0x8012
/* 084904 80083D04 24426870 */  addiu $v0, %lo(D_80126870) # addiu $v0, $v0, 0x6870
/* 084908 80083D08 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 08490C 80083D0C 44818000 */  mtc1  $at, $f16
/* 084910 80083D10 C4400000 */  lwc1  $f0, ($v0)
/* 084914 80083D14 C7B2001C */  lwc1  $f18, 0x1c($sp)
/* 084918 80083D18 4610003C */  c.lt.s $f0, $f16
/* 08491C 80083D1C 00000000 */  nop   
/* 084920 80083D20 45000028 */  bc1f  .L80083DC4
/* 084924 80083D24 00000000 */   nop   
/* 084928 80083D28 46120100 */  add.s $f4, $f0, $f18
/* 08492C 80083D2C 3C01800F */  lui   $at, %hi(D_800E83B0) # $at, 0x800f
/* 084930 80083D30 E4440000 */  swc1  $f4, ($v0)
/* 084934 80083D34 C42683B0 */  lwc1  $f6, %lo(D_800E83B0)($at)
/* 084938 80083D38 C4400000 */  lwc1  $f0, ($v0)
/* 08493C 80083D3C 3C0F8012 */  lui   $t7, %hi(D_801263E0) # $t7, 0x8012
/* 084940 80083D40 4600303C */  c.lt.s $f6, $f0
/* 084944 80083D44 3C01800F */  lui   $at, %hi(D_800E83B4) # $at, 0x800f
/* 084948 80083D48 4500000D */  bc1f  .L80083D80
/* 08494C 80083D4C 00000000 */   nop   
/* 084950 80083D50 8DEF63E0 */  lw    $t7, %lo(D_801263E0)($t7)
/* 084954 80083D54 24040105 */  li    $a0, 261
/* 084958 80083D58 15E00009 */  bnez  $t7, .L80083D80
/* 08495C 80083D5C 00000000 */   nop   
/* 084960 80083D60 0C000741 */  jal   func_80001D04
/* 084964 80083D64 00002825 */   move  $a1, $zero
/* 084968 80083D68 24180001 */  li    $t8, 1
/* 08496C 80083D6C 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 084970 80083D70 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 084974 80083D74 2463686C */  addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
/* 084978 80083D78 10000012 */  b     .L80083DC4
/* 08497C 80083D7C AC3863E0 */   sw    $t8, %lo(D_801263E0)($at)
.L80083D80:
/* 084980 80083D80 C42883B4 */  lwc1  $f8, %lo(D_800E83B4)($at)
/* 084984 80083D84 3C198012 */  lui   $t9, %hi(D_801263E0) # $t9, 0x8012
/* 084988 80083D88 4600403C */  c.lt.s $f8, $f0
/* 08498C 80083D8C 00000000 */  nop   
/* 084990 80083D90 4500000C */  bc1f  .L80083DC4
/* 084994 80083D94 00000000 */   nop   
/* 084998 80083D98 8F3963E0 */  lw    $t9, %lo(D_801263E0)($t9)
/* 08499C 80083D9C 24010001 */  li    $at, 1
/* 0849A0 80083DA0 17210008 */  bne   $t9, $at, .L80083DC4
/* 0849A4 80083DA4 24040106 */   li    $a0, 262
/* 0849A8 80083DA8 0C000741 */  jal   func_80001D04
/* 0849AC 80083DAC 00002825 */   move  $a1, $zero
/* 0849B0 80083DB0 24090002 */  li    $t1, 2
/* 0849B4 80083DB4 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 0849B8 80083DB8 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 0849BC 80083DBC 2463686C */  addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
/* 0849C0 80083DC0 AC2963E0 */  sw    $t1, %lo(D_801263E0)($at)
.L80083DC4:
/* 0849C4 80083DC4 3C018012 */  lui   $at, %hi(D_80126870) # $at, 0x8012
/* 0849C8 80083DC8 C4206870 */  lwc1  $f0, %lo(D_80126870)($at)
/* 0849CC 80083DCC 44805000 */  mtc1  $zero, $f10
/* 0849D0 80083DD0 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0849D4 80083DD4 4600503C */  c.lt.s $f10, $f0
/* 0849D8 80083DD8 00000000 */  nop   
/* 0849DC 80083DDC 4500004B */  bc1f  .L80083F0C
/* 0849E0 80083DE0 00000000 */   nop   
/* 0849E4 80083DE4 44818000 */  mtc1  $at, $f16
/* 0849E8 80083DE8 3C0A800E */  lui   $t2, %hi(D_800DF760) # $t2, 0x800e
/* 0849EC 80083DEC 4610003C */  c.lt.s $f0, $f16
/* 0849F0 80083DF0 3C014090 */  li    $at, 0x40900000 # 4.500000
/* 0849F4 80083DF4 45000017 */  bc1f  .L80083E54
/* 0849F8 80083DF8 00000000 */   nop   
/* 0849FC 80083DFC 8D4AF760 */  lw    $t2, %lo(D_800DF760)($t2)
/* 084A00 80083E00 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 084A04 80083E04 448A9000 */  mtc1  $t2, $f18
/* 084A08 80083E08 44813000 */  mtc1  $at, $f6
/* 084A0C 80083E0C 46809120 */  cvt.s.w $f4, $f18
/* 084A10 80083E10 46003201 */  sub.s $f8, $f6, $f0
/* 084A14 80083E14 46082282 */  mul.s $f10, $f4, $f8
/* 084A18 80083E18 444BF800 */  cfc1  $t3, $31
/* 084A1C 80083E1C 00000000 */  nop   
/* 084A20 80083E20 35610003 */  ori   $at, $t3, 3
/* 084A24 80083E24 38210002 */  xori  $at, $at, 2
/* 084A28 80083E28 44C1F800 */  ctc1  $at, $31
/* 084A2C 80083E2C 00000000 */  nop   
/* 084A30 80083E30 46005424 */  cvt.w.s $f16, $f10
/* 084A34 80083E34 44048000 */  mfc1  $a0, $f16
/* 084A38 80083E38 44CBF800 */  ctc1  $t3, $31
/* 084A3C 80083E3C 308C00FF */  andi  $t4, $a0, 0xff
/* 084A40 80083E40 0C000664 */  jal   musicSetRelativeVolume
/* 084A44 80083E44 01802025 */   move  $a0, $t4
/* 084A48 80083E48 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 084A4C 80083E4C 1000002F */  b     .L80083F0C
/* 084A50 80083E50 2463686C */   addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
.L80083E54:
/* 084A54 80083E54 44819000 */  mtc1  $at, $f18
/* 084A58 80083E58 3C04800E */  lui   $a0, %hi(D_800DF760) # $a0, 0x800e
/* 084A5C 80083E5C 4612003C */  c.lt.s $f0, $f18
/* 084A60 80083E60 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 084A64 80083E64 45000009 */  bc1f  .L80083E8C
/* 084A68 80083E68 00000000 */   nop   
/* 084A6C 80083E6C 8C84F760 */  lw    $a0, %lo(D_800DF760)($a0)
/* 084A70 80083E70 00000000 */  nop   
/* 084A74 80083E74 00046843 */  sra   $t5, $a0, 1
/* 084A78 80083E78 0C000664 */  jal   musicSetRelativeVolume
/* 084A7C 80083E7C 31A400FF */   andi  $a0, $t5, 0xff
/* 084A80 80083E80 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 084A84 80083E84 10000021 */  b     .L80083F0C
/* 084A88 80083E88 2463686C */   addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
.L80083E8C:
/* 084A8C 80083E8C 44813000 */  mtc1  $at, $f6
/* 084A90 80083E90 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 084A94 80083E94 4606003C */  c.lt.s $f0, $f6
/* 084A98 80083E98 3C0F800E */  lui   $t7, %hi(D_800DF760) # $t7, 0x800e
/* 084A9C 80083E9C 45000016 */  bc1f  .L80083EF8
/* 084AA0 80083EA0 3C04800E */   lui   $a0, %hi(D_800DF763) # $a0, 0x800e
/* 084AA4 80083EA4 8DEFF760 */  lw    $t7, %lo(D_800DF760)($t7)
/* 084AA8 80083EA8 44815000 */  mtc1  $at, $f10
/* 084AAC 80083EAC 448F2000 */  mtc1  $t7, $f4
/* 084AB0 80083EB0 460A0401 */  sub.s $f16, $f0, $f10
/* 084AB4 80083EB4 46802220 */  cvt.s.w $f8, $f4
/* 084AB8 80083EB8 46104482 */  mul.s $f18, $f8, $f16
/* 084ABC 80083EBC 4458F800 */  cfc1  $t8, $31
/* 084AC0 80083EC0 00000000 */  nop   
/* 084AC4 80083EC4 37010003 */  ori   $at, $t8, 3
/* 084AC8 80083EC8 38210002 */  xori  $at, $at, 2
/* 084ACC 80083ECC 44C1F800 */  ctc1  $at, $31
/* 084AD0 80083ED0 00000000 */  nop   
/* 084AD4 80083ED4 460091A4 */  cvt.w.s $f6, $f18
/* 084AD8 80083ED8 44043000 */  mfc1  $a0, $f6
/* 084ADC 80083EDC 44D8F800 */  ctc1  $t8, $31
/* 084AE0 80083EE0 309900FF */  andi  $t9, $a0, 0xff
/* 084AE4 80083EE4 0C000664 */  jal   musicSetRelativeVolume
/* 084AE8 80083EE8 03202025 */   move  $a0, $t9
/* 084AEC 80083EEC 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 084AF0 80083EF0 10000006 */  b     .L80083F0C
/* 084AF4 80083EF4 2463686C */   addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
.L80083EF8:
/* 084AF8 80083EF8 9084F763 */  lbu   $a0, %lo(D_800DF763)($a0)
/* 084AFC 80083EFC 0C000664 */  jal   musicSetRelativeVolume
/* 084B00 80083F00 00000000 */   nop   
/* 084B04 80083F04 3C038012 */  lui   $v1, %hi(D_8012686C) # $v1, 0x8012
/* 084B08 80083F08 2463686C */  addiu $v1, %lo(D_8012686C) # addiu $v1, $v1, 0x686c
.L80083F0C:
/* 084B0C 80083F0C 8C690000 */  lw    $t1, ($v1)
/* 084B10 80083F10 3C028012 */  lui   $v0, %hi(D_801267D8) # $v0, 0x8012
/* 084B14 80083F14 15200009 */  bnez  $t1, .L80083F3C
/* 084B18 80083F18 3C0D800E */   lui   $t5, %hi(D_800DF47C) # $t5, 0x800e
/* 084B1C 80083F1C 244267D8 */  addiu $v0, %lo(D_801267D8) # addiu $v0, $v0, 0x67d8
/* 084B20 80083F20 8C4A0010 */  lw    $t2, 0x10($v0)
/* 084B24 80083F24 240C0001 */  li    $t4, 1
/* 084B28 80083F28 314B9000 */  andi  $t3, $t2, 0x9000
/* 084B2C 80083F2C 11600047 */  beqz  $t3, .L8008404C
/* 084B30 80083F30 00000000 */   nop   
/* 084B34 80083F34 10000045 */  b     .L8008404C
/* 084B38 80083F38 AC6C0000 */   sw    $t4, ($v1)
.L80083F3C:
/* 084B3C 80083F3C 8DADF47C */  lw    $t5, %lo(D_800DF47C)($t5)
/* 084B40 80083F40 00000000 */  nop   
/* 084B44 80083F44 15A00041 */  bnez  $t5, .L8008404C
/* 084B48 80083F48 00000000 */   nop   
/* 084B4C 80083F4C 0C01BD32 */  jal   func_8006F4C8
/* 084B50 80083F50 00000000 */   nop   
/* 084B54 80083F54 1440003D */  bnez  $v0, .L8008404C
/* 084B58 80083F58 3C038012 */   lui   $v1, %hi(D_80126838) # $v1, 0x8012
/* 084B5C 80083F5C 3C02800E */  lui   $v0, %hi(D_800DF45C) # $v0, 0x800e
/* 084B60 80083F60 8C42F45C */  lw    $v0, %lo(D_800DF45C)($v0)
/* 084B64 80083F64 84636838 */  lh    $v1, %lo(D_80126838)($v1)
/* 084B68 80083F68 00002825 */  move  $a1, $zero
/* 084B6C 80083F6C 04610008 */  bgez  $v1, .L80083F90
/* 084B70 80083F70 00402025 */   move  $a0, $v0
/* 084B74 80083F74 1C400006 */  bgtz  $v0, .L80083F90
/* 084B78 80083F78 244E0001 */   addiu $t6, $v0, 1
/* 084B7C 80083F7C 3C01800E */  lui   $at, %hi(D_800DF45C) # $at, 0x800e
/* 084B80 80083F80 AC2EF45C */  sw    $t6, %lo(D_800DF45C)($at)
/* 084B84 80083F84 3C02800E */  lui   $v0, %hi(D_800DF45C) # $v0, 0x800e
/* 084B88 80083F88 8C42F45C */  lw    $v0, %lo(D_800DF45C)($v0)
/* 084B8C 80083F8C 00000000 */  nop   
.L80083F90:
/* 084B90 80083F90 18600008 */  blez  $v1, .L80083FB4
/* 084B94 80083F94 00000000 */   nop   
/* 084B98 80083F98 18400006 */  blez  $v0, .L80083FB4
/* 084B9C 80083F9C 244FFFFF */   addiu $t7, $v0, -1
/* 084BA0 80083FA0 3C01800E */  lui   $at, %hi(D_800DF45C) # $at, 0x800e
/* 084BA4 80083FA4 AC2FF45C */  sw    $t7, %lo(D_800DF45C)($at)
/* 084BA8 80083FA8 3C02800E */  lui   $v0, %hi(D_800DF45C) # $v0, 0x800e
/* 084BAC 80083FAC 8C42F45C */  lw    $v0, %lo(D_800DF45C)($v0)
/* 084BB0 80083FB0 00000000 */  nop   
.L80083FB4:
/* 084BB4 80083FB4 10820003 */  beq   $a0, $v0, .L80083FC4
/* 084BB8 80083FB8 00000000 */   nop   
/* 084BBC 80083FBC 0C000741 */  jal   func_80001D04
/* 084BC0 80083FC0 240400EB */   li    $a0, 235
.L80083FC4:
/* 084BC4 80083FC4 3C028012 */  lui   $v0, %hi(D_801267D8) # $v0, 0x8012
/* 084BC8 80083FC8 244267D8 */  addiu $v0, %lo(D_801267D8) # addiu $v0, $v0, 0x67d8
/* 084BCC 80083FCC 8C580010 */  lw    $t8, 0x10($v0)
/* 084BD0 80083FD0 3C098012 */  lui   $t1, %hi(D_801267E4) # $t1, 0x8012
/* 084BD4 80083FD4 33199000 */  andi  $t9, $t8, 0x9000
/* 084BD8 80083FD8 1320001C */  beqz  $t9, .L8008404C
/* 084BDC 80083FDC 00000000 */   nop   
/* 084BE0 80083FE0 8D2967E4 */  lw    $t1, %lo(D_801267E4)($t1)
/* 084BE4 80083FE4 24060003 */  li    $a2, 3
/* 084BE8 80083FE8 312A9000 */  andi  $t2, $t1, 0x9000
/* 084BEC 80083FEC 1540000A */  bnez  $t2, .L80084018
/* 084BF0 80083FF0 00000000 */   nop   
.L80083FF4:
/* 084BF4 80083FF4 24C6FFFF */  addiu $a2, $a2, -1
/* 084BF8 80083FF8 18C00007 */  blez  $a2, .L80084018
/* 084BFC 80083FFC 00065880 */   sll   $t3, $a2, 2
/* 084C00 80084000 004B6021 */  addu  $t4, $v0, $t3
/* 084C04 80084004 8D8D0000 */  lw    $t5, ($t4)
/* 084C08 80084008 00000000 */  nop   
/* 084C0C 8008400C 31AE9000 */  andi  $t6, $t5, 0x9000
/* 084C10 80084010 11C0FFF8 */  beqz  $t6, .L80083FF4
/* 084C14 80084014 00000000 */   nop   
.L80084018:
/* 084C18 80084018 0C022BC0 */  jal   func_8008AF00
/* 084C1C 8008401C 00C02025 */   move  $a0, $a2
/* 084C20 80084020 240F0001 */  li    $t7, 1
/* 084C24 80084024 3C01800E */  lui   $at, %hi(D_800DF47C) # $at, 0x800e
/* 084C28 80084028 3C04800E */  lui   $a0, %hi(D_800DF774) # $a0, 0x800e
/* 084C2C 8008402C AC2FF47C */  sw    $t7, %lo(D_800DF47C)($at)
/* 084C30 80084030 0C030076 */  jal   func_800C01D8
/* 084C34 80084034 2484F774 */   addiu $a0, %lo(D_800DF774) # addiu $a0, $a0, -0x88c
/* 084C38 80084038 0C03005C */  jal   func_800C0170
/* 084C3C 8008403C 00000000 */   nop   
/* 084C40 80084040 240400EF */  li    $a0, 239
/* 084C44 80084044 0C000741 */  jal   func_80001D04
/* 084C48 80084048 00002825 */   move  $a1, $zero
.L8008404C:
/* 084C4C 8008404C 3C18800E */  lui   $t8, %hi(D_800DF47C) # $t8, 0x800e
/* 084C50 80084050 8F18F47C */  lw    $t8, %lo(D_800DF47C)($t8)
/* 084C54 80084054 00001025 */  move  $v0, $zero
/* 084C58 80084058 2B01001F */  slti  $at, $t8, 0x1f
/* 084C5C 8008405C 14200028 */  bnez  $at, .L80084100
/* 084C60 80084060 00000000 */   nop   
/* 084C64 80084064 0C021046 */  jal   func_80084118
/* 084C68 80084068 00000000 */   nop   
/* 084C6C 8008406C 0C030060 */  jal   func_800C0180
/* 084C70 80084070 00000000 */   nop   
/* 084C74 80084074 3C19800E */  lui   $t9, %hi(D_800DF45C) # $t9, 0x800e
/* 084C78 80084078 8F39F45C */  lw    $t9, %lo(D_800DF45C)($t9)
/* 084C7C 8008407C 3C01800E */  lui   $at, %hi(D_800DF460) # $at, 0x800e
/* 084C80 80084080 17200017 */  bnez  $t9, .L800840E0
/* 084C84 80084084 24040027 */   li    $a0, 39
/* 084C88 80084088 0C027B34 */  jal   is_drumstick_unlocked
/* 084C8C 8008408C AFA00028 */   sw    $zero, 0x28($sp)
/* 084C90 80084090 8FA60028 */  lw    $a2, 0x28($sp)
/* 084C94 80084094 10400002 */  beqz  $v0, .L800840A0
/* 084C98 80084098 00000000 */   nop   
/* 084C9C 8008409C 24060001 */  li    $a2, 1
.L800840A0:
/* 084CA0 800840A0 0C027B2E */  jal   is_tt_unlocked
/* 084CA4 800840A4 AFA60028 */   sw    $a2, 0x28($sp)
/* 084CA8 800840A8 8FA60028 */  lw    $a2, 0x28($sp)
/* 084CAC 800840AC 10400003 */  beqz  $v0, .L800840BC
/* 084CB0 800840B0 24040016 */   li    $a0, 22
/* 084CB4 800840B4 38C90003 */  xori  $t1, $a2, 3
/* 084CB8 800840B8 01203025 */  move  $a2, $t1
.L800840BC:
/* 084CBC 800840BC 0C01B8BA */  jal   func_8006E2E8
/* 084CC0 800840C0 2405FFFF */   li    $a1, -1
/* 084CC4 800840C4 00002025 */  move  $a0, $zero
/* 084CC8 800840C8 0C022BAD */  jal   func_8008AEB4
/* 084CCC 800840CC 00002825 */   move  $a1, $zero
/* 084CD0 800840D0 0C0204F4 */  jal   MenuInit
/* 084CD4 800840D4 24040003 */   li    $a0, 3
/* 084CD8 800840D8 1000000B */  b     .L80084108
/* 084CDC 800840DC 00001025 */   move  $v0, $zero
.L800840E0:
/* 084CE0 800840E0 AC20F460 */  sw    $zero, %lo(D_800DF460)($at)
/* 084CE4 800840E4 2405FFFF */  li    $a1, -1
/* 084CE8 800840E8 0C01B8BA */  jal   func_8006E2E8
/* 084CEC 800840EC 00003025 */   move  $a2, $zero
/* 084CF0 800840F0 0C0204F4 */  jal   MenuInit
/* 084CF4 800840F4 2404000C */   li    $a0, 12
/* 084CF8 800840F8 10000003 */  b     .L80084108
/* 084CFC 800840FC 00001025 */   move  $v0, $zero
.L80084100:
/* 084D00 80084100 3C018012 */  lui   $at, %hi(D_801263C4) # $at, 0x8012
/* 084D04 80084104 AC2063C4 */  sw    $zero, %lo(D_801263C4)($at)
.L80084108:
/* 084D08 80084108 8FBF0014 */  lw    $ra, 0x14($sp)
/* 084D0C 8008410C 27BD0030 */  addiu $sp, $sp, 0x30
/* 084D10 80084110 03E00008 */  jr    $ra
/* 084D14 80084114 00000000 */   nop   

