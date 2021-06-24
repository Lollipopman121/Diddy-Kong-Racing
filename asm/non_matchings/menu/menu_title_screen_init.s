glabel menu_title_screen_init
/* 08413C 8008353C 240E0001 */  li    $t6, 1
/* 084140 80083540 3C01800E */  lui   $at, %hi(D_800DF488) # $at, 0x800e
/* 084144 80083544 AC2EF488 */  sw    $t6, %lo(D_800DF488)($at)
/* 084148 80083548 3C018012 */  lui   $at, %hi(D_801263BC) # $at, 0x8012
/* 08414C 8008354C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 084150 80083550 AC2063BC */  sw    $zero, %lo(D_801263BC)($at)
/* 084154 80083554 AFBF0014 */  sw    $ra, 0x14($sp)
/* 084158 80083558 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 08415C 8008355C 0C027055 */  jal   reset_character_id_slots
/* 084160 80083560 AC20F47C */   sw    $zero, %lo(gMenuDelay)($at)
/* 084164 80083564 3C01800E */  lui   $at, %hi(gSaveFileIndex) # $at, 0x800e
/* 084168 80083568 AC20F4CC */  sw    $zero, %lo(gSaveFileIndex)($at)
/* 08416C 8008356C 3C01800E */  lui   $at, %hi(gTitleScreenCurrentOption) # $at, 0x800e
/* 084170 80083570 AC20F45C */  sw    $zero, %lo(gTitleScreenCurrentOption)($at)
/* 084174 80083574 3C01800E */  lui   $at, %hi(gNumberOfActivePlayers) # $at, 0x800e
/* 084178 80083578 240F0004 */  li    $t7, 4
/* 08417C 8008357C 0C01A90D */  jal   func_8006A434
/* 084180 80083580 AC2FF4BC */   sw    $t7, %lo(gNumberOfActivePlayers)($at)
/* 084184 80083584 0C0002CD */  jal   play_music
/* 084188 80083588 24040001 */   li    $a0, 1
/* 08418C 8008358C 0C0006BB */  jal   musicGetRelativeVolume
/* 084190 80083590 00000000 */   nop   
/* 084194 80083594 3C03800E */  lui   $v1, %hi(D_800DF458) # $v1, 0x800e
/* 084198 80083598 3C01800E */  lui   $at, %hi(D_800DF760) # $at, 0x800e
/* 08419C 8008359C AC22F760 */  sw    $v0, %lo(D_800DF760)($at)
/* 0841A0 800835A0 2463F458 */  addiu $v1, %lo(D_800DF458) # addiu $v1, $v1, -0xba8
/* 0841A4 800835A4 8C780000 */  lw    $t8, ($v1)
/* 0841A8 800835A8 3C018012 */  lui   $at, %hi(D_8012686C) # $at, 0x8012
/* 0841AC 800835AC 13000005 */  beqz  $t8, .L800835C4
/* 0841B0 800835B0 24190001 */   li    $t9, 1
/* 0841B4 800835B4 AC20686C */  sw    $zero, %lo(D_8012686C)($at)
/* 0841B8 800835B8 10000004 */  b     .L800835CC
/* 0841BC 800835BC AC600000 */   sw    $zero, ($v1)
/* 0841C0 800835C0 24190001 */  li    $t9, 1
.L800835C4:
/* 0841C4 800835C4 3C018012 */  lui   $at, %hi(D_8012686C) # $at, 0x8012
/* 0841C8 800835C8 AC39686C */  sw    $t9, %lo(D_8012686C)($at)
.L800835CC:
/* 0841CC 800835CC 44802000 */  mtc1  $zero, $f4
/* 0841D0 800835D0 3C018012 */  lui   $at, %hi(D_80126870) # $at, 0x8012
/* 0841D4 800835D4 E4246870 */  swc1  $f4, %lo(D_80126870)($at)
/* 0841D8 800835D8 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 0841DC 800835DC 3C04800E */  lui   $a0, %hi(D_800DF7C4) # $a0, 0x800e
/* 0841E0 800835E0 AC2063E0 */  sw    $zero, %lo(D_801263E0)($at)
/* 0841E4 800835E4 0C02719D */  jal   func_8009C674
/* 0841E8 800835E8 2484F7C4 */   addiu $a0, %lo(D_800DF7C4) # addiu $a0, $a0, -0x83c
/* 0841EC 800835EC 3C08800E */  lui   $t0, %hi(D_800DF7C4) # $t0, 0x800e
/* 0841F0 800835F0 8508F7C4 */  lh    $t0, %lo(D_800DF7C4)($t0)
/* 0841F4 800835F4 3C048012 */  lui   $a0, %hi(D_80126550) # $a0, 0x8012
/* 0841F8 800835F8 24846550 */  addiu $a0, %lo(D_80126550) # addiu $a0, $a0, 0x6550
/* 0841FC 800835FC 3C0C800E */  lui   $t4, %hi(D_800DF7C4+2) # $t4, 0x800e
/* 084200 80083600 00084880 */  sll   $t1, $t0, 2
/* 084204 80083604 858CF7C6 */  lh    $t4, %lo(D_800DF7C4+2)($t4)
/* 084208 80083608 00895021 */  addu  $t2, $a0, $t1
/* 08420C 8008360C 8D4B0000 */  lw    $t3, ($t2)
/* 084210 80083610 3C01800E */  lui   $at, %hi(D_800DF7DC) # $at, 0x800e
/* 084214 80083614 3C18800E */  lui   $t8, %hi(D_800DF7C4+4) # $t8, 0x800e
/* 084218 80083618 000C6880 */  sll   $t5, $t4, 2
/* 08421C 8008361C 8718F7C8 */  lh    $t8, %lo(D_800DF7C4+4)($t8)
/* 084220 80083620 008D7021 */  addu  $t6, $a0, $t5
/* 084224 80083624 AC2BF7DC */  sw    $t3, %lo(D_800DF7DC)($at)
/* 084228 80083628 8DCF0000 */  lw    $t7, ($t6)
/* 08422C 8008362C 3C01800E */  lui   $at, %hi(D_800DF7DC+16) # $at, 0x800e
/* 084230 80083630 0018C880 */  sll   $t9, $t8, 2
/* 084234 80083634 00994021 */  addu  $t0, $a0, $t9
/* 084238 80083638 AC2FF7E4 */  sw    $t7, %lo(D_800DF7DC+8)($at)
/* 08423C 8008363C 8D090000 */  lw    $t1, ($t0)
/* 084240 80083640 3C03800E */  lui   $v1, %hi(D_800DF7DC+24) # $v1, 0x800e
/* 084244 80083644 3C02800E */  lui   $v0, %hi(D_800DF7C4+6) # $v0, 0x800e
/* 084248 80083648 3C05800E */  lui   $a1, %hi(D_800DF7C4+22) # $a1, 0x800e
/* 08424C 8008364C 24A5F7DA */  addiu $a1, %lo(D_800DF7C4+22) # addiu $a1, $a1, -0x826
/* 084250 80083650 2442F7CA */  addiu $v0, %lo(D_800DF7C4+6) # addiu $v0, $v0, -0x836
/* 084254 80083654 2463F7F4 */  addiu $v1, %lo(D_800DF7DC+24) # addiu $v1, $v1, -0x80c
/* 084258 80083658 AC29F7EC */  sw    $t1, %lo(D_800DF7DC+16)($at)
.L8008365C:
/* 08425C 8008365C 844A0000 */  lh    $t2, ($v0)
/* 084260 80083660 844E0002 */  lh    $t6, 2($v0)
/* 084264 80083664 000A5880 */  sll   $t3, $t2, 2
/* 084268 80083668 008B6021 */  addu  $t4, $a0, $t3
/* 08426C 8008366C 8D8D0000 */  lw    $t5, ($t4)
/* 084270 80083670 844C0006 */  lh    $t4, 6($v0)
/* 084274 80083674 84480004 */  lh    $t0, 4($v0)
/* 084278 80083678 000E7880 */  sll   $t7, $t6, 2
/* 08427C 8008367C AC6D0000 */  sw    $t5, ($v1)
/* 084280 80083680 008FC021 */  addu  $t8, $a0, $t7
/* 084284 80083684 000C6880 */  sll   $t5, $t4, 2
/* 084288 80083688 00084880 */  sll   $t1, $t0, 2
/* 08428C 8008368C 8F190000 */  lw    $t9, ($t8)
/* 084290 80083690 00895021 */  addu  $t2, $a0, $t1
/* 084294 80083694 008D7021 */  addu  $t6, $a0, $t5
/* 084298 80083698 8DCF0000 */  lw    $t7, ($t6)
/* 08429C 8008369C 8D4B0000 */  lw    $t3, ($t2)
/* 0842A0 800836A0 24420008 */  addiu $v0, $v0, 8
/* 0842A4 800836A4 24630020 */  addiu $v1, $v1, 0x20
/* 0842A8 800836A8 AC79FFE8 */  sw    $t9, -0x18($v1)
/* 0842AC 800836AC AC6FFFF8 */  sw    $t7, -8($v1)
/* 0842B0 800836B0 1445FFEA */  bne   $v0, $a1, .L8008365C
/* 0842B4 800836B4 AC6BFFF0 */   sw    $t3, -0x10($v1)
/* 0842B8 800836B8 0C0002F8 */  jal   func_80000BE0
/* 0842BC 800836BC 2404001B */   li    $a0, 27
/* 0842C0 800836C0 0C019830 */  jal   func_800660C0
/* 0842C4 800836C4 00000000 */   nop   
/* 0842C8 800836C8 0C0310BB */  jal   set_text_font
/* 0842CC 800836CC 00002025 */   move  $a0, $zero
/* 0842D0 800836D0 0C03105C */  jal   func_800C4170
/* 0842D4 800836D4 24040002 */   li    $a0, 2
/* 0842D8 800836D8 0C000224 */  jal   func_80000890
/* 0842DC 800836DC 00002025 */   move  $a0, $zero
/* 0842E0 800836E0 0C00392F */  jal   set_time_trial_enabled
/* 0842E4 800836E4 00002025 */   move  $a0, $zero
/* 0842E8 800836E8 3C018012 */  lui   $at, %hi(D_80126864) # $at, 0x8012
/* 0842EC 800836EC AC206864 */  sw    $zero, %lo(D_80126864)($at)
/* 0842F0 800836F0 0C0078A7 */  jal   get_misc_asset
/* 0842F4 800836F4 24040042 */   li    $a0, 66
/* 0842F8 800836F8 3C048012 */  lui   $a0, %hi(D_80126874) # $a0, 0x8012
/* 0842FC 800836FC 24846874 */  addiu $a0, %lo(D_80126874) # addiu $a0, $a0, 0x6874
/* 084300 80083700 AC820000 */  sw    $v0, ($a0)
/* 084304 80083704 80450001 */  lb    $a1, 1($v0)
/* 084308 80083708 3C068012 */  lui   $a2, %hi(D_80126868) # $a2, 0x8012
/* 08430C 8008370C 24C66868 */  addiu $a2, %lo(D_80126868) # addiu $a2, $a2, 0x6868
/* 084310 80083710 2401FFFE */  li    $at, -2
/* 084314 80083714 00401825 */  move  $v1, $v0
/* 084318 80083718 14A10004 */  bne   $a1, $at, .L8008372C
/* 08431C 8008371C A4C00000 */   sh    $zero, ($a2)
/* 084320 80083720 24180258 */  li    $t8, 600
/* 084324 80083724 00002825 */  move  $a1, $zero
/* 084328 80083728 A4D80000 */  sh    $t8, ($a2)
.L8008372C:
/* 08432C 8008372C 80640000 */  lb    $a0, ($v1)
/* 084330 80083730 80660002 */  lb    $a2, 2($v1)
/* 084334 80083734 0C01B8BA */  jal   func_8006E2E8
/* 084338 80083738 00000000 */   nop   
/* 08433C 8008373C 44803000 */  mtc1  $zero, $f6
/* 084340 80083740 3C018012 */  lui   $at, %hi(D_801268D8) # $at, 0x8012
/* 084344 80083744 E42668D8 */  swc1  $f6, %lo(D_801268D8)($at)
/* 084348 80083748 3C018012 */  lui   $at, %hi(D_801268E0) # $at, 0x8012
/* 08434C 8008374C AC2068E0 */  sw    $zero, %lo(D_801268E0)($at)
/* 084350 80083750 3C018012 */  lui   $at, %hi(D_801268DC) # $at, 0x8012
/* 084354 80083754 AC2068DC */  sw    $zero, %lo(D_801268DC)($at)
/* 084358 80083758 3C01800E */  lui   $at, %hi(D_800DF9F4) # $at, 0x800e
/* 08435C 8008375C AC20F9F4 */  sw    $zero, %lo(D_800DF9F4)($at)
/* 084360 80083760 3C018012 */  lui   $at, %hi(D_801263D8) # $at, 0x8012
/* 084364 80083764 8FBF0014 */  lw    $ra, 0x14($sp)
/* 084368 80083768 AC2063D8 */  sw    $zero, %lo(D_801263D8)($at)
/* 08436C 8008376C 3C01800E */  lui   $at, %hi(gIsInTracksMode) # $at, 0x800e
/* 084370 80083770 AC20F4B8 */  sw    $zero, %lo(gIsInTracksMode)($at)
/* 084374 80083774 03E00008 */  jr    $ra
/* 084378 80083778 27BD0018 */   addiu $sp, $sp, 0x18

