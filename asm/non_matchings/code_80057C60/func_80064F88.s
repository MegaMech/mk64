glabel func_80064F88
/* 065B88 80064F88 00077600 */  sll   $t6, $a3, 0x18
/* 065B8C 80064F8C 000E7E03 */  sra   $t7, $t6, 0x18
/* 065B90 80064F90 000FC0C0 */  sll   $t8, $t7, 3
/* 065B94 80064F94 030FC021 */  addu  $t8, $t8, $t7
/* 065B98 80064F98 0018C0C0 */  sll   $t8, $t8, 3
/* 065B9C 80064F9C AFA50004 */  sw    $a1, 4($sp)
/* 065BA0 80064FA0 AFA60008 */  sw    $a2, 8($sp)
/* 065BA4 80064FA4 AFA7000C */  sw    $a3, 0xc($sp)
/* 065BA8 80064FA8 00981021 */  addu  $v0, $a0, $t8
/* 065BAC 80064FAC 84590816 */  lh    $t9, 0x816($v0)
/* 065BB0 80064FB0 C4440804 */  lwc1  $f4, 0x804($v0)
/* 065BB4 80064FB4 3C01800F */  lui   $at, %hi(D_800EE770)
/* 065BB8 80064FB8 27280001 */  addiu $t0, $t9, 1
/* 065BBC 80064FBC A4480816 */  sh    $t0, 0x816($v0)
/* 065BC0 80064FC0 D428E770 */  ldc1  $f8, %lo(D_800EE770)($at)
/* 065BC4 80064FC4 460021A1 */  cvt.d.s $f6, $f4
/* 065BC8 80064FC8 3C01800F */  lui   $at, %hi(D_800EE778)
/* 065BCC 80064FCC 46283280 */  add.d $f10, $f6, $f8
/* 065BD0 80064FD0 46205420 */  cvt.s.d $f16, $f10
/* 065BD4 80064FD4 E4500804 */  swc1  $f16, 0x804($v0)
/* 065BD8 80064FD8 C4520804 */  lwc1  $f18, 0x804($v0)
/* 065BDC 80064FDC D426E778 */  ldc1  $f6, %lo(D_800EE778)($at)
/* 065BE0 80064FE0 3C01800F */  lui   $at, %hi(D_800EE780) # $at, 0x800f
/* 065BE4 80064FE4 46009121 */  cvt.d.s $f4, $f18
/* 065BE8 80064FE8 4624303E */  c.le.d $f6, $f4
/* 065BEC 80064FEC 00000000 */  nop   
/* 065BF0 80064FF0 45020004 */  bc1fl .L80065004
/* 065BF4 80064FF4 84490816 */   lh    $t1, 0x816($v0)
/* 065BF8 80064FF8 C428E780 */  lwc1  $f8, %lo(D_800EE780)($at)
/* 065BFC 80064FFC E4480804 */  swc1  $f8, 0x804($v0)
/* 065C00 80065000 84490816 */  lh    $t1, 0x816($v0)
.L80065004:
/* 065C04 80065004 2921000C */  slti  $at, $t1, 0xc
/* 065C08 80065008 14200007 */  bnez  $at, .L80065028
/* 065C0C 8006500C 00000000 */   nop   
/* 065C10 80065010 948A00B6 */  lhu   $t2, 0xb6($a0)
/* 065C14 80065014 314BF7FF */  andi  $t3, $t2, 0xf7ff
/* 065C18 80065018 A48B00B6 */  sh    $t3, 0xb6($a0)
/* 065C1C 8006501C A4400814 */  sh    $zero, 0x814($v0)
/* 065C20 80065020 A4400816 */  sh    $zero, 0x816($v0)
/* 065C24 80065024 A440080A */  sh    $zero, 0x80a($v0)
.L80065028:
/* 065C28 80065028 03E00008 */  jr    $ra
/* 065C2C 8006502C 00000000 */   nop   