glabel print_text0
/* 093D34 80093134 27BDFF90 */  addiu $sp, $sp, -0x70
/* 093D38 80093138 AFB40058 */  sw    $s4, 0x58($sp)
/* 093D3C 8009313C 3C148015 */  lui   $s4, %hi(gDisplayListHead) # $s4, 0x8015
/* 093D40 80093140 26940298 */  addiu $s4, %lo(gDisplayListHead) # addiu $s4, $s4, 0x298
/* 093D44 80093144 8E820000 */  lw    $v0, ($s4)
/* 093D48 80093148 AFBF006C */  sw    $ra, 0x6c($sp)
/* 093D4C 8009314C AFBE0068 */  sw    $fp, 0x68($sp)
/* 093D50 80093150 244E0008 */  addiu $t6, $v0, 8
/* 093D54 80093154 AFB70064 */  sw    $s7, 0x64($sp)
/* 093D58 80093158 AFB60060 */  sw    $s6, 0x60($sp)
/* 093D5C 8009315C AFB5005C */  sw    $s5, 0x5c($sp)
/* 093D60 80093160 AFB30054 */  sw    $s3, 0x54($sp)
/* 093D64 80093164 AFB20050 */  sw    $s2, 0x50($sp)
/* 093D68 80093168 AFB1004C */  sw    $s1, 0x4c($sp)
/* 093D6C 8009316C AFB00048 */  sw    $s0, 0x48($sp)
/* 093D70 80093170 F7BA0040 */  sdc1  $f26, 0x40($sp)
/* 093D74 80093174 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 093D78 80093178 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 093D7C 8009317C F7B40028 */  sdc1  $f20, 0x28($sp)
/* 093D80 80093180 AE8E0000 */  sw    $t6, ($s4)
/* 093D84 80093184 3C180200 */  lui   $t8, %hi(D_020077A8) # $t8, 0x200
/* 093D88 80093188 271877A8 */  addiu $t8, %lo(D_020077A8) # addiu $t8, $t8, 0x77a8
/* 093D8C 8009318C 3C0F0600 */  lui   $t7, 0x600
/* 093D90 80093190 AC4F0000 */  sw    $t7, ($v0)
/* 093D94 80093194 AC580004 */  sw    $t8, 4($v0)
/* 093D98 80093198 80D90000 */  lb    $t9, ($a2)
/* 093D9C 8009319C 00C08825 */  move  $s1, $a2
/* 093DA0 800931A0 00E0A825 */  move  $s5, $a3
/* 093DA4 800931A4 0080B025 */  move  $s6, $a0
/* 093DA8 800931A8 00A0B825 */  move  $s7, $a1
/* 093DAC 800931AC 13200045 */  beqz  $t9, .L800932C4
/* 093DB0 800931B0 00009025 */   move  $s2, $zero
/* 093DB4 800931B4 C7BA0084 */  lwc1  $f26, 0x84($sp)
/* 093DB8 800931B8 C7B80080 */  lwc1  $f24, 0x80($sp)
/* 093DBC 800931BC 8FBE0088 */  lw    $fp, 0x88($sp)
.L800931C0:
/* 093DC0 800931C0 0C024B24 */  jal   get_ascii_char_width_index
/* 093DC4 800931C4 02202025 */   move  $a0, $s1
/* 093DC8 800931C8 04400024 */  bltz  $v0, .L8009325C
/* 093DCC 800931CC 00409825 */   move  $s3, $v0
/* 093DD0 800931D0 3C09800E */  lui   $t1, %hi(D_800E7E84) # $t1, 0x800e
/* 093DD4 800931D4 44962000 */  mtc1  $s6, $f4
/* 093DD8 800931D8 44973000 */  mtc1  $s7, $f6
/* 093DDC 800931DC 25297E84 */  addiu $t1, %lo(D_800E7E84) # addiu $t1, $t1, 0x7e84
/* 093DE0 800931E0 00134080 */  sll   $t0, $s3, 2
/* 093DE4 800931E4 01098021 */  addu  $s0, $t0, $t1
/* 093DE8 800931E8 8E040000 */  lw    $a0, ($s0)
/* 093DEC 800931EC 46802520 */  cvt.s.w $f20, $f4
/* 093DF0 800931F0 0C026449 */  jal   segmented_to_virtual
/* 093DF4 800931F4 468035A0 */   cvt.s.w $f22, $f6
/* 093DF8 800931F8 0C026461 */  jal   func_80099184
/* 093DFC 800931FC 00402025 */   move  $a0, $v0
/* 093E00 80093200 0C026449 */  jal   segmented_to_virtual
/* 093E04 80093204 8E040000 */   lw    $a0, ($s0)
/* 093E08 80093208 44924000 */  mtc1  $s2, $f8
/* 093E0C 8009320C 4407B000 */  mfc1  $a3, $f22
/* 093E10 80093210 8E840000 */  lw    $a0, ($s4)
/* 093E14 80093214 468042A0 */  cvt.s.w $f10, $f8
/* 093E18 80093218 00402825 */  move  $a1, $v0
/* 093E1C 8009321C AFBE0010 */  sw    $fp, 0x10($sp)
/* 093E20 80093220 E7B80014 */  swc1  $f24, 0x14($sp)
/* 093E24 80093224 E7BA0018 */  swc1  $f26, 0x18($sp)
/* 093E28 80093228 46185402 */  mul.s $f16, $f10, $f24
/* 093E2C 8009322C 4610A480 */  add.s $f18, $f20, $f16
/* 093E30 80093230 44069000 */  mfc1  $a2, $f18
/* 093E34 80093234 0C026FBC */  jal   func_8009BEF0
/* 093E38 80093238 00000000 */   nop   
/* 093E3C 8009323C 00135040 */  sll   $t2, $s3, 1
/* 093E40 80093240 3C0B800F */  lui   $t3, %hi(gCharacterWidthMap) # 0x800f
/* 093E44 80093244 AE820000 */  sw    $v0, ($s4)
/* 093E48 80093248 016A5821 */  addu  $t3, $t3, $t2
/* 093E4C 8009324C 856BF690 */  lh    $t3, %lo(gCharacterWidthMap)($t3) # -0x970($t3)
/* 093E50 80093250 024B6021 */  addu  $t4, $s2, $t3
/* 093E54 80093254 10000012 */  b     .L800932A0
/* 093E58 80093258 01959021 */   addu  $s2, $t4, $s5
.L8009325C:
/* 093E5C 8009325C 2401FFFE */  li    $at, -2
/* 093E60 80093260 10410006 */  beq   $v0, $at, .L8009327C
/* 093E64 80093264 02559021 */   addu  $s2, $s2, $s5
/* 093E68 80093268 2401FFFF */  li    $at, -1
/* 093E6C 8009326C 54410004 */  bnel  $v0, $at, .L80093280
/* 093E70 80093270 8E820000 */   lw    $v0, ($s4)
/* 093E74 80093274 1000000A */  b     .L800932A0
/* 093E78 80093278 26520007 */   addiu $s2, $s2, 7
.L8009327C:
/* 093E7C 8009327C 8E820000 */  lw    $v0, ($s4)
.L80093280:
/* 093E80 80093280 3C0F0200 */  lui   $t7, %hi(D_020077D8) # $t7, 0x200
/* 093E84 80093284 25EF77D8 */  addiu $t7, %lo(D_020077D8) # addiu $t7, $t7, 0x77d8
/* 093E88 80093288 244D0008 */  addiu $t5, $v0, 8
/* 093E8C 8009328C AE8D0000 */  sw    $t5, ($s4)
/* 093E90 80093290 3C0E0600 */  lui   $t6, 0x600
/* 093E94 80093294 AC4E0000 */  sw    $t6, ($v0)
/* 093E98 80093298 10000012 */  b     .L800932E4
/* 093E9C 8009329C AC4F0004 */   sw    $t7, 4($v0)
.L800932A0:
/* 093EA0 800932A0 2A610030 */  slti  $at, $s3, 0x30
/* 093EA4 800932A4 54200004 */  bnel  $at, $zero, .L800932B8
/* 093EA8 800932A8 26310001 */   addiu $s1, $s1, 1
/* 093EAC 800932AC 10000002 */  b     .L800932B8
/* 093EB0 800932B0 26310002 */   addiu $s1, $s1, 2
/* 093EB4 800932B4 26310001 */  addiu $s1, $s1, 1
.L800932B8:
/* 093EB8 800932B8 82380000 */  lb    $t8, ($s1)
/* 093EBC 800932BC 1700FFC0 */  bnez  $t8, .L800931C0
/* 093EC0 800932C0 00000000 */   nop   
.L800932C4:
/* 093EC4 800932C4 8E820000 */  lw    $v0, ($s4)
/* 093EC8 800932C8 3C090200 */  lui   $t1, %hi(D_020077D8) # $t1, 0x200
/* 093ECC 800932CC 252977D8 */  addiu $t1, %lo(D_020077D8) # addiu $t1, $t1, 0x77d8
/* 093ED0 800932D0 24590008 */  addiu $t9, $v0, 8
/* 093ED4 800932D4 AE990000 */  sw    $t9, ($s4)
/* 093ED8 800932D8 3C080600 */  lui   $t0, 0x600
/* 093EDC 800932DC AC480000 */  sw    $t0, ($v0)
/* 093EE0 800932E0 AC490004 */  sw    $t1, 4($v0)
.L800932E4:
/* 093EE4 800932E4 8FBF006C */  lw    $ra, 0x6c($sp)
/* 093EE8 800932E8 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 093EEC 800932EC D7B60030 */  ldc1  $f22, 0x30($sp)
/* 093EF0 800932F0 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 093EF4 800932F4 D7BA0040 */  ldc1  $f26, 0x40($sp)
/* 093EF8 800932F8 8FB00048 */  lw    $s0, 0x48($sp)
/* 093EFC 800932FC 8FB1004C */  lw    $s1, 0x4c($sp)
/* 093F00 80093300 8FB20050 */  lw    $s2, 0x50($sp)
/* 093F04 80093304 8FB30054 */  lw    $s3, 0x54($sp)
/* 093F08 80093308 8FB40058 */  lw    $s4, 0x58($sp)
/* 093F0C 8009330C 8FB5005C */  lw    $s5, 0x5c($sp)
/* 093F10 80093310 8FB60060 */  lw    $s6, 0x60($sp)
/* 093F14 80093314 8FB70064 */  lw    $s7, 0x64($sp)
/* 093F18 80093318 8FBE0068 */  lw    $fp, 0x68($sp)
/* 093F1C 8009331C 03E00008 */  jr    $ra
/* 093F20 80093320 27BD0070 */   addiu $sp, $sp, 0x70