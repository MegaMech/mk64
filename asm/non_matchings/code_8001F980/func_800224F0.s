glabel func_800224F0
/* 0230F0 800224F0 AFA50004 */  sw    $a1, 4($sp)
/* 0230F4 800224F4 AFA60008 */  sw    $a2, 8($sp)
/* 0230F8 800224F8 84880000 */  lh    $t0, ($a0)
/* 0230FC 800224FC 00057400 */  sll   $t6, $a1, 0x10
/* 023100 80022500 000E2C03 */  sra   $a1, $t6, 0x10
/* 023104 80022504 0006C400 */  sll   $t8, $a2, 0x10
/* 023108 80022508 00A81023 */  subu  $v0, $a1, $t0
/* 02310C 8002250C 0018CC03 */  sra   $t9, $t8, 0x10
/* 023110 80022510 00024C00 */  sll   $t1, $v0, 0x10
/* 023114 80022514 03203025 */  move  $a2, $t9
/* 023118 80022518 07210004 */  bgez  $t9, .L8002252C
/* 02311C 8002251C 00091403 */   sra   $v0, $t1, 0x10
/* 023120 80022520 00195823 */  negu  $t3, $t9
/* 023124 80022524 000B6400 */  sll   $t4, $t3, 0x10
/* 023128 80022528 000C3403 */  sra   $a2, $t4, 0x10
.L8002252C:
/* 02312C 8002252C 5840000B */  blezl $v0, .L8002255C
/* 023130 80022530 00461021 */   addu  $v0, $v0, $a2
/* 023134 80022534 00461023 */  subu  $v0, $v0, $a2
/* 023138 80022538 00027400 */  sll   $t6, $v0, 0x10
/* 02313C 8002253C 000E7C03 */  sra   $t7, $t6, 0x10
/* 023140 80022540 05E00003 */  bltz  $t7, .L80022550
/* 023144 80022544 00AFC023 */   subu  $t8, $a1, $t7
/* 023148 80022548 1000000B */  b     .L80022578
/* 02314C 8002254C A4980000 */   sh    $t8, ($a0)
.L80022550:
/* 023150 80022550 10000009 */  b     .L80022578
/* 023154 80022554 A4850000 */   sh    $a1, ($a0)
/* 023158 80022558 00461021 */  addu  $v0, $v0, $a2
.L8002255C:
/* 02315C 8002255C 0002CC00 */  sll   $t9, $v0, 0x10
/* 023160 80022560 00194403 */  sra   $t0, $t9, 0x10
/* 023164 80022564 1D000003 */  bgtz  $t0, .L80022574
/* 023168 80022568 00A84823 */   subu  $t1, $a1, $t0
/* 02316C 8002256C 10000002 */  b     .L80022578
/* 023170 80022570 A4890000 */   sh    $t1, ($a0)
.L80022574:
/* 023174 80022574 A4850000 */  sh    $a1, ($a0)
.L80022578:
/* 023178 80022578 848A0000 */  lh    $t2, ($a0)
/* 02317C 8002257C 24020001 */  li    $v0, 1
/* 023180 80022580 14AA0003 */  bne   $a1, $t2, .L80022590
/* 023184 80022584 00000000 */   nop   
/* 023188 80022588 03E00008 */  jr    $ra
/* 02318C 8002258C 00001025 */   move  $v0, $zero

.L80022590:
/* 023190 80022590 03E00008 */  jr    $ra
/* 023194 80022594 00000000 */   nop   