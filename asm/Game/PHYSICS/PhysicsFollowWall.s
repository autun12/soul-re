.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PhysicsFollowWall
/* 67B54 80077354 48FFBD27 */  addiu      $sp, $sp, -0xB8
/* 67B58 80077358 9800B2AF */  sw         $s2, 0x98($sp)
/* 67B5C 8007735C 21908000 */  addu       $s2, $a0, $zero
/* 67B60 80077360 AC00B7AF */  sw         $s7, 0xAC($sp)
/* 67B64 80077364 21B8C000 */  addu       $s7, $a2, $zero
/* 67B68 80077368 9000B0AF */  sw         $s0, 0x90($sp)
/* 67B6C 8007736C 2180E000 */  addu       $s0, $a3, $zero
/* 67B70 80077370 21200000 */  addu       $a0, $zero, $zero
/* 67B74 80077374 40000524 */  addiu      $a1, $zero, 0x40
/* 67B78 80077378 5800A727 */  addiu      $a3, $sp, 0x58
/* 67B7C 8007737C 9400B1AF */  sw         $s1, 0x94($sp)
/* 67B80 80077380 2188E002 */  addu       $s1, $s7, $zero
/* 67B84 80077384 9C00B3AF */  sw         $s3, 0x9C($sp)
/* 67B88 80077388 5000B327 */  addiu      $s3, $sp, 0x50
/* 67B8C 8007738C B000BFAF */  sw         $ra, 0xB0($sp)
/* 67B90 80077390 A800B6AF */  sw         $s6, 0xA8($sp)
/* 67B94 80077394 A400B5AF */  sw         $s5, 0xA4($sp)
/* 67B98 80077398 A000B4AF */  sw         $s4, 0xA0($sp)
/* 67B9C 8007739C 280020AE */  sw         $zero, 0x28($s1)
/* 67BA0 800773A0 3800A7AF */  sw         $a3, 0x38($sp)
/* 67BA4 800773A4 3400B3AF */  sw         $s3, 0x34($sp)
/* 67BA8 800773A8 00002286 */  lh         $v0, 0x0($s1)
/* 67BAC 800773AC 4000438E */  lw         $v1, 0x40($s2)
/* 67BB0 800773B0 40110200 */  sll        $v0, $v0, 5
/* 67BB4 800773B4 21186200 */  addu       $v1, $v1, $v0
/* 67BB8 800773B8 D0EC83AF */  sw         $v1, %gp_rel(pTempMat.72)($gp)
/* 67BBC 800773BC 20E0010C */  jal        PHYSICS_GenericLineCheckSetup
/* 67BC0 800773C0 21308000 */   addu      $a2, $a0, $zero
/* 67BC4 800773C4 21200000 */  addu       $a0, $zero, $zero
/* 67BC8 800773C8 21308000 */  addu       $a2, $a0, $zero
/* 67BCC 800773CC 02002586 */  lh         $a1, 0x2($s1)
/* 67BD0 800773D0 20E0010C */  jal        PHYSICS_GenericLineCheckSetup
/* 67BD4 800773D4 21386002 */   addu      $a3, $s3, $zero
/* 67BD8 800773D8 21204002 */  addu       $a0, $s2, $zero
/* 67BDC 800773DC D0EC858F */  lw         $a1, %gp_rel(pTempMat.72)($gp)
/* 67BE0 800773E0 2000A727 */  addiu      $a3, $sp, 0x20
/* 67BE4 800773E4 24E0010C */  jal        PHYSICS_GenericLineCheck
/* 67BE8 800773E8 2130A000 */   addu      $a2, $a1, $zero
/* 67BEC 800773EC 2000A387 */  lh         $v1, 0x20($sp)
/* 67BF0 800773F0 03000224 */  addiu      $v0, $zero, 0x3
/* 67BF4 800773F4 04006210 */  beq        $v1, $v0, .L80077408
/* 67BF8 800773F8 21A80002 */   addu      $s5, $s0, $zero
/* 67BFC 800773FC 05000224 */  addiu      $v0, $zero, 0x5
/* 67C00 80077400 76006214 */  bne        $v1, $v0, .L800775DC
/* 67C04 80077404 21200000 */   addu      $a0, $zero, $zero
.L80077408:
/* 67C08 80077408 5000A297 */  lhu        $v0, 0x50($sp)
/* 67C0C 8007740C 00000000 */  nop
/* 67C10 80077410 200142A6 */  sh         $v0, 0x120($s2)
/* 67C14 80077414 5200A297 */  lhu        $v0, 0x52($sp)
/* 67C18 80077418 00000000 */  nop
/* 67C1C 8007741C 220142A6 */  sh         $v0, 0x122($s2)
/* 67C20 80077420 1800428E */  lw         $v0, 0x18($s2)
/* 67C24 80077424 5400A397 */  lhu        $v1, 0x54($sp)
/* 67C28 80077428 40004230 */  andi       $v0, $v0, 0x40
/* 67C2C 8007742C 05004010 */  beqz       $v0, .L80077444
/* 67C30 80077430 240143A6 */   sh        $v1, 0x124($s2)
/* 67C34 80077434 1400428E */  lw         $v0, 0x14($s2)
/* 67C38 80077438 0008033C */  lui        $v1, (0x8000000 >> 16)
/* 67C3C 8007743C 25104300 */  or         $v0, $v0, $v1
/* 67C40 80077440 140042AE */  sw         $v0, 0x14($s2)
.L80077444:
/* 67C44 80077444 2800228E */  lw         $v0, 0x28($s1)
/* 67C48 80077448 00000000 */  nop
/* 67C4C 8007744C 08004234 */  ori        $v0, $v0, 0x8
/* 67C50 80077450 280022AE */  sw         $v0, 0x28($s1)
/* 67C54 80077454 07000232 */  andi       $v0, $s0, 0x7
/* 67C58 80077458 0B004010 */  beqz       $v0, .L80077488
/* 67C5C 8007745C 04000232 */   andi      $v0, $s0, 0x4
/* 67C60 80077460 2C00A297 */  lhu        $v0, 0x2C($sp)
/* 67C64 80077464 00000000 */  nop
/* 67C68 80077468 080022A6 */  sh         $v0, 0x8($s1)
/* 67C6C 8007746C 2E00A297 */  lhu        $v0, 0x2E($sp)
/* 67C70 80077470 00000000 */  nop
/* 67C74 80077474 0A0022A6 */  sh         $v0, 0xA($s1)
/* 67C78 80077478 3000A297 */  lhu        $v0, 0x30($sp)
/* 67C7C 8007747C 00000000 */  nop
/* 67C80 80077480 0C0022A6 */  sh         $v0, 0xC($s1)
/* 67C84 80077484 04000232 */  andi       $v0, $s0, 0x4
.L80077488:
/* 67C88 80077488 40004010 */  beqz       $v0, .L8007758C
/* 67C8C 8007748C 6000A427 */   addiu     $a0, $sp, 0x60
/* 67C90 80077490 6C00A0A7 */  sh         $zero, 0x6C($sp)
/* 67C94 80077494 6A00A0A7 */  sh         $zero, 0x6A($sp)
/* 67C98 80077498 6800A0A7 */  sh         $zero, 0x68($sp)
/* 67C9C 8007749C 08002296 */  lhu        $v0, 0x8($s1)
/* 67CA0 800774A0 6800A527 */  addiu      $a1, $sp, 0x68
/* 67CA4 800774A4 6000A2A7 */  sh         $v0, 0x60($sp)
/* 67CA8 800774A8 0A002296 */  lhu        $v0, 0xA($s1)
/* 67CAC 800774AC 1E003026 */  addiu      $s0, $s1, 0x1E
/* 67CB0 800774B0 6200A2A7 */  sh         $v0, 0x62($sp)
/* 67CB4 800774B4 0C002296 */  lhu        $v0, 0xC($s1)
/* 67CB8 800774B8 21300002 */  addu       $a2, $s0, $zero
/* 67CBC 800774BC CDE8000C */  jal        MATH3D_RotationFromPosToPos
/* 67CC0 800774C0 6400A2A7 */   sh        $v0, 0x64($sp)
/* 67CC4 800774C4 21200002 */  addu       $a0, $s0, $zero
/* 67CC8 800774C8 7000B027 */  addiu      $s0, $sp, 0x70
/* 67CCC 800774CC 3DE3010C */  jal        RotMatrix
/* 67CD0 800774D0 21280002 */   addu      $a1, $s0, $zero
/* 67CD4 800774D4 5000A297 */  lhu        $v0, 0x50($sp)
/* 67CD8 800774D8 00000000 */  nop
/* 67CDC 800774DC 180022A6 */  sh         $v0, 0x18($s1)
/* 67CE0 800774E0 5200A297 */  lhu        $v0, 0x52($sp)
/* 67CE4 800774E4 21200002 */  addu       $a0, $s0, $zero
/* 67CE8 800774E8 1A0022A6 */  sh         $v0, 0x1A($s1)
/* 67CEC 800774EC 5400A297 */  lhu        $v0, 0x54($sp)
/* 67CF0 800774F0 21286002 */  addu       $a1, $s3, $zero
/* 67CF4 800774F4 1C0022A6 */  sh         $v0, 0x1C($s1)
/* 67CF8 800774F8 5000A0A7 */  sh         $zero, 0x50($sp)
/* 67CFC 800774FC 06002296 */  lhu        $v0, 0x6($s1)
/* 67D00 80077500 1000A627 */  addiu      $a2, $sp, 0x10
/* 67D04 80077504 5400A0A7 */  sh         $zero, 0x54($sp)
/* 67D08 80077508 23100200 */  negu       $v0, $v0
/* 67D0C 8007750C 1AF2020C */  jal        ApplyMatrix
/* 67D10 80077510 5200A2A7 */   sh        $v0, 0x52($sp)
/* 67D14 80077514 18002296 */  lhu        $v0, 0x18($s1)
/* 67D18 80077518 1000A397 */  lhu        $v1, 0x10($sp)
/* 67D1C 8007751C 00000000 */  nop
/* 67D20 80077520 21104300 */  addu       $v0, $v0, $v1
/* 67D24 80077524 180022A6 */  sh         $v0, 0x18($s1)
/* 67D28 80077528 1A002296 */  lhu        $v0, 0x1A($s1)
/* 67D2C 8007752C 1400A397 */  lhu        $v1, 0x14($sp)
/* 67D30 80077530 00000000 */  nop
/* 67D34 80077534 21104300 */  addu       $v0, $v0, $v1
/* 67D38 80077538 1A0022A6 */  sh         $v0, 0x1A($s1)
/* 67D3C 8007753C 1C002296 */  lhu        $v0, 0x1C($s1)
/* 67D40 80077540 1800A397 */  lhu        $v1, 0x18($sp)
/* 67D44 80077544 00000000 */  nop
/* 67D48 80077548 21104300 */  addu       $v0, $v0, $v1
/* 67D4C 8007754C 1C0022A6 */  sh         $v0, 0x1C($s1)
/* 67D50 80077550 5C004296 */  lhu        $v0, 0x5C($s2)
/* 67D54 80077554 18002396 */  lhu        $v1, 0x18($s1)
/* 67D58 80077558 00000000 */  nop
/* 67D5C 8007755C 23104300 */  subu       $v0, $v0, $v1
/* 67D60 80077560 180022A6 */  sh         $v0, 0x18($s1)
/* 67D64 80077564 5E004296 */  lhu        $v0, 0x5E($s2)
/* 67D68 80077568 1A002396 */  lhu        $v1, 0x1A($s1)
/* 67D6C 8007756C 00000000 */  nop
/* 67D70 80077570 23104300 */  subu       $v0, $v0, $v1
/* 67D74 80077574 1A0022A6 */  sh         $v0, 0x1A($s1)
/* 67D78 80077578 60004296 */  lhu        $v0, 0x60($s2)
/* 67D7C 8007757C 1C002396 */  lhu        $v1, 0x1C($s1)
/* 67D80 80077580 00000000 */  nop
/* 67D84 80077584 23104300 */  subu       $v0, $v0, $v1
/* 67D88 80077588 1C0022A6 */  sh         $v0, 0x1C($s1)
.L8007758C:
/* 67D8C 8007758C 2C00A297 */  lhu        $v0, 0x2C($sp)
/* 67D90 80077590 00000000 */  nop
/* 67D94 80077594 D80042A6 */  sh         $v0, 0xD8($s2)
/* 67D98 80077598 2E00A297 */  lhu        $v0, 0x2E($sp)
/* 67D9C 8007759C 00000000 */  nop
/* 67DA0 800775A0 DA0042A6 */  sh         $v0, 0xDA($s2)
/* 67DA4 800775A4 B400428E */  lw         $v0, 0xB4($s2)
/* 67DA8 800775A8 3000A397 */  lhu        $v1, 0x30($sp)
/* 67DAC 800775AC B80042AE */  sw         $v0, 0xB8($s2)
/* 67DB0 800775B0 DC0043A6 */  sh         $v1, 0xDC($s2)
/* 67DB4 800775B4 2400A28F */  lw         $v0, 0x24($sp)
/* 67DB8 800775B8 00000000 */  nop
/* 67DBC 800775BC B40042AE */  sw         $v0, 0xB4($s2)
/* 67DC0 800775C0 2800A28F */  lw         $v0, 0x28($sp)
/* 67DC4 800775C4 00000000 */  nop
/* 67DC8 800775C8 BC0042AE */  sw         $v0, 0xBC($s2)
/* 67DCC 800775CC 2200A287 */  lh         $v0, 0x22($sp)
/* 67DD0 800775D0 00000000 */  nop
/* 67DD4 800775D4 C40042AE */  sw         $v0, 0xC4($s2)
/* 67DD8 800775D8 21200000 */  addu       $a0, $zero, $zero
.L800775DC:
/* 67DDC 800775DC 40000524 */  addiu      $a1, $zero, 0x40
/* 67DE0 800775E0 5800B027 */  addiu      $s0, $sp, 0x58
/* 67DE4 800775E4 04002686 */  lh         $a2, 0x4($s1)
/* 67DE8 800775E8 20E0010C */  jal        PHYSICS_GenericLineCheckSetup
/* 67DEC 800775EC 21380002 */   addu      $a3, $s0, $zero
/* 67DF0 800775F0 21200000 */  addu       $a0, $zero, $zero
/* 67DF4 800775F4 5000A727 */  addiu      $a3, $sp, 0x50
/* 67DF8 800775F8 06002296 */  lhu        $v0, 0x6($s1)
/* 67DFC 800775FC 04002686 */  lh         $a2, 0x4($s1)
/* 67E00 80077600 02002596 */  lhu        $a1, 0x2($s1)
/* 67E04 80077604 00140200 */  sll        $v0, $v0, 16
/* 67E08 80077608 031C0200 */  sra        $v1, $v0, 16
/* 67E0C 8007760C C2170200 */  srl        $v0, $v0, 31
/* 67E10 80077610 21186200 */  addu       $v1, $v1, $v0
/* 67E14 80077614 43180300 */  sra        $v1, $v1, 1
/* 67E18 80077618 2128A300 */  addu       $a1, $a1, $v1
/* 67E1C 8007761C 002C0500 */  sll        $a1, $a1, 16
/* 67E20 80077620 20E0010C */  jal        PHYSICS_GenericLineCheckSetup
/* 67E24 80077624 032C0500 */   sra       $a1, $a1, 16
/* 67E28 80077628 21204002 */  addu       $a0, $s2, $zero
/* 67E2C 8007762C 2000B327 */  addiu      $s3, $sp, 0x20
/* 67E30 80077630 D0EC858F */  lw         $a1, %gp_rel(pTempMat.72)($gp)
/* 67E34 80077634 21386002 */  addu       $a3, $s3, $zero
/* 67E38 80077638 24E0010C */  jal        PHYSICS_GenericLineCheck
/* 67E3C 8007763C 2130A000 */   addu      $a2, $a1, $zero
/* 67E40 80077640 2000A387 */  lh         $v1, 0x20($sp)
/* 67E44 80077644 03001624 */  addiu      $s6, $zero, 0x3
/* 67E48 80077648 03007610 */  beq        $v1, $s6, .L80077658
/* 67E4C 8007764C 05000224 */   addiu     $v0, $zero, 0x5
/* 67E50 80077650 72006214 */  bne        $v1, $v0, .L8007781C
/* 67E54 80077654 0200A232 */   andi      $v0, $s5, 0x2
.L80077658:
/* 67E58 80077658 2800228E */  lw         $v0, 0x28($s1)
/* 67E5C 8007765C 00000000 */  nop
/* 67E60 80077660 02004234 */  ori        $v0, $v0, 0x2
/* 67E64 80077664 280022AE */  sw         $v0, 0x28($s1)
/* 67E68 80077668 0700A232 */  andi       $v0, $s5, 0x7
/* 67E6C 8007766C 0B004010 */  beqz       $v0, .L8007769C
/* 67E70 80077670 0400A232 */   andi      $v0, $s5, 0x4
/* 67E74 80077674 2C00A297 */  lhu        $v0, 0x2C($sp)
/* 67E78 80077678 00000000 */  nop
/* 67E7C 8007767C 100022A6 */  sh         $v0, 0x10($s1)
/* 67E80 80077680 2E00A297 */  lhu        $v0, 0x2E($sp)
/* 67E84 80077684 00000000 */  nop
/* 67E88 80077688 120022A6 */  sh         $v0, 0x12($s1)
/* 67E8C 8007768C 3000A297 */  lhu        $v0, 0x30($sp)
/* 67E90 80077690 00000000 */  nop
/* 67E94 80077694 140022A6 */  sh         $v0, 0x14($s1)
/* 67E98 80077698 0400A232 */  andi       $v0, $s5, 0x4
.L8007769C:
/* 67E9C 8007769C 04004010 */  beqz       $v0, .L800776B0
/* 67EA0 800776A0 08002426 */   addiu     $a0, $s1, 0x8
/* 67EA4 800776A4 DDE7000C */  jal        MATH3D_AngleBetweenVectors
/* 67EA8 800776A8 10002526 */   addiu     $a1, $s1, 0x10
/* 67EAC 800776AC 260022A6 */  sh         $v0, 0x26($s1)
.L800776B0:
/* 67EB0 800776B0 21280002 */  addu       $a1, $s0, $zero
/* 67EB4 800776B4 1000A627 */  addiu      $a2, $sp, 0x10
/* 67EB8 800776B8 D0EC848F */  lw         $a0, %gp_rel(pTempMat.72)($gp)
/* 67EBC 800776BC E0FF0224 */  addiu      $v0, $zero, -0x20
/* 67EC0 800776C0 5800A0A7 */  sh         $zero, 0x58($sp)
/* 67EC4 800776C4 5A00A2A7 */  sh         $v0, 0x5A($sp)
/* 67EC8 800776C8 1AF2020C */  jal        ApplyMatrix
/* 67ECC 800776CC 5C00A0A7 */   sh        $zero, 0x5C($sp)
/* 67ED0 800776D0 21280002 */  addu       $a1, $s0, $zero
/* 67ED4 800776D4 1000A627 */  addiu      $a2, $sp, 0x10
/* 67ED8 800776D8 D0EC848F */  lw         $a0, %gp_rel(pTempMat.72)($gp)
/* 67EDC 800776DC 5000A297 */  lhu        $v0, 0x50($sp)
/* 67EE0 800776E0 1000A397 */  lhu        $v1, 0x10($sp)
/* 67EE4 800776E4 1400A797 */  lhu        $a3, 0x14($sp)
/* 67EE8 800776E8 1800A897 */  lhu        $t0, 0x18($sp)
/* 67EEC 800776EC 40001424 */  addiu      $s4, $zero, 0x40
/* 67EF0 800776F0 5800A0A7 */  sh         $zero, 0x58($sp)
/* 67EF4 800776F4 5A00A0A7 */  sh         $zero, 0x5A($sp)
/* 67EF8 800776F8 5C00B4A7 */  sh         $s4, 0x5C($sp)
/* 67EFC 800776FC 21104300 */  addu       $v0, $v0, $v1
/* 67F00 80077700 5000A2A7 */  sh         $v0, 0x50($sp)
/* 67F04 80077704 5200A297 */  lhu        $v0, 0x52($sp)
/* 67F08 80077708 5400A397 */  lhu        $v1, 0x54($sp)
/* 67F0C 8007770C 21104700 */  addu       $v0, $v0, $a3
/* 67F10 80077710 21186800 */  addu       $v1, $v1, $t0
/* 67F14 80077714 5200A2A7 */  sh         $v0, 0x52($sp)
/* 67F18 80077718 1AF2020C */  jal        ApplyMatrix
/* 67F1C 8007771C 5400A3A7 */   sh        $v1, 0x54($sp)
/* 67F20 80077720 21204002 */  addu       $a0, $s2, $zero
/* 67F24 80077724 21286002 */  addu       $a1, $s3, $zero
/* 67F28 80077728 5000A297 */  lhu        $v0, 0x50($sp)
/* 67F2C 8007772C 1000A397 */  lhu        $v1, 0x10($sp)
/* 67F30 80077730 1400A697 */  lhu        $a2, 0x14($sp)
/* 67F34 80077734 1800A797 */  lhu        $a3, 0x18($sp)
/* 67F38 80077738 21104300 */  addu       $v0, $v0, $v1
/* 67F3C 8007773C 5800A2A7 */  sh         $v0, 0x58($sp)
/* 67F40 80077740 5200A297 */  lhu        $v0, 0x52($sp)
/* 67F44 80077744 5400A397 */  lhu        $v1, 0x54($sp)
/* 67F48 80077748 21104600 */  addu       $v0, $v0, $a2
/* 67F4C 8007774C 21186700 */  addu       $v1, $v1, $a3
/* 67F50 80077750 5A00A2A7 */  sh         $v0, 0x5A($sp)
/* 67F54 80077754 59D2010C */  jal        PHYSICS_CheckLineInWorld
/* 67F58 80077758 5C00A3A7 */   sh        $v1, 0x5C($sp)
/* 67F5C 8007775C 2000A387 */  lh         $v1, 0x20($sp)
/* 67F60 80077760 00000000 */  nop
/* 67F64 80077764 03007610 */  beq        $v1, $s6, .L80077774
/* 67F68 80077768 05000224 */   addiu     $v0, $zero, 0x5
/* 67F6C 8007776C 2B006214 */  bne        $v1, $v0, .L8007781C
/* 67F70 80077770 0200A232 */   andi      $v0, $s5, 0x2
.L80077774:
/* 67F74 80077774 21280002 */  addu       $a1, $s0, $zero
/* 67F78 80077778 D0EC848F */  lw         $a0, %gp_rel(pTempMat.72)($gp)
/* 67F7C 8007777C 1000A627 */  addiu      $a2, $sp, 0x10
/* 67F80 80077780 5800A0A7 */  sh         $zero, 0x58($sp)
/* 67F84 80077784 5A00A0A7 */  sh         $zero, 0x5A($sp)
/* 67F88 80077788 1AF2020C */  jal        ApplyMatrix
/* 67F8C 8007778C 5C00B4A7 */   sh        $s4, 0x5C($sp)
/* 67F90 80077790 5000A297 */  lhu        $v0, 0x50($sp)
/* 67F94 80077794 1000A497 */  lhu        $a0, 0x10($sp)
/* 67F98 80077798 5200A397 */  lhu        $v1, 0x52($sp)
/* 67F9C 8007779C 1400A597 */  lhu        $a1, 0x14($sp)
/* 67FA0 800777A0 1800A697 */  lhu        $a2, 0x18($sp)
/* 67FA4 800777A4 21104400 */  addu       $v0, $v0, $a0
/* 67FA8 800777A8 5000A2A7 */  sh         $v0, 0x50($sp)
/* 67FAC 800777AC 5400A297 */  lhu        $v0, 0x54($sp)
/* 67FB0 800777B0 21186500 */  addu       $v1, $v1, $a1
/* 67FB4 800777B4 5200A3A7 */  sh         $v1, 0x52($sp)
/* 67FB8 800777B8 D0EC838F */  lw         $v1, %gp_rel(pTempMat.72)($gp)
/* 67FBC 800777BC 21104600 */  addu       $v0, $v0, $a2
/* 67FC0 800777C0 5400A2A7 */  sh         $v0, 0x54($sp)
/* 67FC4 800777C4 14006294 */  lhu        $v0, 0x14($v1)
/* 67FC8 800777C8 00000000 */  nop
/* 67FCC 800777CC 21104400 */  addu       $v0, $v0, $a0
/* 67FD0 800777D0 5800A2A7 */  sh         $v0, 0x58($sp)
/* 67FD4 800777D4 18006294 */  lhu        $v0, 0x18($v1)
/* 67FD8 800777D8 21204002 */  addu       $a0, $s2, $zero
/* 67FDC 800777DC 21104500 */  addu       $v0, $v0, $a1
/* 67FE0 800777E0 5A00A2A7 */  sh         $v0, 0x5A($sp)
/* 67FE4 800777E4 1C006294 */  lhu        $v0, 0x1C($v1)
/* 67FE8 800777E8 21286002 */  addu       $a1, $s3, $zero
/* 67FEC 800777EC 21104600 */  addu       $v0, $v0, $a2
/* 67FF0 800777F0 59D2010C */  jal        PHYSICS_CheckLineInWorld
/* 67FF4 800777F4 5C00A2A7 */   sh        $v0, 0x5C($sp)
/* 67FF8 800777F8 2000A287 */  lh         $v0, 0x20($sp)
/* 67FFC 800777FC 00000000 */  nop
/* 68000 80077800 06004014 */  bnez       $v0, .L8007781C
/* 68004 80077804 0200A232 */   andi      $v0, $s5, 0x2
/* 68008 80077808 2800228E */  lw         $v0, 0x28($s1)
/* 6800C 8007780C 00000000 */  nop
/* 68010 80077810 04004234 */  ori        $v0, $v0, 0x4
/* 68014 80077814 280022AE */  sw         $v0, 0x28($s1)
/* 68018 80077818 0200A232 */  andi       $v0, $s5, 0x2
.L8007781C:
/* 6801C 8007781C 05004010 */  beqz       $v0, .L80077834
/* 68020 80077820 21204002 */   addu      $a0, $s2, $zero
/* 68024 80077824 0104053C */  lui        $a1, (0x4010011 >> 16)
/* 68028 80077828 1100A534 */  ori        $a1, $a1, (0x4010011 & 0xFFFF)
/* 6802C 8007782C A1D1000C */  jal        INSTANCE_Post
/* 68030 80077830 2130E002 */   addu      $a2, $s7, $zero
.L80077834:
/* 68034 80077834 2800228E */  lw         $v0, 0x28($s1)
/* 68038 80077838 B000BF8F */  lw         $ra, 0xB0($sp)
/* 6803C 8007783C AC00B78F */  lw         $s7, 0xAC($sp)
/* 68040 80077840 A800B68F */  lw         $s6, 0xA8($sp)
/* 68044 80077844 A400B58F */  lw         $s5, 0xA4($sp)
/* 68048 80077848 A000B48F */  lw         $s4, 0xA0($sp)
/* 6804C 8007784C 9C00B38F */  lw         $s3, 0x9C($sp)
/* 68050 80077850 9800B28F */  lw         $s2, 0x98($sp)
/* 68054 80077854 9400B18F */  lw         $s1, 0x94($sp)
/* 68058 80077858 9000B08F */  lw         $s0, 0x90($sp)
/* 6805C 8007785C 0800E003 */  jr         $ra
/* 68060 80077860 B800BD27 */   addiu     $sp, $sp, 0xB8
.size PhysicsFollowWall, . - PhysicsFollowWall
