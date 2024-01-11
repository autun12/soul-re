.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LIGHT_PresetInstanceLight
/* 26640 80035E40 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 26644 80035E44 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 26648 80035E48 21888000 */  addu       $s1, $a0, $zero
/* 2664C 80035E4C 5800B4AF */  sw         $s4, 0x58($sp)
/* 26650 80035E50 21A0A000 */  addu       $s4, $a1, $zero
/* 26654 80035E54 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 26658 80035E58 5400B3AF */  sw         $s3, 0x54($sp)
/* 2665C 80035E5C 5000B2AF */  sw         $s2, 0x50($sp)
/* 26660 80035E60 4800B0AF */  sw         $s0, 0x48($sp)
/* 26664 80035E64 F400328E */  lw         $s2, 0xF4($s1)
/* 26668 80035E68 0D80023C */  lui        $v0, %hi(default_lightgroup + 0x40)
/* 2666C 80035E6C 08095924 */  addiu      $t9, $v0, %lo(default_lightgroup + 0x40)
/* 26670 80035E70 03002E8B */  lwl        $t6, 0x3($t9)
/* 26674 80035E74 00002E9B */  lwr        $t6, 0x0($t9)
/* 26678 80035E78 04002F87 */  lh         $t7, 0x4($t9)
/* 2667C 80035E7C 4300AEAB */  swl        $t6, 0x43($sp)
/* 26680 80035E80 4000AEBB */  swr        $t6, 0x40($sp)
/* 26684 80035E84 4400AFA7 */  sh         $t7, 0x44($sp)
/* 26688 80035E88 3800248E */  lw         $a0, 0x38($s1)
/* 2668C 80035E8C 1C66010C */  jal        STREAM_GetLevelWithID
/* 26690 80035E90 2180C000 */   addu      $s0, $a2, $zero
/* 26694 80035E94 21202002 */  addu       $a0, $s1, $zero
/* 26698 80035E98 21984000 */  addu       $s3, $v0, $zero
/* 2669C 80035E9C 21286002 */  addu       $a1, $s3, $zero
/* 266A0 80035EA0 21300002 */  addu       $a2, $s0, $zero
/* 266A4 80035EA4 B3D6000C */  jal        LIGHT_GetLightMatrix
/* 266A8 80035EA8 1000A727 */   addiu     $a3, $sp, 0x10
/* 266AC 80035EAC 1400238E */  lw         $v1, 0x14($s1)
/* 266B0 80035EB0 2000023C */  lui        $v0, (0x200000 >> 16)
/* 266B4 80035EB4 24186200 */  and        $v1, $v1, $v0
/* 266B8 80035EB8 02006010 */  beqz       $v1, .L80035EC4
/* 266BC 80035EBC 00100424 */   addiu     $a0, $zero, 0x1000
/* 266C0 80035EC0 00080424 */  addiu      $a0, $zero, 0x800
.L80035EC4:
/* 266C4 80035EC4 00141400 */  sll        $v0, $s4, 16
/* 266C8 80035EC8 03140200 */  sra        $v0, $v0, 16
/* 266CC 80035ECC 00100524 */  addiu      $a1, $zero, 0x1000
/* 266D0 80035ED0 03004510 */  beq        $v0, $a1, .L80035EE0
/* 266D4 80035ED4 18008200 */   mult      $a0, $v0
/* 266D8 80035ED8 12700000 */  mflo       $t6
/* 266DC 80035EDC 03230E00 */  sra        $a0, $t6, 12
.L80035EE0:
/* 266E0 80035EE0 F400228E */  lw         $v0, 0xF4($s1)
/* 266E4 80035EE4 00000000 */  nop
/* 266E8 80035EE8 21004010 */  beqz       $v0, .L80035F70
/* 266EC 80035EEC 00000000 */   nop
/* 266F0 80035EF0 1F006014 */  bnez       $v1, .L80035F70
/* 266F4 80035EF4 00000000 */   nop
/* 266F8 80035EF8 FE002386 */  lh         $v1, 0xFE($s1)
/* 266FC 80035EFC 00000000 */  nop
/* 26700 80035F00 2310A300 */  subu       $v0, $a1, $v1
/* 26704 80035F04 18004400 */  mult       $v0, $a0
/* 26708 80035F08 12200000 */  mflo       $a0
/* 2670C 80035F0C 08004292 */  lbu        $v0, 0x8($s2)
/* 26710 80035F10 00000000 */  nop
/* 26714 80035F14 18006200 */  mult       $v1, $v0
/* 26718 80035F18 03230400 */  sra        $a0, $a0, 12
/* 2671C 80035F1C 12180000 */  mflo       $v1
/* 26720 80035F20 83110300 */  sra        $v0, $v1, 6
/* 26724 80035F24 21108200 */  addu       $v0, $a0, $v0
/* 26728 80035F28 3000A2AF */  sw         $v0, 0x30($sp)
/* 2672C 80035F2C FE002386 */  lh         $v1, 0xFE($s1)
/* 26730 80035F30 09004292 */  lbu        $v0, 0x9($s2)
/* 26734 80035F34 00000000 */  nop
/* 26738 80035F38 18006200 */  mult       $v1, $v0
/* 2673C 80035F3C 12180000 */  mflo       $v1
/* 26740 80035F40 83110300 */  sra        $v0, $v1, 6
/* 26744 80035F44 21108200 */  addu       $v0, $a0, $v0
/* 26748 80035F48 3400A2AF */  sw         $v0, 0x34($sp)
/* 2674C 80035F4C FE002386 */  lh         $v1, 0xFE($s1)
/* 26750 80035F50 0A004292 */  lbu        $v0, 0xA($s2)
/* 26754 80035F54 00000000 */  nop
/* 26758 80035F58 18006200 */  mult       $v1, $v0
/* 2675C 80035F5C 12180000 */  mflo       $v1
/* 26760 80035F60 83110300 */  sra        $v0, $v1, 6
/* 26764 80035F64 21108200 */  addu       $v0, $a0, $v0
/* 26768 80035F68 DFD70008 */  j          .L80035F7C
/* 2676C 80035F6C 3800A2AF */   sw        $v0, 0x38($sp)
.L80035F70:
/* 26770 80035F70 3000A4AF */  sw         $a0, 0x30($sp)
/* 26774 80035F74 3400A4AF */  sw         $a0, 0x34($sp)
/* 26778 80035F78 3800A4AF */  sw         $a0, 0x38($sp)
.L80035F7C:
/* 2677C 80035F7C 02006016 */  bnez       $s3, .L80035F88
/* 26780 80035F80 70016226 */   addiu     $v0, $s3, 0x170
/* 26784 80035F84 4000A227 */  addiu      $v0, $sp, 0x40
.L80035F88:
/* 26788 80035F88 21580000 */  addu       $t3, $zero, $zero
/* 2678C 80035F8C 1000AC27 */  addiu      $t4, $sp, 0x10
/* 26790 80035F90 FF7F0D24 */  addiu      $t5, $zero, 0x7FFF
/* 26794 80035F94 21506001 */  addu       $t2, $t3, $zero
/* 26798 80035F98 3000A927 */  addiu      $t1, $sp, 0x30
/* 2679C 80035F9C 21284000 */  addu       $a1, $v0, $zero
.L80035FA0:
/* 267A0 80035FA0 0000A384 */  lh         $v1, 0x0($a1)
/* 267A4 80035FA4 0000228D */  lw         $v0, 0x0($t1)
/* 267A8 80035FA8 00000000 */  nop
/* 267AC 80035FAC 18004300 */  mult       $v0, $v1
/* 267B0 80035FB0 21380000 */  addu       $a3, $zero, $zero
/* 267B4 80035FB4 21304001 */  addu       $a2, $t2, $zero
/* 267B8 80035FB8 12700000 */  mflo       $t6
/* 267BC 80035FBC 00110E00 */  sll        $v0, $t6, 4
/* 267C0 80035FC0 03440200 */  sra        $t0, $v0, 16
.L80035FC4:
/* 267C4 80035FC4 21208601 */  addu       $a0, $t4, $a2
/* 267C8 80035FC8 00008284 */  lh         $v0, 0x0($a0)
/* 267CC 80035FCC 00000000 */  nop
/* 267D0 80035FD0 18004800 */  mult       $v0, $t0
/* 267D4 80035FD4 12700000 */  mflo       $t6
/* 267D8 80035FD8 031B0E00 */  sra        $v1, $t6, 12
/* 267DC 80035FDC 00806228 */  slti       $v0, $v1, -0x8000
/* 267E0 80035FE0 03004010 */  beqz       $v0, .L80035FF0
/* 267E4 80035FE4 2A10A301 */   slt       $v0, $t5, $v1
/* 267E8 80035FE8 00800324 */  addiu      $v1, $zero, -0x8000
/* 267EC 80035FEC 2A10A301 */  slt        $v0, $t5, $v1
.L80035FF0:
/* 267F0 80035FF0 02004010 */  beqz       $v0, .L80035FFC
/* 267F4 80035FF4 00000000 */   nop
/* 267F8 80035FF8 FF7F0324 */  addiu      $v1, $zero, 0x7FFF
.L80035FFC:
/* 267FC 80035FFC 000083A4 */  sh         $v1, 0x0($a0)
/* 26800 80036000 0100E724 */  addiu      $a3, $a3, 0x1
/* 26804 80036004 0300E228 */  slti       $v0, $a3, 0x3
/* 26808 80036008 EEFF4014 */  bnez       $v0, .L80035FC4
/* 2680C 8003600C 0200C624 */   addiu     $a2, $a2, 0x2
/* 26810 80036010 06004A25 */  addiu      $t2, $t2, 0x6
/* 26814 80036014 04002925 */  addiu      $t1, $t1, 0x4
/* 26818 80036018 01006B25 */  addiu      $t3, $t3, 0x1
/* 2681C 8003601C 03006229 */  slti       $v0, $t3, 0x3
/* 26820 80036020 DFFF4014 */  bnez       $v0, .L80035FA0
/* 26824 80036024 0200A524 */   addiu     $a1, $a1, 0x2
/* 26828 80036028 B3F7020C */  jal        SetColorMatrix
/* 2682C 8003602C 1000A427 */   addiu     $a0, $sp, 0x10
/* 26830 80036030 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 26834 80036034 5800B48F */  lw         $s4, 0x58($sp)
/* 26838 80036038 5400B38F */  lw         $s3, 0x54($sp)
/* 2683C 8003603C 5000B28F */  lw         $s2, 0x50($sp)
/* 26840 80036040 4C00B18F */  lw         $s1, 0x4C($sp)
/* 26844 80036044 4800B08F */  lw         $s0, 0x48($sp)
/* 26848 80036048 0800E003 */  jr         $ra
/* 2684C 8003604C 6000BD27 */   addiu     $sp, $sp, 0x60
.size LIGHT_PresetInstanceLight, . - LIGHT_PresetInstanceLight
