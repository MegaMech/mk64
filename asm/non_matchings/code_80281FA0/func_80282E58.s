glabel func_80282E58
/* 126498 80282E58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 12649C 80282E5C AFA40020 */  sw    $a0, 0x20($sp)
/* 1264A0 80282E60 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1264A4 80282E64 3C048028 */  lui   $a0, %hi(D_80287818) # $a0, 0x8028
/* 1264A8 80282E68 0C0A0B10 */  jal   func_80282C40
/* 1264AC 80282E6C 24847818 */   addiu $a0, %lo(D_80287818) # addiu $a0, $a0, 0x7818
/* 1264B0 80282E70 8FA20020 */  lw    $v0, 0x20($sp)
/* 1264B4 80282E74 3C0E8028 */  lui   $t6, %hi(D_80287B18) # $t6, 0x8028
/* 1264B8 80282E78 25CE7B18 */  addiu $t6, %lo(D_80287B18) # addiu $t6, $t6, 0x7b18
/* 1264BC 80282E7C 3C068028 */  lui   $a2, %hi(D_80287818) # $a2, 0x8028
/* 1264C0 80282E80 3C078028 */  lui   $a3, %hi(D_80287B1C) # $a3, 0x8028
/* 1264C4 80282E84 24E77B1C */  addiu $a3, %lo(D_80287B1C) # addiu $a3, $a3, 0x7b1c
/* 1264C8 80282E88 24C67818 */  addiu $a2, %lo(D_80287818) # addiu $a2, $a2, 0x7818
/* 1264CC 80282E8C AFAE0010 */  sw    $t6, 0x10($sp)
/* 1264D0 80282E90 2444000C */  addiu $a0, $v0, 0xc
/* 1264D4 80282E94 0C0A0A32 */  jal   func_802828C8
/* 1264D8 80282E98 24450018 */   addiu $a1, $v0, 0x18
/* 1264DC 80282E9C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1264E0 80282EA0 27BD0020 */  addiu $sp, $sp, 0x20
/* 1264E4 80282EA4 03E00008 */  jr    $ra
/* 1264E8 80282EA8 00000000 */   nop   