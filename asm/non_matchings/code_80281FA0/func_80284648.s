glabel func_80284648
/* 127C88 80284648 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 127C8C 8028464C AFA40018 */  sw    $a0, 0x18($sp)
/* 127C90 80284650 AFBF0014 */  sw    $ra, 0x14($sp)
/* 127C94 80284654 3C048028 */  lui   $a0, %hi(D_802845EC) # $a0, 0x8028
/* 127C98 80284658 248445EC */  addiu $a0, %lo(D_802845EC) # addiu $a0, $a0, 0x45ec
/* 127C9C 8028465C 8FA50018 */  lw    $a1, 0x18($sp)
/* 127CA0 80284660 00003025 */  move  $a2, $zero
/* 127CA4 80284664 0C0A0CB1 */  jal   func_802832C4
/* 127CA8 80284668 00003825 */   move  $a3, $zero
/* 127CAC 8028466C 3C048028 */  lui   $a0, %hi(D_8028461C) # $a0, 0x8028
/* 127CB0 80284670 2484461C */  addiu $a0, %lo(D_8028461C) # addiu $a0, $a0, 0x461c
/* 127CB4 80284674 8FA50018 */  lw    $a1, 0x18($sp)
/* 127CB8 80284678 24060110 */  li    $a2, 272
/* 127CBC 8028467C 0C0A0CB1 */  jal   func_802832C4
/* 127CC0 80284680 24070110 */   li    $a3, 272
/* 127CC4 80284684 3C048028 */  lui   $a0, %hi(D_80283BA4) # $a0, 0x8028
/* 127CC8 80284688 24843BA4 */  addiu $a0, %lo(D_80283BA4) # addiu $a0, $a0, 0x3ba4
/* 127CCC 8028468C 8FA50018 */  lw    $a1, 0x18($sp)
/* 127CD0 80284690 24060115 */  li    $a2, 277
/* 127CD4 80284694 0C0A0CB1 */  jal   func_802832C4
/* 127CD8 80284698 24070115 */   li    $a3, 277
/* 127CDC 8028469C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 127CE0 802846A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 127CE4 802846A4 03E00008 */  jr    $ra
/* 127CE8 802846A8 00000000 */   nop   