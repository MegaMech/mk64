glabel func_800857C0
/* 0863C0 800857C0 3C048018 */  lui   $a0, %hi(D_80183EA0) # $a0, 0x8018
/* 0863C4 800857C4 8C843EA0 */  lw    $a0, %lo(D_80183EA0)($a0)
/* 0863C8 800857C8 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 0863CC 800857CC 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 0863D0 800857D0 000470C0 */  sll   $t6, $a0, 3
/* 0863D4 800857D4 01C47023 */  subu  $t6, $t6, $a0
/* 0863D8 800857D8 000E7140 */  sll   $t6, $t6, 5
/* 0863DC 800857DC 01CF1021 */  addu  $v0, $t6, $t7
/* 0863E0 800857E0 845800A6 */  lh    $t8, 0xa6($v0)
/* 0863E4 800857E4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0863E8 800857E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0863EC 800857EC 5300001F */  beql  $t8, $zero, .L8008586C
/* 0863F0 800857F0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0863F4 800857F4 AFA20018 */  sw    $v0, 0x18($sp)
/* 0863F8 800857F8 0C0215DA */  jal   func_80085768
/* 0863FC 800857FC AFA4001C */   sw    $a0, 0x1c($sp)
/* 086400 80085800 0C02154D */  jal   func_80085534
/* 086404 80085804 8FA4001C */   lw    $a0, 0x1c($sp)
/* 086408 80085808 0C022FC6 */  jal   func_8008BF18
/* 08640C 8008580C 8FA4001C */   lw    $a0, 0x1c($sp)
/* 086410 80085810 8FA20018 */  lw    $v0, 0x18($sp)
/* 086414 80085814 3C03802C */  lui   $v1, %hi(D_802BA05C) # $v1, 0x802c
/* 086418 80085818 2463A05C */  addiu $v1, %lo(D_802BA05C) # addiu $v1, $v1, -0x5fa4
/* 08641C 8008581C 845900A6 */  lh    $t9, 0xa6($v0)
/* 086420 80085820 2B210002 */  slti  $at, $t9, 2
/* 086424 80085824 54200011 */  bnel  $at, $zero, .L8008586C
/* 086428 80085828 8FBF0014 */   lw    $ra, 0x14($sp)
/* 08642C 8008582C C4440004 */  lwc1  $f4, 4($v0)
/* 086430 80085830 8C680000 */  lw    $t0, ($v1)
/* 086434 80085834 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 086438 80085838 44815800 */  mtc1  $at, $f11
/* 08643C 8008583C E5040018 */  swc1  $f4, 0x18($t0)
/* 086440 80085840 C4460008 */  lwc1  $f6, 8($v0)
/* 086444 80085844 44805000 */  mtc1  $zero, $f10
/* 086448 80085848 8C690000 */  lw    $t1, ($v1)
/* 08644C 8008584C 46003221 */  cvt.d.s $f8, $f6
/* 086450 80085850 462A4401 */  sub.d $f16, $f8, $f10
/* 086454 80085854 462084A0 */  cvt.s.d $f18, $f16
/* 086458 80085858 E532001C */  swc1  $f18, 0x1c($t1)
/* 08645C 8008585C 8C6A0000 */  lw    $t2, ($v1)
/* 086460 80085860 C444000C */  lwc1  $f4, 0xc($v0)
/* 086464 80085864 E5440020 */  swc1  $f4, 0x20($t2)
/* 086468 80085868 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008586C:
/* 08646C 8008586C 27BD0020 */  addiu $sp, $sp, 0x20
/* 086470 80085870 03E00008 */  jr    $ra
/* 086474 80085874 00000000 */   nop   