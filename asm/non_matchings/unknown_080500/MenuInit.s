.late_rodata
glabel jpt_800E8284
.word L80081464, L80081454, L8008158C, L800814C4, L8008158C, L80081504, L800814E4, L8008158C, L8008158C, L8008158C, L800814A4, L800814B4, L80081474, L80081484, L80081494, L800814F4, L8008158C, L80081514, L8008158C, L800814D4, L80081524, L80081534, L8008158C, L80081544, L80081554, L80081564, L80081574, L8008158C, L80081584

.text
glabel MenuInit
/* 081FD0 800813D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 081FD4 800813D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 081FD8 800813D8 3C01800E */  lui   $at, %hi(D_800DF470) # $at, 0x800e
/* 081FDC 800813DC 0C026F97 */  jal   func_8009BE5C
/* 081FE0 800813E0 AC24F470 */   sw    $a0, %lo(D_800DF470)($at)
/* 081FE4 800813E4 240E0001 */  li    $t6, 1
/* 081FE8 800813E8 3C018012 */  lui   $at, %hi(D_801263C4) # $at, 0x8012
/* 081FEC 800813EC AC2E63C4 */  sw    $t6, %lo(D_801263C4)($at)
/* 081FF0 800813F0 3C018012 */  lui   $at, %hi(D_801263BC) # $at, 0x8012
/* 081FF4 800813F4 AC2063BC */  sw    $zero, %lo(D_801263BC)($at)
/* 081FF8 800813F8 3C018012 */  lui   $at, %hi(D_801263C8) # $at, 0x8012
/* 081FFC 800813FC AC2063C8 */  sw    $zero, %lo(D_801263C8)($at)
/* 082000 80081400 3C018012 */  lui   $at, %hi(D_80126828) # $at, 0x8012
/* 082004 80081404 A0206828 */  sb    $zero, %lo(D_80126828)($at)
/* 082008 80081408 3C018012 */  lui   $at, %hi(D_8012680C) # $at, 0x8012
/* 08200C 8008140C AC206808 */  sw    $zero, %lo(D_80126808)($at)
/* 082010 80081410 AC20680C */  sw    $zero, %lo(D_8012680C)($at)
/* 082014 80081414 3C018012 */  lui   $at, %hi(D_80126814) # $at, 0x8012
/* 082018 80081418 AC206810 */  sw    $zero, %lo(D_80126810)($at)
/* 08201C 8008141C 0C000611 */  jal   func_80001844
/* 082020 80081420 AC206814 */   sw    $zero, %lo(D_80126814)($at)
/* 082024 80081424 3C0F800E */  lui   $t7, %hi(D_800DF470) # $t7, 0x800e
/* 082028 80081428 8DEFF470 */  lw    $t7, %lo(D_800DF470)($t7)
/* 08202C 8008142C 00000000 */  nop   
/* 082030 80081430 2DE1001D */  sltiu $at, $t7, 0x1d
/* 082034 80081434 10200055 */  beqz  $at, .L8008158C
/* 082038 80081438 000F7880 */   sll   $t7, $t7, 2
/* 08203C 8008143C 3C01800F */  lui   $at, %hi(jpt_800E8284) # $at, 0x800f
/* 082040 80081440 002F0821 */  addu  $at, $at, $t7
/* 082044 80081444 8C2F8284 */  lw    $t7, %lo(jpt_800E8284)($at)
/* 082048 80081448 00000000 */  nop   
/* 08204C 8008144C 01E00008 */  jr    $t7
/* 082050 80081450 00000000 */   nop   
glabel L80081454
/* 082054 80081454 0C020AAB */  jal   menu_logos_screen_init
/* 082058 80081458 00000000 */   nop   
/* 08205C 8008145C 1000004C */  b     .L80081590
/* 082060 80081460 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081464
/* 082064 80081464 0C020D4F */  jal   MenuTitleScreenInit
/* 082068 80081468 00000000 */   nop   
/* 08206C 8008146C 10000048 */  b     .L80081590
/* 082070 80081470 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081474
/* 082074 80081474 0C021057 */  jal   menu_options_init
/* 082078 80081478 00000000 */   nop   
/* 08207C 8008147C 10000044 */  b     .L80081590
/* 082080 80081480 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081484
/* 082084 80081484 0C0211D5 */  jal   MenuAudioOptionsInit
/* 082088 80081488 00000000 */   nop   
/* 08208C 8008148C 10000040 */  b     .L80081590
/* 082090 80081490 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081494
/* 082094 80081494 0C02149C */  jal   menu_save_options_init
/* 082098 80081498 00000000 */   nop   
/* 08209C 8008149C 1000003C */  b     .L80081590
/* 0820A0 800814A0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800814A4
/* 0820A4 800814A4 0C022577 */  jal   menu_magic_codes_init
/* 0820A8 800814A8 00000000 */   nop   
/* 0820AC 800814AC 10000038 */  b     .L80081590
/* 0820B0 800814B0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800814B4
/* 0820B4 800814B4 0C02293A */  jal   menu_magic_codes_list_init
/* 0820B8 800814B8 00000000 */   nop   
/* 0820BC 800814BC 10000034 */  b     .L80081590
/* 0820C0 800814C0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800814C4
/* 0820C4 800814C4 0C022BF3 */  jal   MenuCharacterSelectInit
/* 0820C8 800814C8 00000000 */   nop   
/* 0820CC 800814CC 10000030 */  b     .L80081590
/* 0820D0 800814D0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800814D4
/* 0820D4 800814D4 0C023142 */  jal   MenuGameSelectInit
/* 0820D8 800814D8 00000000 */   nop   
/* 0820DC 800814DC 1000002C */  b     .L80081590
/* 0820E0 800814E0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800814E4
/* 0820E4 800814E4 0C0232BF */  jal   menu_file_select_init
/* 0820E8 800814E8 00000000 */   nop   
/* 0820EC 800814EC 10000028 */  b     .L80081590
/* 0820F0 800814F0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800814F4
/* 0820F4 800814F4 0C0239E8 */  jal   MenuTrackSelectInit
/* 0820F8 800814F8 00000000 */   nop   
/* 0820FC 800814FC 10000024 */  b     .L80081590
/* 082100 80081500 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081504
/* 082104 80081504 0C024B21 */  jal   MenuLoadNewAreaInit
/* 082108 80081508 00000000 */   nop   
/* 08210C 8008150C 10000020 */  b     .L80081590
/* 082110 80081510 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081514
/* 082114 80081514 0C025A12 */  jal   menu_11_init
/* 082118 80081518 00000000 */   nop   
/* 08211C 8008151C 1000001C */  b     .L80081590
/* 082120 80081520 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081524
/* 082124 80081524 0C02609B */  jal   MenuTrophyRaceRoundInit
/* 082128 80081528 00000000 */   nop   
/* 08212C 8008152C 10000018 */  b     .L80081590
/* 082130 80081530 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081534
/* 082134 80081534 0C026289 */  jal   MenuTrophyRaceRankingsInit
/* 082138 80081538 00000000 */   nop   
/* 08213C 8008153C 10000014 */  b     .L80081590
/* 082140 80081540 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081544
/* 082144 80081544 0C026B26 */  jal   menu_17_init
/* 082148 80081548 00000000 */   nop   
/* 08214C 8008154C 10000010 */  b     .L80081590
/* 082150 80081550 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081554
/* 082154 80081554 0C026697 */  jal   MenuGhostDataInit
/* 082158 80081558 00000000 */   nop   
/* 08215C 8008155C 1000000C */  b     .L80081590
/* 082160 80081560 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081564
/* 082164 80081564 0C026BD2 */  jal   menu_credits_init
/* 082168 80081568 00000000 */   nop   
/* 08216C 8008156C 10000008 */  b     .L80081590
/* 082170 80081570 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081574
/* 082174 80081574 0C02213D */  jal   menu_boot_init
/* 082178 80081578 00000000 */   nop   
/* 08217C 8008157C 10000004 */  b     .L80081590
/* 082180 80081580 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80081584
/* 082184 80081584 0C0230ED */  jal   menu_caution_init
/* 082188 80081588 00000000 */   nop   
.L8008158C:
glabel L8008158C
/* 08218C 8008158C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80081590:
/* 082190 80081590 3418D000 */  li    $t8, 53248
/* 082194 80081594 3C018012 */  lui   $at, %hi(D_80126470) # $at, 0x8012
/* 082198 80081598 AC386470 */  sw    $t8, %lo(D_80126470)($at)
/* 08219C 8008159C 03E00008 */  jr    $ra
/* 0821A0 800815A0 27BD0018 */   addiu $sp, $sp, 0x18

