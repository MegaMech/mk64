glabel func_80283A54
/* 127094 80283A54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 127098 80283A58 AFA40018 */  sw    $a0, 0x18($sp)
/* 12709C 80283A5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1270A0 80283A60 3C044900 */  lui   $a0, (0x49009014 >> 16) # lui $a0, 0x4900
/* 1270A4 80283A64 0C032384 */  jal   play_sound2
/* 1270A8 80283A68 34849014 */   ori   $a0, (0x49009014 & 0xFFFF) # ori $a0, $a0, 0x9014
/* 1270AC 80283A6C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1270B0 80283A70 27BD0018 */  addiu $sp, $sp, 0x18
/* 1270B4 80283A74 03E00008 */  jr    $ra
/* 1270B8 80283A78 00000000 */   nop   