.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

# Handwritten function
glabel FX_ConvertCamPersToWorld
/* 39A44 80049244 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 39A48 80049248 1000B0AF */  sw         $s0, 0x10($sp)
/* 39A4C 8004924C 21808000 */  addu       $s0, $a0, $zero
/* 39A50 80049250 04AD848F */  lw         $a0, %gp_rel(theCamera + 0x74)($gp)
/* 39A54 80049254 1400B1AF */  sw         $s1, 0x14($sp)
/* 39A58 80049258 1800BFAF */  sw         $ra, 0x18($sp)
/* 39A5C 8004925C 52F2020C */  jal        SetRotMatrix
/* 39A60 80049260 2188A000 */   addu      $s1, $a1, $zero
/* 39A64 80049264 04AD848F */  lw         $a0, %gp_rel(theCamera + 0x74)($gp)
/* 39A68 80049268 4AF2020C */  jal        SetTransMatrix
/* 39A6C 8004926C 00000000 */   nop
/* 39A70 80049270 00000496 */  lhu        $a0, 0x0($s0)
/* 39A74 80049274 00000000 */  nop
/* 39A78 80049278 00FF8424 */  addiu      $a0, $a0, -0x100
/* 39A7C 8004927C 001C0400 */  sll        $v1, $a0, 16
/* 39A80 80049280 031C0300 */  sra        $v1, $v1, 16
/* 39A84 80049284 80100300 */  sll        $v0, $v1, 2
/* 39A88 80049288 21104300 */  addu       $v0, $v0, $v1
/* 39A8C 8004928C 80110200 */  sll        $v0, $v0, 6
/* 39A90 80049290 02004104 */  bgez       $v0, .L8004929C
/* 39A94 80049294 000004A6 */   sh        $a0, 0x0($s0)
/* 39A98 80049298 FF014224 */  addiu      $v0, $v0, 0x1FF
.L8004929C:
/* 39A9C 8004929C 43120200 */  sra        $v0, $v0, 9
/* 39AA0 800492A0 000002A6 */  sh         $v0, 0x0($s0)
/* 39AA4 800492A4 00000486 */  lh         $a0, 0x0($s0)
/* 39AA8 800492A8 04000286 */  lh         $v0, 0x4($s0)
/* 39AAC 800492AC 00000000 */  nop
/* 39AB0 800492B0 18008200 */  mult       $a0, $v0
/* 39AB4 800492B4 02000296 */  lhu        $v0, 0x2($s0)
/* 39AB8 800492B8 00000000 */  nop
/* 39ABC 800492BC 88FF4224 */  addiu      $v0, $v0, -0x78
/* 39AC0 800492C0 020002A6 */  sh         $v0, 0x2($s0)
/* 39AC4 800492C4 02000386 */  lh         $v1, 0x2($s0)
/* 39AC8 800492C8 12200000 */  mflo       $a0
/* 39ACC 800492CC 04000286 */  lh         $v0, 0x4($s0)
/* 39AD0 800492D0 00000000 */  nop
/* 39AD4 800492D4 18006200 */  mult       $v1, $v0
/* 39AD8 800492D8 12180000 */  mflo       $v1
/* 39ADC 800492DC 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 39AE0 800492E0 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 39AE4 800492E4 18008200 */  mult       $a0, $v0
/* 39AE8 800492E8 10380000 */  mfhi       $a3
/* 39AEC 800492EC 00000000 */  nop
/* 39AF0 800492F0 00000000 */  nop
/* 39AF4 800492F4 18006200 */  mult       $v1, $v0
/* 39AF8 800492F8 C3270400 */  sra        $a0, $a0, 31
/* 39AFC 800492FC C3110700 */  sra        $v0, $a3, 7
/* 39B00 80049300 23104400 */  subu       $v0, $v0, $a0
/* 39B04 80049304 C31F0300 */  sra        $v1, $v1, 31
/* 39B08 80049308 000002A6 */  sh         $v0, 0x0($s0)
/* 39B0C 8004930C 10280000 */  mfhi       $a1
/* 39B10 80049310 C3110500 */  sra        $v0, $a1, 7
/* 39B14 80049314 23104300 */  subu       $v0, $v0, $v1
/* 39B18 80049318 020002A6 */  sh         $v0, 0x2($s0)
/* 39B1C 8004931C 000000CA */  lwc2       $0, 0x0($s0)
/* 39B20 80049320 040001CA */  lwc2       $1, 0x4($s0)
/* 39B24 80049324 00000000 */  nop
/* 39B28 80049328 00000000 */  nop
/* 39B2C 8004932C 1200484A */  MVMVA      1, 0, 0, 0, 0
/* 39B30 80049330 00480C48 */  mfc2       $t4, $9 # handwritten instruction
/* 39B34 80049334 00500D48 */  mfc2       $t5, $10 # handwritten instruction
/* 39B38 80049338 00580E48 */  mfc2       $t6, $11 # handwritten instruction
/* 39B3C 8004933C 00002CA6 */  sh         $t4, 0x0($s1)
/* 39B40 80049340 02002DA6 */  sh         $t5, 0x2($s1)
/* 39B44 80049344 04002EA6 */  sh         $t6, 0x4($s1)
/* 39B48 80049348 1800BF8F */  lw         $ra, 0x18($sp)
/* 39B4C 8004934C 1400B18F */  lw         $s1, 0x14($sp)
/* 39B50 80049350 1000B08F */  lw         $s0, 0x10($sp)
/* 39B54 80049354 0800E003 */  jr         $ra
/* 39B58 80049358 2000BD27 */   addiu     $sp, $sp, 0x20
.size FX_ConvertCamPersToWorld, . - FX_ConvertCamPersToWorld
