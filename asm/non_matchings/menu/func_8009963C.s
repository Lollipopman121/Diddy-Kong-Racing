glabel func_8009963C
/* 09A23C 8009963C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 09A240 80099640 3C098012 */  lui   $t1, %hi(D_801264D4) # $t1, 0x8012
/* 09A244 80099644 252964D4 */  addiu $t1, %lo(D_801264D4) # addiu $t1, $t1, 0x64d4
/* 09A248 80099648 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09A24C 8009964C AD200000 */  sw    $zero, ($t1)
/* 09A250 80099650 0C0078A7 */  jal   get_misc_asset
/* 09A254 80099654 2404001C */   li    $a0, 28
/* 09A258 80099658 3C098012 */  lui   $t1, %hi(D_801264D4) # $t1, 0x8012
/* 09A25C 8009965C 3C078012 */  lui   $a3, %hi(D_801264DC) # $a3, 0x8012
/* 09A260 80099660 3C1F8012 */  lui   $ra, %hi(D_801264EC) # $ra, 0x8012
/* 09A264 80099664 3C0B8012 */  lui   $t3, %hi(D_80126540) # $t3, 0x8012
/* 09A268 80099668 252964D4 */  addiu $t1, %lo(D_801264D4) # addiu $t1, $t1, 0x64d4
/* 09A26C 8009966C 00403025 */  move  $a2, $v0
/* 09A270 80099670 256B6540 */  addiu $t3, %lo(D_80126540) # addiu $t3, $t3, 0x6540
/* 09A274 80099674 27FF64EC */  addiu $ra, %lo(D_801264EC) # addiu $ra, $ra, 0x64ec
/* 09A278 80099678 24E764DC */  addiu $a3, %lo(D_801264DC) # addiu $a3, $a3, 0x64dc
/* 09A27C 8009967C 00005025 */  move  $t2, $zero
/* 09A280 80099680 27AD0044 */  addiu $t5, $sp, 0x44
/* 09A284 80099684 240500FF */  li    $a1, 255
.L80099688:
/* 09A288 80099688 90E40000 */  lbu   $a0, ($a3)
/* 09A28C 8009968C 00000000 */  nop   
/* 09A290 80099690 10A40022 */  beq   $a1, $a0, .L8009971C
/* 09A294 80099694 00000000 */   nop   
/* 09A298 80099698 904E0000 */  lbu   $t6, ($v0)
/* 09A29C 8009969C 00004025 */  move  $t0, $zero
/* 09A2A0 800996A0 10AE000F */  beq   $a1, $t6, .L800996E0
/* 09A2A4 800996A4 00487821 */   addu  $t7, $v0, $t0
/* 09A2A8 800996A8 904F0000 */  lbu   $t7, ($v0)
/* 09A2AC 800996AC 00401821 */  addu  $v1, $v0, $zero
/* 09A2B0 800996B0 11E4000B */  beq   $t7, $a0, .L800996E0
/* 09A2B4 800996B4 00487821 */   addu  $t7, $v0, $t0
.L800996B8:
/* 09A2B8 800996B8 90780001 */  lbu   $t8, 1($v1)
/* 09A2BC 800996BC 25080001 */  addiu $t0, $t0, 1
/* 09A2C0 800996C0 10B80006 */  beq   $a1, $t8, .L800996DC
/* 09A2C4 800996C4 24630001 */   addiu $v1, $v1, 1
/* 09A2C8 800996C8 00C8C821 */  addu  $t9, $a2, $t0
/* 09A2CC 800996CC 932E0000 */  lbu   $t6, ($t9)
/* 09A2D0 800996D0 00000000 */  nop   
/* 09A2D4 800996D4 15C4FFF8 */  bne   $t6, $a0, .L800996B8
/* 09A2D8 800996D8 00000000 */   nop   
.L800996DC:
/* 09A2DC 800996DC 00487821 */  addu  $t7, $v0, $t0
.L800996E0:
/* 09A2E0 800996E0 91F80000 */  lbu   $t8, ($t7)
/* 09A2E4 800996E4 03EA7021 */  addu  $t6, $ra, $t2
/* 09A2E8 800996E8 10B8000C */  beq   $a1, $t8, .L8009971C
/* 09A2EC 800996EC 00000000 */   nop   
/* 09A2F0 800996F0 8D2C0000 */  lw    $t4, ($t1)
/* 09A2F4 800996F4 0008C0C0 */  sll   $t8, $t0, 3
/* 09A2F8 800996F8 016CC821 */  addu  $t9, $t3, $t4
/* 09A2FC 800996FC A32A0000 */  sb    $t2, ($t9)
/* 09A300 80099700 91CF0000 */  lbu   $t7, ($t6)
/* 09A304 80099704 000C7040 */  sll   $t6, $t4, 1
/* 09A308 80099708 01F8C821 */  addu  $t9, $t7, $t8
/* 09A30C 8009970C 01AE7821 */  addu  $t7, $t5, $t6
/* 09A310 80099710 A5F90000 */  sh    $t9, ($t7)
/* 09A314 80099714 25980001 */  addiu $t8, $t4, 1
/* 09A318 80099718 AD380000 */  sw    $t8, ($t1)
.L8009971C:
/* 09A31C 8009971C 254A0001 */  addiu $t2, $t2, 1
/* 09A320 80099720 29410006 */  slti  $at, $t2, 6
/* 09A324 80099724 1420FFD8 */  bnez  $at, .L80099688
/* 09A328 80099728 24E70001 */   addiu $a3, $a3, 1
/* 09A32C 8009972C 8D2C0000 */  lw    $t4, ($t1)
/* 09A330 80099730 97A70046 */  lhu   $a3, 0x46($sp)
/* 09A334 80099734 258AFFFF */  addiu $t2, $t4, -1
/* 09A338 80099738 1940003D */  blez  $t2, .L80099830
/* 09A33C 8009973C 00000000 */   nop   
/* 09A340 80099740 97A40044 */  lhu   $a0, 0x44($sp)
/* 09A344 80099744 00000000 */  nop   
.L80099748:
/* 09A348 80099748 19400034 */  blez  $t2, .L8009981C
/* 09A34C 8009974C 00004025 */   move  $t0, $zero
/* 09A350 80099750 31420001 */  andi  $v0, $t2, 1
/* 09A354 80099754 1040000E */  beqz  $v0, .L80099790
/* 09A358 80099758 00E4082A */   slt   $at, $a3, $a0
/* 09A35C 8009975C 1020000B */  beqz  $at, .L8009978C
/* 09A360 80099760 24080001 */   li    $t0, 1
/* 09A364 80099764 3C068012 */  lui   $a2, %hi(D_80126540) # $a2, 0x8012
/* 09A368 80099768 3C0E8012 */  lui   $t6, %hi(D_80126541) # $t6, 0x8012
/* 09A36C 8009976C 91CE6541 */  lbu   $t6, %lo(D_80126541)($t6)
/* 09A370 80099770 90C66540 */  lbu   $a2, %lo(D_80126540)($a2)
/* 09A374 80099774 00802825 */  move  $a1, $a0
/* 09A378 80099778 3C018012 */  lui   $at, %hi(D_80126541) # $at, 0x8012
/* 09A37C 8009977C 30E4FFFF */  andi  $a0, $a3, 0xffff
/* 09A380 80099780 30A7FFFF */  andi  $a3, $a1, 0xffff
/* 09A384 80099784 A02E6540 */  sb    $t6, %lo(D_80126540)($at)
/* 09A388 80099788 A0266541 */  sb    $a2, %lo(D_80126541)($at)
.L8009978C:
/* 09A38C 8009978C 110A0023 */  beq   $t0, $t2, .L8009981C
.L80099790:
/* 09A390 80099790 0008C840 */   sll   $t9, $t0, 1
/* 09A394 80099794 27AF0044 */  addiu $t7, $sp, 0x44
/* 09A398 80099798 032F1821 */  addu  $v1, $t9, $t7
/* 09A39C 8009979C A7A40044 */  sh    $a0, 0x44($sp)
/* 09A3A0 800997A0 A7A70046 */  sh    $a3, 0x46($sp)
.L800997A4:
/* 09A3A4 800997A4 94640002 */  lhu   $a0, 2($v1)
/* 09A3A8 800997A8 94690000 */  lhu   $t1, ($v1)
/* 09A3AC 800997AC 01681021 */  addu  $v0, $t3, $t0
/* 09A3B0 800997B0 0089082A */  slt   $at, $a0, $t1
/* 09A3B4 800997B4 10200009 */  beqz  $at, .L800997DC
/* 09A3B8 800997B8 00803825 */   move  $a3, $a0
/* 09A3BC 800997BC 90460000 */  lbu   $a2, ($v0)
/* 09A3C0 800997C0 90580001 */  lbu   $t8, 1($v0)
/* 09A3C4 800997C4 A4640000 */  sh    $a0, ($v1)
/* 09A3C8 800997C8 3124FFFF */  andi  $a0, $t1, 0xffff
/* 09A3CC 800997CC A4690002 */  sh    $t1, 2($v1)
/* 09A3D0 800997D0 00803825 */  move  $a3, $a0
/* 09A3D4 800997D4 A0460001 */  sb    $a2, 1($v0)
/* 09A3D8 800997D8 A0580000 */  sb    $t8, ($v0)
.L800997DC:
/* 09A3DC 800997DC 94690004 */  lhu   $t1, 4($v1)
/* 09A3E0 800997E0 01681021 */  addu  $v0, $t3, $t0
/* 09A3E4 800997E4 0127082A */  slt   $at, $t1, $a3
/* 09A3E8 800997E8 10200007 */  beqz  $at, .L80099808
/* 09A3EC 800997EC 00000000 */   nop   
/* 09A3F0 800997F0 90460001 */  lbu   $a2, 1($v0)
/* 09A3F4 800997F4 904E0002 */  lbu   $t6, 2($v0)
/* 09A3F8 800997F8 A4690002 */  sh    $t1, 2($v1)
/* 09A3FC 800997FC A4640004 */  sh    $a0, 4($v1)
/* 09A400 80099800 A0460002 */  sb    $a2, 2($v0)
/* 09A404 80099804 A04E0001 */  sb    $t6, 1($v0)
.L80099808:
/* 09A408 80099808 97A40044 */  lhu   $a0, 0x44($sp)
/* 09A40C 8009980C 97A70046 */  lhu   $a3, 0x46($sp)
/* 09A410 80099810 25080002 */  addiu $t0, $t0, 2
/* 09A414 80099814 150AFFE3 */  bne   $t0, $t2, .L800997A4
/* 09A418 80099818 24630004 */   addiu $v1, $v1, 4
.L8009981C:
/* 09A41C 8009981C 254AFFFF */  addiu $t2, $t2, -1
/* 09A420 80099820 1D40FFC9 */  bgtz  $t2, .L80099748
/* 09A424 80099824 00000000 */   nop   
/* 09A428 80099828 A7A70046 */  sh    $a3, 0x46($sp)
/* 09A42C 8009982C A7A40044 */  sh    $a0, 0x44($sp)
.L80099830:
/* 09A430 80099830 19800027 */  blez  $t4, .L800998D0
/* 09A434 80099834 3C048012 */   lui   $a0, %hi(D_80126508) # $a0, 0x8012
/* 09A438 80099838 3C198012 */  lui   $t9, %hi(D_80126520) # $t9, 0x8012
/* 09A43C 8009983C 27236520 */  addiu $v1, $t9, %lo(D_80126520)
/* 09A440 80099840 3C058012 */  lui   $a1, %hi(D_80126540) # $a1, 0x8012
/* 09A444 80099844 3C068012 */  lui   $a2, %hi(D_80126510) # $a2, 0x8012
/* 09A448 80099848 3C078012 */  lui   $a3, %hi(D_80126518) # $a3, 0x8012
/* 09A44C 8009984C 000C7840 */  sll   $t7, $t4, 1
/* 09A450 80099850 3C0A8012 */  lui   $t2, %hi(D_801264F8) # $t2, 0x8012
/* 09A454 80099854 3C098012 */  lui   $t1, %hi(D_801264E4) # $t1, 0x8012
/* 09A458 80099858 3C088012 */  lui   $t0, %hi(D_801264DC) # $t0, 0x8012
/* 09A45C 8009985C 250864DC */  addiu $t0, %lo(D_801264DC) # addiu $t0, $t0, 0x64dc
/* 09A460 80099860 252964E4 */  addiu $t1, %lo(D_801264E4) # addiu $t1, $t1, 0x64e4
/* 09A464 80099864 254A64F8 */  addiu $t2, %lo(D_801264F8) # addiu $t2, $t2, 0x64f8
/* 09A468 80099868 01E35821 */  addu  $t3, $t7, $v1
/* 09A46C 8009986C 24E76518 */  addiu $a3, %lo(D_80126518) # addiu $a3, $a3, 0x6518
/* 09A470 80099870 24C66510 */  addiu $a2, %lo(D_80126510) # addiu $a2, $a2, 0x6510
/* 09A474 80099874 24A56540 */  addiu $a1, %lo(D_80126540) # addiu $a1, $a1, 0x6540
/* 09A478 80099878 24846508 */  addiu $a0, %lo(D_80126508) # addiu $a0, $a0, 0x6508
.L8009987C:
/* 09A47C 8009987C 90A20000 */  lbu   $v0, ($a1)
/* 09A480 80099880 24630002 */  addiu $v1, $v1, 2
/* 09A484 80099884 0102C021 */  addu  $t8, $t0, $v0
/* 09A488 80099888 930E0000 */  lbu   $t6, ($t8)
/* 09A48C 8009988C 01227821 */  addu  $t7, $t1, $v0
/* 09A490 80099890 91F90000 */  lbu   $t9, ($t7)
/* 09A494 80099894 03E2C021 */  addu  $t8, $ra, $v0
/* 09A498 80099898 00027840 */  sll   $t7, $v0, 1
/* 09A49C 8009989C A08E0000 */  sb    $t6, ($a0)
/* 09A4A0 800998A0 A0D90000 */  sb    $t9, ($a2)
/* 09A4A4 800998A4 930E0000 */  lbu   $t6, ($t8)
/* 09A4A8 800998A8 014FC821 */  addu  $t9, $t2, $t7
/* 09A4AC 800998AC 97380000 */  lhu   $t8, ($t9)
/* 09A4B0 800998B0 006B082B */  sltu  $at, $v1, $t3
/* 09A4B4 800998B4 24840001 */  addiu $a0, $a0, 1
/* 09A4B8 800998B8 24A50001 */  addiu $a1, $a1, 1
/* 09A4BC 800998BC 24C60001 */  addiu $a2, $a2, 1
/* 09A4C0 800998C0 24E70001 */  addiu $a3, $a3, 1
/* 09A4C4 800998C4 A0EEFFFF */  sb    $t6, -1($a3)
/* 09A4C8 800998C8 1420FFEC */  bnez  $at, .L8009987C
/* 09A4CC 800998CC A478FFFE */   sh    $t8, -2($v1)
.L800998D0:
/* 09A4D0 800998D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09A4D4 800998D4 27BD0058 */  addiu $sp, $sp, 0x58
/* 09A4D8 800998D8 03E00008 */  jr    $ra
/* 09A4DC 800998DC 00000000 */   nop   

