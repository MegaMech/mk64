.section .late_rodata

glabel D_800F0CC0
.double 1.414213562373095

glabel D_800F0CC8
.double 0.6931471805599453

.section .text

glabel func_8009186C
/* 09246C 8009186C 44801800 */  mtc1  $zero, $f3
/* 092470 80091870 44801000 */  mtc1  $zero, $f2
/* 092474 80091874 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 092478 80091878 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09247C 8009187C 4622603E */  c.le.d $f12, $f2
/* 092480 80091880 46206386 */  mov.d $f14, $f12
/* 092484 80091884 27A60038 */  addiu $a2, $sp, 0x38
/* 092488 80091888 3C01800F */  lui   $at, %hi(D_800F0CC0)
/* 09248C 8009188C 45000003 */  bc1f  .L8009189C
/* 092490 80091890 00000000 */   nop   
/* 092494 80091894 1000002D */  b     .L8009194C
/* 092498 80091898 46201006 */   mov.d $f0, $f2
.L8009189C:
/* 09249C 8009189C D4240CC0 */  ldc1  $f4, %lo(D_800F0CC0)($at)
/* 0924A0 800918A0 F7AE0040 */  sdc1  $f14, 0x40($sp)
/* 0924A4 800918A4 0C0246B0 */  jal   func_80091AC0
/* 0924A8 800918A8 46247303 */   div.d $f12, $f14, $f4
/* 0924AC 800918AC 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 0924B0 800918B0 44816800 */  mtc1  $at, $f13
/* 0924B4 800918B4 44806000 */  mtc1  $zero, $f12
/* 0924B8 800918B8 0C02469B */  jal   func_80091A6C
/* 0924BC 800918BC 8FA60038 */   lw    $a2, 0x38($sp)
/* 0924C0 800918C0 D7AE0040 */  ldc1  $f14, 0x40($sp)
/* 0924C4 800918C4 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 0924C8 800918C8 44818800 */  mtc1  $at, $f17
/* 0924CC 800918CC 46207383 */  div.d $f14, $f14, $f0
/* 0924D0 800918D0 44808000 */  mtc1  $zero, $f16
/* 0924D4 800918D4 8FAE0038 */  lw    $t6, 0x38($sp)
/* 0924D8 800918D8 24020001 */  li    $v0, 1
/* 0924DC 800918DC 3C01800F */  lui   $at, %hi(D_800F0CC8)
/* 0924E0 800918E0 46307181 */  sub.d $f6, $f14, $f16
/* 0924E4 800918E4 46307200 */  add.d $f8, $f14, $f16
/* 0924E8 800918E8 46283383 */  div.d $f14, $f6, $f8
/* 0924EC 800918EC 448E3000 */  mtc1  $t6, $f6
/* 0924F0 800918F0 00000000 */  nop   
/* 0924F4 800918F4 46803221 */  cvt.d.w $f8, $f6
/* 0924F8 800918F8 462E7302 */  mul.d $f12, $f14, $f14
/* 0924FC 800918FC 46207086 */  mov.d $f2, $f14
/* 092500 80091900 24420002 */  addiu $v0, $v0, 2
.L80091904:
/* 092504 80091904 462C7382 */  mul.d $f14, $f14, $f12
/* 092508 80091908 44825000 */  mtc1  $v0, $f10
/* 09250C 8009190C 46201006 */  mov.d $f0, $f2
/* 092510 80091910 468054A1 */  cvt.d.w $f18, $f10
/* 092514 80091914 46327103 */  div.d $f4, $f14, $f18
/* 092518 80091918 46241080 */  add.d $f2, $f2, $f4
/* 09251C 8009191C 46220032 */  c.eq.d $f0, $f2
/* 092520 80091920 00000000 */  nop   
/* 092524 80091924 4502FFF7 */  bc1fl .L80091904
/* 092528 80091928 24420002 */   addiu $v0, $v0, 2
/* 09252C 8009192C D42A0CC8 */  ldc1  $f10, %lo(D_800F0CC8)($at)
/* 092530 80091930 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 092534 80091934 44812800 */  mtc1  $at, $f5
/* 092538 80091938 462A4482 */  mul.d $f18, $f8, $f10
/* 09253C 8009193C 44802000 */  mtc1  $zero, $f4
/* 092540 80091940 00000000 */  nop   
/* 092544 80091944 46222182 */  mul.d $f6, $f4, $f2
/* 092548 80091948 46269000 */  add.d $f0, $f18, $f6
.L8009194C:
/* 09254C 8009194C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 092550 80091950 27BD0040 */  addiu $sp, $sp, 0x40
/* 092554 80091954 03E00008 */  jr    $ra
/* 092558 80091958 00000000 */   nop   