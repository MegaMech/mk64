glabel func_8000DD78
/* 00E978 8000DD78 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00E97C 8000DD7C F7BA0038 */  sdc1  $f26, 0x38($sp)
/* 00E980 8000DD80 3C0144FA */  li    $at, 0x44FA0000 # 2000.000000
/* 00E984 8000DD84 4481D000 */  mtc1  $at, $f26
/* 00E988 8000DD88 AFB60058 */  sw    $s6, 0x58($sp)
/* 00E98C 8000DD8C AFB50054 */  sw    $s5, 0x54($sp)
/* 00E990 8000DD90 AFB40050 */  sw    $s4, 0x50($sp)
/* 00E994 8000DD94 AFB20048 */  sw    $s2, 0x48($sp)
/* 00E998 8000DD98 AFB00040 */  sw    $s0, 0x40($sp)
/* 00E99C 8000DD9C F7B80030 */  sdc1  $f24, 0x30($sp)
/* 00E9A0 8000DDA0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 00E9A4 8000DDA4 AFBE0060 */  sw    $fp, 0x60($sp)
/* 00E9A8 8000DDA8 AFB7005C */  sw    $s7, 0x5c($sp)
/* 00E9AC 8000DDAC AFB3004C */  sw    $s3, 0x4c($sp)
/* 00E9B0 8000DDB0 3C108016 */  lui   $s0, %hi(D_80163DE8) # $s0, 0x8016
/* 00E9B4 8000DDB4 3C128016 */  lui   $s2, %hi(D_80164038) # $s2, 0x8016
/* 00E9B8 8000DDB8 3C148016 */  lui   $s4, %hi(D_80164550) # $s4, 0x8016
/* 00E9BC 8000DDBC 3C15800E */  lui   $s5, %hi(D_800DCC08)
/* 00E9C0 8000DDC0 3C16800E */  lui   $s6, %hi(gCurrentCourseId)
/* 00E9C4 8000DDC4 4481C000 */  mtc1  $at, $f24
/* 00E9C8 8000DDC8 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00E9CC 8000DDCC AFB10044 */  sw    $s1, 0x44($sp)
/* 00E9D0 8000DDD0 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 00E9D4 8000DDD4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 00E9D8 8000DDD8 26D6C5A0 */  addiu $s6, %lo(gCurrentCourseId) # addiu $s6, $s6, -0x3a60
/* 00E9DC 8000DDDC 26B5CC08 */  addiu $s5, %lo(D_800DCC08) # addiu $s5, $s5, -0x33f8
/* 00E9E0 8000DDE0 26944550 */  addiu $s4, %lo(D_80164550) # addiu $s4, $s4, 0x4550
/* 00E9E4 8000DDE4 26524038 */  addiu $s2, %lo(D_80164038) # addiu $s2, $s2, 0x4038
/* 00E9E8 8000DDE8 26103DE8 */  addiu $s0, %lo(D_80163DE8) # addiu $s0, $s0, 0x3de8
/* 00E9EC 8000DDEC 00009825 */  move  $s3, $zero
/* 00E9F0 8000DDF0 24170004 */  li    $s7, 4
/* 00E9F4 8000DDF4 241E0014 */  li    $fp, 20
.L8000DDF8:
/* 00E9F8 8000DDF8 86C20000 */  lh    $v0, ($s6)
/* 00E9FC 8000DDFC 00027080 */  sll   $t6, $v0, 2
/* 00EA00 8000DE00 01C27021 */  addu  $t6, $t6, $v0
/* 00EA04 8000DE04 000E7080 */  sll   $t6, $t6, 2
/* 00EA08 8000DE08 01C27021 */  addu  $t6, $t6, $v0
/* 00EA0C 8000DE0C 000E70C0 */  sll   $t6, $t6, 3
/* 00EA10 8000DE10 02AE7821 */  addu  $t7, $s5, $t6
/* 00EA14 8000DE14 12E20011 */  beq   $s7, $v0, .L8000DE5C
/* 00EA18 8000DE18 01F38821 */   addu  $s1, $t7, $s3
/* 00EA1C 8000DE1C 505E0018 */  beql  $v0, $fp, .L8000DE80
/* 00EA20 8000DE20 962D0000 */   lhu   $t5, ($s1)
/* 00EA24 8000DE24 96390000 */  lhu   $t9, ($s1)
/* 00EA28 8000DE28 8E980000 */  lw    $t8, ($s4)
/* 00EA2C 8000DE2C 001940C0 */  sll   $t0, $t9, 3
/* 00EA30 8000DE30 03081021 */  addu  $v0, $t8, $t0
/* 00EA34 8000DE34 84490000 */  lh    $t1, ($v0)
/* 00EA38 8000DE38 844A0002 */  lh    $t2, 2($v0)
/* 00EA3C 8000DE3C 844B0004 */  lh    $t3, 4($v0)
/* 00EA40 8000DE40 44892000 */  mtc1  $t1, $f4
/* 00EA44 8000DE44 448A3000 */  mtc1  $t2, $f6
/* 00EA48 8000DE48 448B4000 */  mtc1  $t3, $f8
/* 00EA4C 8000DE4C 46802520 */  cvt.s.w $f20, $f4
/* 00EA50 8000DE50 468030A0 */  cvt.s.w $f2, $f6
/* 00EA54 8000DE54 10000016 */  b     .L8000DEB0
/* 00EA58 8000DE58 468045A0 */   cvt.s.w $f22, $f8
.L8000DE5C:
/* 00EA5C 8000DE5C C636000C */  lwc1  $f22, 0xc($s1)
/* 00EA60 8000DE60 C6340008 */  lwc1  $f20, 8($s1)
/* 00EA64 8000DE64 4600D386 */  mov.s $f14, $f26
/* 00EA68 8000DE68 4406B000 */  mfc1  $a2, $f22
/* 00EA6C 8000DE6C 0C0AB870 */  jal   func_802AE1C0
/* 00EA70 8000DE70 4600A306 */   mov.s $f12, $f20
/* 00EA74 8000DE74 1000000E */  b     .L8000DEB0
/* 00EA78 8000DE78 46000086 */   mov.s $f2, $f0
/* 00EA7C 8000DE7C 962D0000 */  lhu   $t5, ($s1)
.L8000DE80:
/* 00EA80 8000DE80 8E8C000C */  lw    $t4, 0xc($s4)
/* 00EA84 8000DE84 000D70C0 */  sll   $t6, $t5, 3
/* 00EA88 8000DE88 018E1021 */  addu  $v0, $t4, $t6
/* 00EA8C 8000DE8C 844F0000 */  lh    $t7, ($v0)
/* 00EA90 8000DE90 84590002 */  lh    $t9, 2($v0)
/* 00EA94 8000DE94 84580004 */  lh    $t8, 4($v0)
/* 00EA98 8000DE98 448F5000 */  mtc1  $t7, $f10
/* 00EA9C 8000DE9C 44998000 */  mtc1  $t9, $f16
/* 00EAA0 8000DEA0 44989000 */  mtc1  $t8, $f18
/* 00EAA4 8000DEA4 46805520 */  cvt.s.w $f20, $f10
/* 00EAA8 8000DEA8 468080A0 */  cvt.s.w $f2, $f16
/* 00EAAC 8000DEAC 468095A0 */  cvt.s.w $f22, $f18
.L8000DEB0:
/* 00EAB0 8000DEB0 E6140000 */  swc1  $f20, ($s0)
/* 00EAB4 8000DEB4 E6020004 */  swc1  $f2, 4($s0)
/* 00EAB8 8000DEB8 E6160008 */  swc1  $f22, 8($s0)
/* 00EABC 8000DEBC E614000C */  swc1  $f20, 0xc($s0)
/* 00EAC0 8000DEC0 E6020010 */  swc1  $f2, 0x10($s0)
/* 00EAC4 8000DEC4 E6160014 */  swc1  $f22, 0x14($s0)
/* 00EAC8 8000DEC8 E6140018 */  swc1  $f20, 0x18($s0)
/* 00EACC 8000DECC E602001C */  swc1  $f2, 0x1c($s0)
/* 00EAD0 8000DED0 E6160020 */  swc1  $f22, 0x20($s0)
/* 00EAD4 8000DED4 E6140024 */  swc1  $f20, 0x24($s0)
/* 00EAD8 8000DED8 E6020028 */  swc1  $f2, 0x28($s0)
/* 00EADC 8000DEDC E616002C */  swc1  $f22, 0x2c($s0)
/* 00EAE0 8000DEE0 E6140030 */  swc1  $f20, 0x30($s0)
/* 00EAE4 8000DEE4 E6020034 */  swc1  $f2, 0x34($s0)
/* 00EAE8 8000DEE8 E6160038 */  swc1  $f22, 0x38($s0)
/* 00EAEC 8000DEEC 96280000 */  lhu   $t0, ($s1)
/* 00EAF0 8000DEF0 240A0001 */  li    $t2, 1
/* 00EAF4 8000DEF4 4405C000 */  mfc1  $a1, $f24
/* 00EAF8 8000DEF8 A6080042 */  sh    $t0, 0x42($s0)
/* 00EAFC 8000DEFC C6240004 */  lwc1  $f4, 4($s1)
/* 00EB00 8000DF00 A6000046 */  sh    $zero, 0x46($s0)
/* 00EB04 8000DF04 A6000048 */  sh    $zero, 0x48($s0)
/* 00EB08 8000DF08 E604003C */  swc1  $f4, 0x3c($s0)
/* 00EB0C 8000DF0C 96290002 */  lhu   $t1, 2($s1)
/* 00EB10 8000DF10 4406A000 */  mfc1  $a2, $f20
/* 00EB14 8000DF14 44071000 */  mfc1  $a3, $f2
/* 00EB18 8000DF18 A600004A */  sh    $zero, 0x4a($s0)
/* 00EB1C 8000DF1C A60A004C */  sh    $t2, 0x4c($s0)
/* 00EB20 8000DF20 E6020050 */  swc1  $f2, 0x50($s0)
/* 00EB24 8000DF24 E7B60010 */  swc1  $f22, 0x10($sp)
/* 00EB28 8000DF28 02402025 */  move  $a0, $s2
/* 00EB2C 8000DF2C 0C0AB772 */  jal   func_802ADDC8
/* 00EB30 8000DF30 A6090044 */   sh    $t1, 0x44($s0)
/* 00EB34 8000DF34 3C0B8016 */  lui   $t3, %hi(D_801641F8) # $t3, 0x8016
/* 00EB38 8000DF38 256B41F8 */  addiu $t3, %lo(D_801641F8) # addiu $t3, $t3, 0x41f8
/* 00EB3C 8000DF3C 26520040 */  addiu $s2, $s2, 0x40
/* 00EB40 8000DF40 26730018 */  addiu $s3, $s3, 0x18
/* 00EB44 8000DF44 164BFFAC */  bne   $s2, $t3, .L8000DDF8
/* 00EB48 8000DF48 26100054 */   addiu $s0, $s0, 0x54
/* 00EB4C 8000DF4C 8FBF0064 */  lw    $ra, 0x64($sp)
/* 00EB50 8000DF50 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 00EB54 8000DF54 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 00EB58 8000DF58 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 00EB5C 8000DF5C D7BA0038 */  ldc1  $f26, 0x38($sp)
/* 00EB60 8000DF60 8FB00040 */  lw    $s0, 0x40($sp)
/* 00EB64 8000DF64 8FB10044 */  lw    $s1, 0x44($sp)
/* 00EB68 8000DF68 8FB20048 */  lw    $s2, 0x48($sp)
/* 00EB6C 8000DF6C 8FB3004C */  lw    $s3, 0x4c($sp)
/* 00EB70 8000DF70 8FB40050 */  lw    $s4, 0x50($sp)
/* 00EB74 8000DF74 8FB50054 */  lw    $s5, 0x54($sp)
/* 00EB78 8000DF78 8FB60058 */  lw    $s6, 0x58($sp)
/* 00EB7C 8000DF7C 8FB7005C */  lw    $s7, 0x5c($sp)
/* 00EB80 8000DF80 8FBE0060 */  lw    $fp, 0x60($sp)
/* 00EB84 8000DF84 03E00008 */  jr    $ra
/* 00EB88 8000DF88 27BD0068 */   addiu $sp, $sp, 0x68