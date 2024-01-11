.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PhysicsCheckLinkedMove
/* 651FC 800749FC 60FFBD27 */  addiu      $sp, $sp, -0xA0
/* 65200 80074A00 8000B2AF */  sw         $s2, 0x80($sp)
/* 65204 80074A04 21908000 */  addu       $s2, $a0, $zero
/* 65208 80074A08 9C00BFAF */  sw         $ra, 0x9C($sp)
/* 6520C 80074A0C 9800BEAF */  sw         $fp, 0x98($sp)
/* 65210 80074A10 9400B7AF */  sw         $s7, 0x94($sp)
/* 65214 80074A14 9000B6AF */  sw         $s6, 0x90($sp)
/* 65218 80074A18 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 6521C 80074A1C 8800B4AF */  sw         $s4, 0x88($sp)
/* 65220 80074A20 8400B3AF */  sw         $s3, 0x84($sp)
/* 65224 80074A24 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 65228 80074A28 7800B0AF */  sw         $s0, 0x78($sp)
/* 6522C 80074A2C A400A5AF */  sw         $a1, 0xA4($sp)
/* 65230 80074A30 4000428E */  lw         $v0, 0x40($s2)
/* 65234 80074A34 00000000 */  nop
/* 65238 80074A38 F9004010 */  beqz       $v0, .L80074E20
/* 6523C 80074A3C 5800A6A7 */   sh        $a2, 0x58($sp)
/* 65240 80074A40 2198A000 */  addu       $s3, $a1, $zero
/* 65244 80074A44 0000708E */  lw         $s0, 0x0($s3)
/* 65248 80074A48 0400658E */  lw         $a1, 0x4($s3)
/* 6524C 80074A4C 4000038E */  lw         $v1, 0x40($s0)
/* 65250 80074A50 40110500 */  sll        $v0, $a1, 5
/* 65254 80074A54 21A06200 */  addu       $s4, $v1, $v0
/* 65258 80074A58 1400878E */  lw         $a3, 0x14($s4)
/* 6525C 80074A5C 00000000 */  nop
/* 65260 80074A60 6000A7AF */  sw         $a3, 0x60($sp)
/* 65264 80074A64 1800888E */  lw         $t0, 0x18($s4)
/* 65268 80074A68 00000000 */  nop
/* 6526C 80074A6C 6400A8AF */  sw         $t0, 0x64($sp)
/* 65270 80074A70 1C00878E */  lw         $a3, 0x1C($s4)
/* 65274 80074A74 00000000 */  nop
/* 65278 80074A78 6800A7AF */  sw         $a3, 0x68($sp)
/* 6527C 80074A7C 5E004886 */  lh         $t0, 0x5E($s2)
/* 65280 80074A80 5C005586 */  lh         $s5, 0x5C($s2)
/* 65284 80074A84 6C00A8AF */  sw         $t0, 0x6C($sp)
/* 65288 80074A88 60004786 */  lh         $a3, 0x60($s2)
/* 6528C 80074A8C 3C00038E */  lw         $v1, 0x3C($s0)
/* 65290 80074A90 8C00448E */  lw         $a0, 0x8C($s2)
/* 65294 80074A94 00000000 */  nop
/* 65298 80074A98 05006414 */  bne        $v1, $a0, .L80074AB0
/* 6529C 80074A9C 7000A7AF */   sw        $a3, 0x70($sp)
/* 652A0 80074AA0 9000428E */  lw         $v0, 0x90($s2)
/* 652A4 80074AA4 00000000 */  nop
/* 652A8 80074AA8 4700A210 */  beq        $a1, $v0, .L80074BC8
/* 652AC 80074AAC 21880000 */   addu      $s1, $zero, $zero
.L80074AB0:
/* 652B0 80074AB0 0A008310 */  beq        $a0, $v1, .L80074ADC
/* 652B4 80074AB4 00000000 */   nop
/* 652B8 80074AB8 62D2000C */  jal        INSTANCE_Find
/* 652BC 80074ABC 00000000 */   nop
/* 652C0 80074AC0 21204000 */  addu       $a0, $v0, $zero
/* 652C4 80074AC4 05008010 */  beqz       $a0, .L80074ADC
/* 652C8 80074AC8 7FFF0324 */   addiu     $v1, $zero, -0x81
/* 652CC 80074ACC 1800828C */  lw         $v0, 0x18($a0)
/* 652D0 80074AD0 00000000 */  nop
/* 652D4 80074AD4 24104300 */  and        $v0, $v0, $v1
/* 652D8 80074AD8 180082AC */  sw         $v0, 0x18($a0)
.L80074ADC:
/* 652DC 80074ADC 21208002 */  addu       $a0, $s4, $zero
/* 652E0 80074AE0 1800028E */  lw         $v0, 0x18($s0)
/* 652E4 80074AE4 3C00038E */  lw         $v1, 0x3C($s0)
/* 652E8 80074AE8 80004234 */  ori        $v0, $v0, 0x80
/* 652EC 80074AEC 180002AE */  sw         $v0, 0x18($s0)
/* 652F0 80074AF0 8C0043AE */  sw         $v1, 0x8C($s2)
/* 652F4 80074AF4 0400628E */  lw         $v0, 0x4($s3)
/* 652F8 80074AF8 1000A527 */  addiu      $a1, $sp, 0x10
/* 652FC 80074AFC 880140AE */  sw         $zero, 0x188($s2)
/* 65300 80074B00 7C0140AE */  sw         $zero, 0x17C($s2)
/* 65304 80074B04 88F4020C */  jal        TransposeMatrix
/* 65308 80074B08 900042AE */   sw        $v0, 0x90($s2)
/* 6530C 80074B0C 1000A427 */  addiu      $a0, $sp, 0x10
/* 65310 80074B10 3000B127 */  addiu      $s1, $sp, 0x30
/* 65314 80074B14 21282002 */  addu       $a1, $s1, $zero
/* 65318 80074B18 6000A88F */  lw         $t0, 0x60($sp)
/* 6531C 80074B1C 6C00A78F */  lw         $a3, 0x6C($sp)
/* 65320 80074B20 2310A802 */  subu       $v0, $s5, $t0
/* 65324 80074B24 6400A88F */  lw         $t0, 0x64($sp)
/* 65328 80074B28 A8005026 */  addiu      $s0, $s2, 0xA8
/* 6532C 80074B2C 3000A2AF */  sw         $v0, 0x30($sp)
/* 65330 80074B30 2310E800 */  subu       $v0, $a3, $t0
/* 65334 80074B34 7000A78F */  lw         $a3, 0x70($sp)
/* 65338 80074B38 6800A88F */  lw         $t0, 0x68($sp)
/* 6533C 80074B3C 21300002 */  addu       $a2, $s0, $zero
/* 65340 80074B40 3400A2AF */  sw         $v0, 0x34($sp)
/* 65344 80074B44 2310E800 */  subu       $v0, $a3, $t0
/* 65348 80074B48 30F4020C */  jal        ApplyMatrixLV
/* 6534C 80074B4C 3800A2AF */   sw        $v0, 0x38($sp)
/* 65350 80074B50 1000A427 */  addiu      $a0, $sp, 0x10
/* 65354 80074B54 4000458E */  lw         $a1, 0x40($s2)
/* 65358 80074B58 BFF7020C */  jal        MulMatrix0
/* 6535C 80074B5C 94004626 */   addiu     $a2, $s2, 0x94
/* 65360 80074B60 21208002 */  addu       $a0, $s4, $zero
/* 65364 80074B64 21280002 */  addu       $a1, $s0, $zero
/* 65368 80074B68 30F4020C */  jal        ApplyMatrixLV
/* 6536C 80074B6C 21302002 */   addu      $a2, $s1, $zero
/* 65370 80074B70 140060A6 */  sh         $zero, 0x14($s3)
/* 65374 80074B74 120060A6 */  sh         $zero, 0x12($s3)
/* 65378 80074B78 100060A6 */  sh         $zero, 0x10($s3)
/* 6537C 80074B7C 3000A297 */  lhu        $v0, 0x30($sp)
/* 65380 80074B80 6000A78F */  lw         $a3, 0x60($sp)
/* 65384 80074B84 00000000 */  nop
/* 65388 80074B88 21104700 */  addu       $v0, $v0, $a3
/* 6538C 80074B8C 2310A202 */  subu       $v0, $s5, $v0
/* 65390 80074B90 080062A6 */  sh         $v0, 0x8($s3)
/* 65394 80074B94 3400A297 */  lhu        $v0, 0x34($sp)
/* 65398 80074B98 6400A88F */  lw         $t0, 0x64($sp)
/* 6539C 80074B9C 6C00A78F */  lw         $a3, 0x6C($sp)
/* 653A0 80074BA0 21104800 */  addu       $v0, $v0, $t0
/* 653A4 80074BA4 2310E200 */  subu       $v0, $a3, $v0
/* 653A8 80074BA8 0A0062A6 */  sh         $v0, 0xA($s3)
/* 653AC 80074BAC 3800A297 */  lhu        $v0, 0x38($sp)
/* 653B0 80074BB0 6800A88F */  lw         $t0, 0x68($sp)
/* 653B4 80074BB4 7000A78F */  lw         $a3, 0x70($sp)
/* 653B8 80074BB8 21104800 */  addu       $v0, $v0, $t0
/* 653BC 80074BBC 2310E200 */  subu       $v0, $a3, $v0
/* 653C0 80074BC0 5ED30108 */  j          .L80074D78
/* 653C4 80074BC4 0C0062A6 */   sh        $v0, 0xC($s3)
.L80074BC8:
/* 653C8 80074BC8 64005686 */  lh         $s6, 0x64($s2)
/* 653CC 80074BCC 66005E86 */  lh         $fp, 0x66($s2)
/* 653D0 80074BD0 7400438E */  lw         $v1, 0x74($s2)
/* 653D4 80074BD4 7C00428E */  lw         $v0, 0x7C($s2)
/* 653D8 80074BD8 68005786 */  lh         $s7, 0x68($s2)
/* 653DC 80074BDC 06006214 */  bne        $v1, $v0, .L80074BF8
/* 653E0 80074BE0 21802002 */   addu      $s0, $s1, $zero
/* 653E4 80074BE4 78004386 */  lh         $v1, 0x78($s2)
/* 653E8 80074BE8 80004286 */  lh         $v0, 0x80($s2)
/* 653EC 80074BEC 00000000 */  nop
/* 653F0 80074BF0 02006210 */  beq        $v1, $v0, .L80074BFC
/* 653F4 80074BF4 00000000 */   nop
.L80074BF8:
/* 653F8 80074BF8 01001024 */  addiu      $s0, $zero, 0x1
.L80074BFC:
/* 653FC 80074BFC 0900B616 */  bne        $s5, $s6, .L80074C24
/* 65400 80074C00 00000000 */   nop
/* 65404 80074C04 6C00A88F */  lw         $t0, 0x6C($sp)
/* 65408 80074C08 00000000 */  nop
/* 6540C 80074C0C 05001E15 */  bne        $t0, $fp, .L80074C24
/* 65410 80074C10 00000000 */   nop
/* 65414 80074C14 7000A78F */  lw         $a3, 0x70($sp)
/* 65418 80074C18 00000000 */  nop
/* 6541C 80074C1C 0200F710 */  beq        $a3, $s7, .L80074C28
/* 65420 80074C20 00000000 */   nop
.L80074C24:
/* 65424 80074C24 01001124 */  addiu      $s1, $zero, 0x1
.L80074C28:
/* 65428 80074C28 03002016 */  bnez       $s1, .L80074C38
/* 6542C 80074C2C 21208002 */   addu      $a0, $s4, $zero
/* 65430 80074C30 26000012 */  beqz       $s0, .L80074CCC
/* 65434 80074C34 A8004526 */   addiu     $a1, $s2, 0xA8
.L80074C38:
/* 65438 80074C38 88F4020C */  jal        TransposeMatrix
/* 6543C 80074C3C 1000A527 */   addiu     $a1, $sp, 0x10
/* 65440 80074C40 04000012 */  beqz       $s0, .L80074C54
/* 65444 80074C44 1000A427 */   addiu     $a0, $sp, 0x10
/* 65448 80074C48 4000458E */  lw         $a1, 0x40($s2)
/* 6544C 80074C4C BFF7020C */  jal        MulMatrix0
/* 65450 80074C50 94004626 */   addiu     $a2, $s2, 0x94
.L80074C54:
/* 65454 80074C54 1B002012 */  beqz       $s1, .L80074CC4
/* 65458 80074C58 1000A427 */   addiu     $a0, $sp, 0x10
/* 6545C 80074C5C 3000A527 */  addiu      $a1, $sp, 0x30
/* 65460 80074C60 2130A000 */  addu       $a2, $a1, $zero
/* 65464 80074C64 6C00A88F */  lw         $t0, 0x6C($sp)
/* 65468 80074C68 7000A78F */  lw         $a3, 0x70($sp)
/* 6546C 80074C6C 2310B602 */  subu       $v0, $s5, $s6
/* 65470 80074C70 3000A2AF */  sw         $v0, 0x30($sp)
/* 65474 80074C74 23101E01 */  subu       $v0, $t0, $fp
/* 65478 80074C78 3400A2AF */  sw         $v0, 0x34($sp)
/* 6547C 80074C7C 2310F700 */  subu       $v0, $a3, $s7
/* 65480 80074C80 30F4020C */  jal        ApplyMatrixLV
/* 65484 80074C84 3800A2AF */   sw        $v0, 0x38($sp)
/* 65488 80074C88 A800428E */  lw         $v0, 0xA8($s2)
/* 6548C 80074C8C 3000A38F */  lw         $v1, 0x30($sp)
/* 65490 80074C90 00000000 */  nop
/* 65494 80074C94 21104300 */  addu       $v0, $v0, $v1
/* 65498 80074C98 A80042AE */  sw         $v0, 0xA8($s2)
/* 6549C 80074C9C AC00428E */  lw         $v0, 0xAC($s2)
/* 654A0 80074CA0 3400A38F */  lw         $v1, 0x34($sp)
/* 654A4 80074CA4 00000000 */  nop
/* 654A8 80074CA8 21104300 */  addu       $v0, $v0, $v1
/* 654AC 80074CAC AC0042AE */  sw         $v0, 0xAC($s2)
/* 654B0 80074CB0 B000428E */  lw         $v0, 0xB0($s2)
/* 654B4 80074CB4 3800A38F */  lw         $v1, 0x38($sp)
/* 654B8 80074CB8 00000000 */  nop
/* 654BC 80074CBC 21104300 */  addu       $v0, $v0, $v1
/* 654C0 80074CC0 B00042AE */  sw         $v0, 0xB0($s2)
.L80074CC4:
/* 654C4 80074CC4 21208002 */  addu       $a0, $s4, $zero
/* 654C8 80074CC8 A8004526 */  addiu      $a1, $s2, 0xA8
.L80074CCC:
/* 654CC 80074CCC 30F4020C */  jal        ApplyMatrixLV
/* 654D0 80074CD0 4800A627 */   addiu     $a2, $sp, 0x48
/* 654D4 80074CD4 21208002 */  addu       $a0, $s4, $zero
/* 654D8 80074CD8 94004526 */  addiu      $a1, $s2, 0x94
/* 654DC 80074CDC BFF7020C */  jal        MulMatrix0
/* 654E0 80074CE0 1000A627 */   addiu     $a2, $sp, 0x10
/* 654E4 80074CE4 4000A427 */  addiu      $a0, $sp, 0x40
/* 654E8 80074CE8 1000A527 */  addiu      $a1, $sp, 0x10
/* 654EC 80074CEC 1758020C */  jal        G2EulerAngles_FromMatrix
/* 654F0 80074CF0 15000624 */   addiu     $a2, $zero, 0x15
/* 654F4 80074CF4 4800A297 */  lhu        $v0, 0x48($sp)
/* 654F8 80074CF8 6000A88F */  lw         $t0, 0x60($sp)
/* 654FC 80074CFC 00000000 */  nop
/* 65500 80074D00 21104800 */  addu       $v0, $v0, $t0
/* 65504 80074D04 23105500 */  subu       $v0, $v0, $s5
/* 65508 80074D08 080062A6 */  sh         $v0, 0x8($s3)
/* 6550C 80074D0C 4C00A297 */  lhu        $v0, 0x4C($sp)
/* 65510 80074D10 6400A78F */  lw         $a3, 0x64($sp)
/* 65514 80074D14 6C00A88F */  lw         $t0, 0x6C($sp)
/* 65518 80074D18 21104700 */  addu       $v0, $v0, $a3
/* 6551C 80074D1C 23104800 */  subu       $v0, $v0, $t0
/* 65520 80074D20 0A0062A6 */  sh         $v0, 0xA($s3)
/* 65524 80074D24 5000A297 */  lhu        $v0, 0x50($sp)
/* 65528 80074D28 6800A78F */  lw         $a3, 0x68($sp)
/* 6552C 80074D2C 7000A88F */  lw         $t0, 0x70($sp)
/* 65530 80074D30 21104700 */  addu       $v0, $v0, $a3
/* 65534 80074D34 23104800 */  subu       $v0, $v0, $t0
/* 65538 80074D38 0C0062A6 */  sh         $v0, 0xC($s3)
/* 6553C 80074D3C 4000A297 */  lhu        $v0, 0x40($sp)
/* 65540 80074D40 7C004396 */  lhu        $v1, 0x7C($s2)
/* 65544 80074D44 00000000 */  nop
/* 65548 80074D48 23104300 */  subu       $v0, $v0, $v1
/* 6554C 80074D4C 100062A6 */  sh         $v0, 0x10($s3)
/* 65550 80074D50 4200A297 */  lhu        $v0, 0x42($sp)
/* 65554 80074D54 7E004396 */  lhu        $v1, 0x7E($s2)
/* 65558 80074D58 00000000 */  nop
/* 6555C 80074D5C 23104300 */  subu       $v0, $v0, $v1
/* 65560 80074D60 120062A6 */  sh         $v0, 0x12($s3)
/* 65564 80074D64 4400A297 */  lhu        $v0, 0x44($sp)
/* 65568 80074D68 80004396 */  lhu        $v1, 0x80($s2)
/* 6556C 80074D6C 00000000 */  nop
/* 65570 80074D70 23104300 */  subu       $v0, $v0, $v1
/* 65574 80074D74 140062A6 */  sh         $v0, 0x14($s3)
.L80074D78:
/* 65578 80074D78 5800A797 */  lhu        $a3, 0x58($sp)
/* 6557C 80074D7C 00000000 */  nop
/* 65580 80074D80 0400E230 */  andi       $v0, $a3, 0x4
/* 65584 80074D84 07004010 */  beqz       $v0, .L80074DA4
/* 65588 80074D88 21204002 */   addu      $a0, $s2, $zero
/* 6558C 80074D8C 21286002 */  addu       $a1, $s3, $zero
/* 65590 80074D90 FFFFE630 */  andi       $a2, $a3, 0xFFFF
/* 65594 80074D94 C2300600 */  srl        $a2, $a2, 3
/* 65598 80074D98 0100C638 */  xori       $a2, $a2, 0x1
/* 6559C 80074D9C 96D3010C */  jal        PhysicsDefaultLinkedMoveResponse
/* 655A0 80074DA0 0100C630 */   andi      $a2, $a2, 0x1
.L80074DA4:
/* 655A4 80074DA4 5800A897 */  lhu        $t0, 0x58($sp)
/* 655A8 80074DA8 00000000 */  nop
/* 655AC 80074DAC 02000231 */  andi       $v0, $t0, 0x2
/* 655B0 80074DB0 05004010 */  beqz       $v0, .L80074DC8
/* 655B4 80074DB4 21204002 */   addu      $a0, $s2, $zero
/* 655B8 80074DB8 0104053C */  lui        $a1, (0x4010008 >> 16)
/* 655BC 80074DBC A400A68F */  lw         $a2, 0xA4($sp)
/* 655C0 80074DC0 A1D1000C */  jal        INSTANCE_Post
/* 655C4 80074DC4 0800A534 */   ori       $a1, $a1, (0x4010008 & 0xFFFF)
.L80074DC8:
/* 655C8 80074DC8 0800628E */  lw         $v0, 0x8($s3)
/* 655CC 80074DCC 00000000 */  nop
/* 655D0 80074DD0 0D004014 */  bnez       $v0, .L80074E08
/* 655D4 80074DD4 00000000 */   nop
/* 655D8 80074DD8 0C006286 */  lh         $v0, 0xC($s3)
/* 655DC 80074DDC 00000000 */  nop
/* 655E0 80074DE0 09004014 */  bnez       $v0, .L80074E08
/* 655E4 80074DE4 00000000 */   nop
/* 655E8 80074DE8 1000628E */  lw         $v0, 0x10($s3)
/* 655EC 80074DEC 00000000 */  nop
/* 655F0 80074DF0 05004014 */  bnez       $v0, .L80074E08
/* 655F4 80074DF4 00000000 */   nop
/* 655F8 80074DF8 14006286 */  lh         $v0, 0x14($s3)
/* 655FC 80074DFC 00000000 */  nop
/* 65600 80074E00 05004010 */  beqz       $v0, .L80074E18
/* 65604 80074E04 00000000 */   nop
.L80074E08:
/* 65608 80074E08 1800428E */  lw         $v0, 0x18($s2)
/* 6560C 80074E0C 00000000 */  nop
/* 65610 80074E10 08004234 */  ori        $v0, $v0, 0x8
/* 65614 80074E14 180042AE */  sw         $v0, 0x18($s2)
.L80074E18:
/* 65618 80074E18 8AD30108 */  j          .L80074E28
/* 6561C 80074E1C 0100023C */   lui       $v0, (0x10000 >> 16)
.L80074E20:
/* 65620 80074E20 8C0040AE */  sw         $zero, 0x8C($s2)
/* 65624 80074E24 21100000 */  addu       $v0, $zero, $zero
.L80074E28:
/* 65628 80074E28 9C00BF8F */  lw         $ra, 0x9C($sp)
/* 6562C 80074E2C 9800BE8F */  lw         $fp, 0x98($sp)
/* 65630 80074E30 9400B78F */  lw         $s7, 0x94($sp)
/* 65634 80074E34 9000B68F */  lw         $s6, 0x90($sp)
/* 65638 80074E38 8C00B58F */  lw         $s5, 0x8C($sp)
/* 6563C 80074E3C 8800B48F */  lw         $s4, 0x88($sp)
/* 65640 80074E40 8400B38F */  lw         $s3, 0x84($sp)
/* 65644 80074E44 8000B28F */  lw         $s2, 0x80($sp)
/* 65648 80074E48 7C00B18F */  lw         $s1, 0x7C($sp)
/* 6564C 80074E4C 7800B08F */  lw         $s0, 0x78($sp)
/* 65650 80074E50 0800E003 */  jr         $ra
/* 65654 80074E54 A000BD27 */   addiu     $sp, $sp, 0xA0
.size PhysicsCheckLinkedMove, . - PhysicsCheckLinkedMove
