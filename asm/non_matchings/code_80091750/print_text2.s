glabel print_text2
/* 094388 80093788 27BDFF98 */  addiu $sp, $sp, -0x68
/* 09438C 8009378C AFB40050 */  sw    $s4, 0x50($sp)
/* 094390 80093790 3C148015 */  lui   $s4, %hi(gDisplayListHead) # $s4, 0x8015
/* 094394 80093794 26940298 */  addiu $s4, %lo(gDisplayListHead) # addiu $s4, $s4, 0x298
/* 094398 80093798 8E820000 */  lw    $v0, ($s4)
/* 09439C 8009379C AFBF0064 */  sw    $ra, 0x64($sp)
/* 0943A0 800937A0 AFBE0060 */  sw    $fp, 0x60($sp)
/* 0943A4 800937A4 244E0008 */  addiu $t6, $v0, 8
/* 0943A8 800937A8 AFB7005C */  sw    $s7, 0x5c($sp)
/* 0943AC 800937AC AFB60058 */  sw    $s6, 0x58($sp)
/* 0943B0 800937B0 AFB50054 */  sw    $s5, 0x54($sp)
/* 0943B4 800937B4 AFB3004C */  sw    $s3, 0x4c($sp)
/* 0943B8 800937B8 AFB20048 */  sw    $s2, 0x48($sp)
/* 0943BC 800937BC AFB10044 */  sw    $s1, 0x44($sp)
/* 0943C0 800937C0 AFB00040 */  sw    $s0, 0x40($sp)
/* 0943C4 800937C4 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 0943C8 800937C8 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 0943CC 800937CC F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0943D0 800937D0 AFA5006C */  sw    $a1, 0x6c($sp)
/* 0943D4 800937D4 AE8E0000 */  sw    $t6, ($s4)
/* 0943D8 800937D8 3C180200 */  lui   $t8, %hi(D_020077A8) # $t8, 0x200
/* 0943DC 800937DC 271877A8 */  addiu $t8, %lo(D_020077A8) # addiu $t8, $t8, 0x77a8
/* 0943E0 800937E0 3C0F0600 */  lui   $t7, 0x600
/* 0943E4 800937E4 AC4F0000 */  sw    $t7, ($v0)
/* 0943E8 800937E8 AC580004 */  sw    $t8, 4($v0)
/* 0943EC 800937EC 80D90000 */  lb    $t9, ($a2)
/* 0943F0 800937F0 00C08825 */  move  $s1, $a2
/* 0943F4 800937F4 00809825 */  move  $s3, $a0
/* 0943F8 800937F8 1320005C */  beqz  $t9, .L8009396C
/* 0943FC 800937FC 00E0A825 */   move  $s5, $a3
/* 094400 80093800 3C1E800F */  lui   $fp, %hi(gCharacterWidthMap) # $fp, 0x800f
/* 094404 80093804 3C17800E */  lui   $s7, %hi(D_800E7E84) # $s7, 0x800e
/* 094408 80093808 26F77E84 */  addiu $s7, %lo(D_800E7E84) # addiu $s7, $s7, 0x7e84
/* 09440C 8009380C 27DEF690 */  addiu $fp, %lo(gCharacterWidthMap) # addiu $fp, $fp, -0x970
/* 094410 80093810 C7B8007C */  lwc1  $f24, 0x7c($sp)
/* 094414 80093814 C7B60078 */  lwc1  $f22, 0x78($sp)
/* 094418 80093818 8FB60080 */  lw    $s6, 0x80($sp)
.L8009381C:
/* 09441C 8009381C 0C024B24 */  jal   get_ascii_char_width_index
/* 094420 80093820 02202025 */   move  $a0, $s1
/* 094424 80093824 04400031 */  bltz  $v0, .L800938EC
/* 094428 80093828 00408025 */   move  $s0, $v0
/* 09442C 8009382C 8FAA006C */  lw    $t2, 0x6c($sp)
/* 094430 80093830 00104080 */  sll   $t0, $s0, 2
/* 094434 80093834 02E84821 */  addu  $t1, $s7, $t0
/* 094438 80093838 448A2000 */  mtc1  $t2, $f4
/* 09443C 8009383C 8D240000 */  lw    $a0, ($t1)
/* 094440 80093840 0C026449 */  jal   segmented_to_virtual
/* 094444 80093844 46802520 */   cvt.s.w $f20, $f4
/* 094448 80093848 00409025 */  move  $s2, $v0
/* 09444C 8009384C 0C026461 */  jal   func_80099184
/* 094450 80093850 00402025 */   move  $a0, $v0
/* 094454 80093854 00105840 */  sll   $t3, $s0, 1
/* 094458 80093858 03CB6021 */  addu  $t4, $fp, $t3
/* 09445C 8009385C 858D0000 */  lh    $t5, ($t4)
/* 094460 80093860 4407A000 */  mfc1  $a3, $f20
/* 094464 80093864 E7B80018 */  swc1  $f24, 0x18($sp)
/* 094468 80093868 E7B60014 */  swc1  $f22, 0x14($sp)
/* 09446C 8009386C AFB60010 */  sw    $s6, 0x10($sp)
/* 094470 80093870 8E840000 */  lw    $a0, ($s4)
/* 094474 80093874 02402825 */  move  $a1, $s2
/* 094478 80093878 05A10003 */  bgez  $t5, .L80093888
/* 09447C 8009387C 000D7043 */   sra   $t6, $t5, 1
/* 094480 80093880 25A10001 */  addiu $at, $t5, 1
/* 094484 80093884 00017043 */  sra   $t6, $at, 1
.L80093888:
/* 094488 80093888 026E7823 */  subu  $t7, $s3, $t6
/* 09448C 8009388C 448F3000 */  mtc1  $t7, $f6
/* 094490 80093890 00000000 */  nop   
/* 094494 80093894 468031A0 */  cvt.s.w $f6, $f6
/* 094498 80093898 44063000 */  mfc1  $a2, $f6
/* 09449C 8009389C 0C026FBC */  jal   func_8009BEF0
/* 0944A0 800938A0 00000000 */   nop   
/* 0944A4 800938A4 2A0100D5 */  slti  $at, $s0, 0xd5
/* 0944A8 800938A8 14200006 */  bnez  $at, .L800938C4
/* 0944AC 800938AC AE820000 */   sw    $v0, ($s4)
/* 0944B0 800938B0 2A0100E0 */  slti  $at, $s0, 0xe0
/* 0944B4 800938B4 50200004 */  beql  $at, $zero, .L800938C8
/* 0944B8 800938B8 2402000C */   li    $v0, 12
/* 0944BC 800938BC 10000002 */  b     .L800938C8
/* 0944C0 800938C0 24020020 */   li    $v0, 32
.L800938C4:
/* 0944C4 800938C4 2402000C */  li    $v0, 12
.L800938C8:
/* 0944C8 800938C8 0055C021 */  addu  $t8, $v0, $s5
/* 0944CC 800938CC 44984000 */  mtc1  $t8, $f8
/* 0944D0 800938D0 00000000 */  nop   
/* 0944D4 800938D4 468042A0 */  cvt.s.w $f10, $f8
/* 0944D8 800938D8 46165402 */  mul.s $f16, $f10, $f22
/* 0944DC 800938DC 4600848D */  trunc.w.s $f18, $f16
/* 0944E0 800938E0 44089000 */  mfc1  $t0, $f18
/* 0944E4 800938E4 10000018 */  b     .L80093948
/* 0944E8 800938E8 01139821 */   addu  $s3, $t0, $s3
.L800938EC:
/* 0944EC 800938EC 2401FFFE */  li    $at, -2
/* 0944F0 800938F0 1041000C */  beq   $v0, $at, .L80093924
/* 0944F4 800938F4 26A90007 */   addiu $t1, $s5, 7
/* 0944F8 800938F8 2401FFFF */  li    $at, -1
/* 0944FC 800938FC 5441000A */  bnel  $v0, $at, .L80093928
/* 094500 80093900 8E820000 */   lw    $v0, ($s4)
/* 094504 80093904 44892000 */  mtc1  $t1, $f4
/* 094508 80093908 00000000 */  nop   
/* 09450C 8009390C 468021A0 */  cvt.s.w $f6, $f4
/* 094510 80093910 46163202 */  mul.s $f8, $f6, $f22
/* 094514 80093914 4600428D */  trunc.w.s $f10, $f8
/* 094518 80093918 440B5000 */  mfc1  $t3, $f10
/* 09451C 8009391C 1000000A */  b     .L80093948
/* 094520 80093920 01739821 */   addu  $s3, $t3, $s3
.L80093924:
/* 094524 80093924 8E820000 */  lw    $v0, ($s4)
.L80093928:
/* 094528 80093928 3C0E0200 */  lui   $t6, %hi(D_020077D8) # $t6, 0x200
/* 09452C 8009392C 25CE77D8 */  addiu $t6, %lo(D_020077D8) # addiu $t6, $t6, 0x77d8
/* 094530 80093930 244C0008 */  addiu $t4, $v0, 8
/* 094534 80093934 AE8C0000 */  sw    $t4, ($s4)
/* 094538 80093938 3C0D0600 */  lui   $t5, 0x600
/* 09453C 8009393C AC4D0000 */  sw    $t5, ($v0)
/* 094540 80093940 10000012 */  b     .L8009398C
/* 094544 80093944 AC4E0004 */   sw    $t6, 4($v0)
.L80093948:
/* 094548 80093948 2A010030 */  slti  $at, $s0, 0x30
/* 09454C 8009394C 54200004 */  bnel  $at, $zero, .L80093960
/* 094550 80093950 26310001 */   addiu $s1, $s1, 1
/* 094554 80093954 10000002 */  b     .L80093960
/* 094558 80093958 26310002 */   addiu $s1, $s1, 2
/* 09455C 8009395C 26310001 */  addiu $s1, $s1, 1
.L80093960:
/* 094560 80093960 822F0000 */  lb    $t7, ($s1)
/* 094564 80093964 15E0FFAD */  bnez  $t7, .L8009381C
/* 094568 80093968 00000000 */   nop   
.L8009396C:
/* 09456C 8009396C 8E820000 */  lw    $v0, ($s4)
/* 094570 80093970 3C080200 */  lui   $t0, %hi(D_020077D8) # $t0, 0x200
/* 094574 80093974 250877D8 */  addiu $t0, %lo(D_020077D8) # addiu $t0, $t0, 0x77d8
/* 094578 80093978 24580008 */  addiu $t8, $v0, 8
/* 09457C 8009397C AE980000 */  sw    $t8, ($s4)
/* 094580 80093980 3C190600 */  lui   $t9, 0x600
/* 094584 80093984 AC590000 */  sw    $t9, ($v0)
/* 094588 80093988 AC480004 */  sw    $t0, 4($v0)
.L8009398C:
/* 09458C 8009398C 8FBF0064 */  lw    $ra, 0x64($sp)
/* 094590 80093990 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 094594 80093994 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 094598 80093998 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 09459C 8009399C 8FB00040 */  lw    $s0, 0x40($sp)
/* 0945A0 800939A0 8FB10044 */  lw    $s1, 0x44($sp)
/* 0945A4 800939A4 8FB20048 */  lw    $s2, 0x48($sp)
/* 0945A8 800939A8 8FB3004C */  lw    $s3, 0x4c($sp)
/* 0945AC 800939AC 8FB40050 */  lw    $s4, 0x50($sp)
/* 0945B0 800939B0 8FB50054 */  lw    $s5, 0x54($sp)
/* 0945B4 800939B4 8FB60058 */  lw    $s6, 0x58($sp)
/* 0945B8 800939B8 8FB7005C */  lw    $s7, 0x5c($sp)
/* 0945BC 800939BC 8FBE0060 */  lw    $fp, 0x60($sp)
/* 0945C0 800939C0 03E00008 */  jr    $ra
/* 0945C4 800939C4 27BD0068 */   addiu $sp, $sp, 0x68