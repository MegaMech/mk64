glabel func_800230E4
/* 023CE4 800230E4 3C18800E */  lui   $t8, %hi(gCurrentCourseId) # $t8, 0x800e
/* 023CE8 800230E8 8718C5A0 */  lh    $t8, %lo(gCurrentCourseId)($t8)
/* 023CEC 800230EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 023CF0 800230F0 00057600 */  sll   $t6, $a1, 0x18
/* 023CF4 800230F4 000E7E03 */  sra   $t7, $t6, 0x18
/* 023CF8 800230F8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 023CFC 800230FC 24010008 */  li    $at, 8
/* 023D00 80023100 01E02825 */  move  $a1, $t7
/* 023D04 80023104 AFBF0014 */  sw    $ra, 0x14($sp)
/* 023D08 80023108 1701002E */  bne   $t8, $at, .L800231C4
/* 023D0C 8002310C AFA40018 */   sw    $a0, 0x18($sp)
/* 023D10 80023110 000FC840 */  sll   $t9, $t7, 1
/* 023D14 80023114 3C028016 */  lui   $v0, %hi(D_80164438) # 0x8016
/* 023D18 80023118 00591021 */  addu  $v0, $v0, $t9
/* 023D1C 8002311C 94424438 */  lhu   $v0, %lo(D_80164438)($v0) # 0x4438
/* 023D20 80023120 2841014F */  slti  $at, $v0, 0x14f
/* 023D24 80023124 14200002 */  bnez  $at, .L80023130
/* 023D28 80023128 28410158 */   slti  $at, $v0, 0x158
/* 023D2C 8002312C 14200010 */  bnez  $at, .L80023170
.L80023130:
/* 023D30 80023130 2841015E */   slti  $at, $v0, 0x15e
/* 023D34 80023134 14200002 */  bnez  $at, .L80023140
/* 023D38 80023138 28410164 */   slti  $at, $v0, 0x164
/* 023D3C 8002313C 1420000C */  bnez  $at, .L80023170
.L80023140:
/* 023D40 80023140 28410169 */   slti  $at, $v0, 0x169
/* 023D44 80023144 14200002 */  bnez  $at, .L80023150
/* 023D48 80023148 28410170 */   slti  $at, $v0, 0x170
/* 023D4C 8002314C 14200008 */  bnez  $at, .L80023170
.L80023150:
/* 023D50 80023150 28410174 */   slti  $at, $v0, 0x174
/* 023D54 80023154 14200002 */  bnez  $at, .L80023160
/* 023D58 80023158 2841017A */   slti  $at, $v0, 0x17a
/* 023D5C 8002315C 14200004 */  bnez  $at, .L80023170
.L80023160:
/* 023D60 80023160 2841017E */   slti  $at, $v0, 0x17e
/* 023D64 80023164 14200015 */  bnez  $at, .L800231BC
/* 023D68 80023168 28410184 */   slti  $at, $v0, 0x184
/* 023D6C 8002316C 10200013 */  beqz  $at, .L800231BC
.L80023170:
/* 023D70 80023170 3C073E99 */   lui   $a3, (0x3E99999A >> 16) # lui $a3, 0x3e99
/* 023D74 80023174 34E7999A */  ori   $a3, (0x3E99999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 023D78 80023178 8FA40018 */  lw    $a0, 0x18($sp)
/* 023D7C 8002317C 3C06001C */  lui   $a2, 0x1c
/* 023D80 80023180 0C008BC5 */  jal   func_80022F14
/* 023D84 80023184 A3A5001F */   sb    $a1, 0x1f($sp)
/* 023D88 80023188 3C073E99 */  lui   $a3, (0x3E99999A >> 16) # lui $a3, 0x3e99
/* 023D8C 8002318C 34E7999A */  ori   $a3, (0x3E99999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 023D90 80023190 8FA40018 */  lw    $a0, 0x18($sp)
/* 023D94 80023194 83A5001F */  lb    $a1, 0x1f($sp)
/* 023D98 80023198 0C008C0E */  jal   func_80023038
/* 023D9C 8002319C 240600E0 */   li    $a2, 224
/* 023DA0 800231A0 83A8001F */  lb    $t0, 0x1f($sp)
/* 023DA4 800231A4 3C018016 */  lui   $at, %hi(D_80164B80) # 0x8016
/* 023DA8 800231A8 24020001 */  li    $v0, 1
/* 023DAC 800231AC 00084880 */  sll   $t1, $t0, 2
/* 023DB0 800231B0 00290821 */  addu  $at, $at, $t1
/* 023DB4 800231B4 10000004 */  b     .L800231C8
/* 023DB8 800231B8 AC204B80 */   sw    $zero, %lo(D_80164B80)($at) # 0x4b80
.L800231BC:
/* 023DBC 800231BC 10000002 */  b     .L800231C8
/* 023DC0 800231C0 00001025 */   move  $v0, $zero
.L800231C4:
/* 023DC4 800231C4 00001025 */  move  $v0, $zero
.L800231C8:
/* 023DC8 800231C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 023DCC 800231CC 27BD0018 */  addiu $sp, $sp, 0x18
/* 023DD0 800231D0 03E00008 */  jr    $ra
/* 023DD4 800231D4 00000000 */   nop   