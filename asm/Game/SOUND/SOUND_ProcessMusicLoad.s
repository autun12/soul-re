.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SOUND_ProcessMusicLoad
/* 31240 80040A40 2CC3838F */  lw         $v1, %gp_rel(musicInfo)($gp)
/* 31244 80040A44 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 31248 80040A48 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 3124C 80040A4C 6800B2AF */  sw         $s2, 0x68($sp)
/* 31250 80040A50 6400B1AF */  sw         $s1, 0x64($sp)
/* 31254 80040A54 0E00622C */  sltiu      $v0, $v1, 0xE
/* 31258 80040A58 32014010 */  beqz       $v0, .L80040F24
/* 3125C 80040A5C 6000B0AF */   sw        $s0, 0x60($sp)
/* 31260 80040A60 0180023C */  lui        $v0, %hi(jtbl_80010230)
/* 31264 80040A64 30024224 */  addiu      $v0, $v0, %lo(jtbl_80010230)
/* 31268 80040A68 80180300 */  sll        $v1, $v1, 2
/* 3126C 80040A6C 21186200 */  addu       $v1, $v1, $v0
/* 31270 80040A70 0000628C */  lw         $v0, 0x0($v1)
/* 31274 80040A74 00000000 */  nop
/* 31278 80040A78 08004000 */  jr         $v0
/* 3127C 80040A7C 00000000 */   nop
jlabel .L80040A80
/* 31280 80040A80 74C3828F */  lw         $v0, %gp_rel(musicInfo + 0x48)($gp)
/* 31284 80040A84 74C39027 */  addiu      $s0, $gp, %gp_rel(musicInfo + 0x48)
/* 31288 80040A88 1D004010 */  beqz       $v0, .L80040B00
/* 3128C 80040A8C 00000000 */   nop
/* 31290 80040A90 70C3828F */  lw         $v0, %gp_rel(musicInfo + 0x44)($gp)
/* 31294 80040A94 4CC38327 */  addiu      $v1, $gp, %gp_rel(musicInfo + 0x20)
/* 31298 80040A98 C0100200 */  sll        $v0, $v0, 3
/* 3129C 80040A9C 21184300 */  addu       $v1, $v0, $v1
/* 312A0 80040AA0 0000628C */  lw         $v0, 0x0($v1)
/* 312A4 80040AA4 00000000 */  nop
/* 312A8 80040AA8 0C004014 */  bnez       $v0, .L80040ADC
/* 312AC 80040AAC 21200000 */   addu      $a0, $zero, $zero
/* 312B0 80040AB0 FDFF0524 */  addiu      $a1, $zero, -0x3
/* 312B4 80040AB4 0B000224 */  addiu      $v0, $zero, 0xB
/* 312B8 80040AB8 B8FF02AE */  sw         $v0, -0x48($s0)
/* 312BC 80040ABC 0D000224 */  addiu      $v0, $zero, 0xD
/* 312C0 80040AC0 0480063C */  lui        $a2, %hi(musicFadeoutReturnFunc)
/* 312C4 80040AC4 30C382AF */  sw         $v0, %gp_rel(musicInfo + 0x4)($gp)
/* 312C8 80040AC8 0400628C */  lw         $v0, 0x4($v1)
/* 312CC 80040ACC 00000000 */  nop
/* 312D0 80040AD0 40C382AF */  sw         $v0, %gp_rel(musicInfo + 0x14)($gp)
/* 312D4 80040AD4 B247010C */  jal        aadStartMusicMasterVolFade
/* 312D8 80040AD8 2809C624 */   addiu     $a2, $a2, %lo(musicFadeoutReturnFunc)
.L80040ADC:
/* 312DC 80040ADC 70C3828F */  lw         $v0, %gp_rel(musicInfo + 0x44)($gp)
/* 312E0 80040AE0 74C3838F */  lw         $v1, %gp_rel(musicInfo + 0x48)($gp)
/* 312E4 80040AE4 01004224 */  addiu      $v0, $v0, 0x1
/* 312E8 80040AE8 03004230 */  andi       $v0, $v0, 0x3
/* 312EC 80040AEC FFFF6324 */  addiu      $v1, $v1, -0x1
/* 312F0 80040AF0 70C382AF */  sw         $v0, %gp_rel(musicInfo + 0x44)($gp)
/* 312F4 80040AF4 74C383AF */  sw         $v1, %gp_rel(musicInfo + 0x48)($gp)
/* 312F8 80040AF8 C9030108 */  j          .L80040F24
/* 312FC 80040AFC 00000000 */   nop
.L80040B00:
/* 31300 80040B00 3CC3828F */  lw         $v0, %gp_rel(musicInfo + 0x10)($gp)
/* 31304 80040B04 00000000 */  nop
/* 31308 80040B08 9E004014 */  bnez       $v0, .L80040D84
/* 3130C 80040B0C FFFF4224 */   addiu     $v0, $v0, -0x1
/* 31310 80040B10 D89B828F */  lw         $v0, %gp_rel(aadMem)($gp)
/* 31314 80040B14 00000000 */  nop
/* 31318 80040B18 E807428C */  lw         $v0, 0x7E8($v0)
/* 3131C 80040B1C 00000000 */  nop
/* 31320 80040B20 00014014 */  bnez       $v0, .L80040F24
/* 31324 80040B24 1E000224 */   addiu     $v0, $zero, 0x1E
/* 31328 80040B28 F4BD838F */  lw         $v1, %gp_rel(gameTrackerX + 0x2C)($gp)
/* 3132C 80040B2C 3CC382AF */  sw         $v0, %gp_rel(musicInfo + 0x10)($gp)
/* 31330 80040B30 3800648C */  lw         $a0, 0x38($v1)
/* 31334 80040B34 1C66010C */  jal        STREAM_GetLevelWithID
/* 31338 80040B38 00000000 */   nop
/* 3133C 80040B3C 21184000 */  addu       $v1, $v0, $zero
/* 31340 80040B40 F8006010 */  beqz       $v1, .L80040F24
/* 31344 80040B44 00000000 */   nop
/* 31348 80040B48 F400628C */  lw         $v0, 0xF4($v1)
/* 3134C 80040B4C 00000000 */  nop
/* 31350 80040B50 7D004010 */  beqz       $v0, .L80040D48
/* 31354 80040B54 00000000 */   nop
/* 31358 80040B58 00004290 */  lbu        $v0, 0x0($v0)
/* 3135C 80040B5C 00000000 */  nop
/* 31360 80040B60 1800A2A3 */  sb         $v0, 0x18($sp)
/* 31364 80040B64 F400628C */  lw         $v0, 0xF4($v1)
/* 31368 80040B68 40C3838F */  lw         $v1, %gp_rel(musicInfo + 0x14)($gp)
/* 3136C 80040B6C 01004290 */  lbu        $v0, 0x1($v0)
/* 31370 80040B70 00000000 */  nop
/* 31374 80040B74 1900A2A3 */  sb         $v0, 0x19($sp)
/* 31378 80040B78 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3137C 80040B7C 04006214 */  bne        $v1, $v0, .L80040B90
/* 31380 80040B80 00000000 */   nop
/* 31384 80040B84 D2BD8287 */  lh         $v0, %gp_rel(gameTrackerX + 0xA)($gp)
/* 31388 80040B88 00000000 */  nop
/* 3138C 80040B8C 40C382AF */  sw         $v0, %gp_rel(musicInfo + 0x14)($gp)
.L80040B90:
/* 31390 80040B90 40C3828F */  lw         $v0, %gp_rel(musicInfo + 0x14)($gp)
/* 31394 80040B94 00000000 */  nop
/* 31398 80040B98 04004010 */  beqz       $v0, .L80040BAC
/* 3139C 80040B9C 73000224 */   addiu     $v0, $zero, 0x73
/* 313A0 80040BA0 1A00A2A3 */  sb         $v0, 0x1A($sp)
/* 313A4 80040BA4 EE020108 */  j          .L80040BB8
/* 313A8 80040BA8 70000224 */   addiu     $v0, $zero, 0x70
.L80040BAC:
/* 313AC 80040BAC 6D000224 */  addiu      $v0, $zero, 0x6D
/* 313B0 80040BB0 1A00A2A3 */  sb         $v0, 0x1A($sp)
/* 313B4 80040BB4 61000224 */  addiu      $v0, $zero, 0x61
.L80040BB8:
/* 313B8 80040BB8 1B00A2A3 */  sb         $v0, 0x1B($sp)
/* 313BC 80040BBC 1C00A0A3 */  sb         $zero, 0x1C($sp)
/* 313C0 80040BC0 44C38527 */  addiu      $a1, $gp, %gp_rel(musicInfo + 0x18)
/* 313C4 80040BC4 1CD2010C */  jal        strcmpi
/* 313C8 80040BC8 1800A427 */   addiu     $a0, $sp, 0x18
/* 313CC 80040BCC D5004010 */  beqz       $v0, .L80040F24
/* 313D0 80040BD0 00000000 */   nop
/* 313D4 80040BD4 44C38293 */  lbu        $v0, %gp_rel(musicInfo + 0x18)($gp)
/* 313D8 80040BD8 44C39227 */  addiu      $s2, $gp, %gp_rel(musicInfo + 0x18)
/* 313DC 80040BDC 39004010 */  beqz       $v0, .L80040CC4
/* 313E0 80040BE0 2000B027 */   addiu     $s0, $sp, 0x20
/* 313E4 80040BE4 21200002 */  addu       $a0, $s0, $zero
/* 313E8 80040BE8 0D80053C */  lui        $a1, %hi(objectOneShotTriggerTbl + 0xC)
/* 313EC 80040BEC 340FA524 */  addiu      $a1, $a1, %lo(objectOneShotTriggerTbl + 0xC)
/* 313F0 80040BF0 1800A627 */  addiu      $a2, $sp, 0x18
/* 313F4 80040BF4 1AD1010C */  jal        sprintf
/* 313F8 80040BF8 2138C000 */   addu      $a3, $a2, $zero
/* 313FC 80040BFC 1FE0000C */  jal        LOAD_DoesFileExist
/* 31400 80040C00 21200002 */   addu      $a0, $s0, $zero
/* 31404 80040C04 C7004010 */  beqz       $v0, .L80040F24
/* 31408 80040C08 21204002 */   addu      $a0, $s2, $zero
/* 3140C 80040C0C 1CF4020C */  jal        strcpy
/* 31410 80040C10 1800A527 */   addiu     $a1, $sp, 0x18
/* 31414 80040C14 21200002 */  addu       $a0, $s0, $zero
/* 31418 80040C18 4000A527 */  addiu      $a1, $sp, 0x40
/* 3141C 80040C1C 01000624 */  addiu      $a2, $zero, 0x1
/* 31420 80040C20 21380000 */  addu       $a3, $zero, $zero
/* 31424 80040C24 0D80023C */  lui        $v0, %hi(objectOneShotTriggerTbl + 0x24)
/* 31428 80040C28 4C0F4B24 */  addiu      $t3, $v0, %lo(objectOneShotTriggerTbl + 0x24)
/* 3142C 80040C2C 0000688D */  lw         $t0, 0x0($t3)
/* 31430 80040C30 0400698D */  lw         $t1, 0x4($t3)
/* 31434 80040C34 08006A8D */  lw         $t2, 0x8($t3)
/* 31438 80040C38 2000A8AF */  sw         $t0, 0x20($sp)
/* 3143C 80040C3C 2400A9AF */  sw         $t1, 0x24($sp)
/* 31440 80040C40 2800AAAF */  sw         $t2, 0x28($sp)
/* 31444 80040C44 0C00688D */  lw         $t0, 0xC($t3)
/* 31448 80040C48 1000698D */  lw         $t1, 0x10($t3)
/* 3144C 80040C4C 14006A8D */  lw         $t2, 0x14($t3)
/* 31450 80040C50 2C00A8AF */  sw         $t0, 0x2C($sp)
/* 31454 80040C54 3000A9AF */  sw         $t1, 0x30($sp)
/* 31458 80040C58 3400AAAF */  sw         $t2, 0x34($sp)
/* 3145C 80040C5C 18006885 */  lh         $t0, 0x18($t3)
/* 31460 80040C60 1A006981 */  lb         $t1, 0x1A($t3)
/* 31464 80040C64 3800A8A7 */  sh         $t0, 0x38($sp)
/* 31468 80040C68 3A00A9A3 */  sb         $t1, 0x3A($sp)
/* 3146C 80040C6C 0D80023C */  lui        $v0, %hi(objectOneShotTriggerTbl + 0x40)
/* 31470 80040C70 680F4B24 */  addiu      $t3, $v0, %lo(objectOneShotTriggerTbl + 0x40)
/* 31474 80040C74 0000688D */  lw         $t0, 0x0($t3)
/* 31478 80040C78 0400698D */  lw         $t1, 0x4($t3)
/* 3147C 80040C7C 08006A8D */  lw         $t2, 0x8($t3)
/* 31480 80040C80 4000A8AF */  sw         $t0, 0x40($sp)
/* 31484 80040C84 4400A9AF */  sw         $t1, 0x44($sp)
/* 31488 80040C88 4800AAAF */  sw         $t2, 0x48($sp)
/* 3148C 80040C8C 0C00688D */  lw         $t0, 0xC($t3)
/* 31490 80040C90 1000698D */  lw         $t1, 0x10($t3)
/* 31494 80040C94 14006A8D */  lw         $t2, 0x14($t3)
/* 31498 80040C98 4C00A8AF */  sw         $t0, 0x4C($sp)
/* 3149C 80040C9C 5000A9AF */  sw         $t1, 0x50($sp)
/* 314A0 80040CA0 5400AAAF */  sw         $t2, 0x54($sp)
/* 314A4 80040CA4 18006885 */  lh         $t0, 0x18($t3)
/* 314A8 80040CA8 1A006981 */  lb         $t1, 0x1A($t3)
/* 314AC 80040CAC 5800A8A7 */  sh         $t0, 0x58($sp)
/* 314B0 80040CB0 5A00A9A3 */  sb         $t1, 0x5A($sp)
/* 314B4 80040CB4 03000224 */  addiu      $v0, $zero, 0x3
/* 314B8 80040CB8 E8FF42AE */  sw         $v0, -0x18($s2)
/* 314BC 80040CBC 4B030108 */  j          .L80040D2C
/* 314C0 80040CC0 04000224 */   addiu     $v0, $zero, 0x4
.L80040CC4:
/* 314C4 80040CC4 21200002 */  addu       $a0, $s0, $zero
/* 314C8 80040CC8 0D80053C */  lui        $a1, %hi(objectOneShotTriggerTbl + 0xC)
/* 314CC 80040CCC 340FA524 */  addiu      $a1, $a1, %lo(objectOneShotTriggerTbl + 0xC)
/* 314D0 80040CD0 1800A627 */  addiu      $a2, $sp, 0x18
/* 314D4 80040CD4 1AD1010C */  jal        sprintf
/* 314D8 80040CD8 2138C000 */   addu      $a3, $a2, $zero
/* 314DC 80040CDC 4000B127 */  addiu      $s1, $sp, 0x40
/* 314E0 80040CE0 21202002 */  addu       $a0, $s1, $zero
/* 314E4 80040CE4 0D80053C */  lui        $a1, %hi(objectOneShotTriggerTbl + 0x5C)
/* 314E8 80040CE8 840FA524 */  addiu      $a1, $a1, %lo(objectOneShotTriggerTbl + 0x5C)
/* 314EC 80040CEC 1800A627 */  addiu      $a2, $sp, 0x18
/* 314F0 80040CF0 1AD1010C */  jal        sprintf
/* 314F4 80040CF4 2138C000 */   addu      $a3, $a2, $zero
/* 314F8 80040CF8 1FE0000C */  jal        LOAD_DoesFileExist
/* 314FC 80040CFC 21200002 */   addu      $a0, $s0, $zero
/* 31500 80040D00 88004010 */  beqz       $v0, .L80040F24
/* 31504 80040D04 21204002 */   addu      $a0, $s2, $zero
/* 31508 80040D08 1CF4020C */  jal        strcpy
/* 3150C 80040D0C 1800A527 */   addiu     $a1, $sp, 0x18
/* 31510 80040D10 21200002 */  addu       $a0, $s0, $zero
/* 31514 80040D14 21282002 */  addu       $a1, $s1, $zero
/* 31518 80040D18 21300000 */  addu       $a2, $zero, $zero
/* 3151C 80040D1C 01000724 */  addiu      $a3, $zero, 0x1
/* 31520 80040D20 2110E000 */  addu       $v0, $a3, $zero
/* 31524 80040D24 E8FF42AE */  sw         $v0, -0x18($s2)
/* 31528 80040D28 02000224 */  addiu      $v0, $zero, 0x2
.L80040D2C:
/* 3152C 80040D2C 30C382AF */  sw         $v0, %gp_rel(musicInfo + 0x4)($gp)
/* 31530 80040D30 0480023C */  lui        $v0, %hi(musicLoadReturnFunc)
/* 31534 80040D34 14094224 */  addiu      $v0, $v0, %lo(musicLoadReturnFunc)
/* 31538 80040D38 4349010C */  jal        aadLoadDynamicSoundBank
/* 3153C 80040D3C 1000A2AF */   sw        $v0, 0x10($sp)
/* 31540 80040D40 C9030108 */  j          .L80040F24
/* 31544 80040D44 00000000 */   nop
.L80040D48:
/* 31548 80040D48 44C38293 */  lbu        $v0, %gp_rel(musicInfo + 0x18)($gp)
/* 3154C 80040D4C 00000000 */  nop
/* 31550 80040D50 74004010 */  beqz       $v0, .L80040F24
/* 31554 80040D54 21200000 */   addu      $a0, $zero, $zero
/* 31558 80040D58 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 3155C 80040D5C 0480063C */  lui        $a2, %hi(musicFadeoutReturnFunc)
/* 31560 80040D60 0B000224 */  addiu      $v0, $zero, 0xB
/* 31564 80040D64 44C380A3 */  sb         $zero, %gp_rel(musicInfo + 0x18)($gp)
/* 31568 80040D68 B8FF02AE */  sw         $v0, -0x48($s0)
/* 3156C 80040D6C 0C000224 */  addiu      $v0, $zero, 0xC
/* 31570 80040D70 30C382AF */  sw         $v0, %gp_rel(musicInfo + 0x4)($gp)
/* 31574 80040D74 B247010C */  jal        aadStartMusicMasterVolFade
/* 31578 80040D78 2809C624 */   addiu     $a2, $a2, %lo(musicFadeoutReturnFunc)
/* 3157C 80040D7C C9030108 */  j          .L80040F24
/* 31580 80040D80 00000000 */   nop
.L80040D84:
/* 31584 80040D84 3CC382AF */  sw         $v0, %gp_rel(musicInfo + 0x10)($gp)
/* 31588 80040D88 C9030108 */  j          .L80040F24
/* 3158C 80040D8C 00000000 */   nop
jlabel .L80040D90
/* 31590 80040D90 21200000 */  addu       $a0, $zero, $zero
/* 31594 80040D94 21288000 */  addu       $a1, $a0, $zero
/* 31598 80040D98 7C51010C */  jal        aadAssignDynamicSequence
/* 3159C 80040D9C 21308000 */   addu      $a2, $a0, $zero
/* 315A0 80040DA0 5F004014 */  bnez       $v0, .L80040F20
/* 315A4 80040DA4 00000000 */   nop
/* 315A8 80040DA8 F451010C */  jal        aadStartSlot
/* 315AC 80040DAC 21200000 */   addu      $a0, $zero, $zero
/* 315B0 80040DB0 C8030108 */  j          .L80040F20
/* 315B4 80040DB4 00000000 */   nop
jlabel .L80040DB8
/* 315B8 80040DB8 34C3828F */  lw         $v0, %gp_rel(musicInfo + 0x8)($gp)
/* 315BC 80040DBC 34C38327 */  addiu      $v1, $gp, %gp_rel(musicInfo + 0x8)
/* 315C0 80040DC0 3D004014 */  bnez       $v0, .L80040EB8
/* 315C4 80040DC4 0480043C */   lui       $a0, %hi(musicEndCallbackFunc)
/* 315C8 80040DC8 3C098424 */  addiu      $a0, $a0, %lo(musicEndCallbackFunc)
/* 315CC 80040DCC 05000224 */  addiu      $v0, $zero, 0x5
/* 315D0 80040DD0 F8FF62AC */  sw         $v0, -0x8($v1)
/* 315D4 80040DD4 06000224 */  addiu      $v0, $zero, 0x6
/* 315D8 80040DD8 30C382AF */  sw         $v0, %gp_rel(musicInfo + 0x4)($gp)
/* 315DC 80040DDC 01000224 */  addiu      $v0, $zero, 0x1
/* 315E0 80040DE0 38C382AF */  sw         $v0, %gp_rel(musicInfo + 0xC)($gp)
/* 315E4 80040DE4 A7030108 */  j          .L80040E9C
/* 315E8 80040DE8 21280000 */   addu      $a1, $zero, $zero
jlabel .L80040DEC
/* 315EC 80040DEC D89B828F */  lw         $v0, %gp_rel(aadMem)($gp)
/* 315F0 80040DF0 00000000 */  nop
/* 315F4 80040DF4 E807428C */  lw         $v0, 0x7E8($v0)
/* 315F8 80040DF8 00000000 */  nop
/* 315FC 80040DFC 49004014 */  bnez       $v0, .L80040F24
/* 31600 80040E00 2000B127 */   addiu     $s1, $sp, 0x20
/* 31604 80040E04 21202002 */  addu       $a0, $s1, $zero
/* 31608 80040E08 0D80053C */  lui        $a1, %hi(objectOneShotTriggerTbl + 0xC)
/* 3160C 80040E0C 340FA524 */  addiu      $a1, $a1, %lo(objectOneShotTriggerTbl + 0xC)
/* 31610 80040E10 44C38627 */  addiu      $a2, $gp, %gp_rel(musicInfo + 0x18)
/* 31614 80040E14 1AD1010C */  jal        sprintf
/* 31618 80040E18 2138C000 */   addu      $a3, $a2, $zero
/* 3161C 80040E1C 4000B027 */  addiu      $s0, $sp, 0x40
/* 31620 80040E20 21200002 */  addu       $a0, $s0, $zero
/* 31624 80040E24 0D80053C */  lui        $a1, %hi(objectOneShotTriggerTbl + 0x5C)
/* 31628 80040E28 840FA524 */  addiu      $a1, $a1, %lo(objectOneShotTriggerTbl + 0x5C)
/* 3162C 80040E2C 44C38627 */  addiu      $a2, $gp, %gp_rel(musicInfo + 0x18)
/* 31630 80040E30 1AD1010C */  jal        sprintf
/* 31634 80040E34 2138C000 */   addu      $a3, $a2, $zero
/* 31638 80040E38 21202002 */  addu       $a0, $s1, $zero
/* 3163C 80040E3C 21280002 */  addu       $a1, $s0, $zero
/* 31640 80040E40 21300000 */  addu       $a2, $zero, $zero
/* 31644 80040E44 01000724 */  addiu      $a3, $zero, 0x1
/* 31648 80040E48 0480023C */  lui        $v0, %hi(musicLoadReturnFunc)
/* 3164C 80040E4C 14094224 */  addiu      $v0, $v0, %lo(musicLoadReturnFunc)
/* 31650 80040E50 4349010C */  jal        aadLoadDynamicSoundBank
/* 31654 80040E54 1000A2AF */   sw        $v0, 0x10($sp)
/* 31658 80040E58 07000224 */  addiu      $v0, $zero, 0x7
/* 3165C 80040E5C 2CC382AF */  sw         $v0, %gp_rel(musicInfo)($gp)
/* 31660 80040E60 08000224 */  addiu      $v0, $zero, 0x8
/* 31664 80040E64 30C382AF */  sw         $v0, %gp_rel(musicInfo + 0x4)($gp)
/* 31668 80040E68 C9030108 */  j          .L80040F24
/* 3166C 80040E6C 00000000 */   nop
jlabel .L80040E70
/* 31670 80040E70 34C3828F */  lw         $v0, %gp_rel(musicInfo + 0x8)($gp)
/* 31674 80040E74 34C38327 */  addiu      $v1, $gp, %gp_rel(musicInfo + 0x8)
/* 31678 80040E78 0F004014 */  bnez       $v0, .L80040EB8
/* 3167C 80040E7C 0480043C */   lui       $a0, %hi(musicEndCallbackFunc)
/* 31680 80040E80 3C098424 */  addiu      $a0, $a0, %lo(musicEndCallbackFunc)
/* 31684 80040E84 21280000 */  addu       $a1, $zero, $zero
/* 31688 80040E88 09000224 */  addiu      $v0, $zero, 0x9
/* 3168C 80040E8C F8FF62AC */  sw         $v0, -0x8($v1)
/* 31690 80040E90 0A000224 */  addiu      $v0, $zero, 0xA
/* 31694 80040E94 30C382AF */  sw         $v0, %gp_rel(musicInfo + 0x4)($gp)
/* 31698 80040E98 38C380AF */  sw         $zero, %gp_rel(musicInfo + 0xC)($gp)
.L80040E9C:
/* 3169C 80040E9C 1B53010C */  jal        aadInstallEndSequenceCallback
/* 316A0 80040EA0 00000000 */   nop
/* 316A4 80040EA4 7F000424 */  addiu      $a0, $zero, 0x7F
/* 316A8 80040EA8 2153010C */  jal        aadSetUserVariable
/* 316AC 80040EAC 01000524 */   addiu     $a1, $zero, 0x1
/* 316B0 80040EB0 C9030108 */  j          .L80040F24
/* 316B4 80040EB4 00000000 */   nop
.L80040EB8:
/* 316B8 80040EB8 C9030108 */  j          .L80040F24
/* 316BC 80040EBC F8FF60AC */   sw        $zero, -0x8($v1)
jlabel .L80040EC0
/* 316C0 80040EC0 584A010C */  jal        aadFreeDynamicSoundBank
/* 316C4 80040EC4 01000424 */   addiu     $a0, $zero, 0x1
/* 316C8 80040EC8 C8030108 */  j          .L80040F20
/* 316CC 80040ECC 00000000 */   nop
jlabel .L80040ED0
/* 316D0 80040ED0 2E52010C */  jal        aadStopAllSlots
/* 316D4 80040ED4 00000000 */   nop
/* 316D8 80040ED8 584A010C */  jal        aadFreeDynamicSoundBank
/* 316DC 80040EDC 21200000 */   addu      $a0, $zero, $zero
/* 316E0 80040EE0 01000524 */  addiu      $a1, $zero, 0x1
/* 316E4 80040EE4 7CBF848F */  lw         $a0, %gp_rel(gameTrackerX + 0x1B4)($gp)
/* 316E8 80040EE8 B247010C */  jal        aadStartMusicMasterVolFade
/* 316EC 80040EEC 21300000 */   addu      $a2, $zero, $zero
/* 316F0 80040EF0 C8030108 */  j          .L80040F20
/* 316F4 80040EF4 00000000 */   nop
jlabel .L80040EF8
/* 316F8 80040EF8 2E52010C */  jal        aadStopAllSlots
/* 316FC 80040EFC 00000000 */   nop
/* 31700 80040F00 584A010C */  jal        aadFreeDynamicSoundBank
/* 31704 80040F04 21200000 */   addu      $a0, $zero, $zero
/* 31708 80040F08 01000524 */  addiu      $a1, $zero, 0x1
/* 3170C 80040F0C 7CBF848F */  lw         $a0, %gp_rel(gameTrackerX + 0x1B4)($gp)
/* 31710 80040F10 B247010C */  jal        aadStartMusicMasterVolFade
/* 31714 80040F14 21300000 */   addu      $a2, $zero, $zero
/* 31718 80040F18 44C380A3 */  sb         $zero, %gp_rel(musicInfo + 0x18)($gp)
/* 3171C 80040F1C 3CC380AF */  sw         $zero, %gp_rel(musicInfo + 0x10)($gp)
.L80040F20:
/* 31720 80040F20 2CC380AF */  sw         $zero, %gp_rel(musicInfo)($gp)
jlabel .L80040F24
/* 31724 80040F24 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 31728 80040F28 6800B28F */  lw         $s2, 0x68($sp)
/* 3172C 80040F2C 6400B18F */  lw         $s1, 0x64($sp)
/* 31730 80040F30 6000B08F */  lw         $s0, 0x60($sp)
/* 31734 80040F34 0800E003 */  jr         $ra
/* 31738 80040F38 7000BD27 */   addiu     $sp, $sp, 0x70
.size SOUND_ProcessMusicLoad, . - SOUND_ProcessMusicLoad
