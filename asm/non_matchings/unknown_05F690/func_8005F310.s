.late_rodata
glabel D_800E6B00
.double 0.3
glabel D_800E6B08
.double -0.3 
glabel D_800E6B10
.double 0.4

.text
glabel func_8005F310
/* 05FF10 8005F310 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 05FF14 8005F314 AFA40040 */  sw    $a0, 0x40($sp)
/* 05FF18 8005F318 AFBF0024 */  sw    $ra, 0x24($sp)
/* 05FF1C 8005F31C AFB00020 */  sw    $s0, 0x20($sp)
/* 05FF20 8005F320 3C04800E */  lui   $a0, %hi(D_800DCE80) # $a0, 0x800e
/* 05FF24 8005F324 00C08025 */  move  $s0, $a2
/* 05FF28 8005F328 AFA50044 */  sw    $a1, 0x44($sp)
/* 05FF2C 8005F32C 2484CE80 */  addiu $a0, %lo(D_800DCE80) # addiu $a0, $a0, -0x3180
/* 05FF30 8005F330 0C01729E */  jal   func_8005CA78
/* 05FF34 8005F334 AFA7004C */   sw    $a3, 0x4c($sp)
/* 05FF38 8005F338 8FA7004C */  lw    $a3, 0x4c($sp)
/* 05FF3C 8005F33C 3C01800E */  lui   $at, %hi(D_800E6B00) # $at, 0x800e
/* 05FF40 8005F340 A0E001EC */  sb    $zero, 0x1ec($a3)
/* 05FF44 8005F344 820E003B */  lb    $t6, 0x3b($s0)
/* 05FF48 8005F348 C4266B04 */  lwc1  $f6, %lo(D_800E6B00 + 4)($at)
/* 05FF4C 8005F34C A7AE003E */  sh    $t6, 0x3e($sp)
/* 05FF50 8005F350 860F0018 */  lh    $t7, 0x18($s0)
/* 05FF54 8005F354 C4276B00 */  lwc1  $f7, %lo(D_800E6B00)($at)
/* 05FF58 8005F358 A7AF003C */  sh    $t7, 0x3c($sp)
/* 05FF5C 8005F35C 84F8016A */  lh    $t8, 0x16a($a3)
/* 05FF60 8005F360 00000000 */  nop   
/* 05FF64 8005F364 A7B8003A */  sh    $t8, 0x3a($sp)
/* 05FF68 8005F368 C4E4002C */  lwc1  $f4, 0x2c($a3)
/* 05FF6C 8005F36C 00000000 */  nop   
/* 05FF70 8005F370 46002021 */  cvt.d.s $f0, $f4
/* 05FF74 8005F374 4626003C */  c.lt.d $f0, $f6
/* 05FF78 8005F378 00000000 */  nop   
/* 05FF7C 8005F37C 45000009 */  bc1f  .L8005F3A4
/* 05FF80 8005F380 3C01800E */   lui   $at, %hi(D_800E6B08 + 4) # $at, 0x800e
/* 05FF84 8005F384 C4296B08 */  lwc1  $f9, %lo(D_800E6B08)($at)
/* 05FF88 8005F388 C4286B0C */  lwc1  $f8, %lo(D_800E6B08 + 4)($at)
/* 05FF8C 8005F38C 8FB90054 */  lw    $t9, 0x54($sp)
/* 05FF90 8005F390 4620403C */  c.lt.d $f8, $f0
/* 05FF94 8005F394 00000000 */  nop   
/* 05FF98 8005F398 45000002 */  bc1f  .L8005F3A4
/* 05FF9C 8005F39C 00000000 */   nop   
/* 05FFA0 8005F3A0 AF200000 */  sw    $zero, ($t9)
.L8005F3A4:
/* 05FFA4 8005F3A4 80EA01D8 */  lb    $t2, 0x1d8($a3)
/* 05FFA8 8005F3A8 24010001 */  li    $at, 1
/* 05FFAC 8005F3AC 1541000F */  bne   $t2, $at, .L8005F3EC
/* 05FFB0 8005F3B0 8FA90058 */   lw    $t1, 0x58($sp)
/* 05FFB4 8005F3B4 0C008D5A */  jal   func_80023568
/* 05FFB8 8005F3B8 AFA7004C */   sw    $a3, 0x4c($sp)
/* 05FFBC 8005F3BC 8FA7004C */  lw    $a3, 0x4c($sp)
/* 05FFC0 8005F3C0 10400009 */  beqz  $v0, .L8005F3E8
/* 05FFC4 8005F3C4 24040082 */   li    $a0, 130
/* 05FFC8 8005F3C8 0C008500 */  jal   func_80021400
/* 05FFCC 8005F3CC AFA7004C */   sw    $a3, 0x4c($sp)
/* 05FFD0 8005F3D0 8FA7004C */  lw    $a3, 0x4c($sp)
/* 05FFD4 8005F3D4 00000000 */  nop   
/* 05FFD8 8005F3D8 80EB01D8 */  lb    $t3, 0x1d8($a3)
/* 05FFDC 8005F3DC 00000000 */  nop   
/* 05FFE0 8005F3E0 256C0001 */  addiu $t4, $t3, 1
/* 05FFE4 8005F3E4 A0EC01D8 */  sb    $t4, 0x1d8($a3)
.L8005F3E8:
/* 05FFE8 8005F3E8 8FA90058 */  lw    $t1, 0x58($sp)
.L8005F3EC:
/* 05FFEC 8005F3EC 24010064 */  li    $at, 100
/* 05FFF0 8005F3F0 8D280000 */  lw    $t0, ($t1)
/* 05FFF4 8005F3F4 00000000 */  nop   
/* 05FFF8 8005F3F8 15010002 */  bne   $t0, $at, .L8005F404
/* 05FFFC 8005F3FC 3C018012 */   lui   $at, %hi(D_8011D610) # $at, 0x8012
/* 060000 8005F400 A020D610 */  sb    $zero, %lo(D_8011D610)($at)
.L8005F404:
/* 060004 8005F404 84ED0000 */  lh    $t5, ($a3)
/* 060008 8005F408 2403FFFF */  li    $v1, -1
/* 06000C 8005F40C 146D001F */  bne   $v1, $t5, .L8005F48C
/* 060010 8005F410 A0E001F5 */   sb    $zero, 0x1f5($a3)
/* 060014 8005F414 8D220000 */  lw    $v0, ($t1)
/* 060018 8005F418 24010064 */  li    $at, 100
/* 06001C 8005F41C 1041001B */  beq   $v0, $at, .L8005F48C
/* 060020 8005F420 244EFFE2 */   addiu $t6, $v0, -0x1e
/* 060024 8005F424 05C10017 */  bgez  $t6, .L8005F484
/* 060028 8005F428 AD2E0000 */   sw    $t6, ($t1)
/* 06002C 8005F42C 3C188012 */  lui   $t8, %hi(D_8011D611) # $t8, 0x8012
/* 060030 8005F430 8318D611 */  lb    $t8, %lo(D_8011D611)($t8)
/* 060034 8005F434 00002025 */  move  $a0, $zero
/* 060038 8005F438 17000009 */  bnez  $t8, .L8005F460
/* 06003C 8005F43C 8FA20050 */   lw    $v0, 0x50($sp)
/* 060040 8005F440 AFA7004C */  sw    $a3, 0x4c($sp)
/* 060044 8005F444 0C0172C1 */  jal   func_8005CB04
/* 060048 8005F448 AFA8002C */   sw    $t0, 0x2c($sp)
/* 06004C 8005F44C 8FA7004C */  lw    $a3, 0x4c($sp)
/* 060050 8005F450 8FA8002C */  lw    $t0, 0x2c($sp)
/* 060054 8005F454 8FA90058 */  lw    $t1, 0x58($sp)
/* 060058 8005F458 00000000 */  nop   
/* 06005C 8005F45C 8FA20050 */  lw    $v0, 0x50($sp)
.L8005F460:
/* 060060 8005F460 24190001 */  li    $t9, 1
/* 060064 8005F464 3C018012 */  lui   $at, %hi(D_8011D611) # $at, 0x8012
/* 060068 8005F468 A039D611 */  sb    $t9, %lo(D_8011D611)($at)
/* 06006C 8005F46C AD200000 */  sw    $zero, ($t1)
/* 060070 8005F470 8C4A0000 */  lw    $t2, ($v0)
/* 060074 8005F474 00000000 */  nop   
/* 060078 8005F478 354B8000 */  ori   $t3, $t2, 0x8000
/* 06007C 8005F47C 10000003 */  b     .L8005F48C
/* 060080 8005F480 AC4B0000 */   sw    $t3, ($v0)
.L8005F484:
/* 060084 8005F484 3C018012 */  lui   $at, %hi(D_8011D611) # $at, 0x8012
/* 060088 8005F488 A020D611 */  sb    $zero, %lo(D_8011D611)($at)
.L8005F48C:
/* 06008C 8005F48C 240C000A */  li    $t4, 10
/* 060090 8005F490 A0EC01D6 */  sb    $t4, 0x1d6($a3)
/* 060094 8005F494 8FA50044 */  lw    $a1, 0x44($sp)
/* 060098 8005F498 8FA40040 */  lw    $a0, 0x40($sp)
/* 06009C 8005F49C AFA8002C */  sw    $t0, 0x2c($sp)
/* 0600A0 8005F4A0 AFA7004C */  sw    $a3, 0x4c($sp)
/* 0600A4 8005F4A4 0C0125E5 */  jal   func_80049794
/* 0600A8 8005F4A8 02003025 */   move  $a2, $s0
/* 0600AC 8005F4AC 8FA7004C */  lw    $a3, 0x4c($sp)
/* 0600B0 8005F4B0 8FA8002C */  lw    $t0, 0x2c($sp)
/* 0600B4 8005F4B4 80ED01D7 */  lb    $t5, 0x1d7($a3)
/* 0600B8 8005F4B8 2403FFFF */  li    $v1, -1
/* 0600BC 8005F4BC A0ED01D6 */  sb    $t5, 0x1d6($a3)
/* 0600C0 8005F4C0 8FAE0058 */  lw    $t6, 0x58($sp)
/* 0600C4 8005F4C4 00000000 */  nop   
/* 0600C8 8005F4C8 ADC80000 */  sw    $t0, ($t6)
/* 0600CC 8005F4CC AE000074 */  sw    $zero, 0x74($s0)
/* 0600D0 8005F4D0 87AF003A */  lh    $t7, 0x3a($sp)
/* 0600D4 8005F4D4 00000000 */  nop   
/* 0600D8 8005F4D8 A4EF016A */  sh    $t7, 0x16a($a3)
/* 0600DC 8005F4DC 87B8003E */  lh    $t8, 0x3e($sp)
/* 0600E0 8005F4E0 00000000 */  nop   
/* 0600E4 8005F4E4 A218003B */  sb    $t8, 0x3b($s0)
/* 0600E8 8005F4E8 87B9003C */  lh    $t9, 0x3c($sp)
/* 0600EC 8005F4EC 00000000 */  nop   
/* 0600F0 8005F4F0 A6190018 */  sh    $t9, 0x18($s0)
/* 0600F4 8005F4F4 80EA0187 */  lb    $t2, 0x187($a3)
/* 0600F8 8005F4F8 00000000 */  nop   
/* 0600FC 8005F4FC 11400029 */  beqz  $t2, .L8005F5A4
/* 060100 8005F500 00000000 */   nop   
/* 060104 8005F504 820B003B */  lb    $t3, 0x3b($s0)
/* 060108 8005F508 24010001 */  li    $at, 1
/* 06010C 8005F50C 11610025 */  beq   $t3, $at, .L8005F5A4
/* 060110 8005F510 24040001 */   li    $a0, 1
/* 060114 8005F514 0C0172C1 */  jal   func_8005CB04
/* 060118 8005F518 AFA7004C */   sw    $a3, 0x4c($sp)
/* 06011C 8005F51C 24040011 */  li    $a0, 17
/* 060120 8005F520 0C000741 */  jal   func_80001D04
/* 060124 8005F524 00002825 */   move  $a1, $zero
/* 060128 8005F528 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 06012C 8005F52C 44816000 */  mtc1  $at, $f12
/* 060130 8005F530 0C01A7CA */  jal   func_80069F28
/* 060134 8005F534 00000000 */   nop   
/* 060138 8005F538 3C01800E */  lui   $at, %hi(D_800E6B10 + 4) # $at, 0x800e
/* 06013C 8005F53C C60A001C */  lwc1  $f10, 0x1c($s0)
/* 060140 8005F540 C4216B10 */  lwc1  $f1, %lo(D_800E6B10)($at)
/* 060144 8005F544 C4206B14 */  lwc1  $f0, %lo(D_800E6B10 + 4)($at)
/* 060148 8005F548 46005121 */  cvt.d.s $f4, $f10
/* 06014C 8005F54C 46202182 */  mul.d $f6, $f4, $f0
/* 060150 8005F550 C60A0024 */  lwc1  $f10, 0x24($s0)
/* 060154 8005F554 8FA7004C */  lw    $a3, 0x4c($sp)
/* 060158 8005F558 46005121 */  cvt.d.s $f4, $f10
/* 06015C 8005F55C 44809000 */  mtc1  $zero, $f18
/* 060160 8005F560 46203220 */  cvt.s.d $f8, $f6
/* 060164 8005F564 240C0001 */  li    $t4, 1
/* 060168 8005F568 46202182 */  mul.d $f6, $f4, $f0
/* 06016C 8005F56C E608001C */  swc1  $f8, 0x1c($s0)
/* 060170 8005F570 A20C003B */  sb    $t4, 0x3b($s0)
/* 060174 8005F574 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 060178 8005F578 2403FFFF */  li    $v1, -1
/* 06017C 8005F57C 46203220 */  cvt.s.d $f8, $f6
/* 060180 8005F580 44803000 */  mtc1  $zero, $f6
/* 060184 8005F584 E6080024 */  swc1  $f8, 0x24($s0)
/* 060188 8005F588 E4F2000C */  swc1  $f18, 0xc($a3)
/* 06018C 8005F58C C60A0020 */  lwc1  $f10, 0x20($s0)
/* 060190 8005F590 44813800 */  mtc1  $at, $f7
/* 060194 8005F594 46005121 */  cvt.d.s $f4, $f10
/* 060198 8005F598 46262200 */  add.d $f8, $f4, $f6
/* 06019C 8005F59C 462042A0 */  cvt.s.d $f10, $f8
/* 0601A0 8005F5A0 E60A0020 */  swc1  $f10, 0x20($s0)
.L8005F5A4:
/* 0601A4 8005F5A4 8CED0148 */  lw    $t5, 0x148($a3)
/* 0601A8 8005F5A8 44809000 */  mtc1  $zero, $f18
/* 0601AC 8005F5AC 11A0001B */  beqz  $t5, .L8005F61C
/* 0601B0 8005F5B0 A0E00187 */   sb    $zero, 0x187($a3)
/* 0601B4 8005F5B4 C600001C */  lwc1  $f0, 0x1c($s0)
/* 0601B8 8005F5B8 C60E0024 */  lwc1  $f14, 0x24($s0)
/* 0601BC 8005F5BC 46000082 */  mul.s $f2, $f0, $f0
/* 0601C0 8005F5C0 AFA7004C */  sw    $a3, 0x4c($sp)
/* 0601C4 8005F5C4 460E7402 */  mul.s $f16, $f14, $f14
/* 0601C8 8005F5C8 00000000 */  nop   
/* 0601CC 8005F5CC 46021102 */  mul.s $f4, $f2, $f2
/* 0601D0 8005F5D0 00000000 */  nop   
/* 0601D4 8005F5D4 46108182 */  mul.s $f6, $f16, $f16
/* 0601D8 8005F5D8 0C0326B4 */  jal   sqrtf
/* 0601DC 8005F5DC 46062300 */   add.s $f12, $f4, $f6
/* 0601E0 8005F5E0 3C01BFE0 */  li    $at, 0xBFE00000 # -1.750000
/* 0601E4 8005F5E4 44814800 */  mtc1  $at, $f9
/* 0601E8 8005F5E8 44804000 */  mtc1  $zero, $f8
/* 0601EC 8005F5EC 46000087 */  neg.s $f2, $f0
/* 0601F0 8005F5F0 460012A1 */  cvt.d.s $f10, $f2
/* 0601F4 8005F5F4 8FA7004C */  lw    $a3, 0x4c($sp)
/* 0601F8 8005F5F8 462A403C */  c.lt.d $f8, $f10
/* 0601FC 8005F5FC 44809000 */  mtc1  $zero, $f18
/* 060200 8005F600 2403FFFF */  li    $v1, -1
/* 060204 8005F604 45000005 */  bc1f  .L8005F61C
/* 060208 8005F608 E4E2002C */   swc1  $f2, 0x2c($a3)
/* 06020C 8005F60C E4F2002C */  swc1  $f18, 0x2c($a3)
/* 060210 8005F610 E612001C */  swc1  $f18, 0x1c($s0)
/* 060214 8005F614 E6120020 */  swc1  $f18, 0x20($s0)
/* 060218 8005F618 E6120024 */  swc1  $f18, 0x24($s0)
.L8005F61C:
/* 06021C 8005F61C C7A40044 */  lwc1  $f4, 0x44($sp)
/* 060220 8005F620 C4E6000C */  lwc1  $f6, 0xc($a3)
/* 060224 8005F624 46002321 */  cvt.d.s $f12, $f4
/* 060228 8005F628 462C6280 */  add.d $f10, $f12, $f12
/* 06022C 8005F62C 46003221 */  cvt.d.s $f8, $f6
/* 060230 8005F630 462A4100 */  add.d $f4, $f8, $f10
/* 060234 8005F634 462021A0 */  cvt.s.d $f6, $f4
/* 060238 8005F638 E4E6000C */  swc1  $f6, 0xc($a3)
/* 06023C 8005F63C 8E0E0068 */  lw    $t6, 0x68($s0)
/* 060240 8005F640 8218003B */  lb    $t8, 0x3b($s0)
/* 060244 8005F644 8DC20000 */  lw    $v0, ($t6)
/* 060248 8005F648 0018C8C0 */  sll   $t9, $t8, 3
/* 06024C 8005F64C 8C440000 */  lw    $a0, ($v0)
/* 060250 8005F650 C4E0000C */  lwc1  $f0, 0xc($a3)
/* 060254 8005F654 8C8F0044 */  lw    $t7, 0x44($a0)
/* 060258 8005F658 00000000 */  nop   
/* 06025C 8005F65C 01F95021 */  addu  $t2, $t7, $t9
/* 060260 8005F660 8D4B0004 */  lw    $t3, 4($t2)
/* 060264 8005F664 00000000 */  nop   
/* 060268 8005F668 000B6100 */  sll   $t4, $t3, 4
/* 06026C 8005F66C 258DFFEF */  addiu $t5, $t4, -0x11
/* 060270 8005F670 448D4000 */  mtc1  $t5, $f8
/* 060274 8005F674 00000000 */  nop   
/* 060278 8005F678 468040A0 */  cvt.s.w $f2, $f8
/* 06027C 8005F67C 4600103E */  c.le.s $f2, $f0
/* 060280 8005F680 00000000 */  nop   
/* 060284 8005F684 4500000A */  bc1f  .L8005F6B0
/* 060288 8005F688 00000000 */   nop   
.L8005F68C:
/* 06028C 8005F68C 46020281 */  sub.s $f10, $f0, $f2
/* 060290 8005F690 E4EA000C */  swc1  $f10, 0xc($a3)
/* 060294 8005F694 A4430010 */  sh    $v1, 0x10($v0)
/* 060298 8005F698 C4E0000C */  lwc1  $f0, 0xc($a3)
/* 06029C 8005F69C 00000000 */  nop   
/* 0602A0 8005F6A0 4600103E */  c.le.s $f2, $f0
/* 0602A4 8005F6A4 00000000 */  nop   
/* 0602A8 8005F6A8 4501FFF8 */  bc1t  .L8005F68C
/* 0602AC 8005F6AC 00000000 */   nop   
.L8005F6B0:
/* 0602B0 8005F6B0 4612003E */  c.le.s $f0, $f18
/* 0602B4 8005F6B4 00000000 */  nop   
/* 0602B8 8005F6B8 4500000A */  bc1f  .L8005F6E4
/* 0602BC 8005F6BC 00000000 */   nop   
.L8005F6C0:
/* 0602C0 8005F6C0 46020100 */  add.s $f4, $f0, $f2
/* 0602C4 8005F6C4 E4E4000C */  swc1  $f4, 0xc($a3)
/* 0602C8 8005F6C8 A4430010 */  sh    $v1, 0x10($v0)
/* 0602CC 8005F6CC C4E0000C */  lwc1  $f0, 0xc($a3)
/* 0602D0 8005F6D0 00000000 */  nop   
/* 0602D4 8005F6D4 4612003E */  c.le.s $f0, $f18
/* 0602D8 8005F6D8 00000000 */  nop   
/* 0602DC 8005F6DC 4501FFF8 */  bc1t  .L8005F6C0
/* 0602E0 8005F6E0 00000000 */   nop   
.L8005F6E4:
/* 0602E4 8005F6E4 820E003B */  lb    $t6, 0x3b($s0)
/* 0602E8 8005F6E8 24010001 */  li    $at, 1
/* 0602EC 8005F6EC 15C10009 */  bne   $t6, $at, .L8005F714
/* 0602F0 8005F6F0 00000000 */   nop   
/* 0602F4 8005F6F4 84580010 */  lh    $t8, 0x10($v0)
/* 0602F8 8005F6F8 00000000 */  nop   
/* 0602FC 8005F6FC 14780005 */  bne   $v1, $t8, .L8005F714
/* 060300 8005F700 00000000 */   nop   
/* 060304 8005F704 A200003B */  sb    $zero, 0x3b($s0)
/* 060308 8005F708 E4F2000C */  swc1  $f18, 0xc($a3)
/* 06030C 8005F70C C4E0000C */  lwc1  $f0, 0xc($a3)
/* 060310 8005F710 00000000 */  nop   
.L8005F714:
/* 060314 8005F714 444FF800 */  cfc1  $t7, $31
/* 060318 8005F718 AE000074 */  sw    $zero, 0x74($s0)
/* 06031C 8005F71C 35E10003 */  ori   $at, $t7, 3
/* 060320 8005F720 38210002 */  xori  $at, $at, 2
/* 060324 8005F724 44C1F800 */  ctc1  $at, $31
/* 060328 8005F728 02002025 */  move  $a0, $s0
/* 06032C 8005F72C 460001A4 */  cvt.w.s $f6, $f0
/* 060330 8005F730 44193000 */  mfc1  $t9, $f6
/* 060334 8005F734 44CFF800 */  ctc1  $t7, $31
/* 060338 8005F738 A6190018 */  sh    $t9, 0x18($s0)
/* 06033C 8005F73C 8FA50040 */  lw    $a1, 0x40($sp)
/* 060340 8005F740 0C02BDC5 */  jal   func_800AF714
/* 060344 8005F744 AFA7004C */   sw    $a3, 0x4c($sp)
/* 060348 8005F748 8FA5004C */  lw    $a1, 0x4c($sp)
/* 06034C 8005F74C 02002025 */  move  $a0, $s0
/* 060350 8005F750 0C017412 */  jal   func_8005D048
/* 060354 8005F754 24060028 */   li    $a2, 40
/* 060358 8005F758 8FAA0058 */  lw    $t2, 0x58($sp)
/* 06035C 8005F75C 24010064 */  li    $at, 100
/* 060360 8005F760 8D4B0000 */  lw    $t3, ($t2)
/* 060364 8005F764 00000000 */  nop   
/* 060368 8005F768 11610018 */  beq   $t3, $at, .L8005F7CC
/* 06036C 8005F76C 00000000 */   nop   
/* 060370 8005F770 0C002FD1 */  jal   func_8000BF44
/* 060374 8005F774 2404FFFF */   li    $a0, -1
/* 060378 8005F778 10400014 */  beqz  $v0, .L8005F7CC
/* 06037C 8005F77C 00000000 */   nop   
/* 060380 8005F780 8C430064 */  lw    $v1, 0x64($v0)
/* 060384 8005F784 AC400078 */  sw    $zero, 0x78($v0)
/* 060388 8005F788 10600010 */  beqz  $v1, .L8005F7CC
/* 06038C 8005F78C 24180002 */   li    $t8, 2
/* 060390 8005F790 8FAD0040 */  lw    $t5, 0x40($sp)
/* 060394 8005F794 906C0072 */  lbu   $t4, 0x72($v1)
/* 060398 8005F798 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 06039C 8005F79C 44814000 */  mtc1  $at, $f8
/* 0603A0 8005F7A0 018D7021 */  addu  $t6, $t4, $t5
/* 0603A4 8005F7A4 A06E0072 */  sb    $t6, 0x72($v1)
/* 0603A8 8005F7A8 A0780070 */  sb    $t8, 0x70($v1)
/* 0603AC 8005F7AC 240F0001 */  li    $t7, 1
/* 0603B0 8005F7B0 E4680074 */  swc1  $f8, 0x74($v1)
/* 0603B4 8005F7B4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0603B8 8005F7B8 02002025 */  move  $a0, $s0
/* 0603BC 8005F7BC 2405FFFF */  li    $a1, -1
/* 0603C0 8005F7C0 24060002 */  li    $a2, 2
/* 0603C4 8005F7C4 0C002DD4 */  jal   func_8000B750
/* 0603C8 8005F7C8 24070001 */   li    $a3, 1
.L8005F7CC:
/* 0603CC 8005F7CC 0C006EB2 */  jal   get_object_struct
/* 0603D0 8005F7D0 00002025 */   move  $a0, $zero
/* 0603D4 8005F7D4 8C43004C */  lw    $v1, 0x4c($v0)
/* 0603D8 8005F7D8 8C470064 */  lw    $a3, 0x64($v0)
/* 0603DC 8005F7DC 8C790000 */  lw    $t9, ($v1)
/* 0603E0 8005F7E0 3C058012 */  lui   $a1, %hi(D_8011D610) # $a1, 0x8012
/* 0603E4 8005F7E4 1619000B */  bne   $s0, $t9, .L8005F814
/* 0603E8 8005F7E8 24A5D610 */   addiu $a1, %lo(D_8011D610) # addiu $a1, $a1, -0x29f0
/* 0603EC 8005F7EC 846A0014 */  lh    $t2, 0x14($v1)
/* 0603F0 8005F7F0 00000000 */  nop   
/* 0603F4 8005F7F4 314B0008 */  andi  $t3, $t2, 8
/* 0603F8 8005F7F8 11600006 */  beqz  $t3, .L8005F814
/* 0603FC 8005F7FC 00000000 */   nop   
/* 060400 8005F800 820C003B */  lb    $t4, 0x3b($s0)
/* 060404 8005F804 24010001 */  li    $at, 1
/* 060408 8005F808 15810002 */  bne   $t4, $at, .L8005F814
/* 06040C 8005F80C 240D0004 */   li    $t5, 4
/* 060410 8005F810 A0ED0187 */  sb    $t5, 0x187($a3)
.L8005F814:
/* 060414 8005F814 80EE01D8 */  lb    $t6, 0x1d8($a3)
/* 060418 8005F818 00000000 */  nop   
/* 06041C 8005F81C 11C00008 */  beqz  $t6, .L8005F840
/* 060420 8005F820 8FBF0024 */   lw    $ra, 0x24($sp)
/* 060424 8005F824 80B80000 */  lb    $t8, ($a1)
/* 060428 8005F828 240F0001 */  li    $t7, 1
/* 06042C 8005F82C 17000003 */  bnez  $t8, .L8005F83C
/* 060430 8005F830 00E02025 */   move  $a0, $a3
/* 060434 8005F834 0C0172DA */  jal   func_8005CB68
/* 060438 8005F838 A0AF0000 */   sb    $t7, ($a1)
.L8005F83C:
/* 06043C 8005F83C 8FBF0024 */  lw    $ra, 0x24($sp)
.L8005F840:
/* 060440 8005F840 8FB00020 */  lw    $s0, 0x20($sp)
/* 060444 8005F844 03E00008 */  jr    $ra
/* 060448 8005F848 27BD0040 */   addiu $sp, $sp, 0x40

/* 06044C 8005F84C 00000000 */  nop   
