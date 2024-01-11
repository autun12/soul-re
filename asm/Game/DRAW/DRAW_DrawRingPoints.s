.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DRAW_DrawRingPoints
/* 1BB0C 8002B30C 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 1BB10 8002B310 5000B0AF */  sw         $s0, 0x50($sp)
/* 1BB14 8002B314 2180C000 */  addu       $s0, $a2, $zero
/* 1BB18 8002B318 6400B5AF */  sw         $s5, 0x64($sp)
/* 1BB1C 8002B31C 21A8E000 */  addu       $s5, $a3, $zero
/* 1BB20 8002B320 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 1BB24 8002B324 7400BFAF */  sw         $ra, 0x74($sp)
/* 1BB28 8002B328 7000BEAF */  sw         $fp, 0x70($sp)
/* 1BB2C 8002B32C 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 1BB30 8002B330 6800B6AF */  sw         $s6, 0x68($sp)
/* 1BB34 8002B334 6000B4AF */  sw         $s4, 0x60($sp)
/* 1BB38 8002B338 5800B2AF */  sw         $s2, 0x58($sp)
/* 1BB3C 8002B33C 5400B1AF */  sw         $s1, 0x54($sp)
/* 1BB40 8002B340 1400918C */  lw         $s1, 0x14($a0)
/* 1BB44 8002B344 1000838C */  lw         $v1, 0x10($a0)
/* 1BB48 8002B348 8800B78F */  lw         $s7, 0x88($sp)
/* 1BB4C 8002B34C 9000BE8F */  lw         $fp, 0x90($sp)
/* 1BB50 8002B350 8C00B68F */  lw         $s6, 0x8C($sp)
/* 1BB54 8002B354 40100300 */  sll        $v0, $v1, 1
/* 1BB58 8002B358 21104300 */  addu       $v0, $v0, $v1
/* 1BB5C 8002B35C 80100200 */  sll        $v0, $v0, 2
/* 1BB60 8002B360 21A02202 */  addu       $s4, $s1, $v0
/* 1BB64 8002B364 02000224 */  addiu      $v0, $zero, 0x2
/* 1BB68 8002B368 0800C217 */  bne        $fp, $v0, .L8002B38C
/* 1BB6C 8002B36C 2198A000 */   addu      $s3, $a1, $zero
/* 1BB70 8002B370 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 1BB74 8002B374 4400A0A7 */  sh         $zero, 0x44($sp)
/* 1BB78 8002B378 4200A0A7 */  sh         $zero, 0x42($sp)
/* 1BB7C 8002B37C 4000A0A7 */  sh         $zero, 0x40($sp)
/* 1BB80 8002B380 4A00A0A7 */  sh         $zero, 0x4A($sp)
/* 1BB84 8002B384 4800A0A7 */  sh         $zero, 0x48($sp)
/* 1BB88 8002B388 4C00A2A7 */  sh         $v0, 0x4C($sp)
.L8002B38C:
/* 1BB8C 8002B38C 52F2020C */  jal        SetRotMatrix
/* 1BB90 8002B390 21200002 */   addu      $a0, $s0, $zero
/* 1BB94 8002B394 4AF2020C */  jal        SetTransMatrix
/* 1BB98 8002B398 21200002 */   addu      $a0, $s0, $zero
/* 1BB9C 8002B39C 2B103402 */  sltu       $v0, $s1, $s4
/* 1BBA0 8002B3A0 94004010 */  beqz       $v0, .L8002B5F4
/* 1BBA4 8002B3A4 2800B227 */   addiu     $s2, $sp, 0x28
/* 1BBA8 8002B3A8 04003026 */  addiu      $s0, $s1, 0x4
.L8002B3AC:
/* 1BBAC 8002B3AC 03000292 */  lbu        $v0, 0x3($s0)
/* 1BBB0 8002B3B0 00000000 */  nop
/* 1BBB4 8002B3B4 10004230 */  andi       $v0, $v0, 0x10
/* 1BBB8 8002B3B8 89004014 */  bnez       $v0, .L8002B5E0
/* 1BBBC 8002B3BC 00000000 */   nop
/* 1BBC0 8002B3C0 00002496 */  lhu        $a0, 0x0($s1)
/* 1BBC4 8002B3C4 00000000 */  nop
/* 1BBC8 8002B3C8 C0200400 */  sll        $a0, $a0, 3
/* 1BBCC 8002B3CC 21206402 */  addu       $a0, $s3, $a0
/* 1BBD0 8002B3D0 1800A4AF */  sw         $a0, 0x18($sp)
/* 1BBD4 8002B3D4 FEFF0396 */  lhu        $v1, -0x2($s0)
/* 1BBD8 8002B3D8 00000000 */  nop
/* 1BBDC 8002B3DC C0180300 */  sll        $v1, $v1, 3
/* 1BBE0 8002B3E0 21186302 */  addu       $v1, $s3, $v1
/* 1BBE4 8002B3E4 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 1BBE8 8002B3E8 00000296 */  lhu        $v0, 0x0($s0)
/* 1BBEC 8002B3EC 00000000 */  nop
/* 1BBF0 8002B3F0 C0100200 */  sll        $v0, $v0, 3
/* 1BBF4 8002B3F4 21286202 */  addu       $a1, $s3, $v0
/* 1BBF8 8002B3F8 2000A5AF */  sw         $a1, 0x20($sp)
/* 1BBFC 8002B3FC 04008284 */  lh         $v0, 0x4($a0)
/* 1BC00 8002B400 04006384 */  lh         $v1, 0x4($v1)
/* 1BC04 8002B404 27100200 */  nor        $v0, $zero, $v0
/* 1BC08 8002B408 02006004 */  bltz       $v1, .L8002B414
/* 1BC0C 8002B40C C2270200 */   srl       $a0, $v0, 31
/* 1BC10 8002B410 02008434 */  ori        $a0, $a0, 0x2
.L8002B414:
/* 1BC14 8002B414 0400A284 */  lh         $v0, 0x4($a1)
/* 1BC18 8002B418 00000000 */  nop
/* 1BC1C 8002B41C 03004004 */  bltz       $v0, .L8002B42C
/* 1BC20 8002B420 FFFF8324 */   addiu     $v1, $a0, -0x1
/* 1BC24 8002B424 04008434 */  ori        $a0, $a0, 0x4
/* 1BC28 8002B428 FFFF8324 */  addiu      $v1, $a0, -0x1
.L8002B42C:
/* 1BC2C 8002B42C 0600622C */  sltiu      $v0, $v1, 0x6
/* 1BC30 8002B430 6B004010 */  beqz       $v0, .L8002B5E0
/* 1BC34 8002B434 80100300 */   sll       $v0, $v1, 2
/* 1BC38 8002B438 0180083C */  lui        $t0, %hi(jtbl_80010174)
/* 1BC3C 8002B43C 74010825 */  addiu      $t0, $t0, %lo(jtbl_80010174)
/* 1BC40 8002B440 21104800 */  addu       $v0, $v0, $t0
/* 1BC44 8002B444 0000428C */  lw         $v0, 0x0($v0)
/* 1BC48 8002B448 00000000 */  nop
/* 1BC4C 8002B44C 08004000 */  jr         $v0
/* 1BC50 8002B450 00000000 */   nop
jlabel .L8002B454
/* 1BC54 8002B454 1800A58F */  lw         $a1, 0x18($sp)
/* 1BC58 8002B458 1C00A68F */  lw         $a2, 0x1C($sp)
/* 1BC5C 8002B45C 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BC60 8002B460 3000A427 */   addiu     $a0, $sp, 0x30
/* 1BC64 8002B464 1800A58F */  lw         $a1, 0x18($sp)
/* 1BC68 8002B468 2000A68F */  lw         $a2, 0x20($sp)
/* 1BC6C 8002B46C 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BC70 8002B470 3800A427 */   addiu     $a0, $sp, 0x38
/* 1BC74 8002B474 01000324 */  addiu      $v1, $zero, 0x1
/* 1BC78 8002B478 55AD0008 */  j          .L8002B554
/* 1BC7C 8002B47C 02000424 */   addiu     $a0, $zero, 0x2
jlabel .L8002B480
/* 1BC80 8002B480 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1BC84 8002B484 1800A68F */  lw         $a2, 0x18($sp)
/* 1BC88 8002B488 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BC8C 8002B48C 2800A427 */   addiu     $a0, $sp, 0x28
/* 1BC90 8002B490 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1BC94 8002B494 2000A68F */  lw         $a2, 0x20($sp)
/* 1BC98 8002B498 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BC9C 8002B49C 3800A427 */   addiu     $a0, $sp, 0x38
/* 1BCA0 8002B4A0 02000324 */  addiu      $v1, $zero, 0x2
/* 1BCA4 8002B4A4 55AD0008 */  j          .L8002B554
/* 1BCA8 8002B4A8 21200000 */   addu      $a0, $zero, $zero
jlabel .L8002B4AC
/* 1BCAC 8002B4AC 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1BCB0 8002B4B0 2000A68F */  lw         $a2, 0x20($sp)
/* 1BCB4 8002B4B4 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BCB8 8002B4B8 3000A427 */   addiu     $a0, $sp, 0x30
/* 1BCBC 8002B4BC 1800A58F */  lw         $a1, 0x18($sp)
/* 1BCC0 8002B4C0 2000A68F */  lw         $a2, 0x20($sp)
/* 1BCC4 8002B4C4 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BCC8 8002B4C8 21204002 */   addu      $a0, $s2, $zero
/* 1BCCC 8002B4CC 01000324 */  addiu      $v1, $zero, 0x1
/* 1BCD0 8002B4D0 55AD0008 */  j          .L8002B554
/* 1BCD4 8002B4D4 21200000 */   addu      $a0, $zero, $zero
jlabel .L8002B4D8
/* 1BCD8 8002B4D8 2000A58F */  lw         $a1, 0x20($sp)
/* 1BCDC 8002B4DC 1800A68F */  lw         $a2, 0x18($sp)
/* 1BCE0 8002B4E0 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BCE4 8002B4E4 2800A427 */   addiu     $a0, $sp, 0x28
/* 1BCE8 8002B4E8 2000A58F */  lw         $a1, 0x20($sp)
/* 1BCEC 8002B4EC 1C00A68F */  lw         $a2, 0x1C($sp)
/* 1BCF0 8002B4F0 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BCF4 8002B4F4 3000A427 */   addiu     $a0, $sp, 0x30
/* 1BCF8 8002B4F8 54AD0008 */  j          .L8002B550
/* 1BCFC 8002B4FC 21180000 */   addu      $v1, $zero, $zero
jlabel .L8002B500
/* 1BD00 8002B500 1800A58F */  lw         $a1, 0x18($sp)
/* 1BD04 8002B504 1C00A68F */  lw         $a2, 0x1C($sp)
/* 1BD08 8002B508 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BD0C 8002B50C 2800A427 */   addiu     $a0, $sp, 0x28
/* 1BD10 8002B510 2000A58F */  lw         $a1, 0x20($sp)
/* 1BD14 8002B514 1C00A68F */  lw         $a2, 0x1C($sp)
/* 1BD18 8002B518 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BD1C 8002B51C 3800A427 */   addiu     $a0, $sp, 0x38
/* 1BD20 8002B520 21180000 */  addu       $v1, $zero, $zero
/* 1BD24 8002B524 55AD0008 */  j          .L8002B554
/* 1BD28 8002B528 02000424 */   addiu     $a0, $zero, 0x2
jlabel .L8002B52C
/* 1BD2C 8002B52C 2000A58F */  lw         $a1, 0x20($sp)
/* 1BD30 8002B530 1800A68F */  lw         $a2, 0x18($sp)
/* 1BD34 8002B534 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BD38 8002B538 3800A427 */   addiu     $a0, $sp, 0x38
/* 1BD3C 8002B53C 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1BD40 8002B540 1800A68F */  lw         $a2, 0x18($sp)
/* 1BD44 8002B544 44AA000C */  jal        fDRAW_SPLIT_INTPL_XYZ
/* 1BD48 8002B548 3000A427 */   addiu     $a0, $sp, 0x30
/* 1BD4C 8002B54C 02000324 */  addiu      $v1, $zero, 0x2
.L8002B550:
/* 1BD50 8002B550 01000424 */  addiu      $a0, $zero, 0x1
.L8002B554:
/* 1BD54 8002B554 02000224 */  addiu      $v0, $zero, 0x2
/* 1BD58 8002B558 1100C217 */  bne        $fp, $v0, .L8002B5A0
/* 1BD5C 8002B55C C0100400 */   sll       $v0, $a0, 3
/* 1BD60 8002B560 C0100300 */  sll        $v0, $v1, 3
/* 1BD64 8002B564 21104202 */  addu       $v0, $s2, $v0
/* 1BD68 8002B568 000040C8 */  lwc2       $0, 0x0($v0)
/* 1BD6C 8002B56C 040041C8 */  lwc2       $1, 0x4($v0)
/* 1BD70 8002B570 00000000 */  nop
/* 1BD74 8002B574 00000000 */  nop
/* 1BD78 8002B578 1200484A */  MVMVA      1, 0, 0, 0, 0
/* 1BD7C 8002B57C 4800A227 */  addiu      $v0, $sp, 0x48
/* 1BD80 8002B580 1000A2AF */  sw         $v0, 0x10($sp)
/* 1BD84 8002B584 2120A002 */  addu       $a0, $s5, $zero
/* 1BD88 8002B588 2128E002 */  addu       $a1, $s7, $zero
/* 1BD8C 8002B58C 2130C002 */  addu       $a2, $s6, $zero
/* 1BD90 8002B590 7FAC000C */  jal        DRAW_RingPoint
/* 1BD94 8002B594 4000A727 */   addiu     $a3, $sp, 0x40
/* 1BD98 8002B598 79AD0008 */  j          .L8002B5E4
/* 1BD9C 8002B59C 0C001026 */   addiu     $s0, $s0, 0xC
.L8002B5A0:
/* 1BDA0 8002B5A0 C0180300 */  sll        $v1, $v1, 3
/* 1BDA4 8002B5A4 21184302 */  addu       $v1, $s2, $v1
/* 1BDA8 8002B5A8 21104202 */  addu       $v0, $s2, $v0
/* 1BDAC 8002B5AC 000060C8 */  lwc2       $0, 0x0($v1)
/* 1BDB0 8002B5B0 040061C8 */  lwc2       $1, 0x4($v1)
/* 1BDB4 8002B5B4 000042C8 */  lwc2       $2, 0x0($v0)
/* 1BDB8 8002B5B8 040043C8 */  lwc2       $3, 0x4($v0)
/* 1BDBC 8002B5BC 000064C8 */  lwc2       $4, 0x0($v1)
/* 1BDC0 8002B5C0 040065C8 */  lwc2       $5, 0x4($v1)
/* 1BDC4 8002B5C4 00000000 */  nop
/* 1BDC8 8002B5C8 00000000 */  nop
/* 1BDCC 8002B5CC 3000284A */  RTPT
/* 1BDD0 8002B5D0 2120A002 */  addu       $a0, $s5, $zero
/* 1BDD4 8002B5D4 2128E002 */  addu       $a1, $s7, $zero
/* 1BDD8 8002B5D8 33AC000C */  jal        DRAW_RingLine
/* 1BDDC 8002B5DC 2130C002 */   addu      $a2, $s6, $zero
.L8002B5E0:
/* 1BDE0 8002B5E0 0C001026 */  addiu      $s0, $s0, 0xC
.L8002B5E4:
/* 1BDE4 8002B5E4 0C003126 */  addiu      $s1, $s1, 0xC
/* 1BDE8 8002B5E8 2B103402 */  sltu       $v0, $s1, $s4
/* 1BDEC 8002B5EC 6FFF4014 */  bnez       $v0, .L8002B3AC
/* 1BDF0 8002B5F0 00000000 */   nop
.L8002B5F4:
/* 1BDF4 8002B5F4 0400A28E */  lw         $v0, 0x4($s5)
/* 1BDF8 8002B5F8 7400BF8F */  lw         $ra, 0x74($sp)
/* 1BDFC 8002B5FC 7000BE8F */  lw         $fp, 0x70($sp)
/* 1BE00 8002B600 6C00B78F */  lw         $s7, 0x6C($sp)
/* 1BE04 8002B604 6800B68F */  lw         $s6, 0x68($sp)
/* 1BE08 8002B608 6400B58F */  lw         $s5, 0x64($sp)
/* 1BE0C 8002B60C 6000B48F */  lw         $s4, 0x60($sp)
/* 1BE10 8002B610 5C00B38F */  lw         $s3, 0x5C($sp)
/* 1BE14 8002B614 5800B28F */  lw         $s2, 0x58($sp)
/* 1BE18 8002B618 5400B18F */  lw         $s1, 0x54($sp)
/* 1BE1C 8002B61C 5000B08F */  lw         $s0, 0x50($sp)
/* 1BE20 8002B620 0800E003 */  jr         $ra
/* 1BE24 8002B624 7800BD27 */   addiu     $sp, $sp, 0x78
.size DRAW_DrawRingPoints, . - DRAW_DrawRingPoints
