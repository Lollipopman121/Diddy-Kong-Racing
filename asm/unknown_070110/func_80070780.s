glabel func_80070780
/* 071380 80070780 44840000 */  mtc1  $a0, $f0
/* 071384 80070784 3C014780 */  li    $at, 0x47800000 # 65536.000000
/* 071388 80070788 44811000 */  mtc1  $at, $f2
/* 07138C 8007078C 46800020 */  cvt.s.w $f0, $f0
/* 071390 80070790 46020003 */  div.s $f0, $f0, $f2
/* 071394 80070794 46000004 */  sqrt.s $f0, $f0
/* 071398 80070798 46020002 */  mul.s $f0, $f0, $f2
/* 07139C 8007079C 46000024 */  cvt.w.s $f0, $f0
/* 0713A0 800707A0 44020000 */  mfc1  $v0, $f0
/* 0713A4 800707A4 03E00008 */  jr    $ra
/* 0713A8 800707A8 00000000 */   nop   
