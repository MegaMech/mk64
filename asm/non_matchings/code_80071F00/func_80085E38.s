glabel func_80085E38
/* 086A38 80085E38 000470C0 */  sll   $t6, $a0, 3
/* 086A3C 80085E3C 01C47023 */  subu  $t6, $t6, $a0
/* 086A40 80085E40 000E7140 */  sll   $t6, $t6, 5
/* 086A44 80085E44 3C0F8016 */  lui   $t7, %hi(D_80165CBE) # 0x8016
/* 086A48 80085E48 01EE7821 */  addu  $t7, $t7, $t6
/* 086A4C 80085E4C 95EF5CBE */  lhu   $t7, %lo(D_80165CBE)($t7) # 0x5cbe($t7)
/* 086A50 80085E50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 086A54 80085E54 AFBF001C */  sw    $ra, 0x1c($sp)
/* 086A58 80085E58 2DE10006 */  sltiu $at, $t7, 6
/* 086A5C 80085E5C 10200022 */  beqz  $at, .L80085EE8
/* 086A60 80085E60 000F7880 */   sll   $t7, $t7, 2
/* 086A64 80085E64 3C01800F */  lui   $at, %hi(jpt_800EF420)
/* 086A68 80085E68 002F0821 */  addu  $at, $at, $t7
/* 086A6C 80085E6C 8C2FF420 */  lw    $t7, %lo(jpt_800EF420)($at)
/* 086A70 80085E70 01E00008 */  jr    $t7
/* 086A74 80085E74 00000000 */   nop   
glabel L80085E78
/* 086A78 80085E78 0C02176E */  jal   func_80085DB8
/* 086A7C 80085E7C 00000000 */   nop   
/* 086A80 80085E80 1000001A */  b     .L80085EEC
/* 086A84 80085E84 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80085E88
/* 086A88 80085E88 2418000C */  li    $t8, 12
/* 086A8C 80085E8C 24190001 */  li    $t9, 1
/* 086A90 80085E90 AFB90014 */  sw    $t9, 0x14($sp)
/* 086A94 80085E94 AFB80010 */  sw    $t8, 0x10($sp)
/* 086A98 80085E98 00002825 */  move  $a1, $zero
/* 086A9C 80085E9C 24060004 */  li    $a2, 4
/* 086AA0 80085EA0 0C01CB95 */  jal   func_80072E54
/* 086AA4 80085EA4 24070001 */   li    $a3, 1
/* 086AA8 80085EA8 10000010 */  b     .L80085EEC
/* 086AAC 80085EAC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80085EB0
/* 086AB0 80085EB0 24080001 */  li    $t0, 1
/* 086AB4 80085EB4 AFA80010 */  sw    $t0, 0x10($sp)
/* 086AB8 80085EB8 24050003 */  li    $a1, 3
/* 086ABC 80085EBC 24060004 */  li    $a2, 4
/* 086AC0 80085EC0 0C01CB4F */  jal   func_80072D3C
/* 086AC4 80085EC4 2407000C */   li    $a3, 12
/* 086AC8 80085EC8 10000008 */  b     .L80085EEC
/* 086ACC 80085ECC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80085ED0
/* 086AD0 80085ED0 0C01CAD2 */  jal   func_80072B48
/* 086AD4 80085ED4 2405000C */   li    $a1, 12
/* 086AD8 80085ED8 10000004 */  b     .L80085EEC
/* 086ADC 80085EDC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80085EE0
/* 086AE0 80085EE0 0C01C9B3 */  jal   func_800726CC
/* 086AE4 80085EE4 24050002 */   li    $a1, 2
.L80085EE8:
glabel L80085EE8
/* 086AE8 80085EE8 8FBF001C */  lw    $ra, 0x1c($sp)
.L80085EEC:
/* 086AEC 80085EEC 27BD0020 */  addiu $sp, $sp, 0x20
/* 086AF0 80085EF0 03E00008 */  jr    $ra
/* 086AF4 80085EF4 00000000 */   nop   