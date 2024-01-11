.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel COLLIDE_PointAndInstanceTrivialReject
/* 11298 80020A98 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 1129C 80020A9C 2400B3AF */  sw         $s3, 0x24($sp)
/* 112A0 80020AA0 21988000 */  addu       $s3, $a0, $zero
/* 112A4 80020AA4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 112A8 80020AA8 2188A000 */  addu       $s1, $a1, $zero
/* 112AC 80020AAC 2800BFAF */  sw         $ra, 0x28($sp)
/* 112B0 80020AB0 2000B2AF */  sw         $s2, 0x20($sp)
/* 112B4 80020AB4 1800B0AF */  sw         $s0, 0x18($sp)
/* 112B8 80020AB8 1C00248E */  lw         $a0, 0x1C($s1)
/* 112BC 80020ABC B841010C */  jal        MEMPACK_MemoryValidFunc
/* 112C0 80020AC0 801F123C */   lui       $s2, (0x1F800008 >> 16)
/* 112C4 80020AC4 4E004010 */  beqz       $v0, .L80020C00
/* 112C8 80020AC8 00000000 */   nop
/* 112CC 80020ACC 1400228E */  lw         $v0, 0x14($s1)
/* 112D0 80020AD0 00000000 */  nop
/* 112D4 80020AD4 40004230 */  andi       $v0, $v0, 0x40
/* 112D8 80020AD8 49004014 */  bnez       $v0, .L80020C00
/* 112DC 80020ADC 00000000 */   nop
/* 112E0 80020AE0 0001228E */  lw         $v0, 0x100($s1)
/* 112E4 80020AE4 00000000 */  nop
/* 112E8 80020AE8 45004010 */  beqz       $v0, .L80020C00
/* 112EC 80020AEC 00000000 */   nop
/* 112F0 80020AF0 2400628E */  lw         $v0, 0x24($s3)
/* 112F4 80020AF4 00000000 */  nop
/* 112F8 80020AF8 40004230 */  andi       $v0, $v0, 0x40
/* 112FC 80020AFC 08004010 */  beqz       $v0, .L80020B20
/* 11300 80020B00 1000A427 */   addiu     $a0, $sp, 0x10
/* 11304 80020B04 1C00228E */  lw         $v0, 0x1C($s1)
/* 11308 80020B08 00000000 */  nop
/* 1130C 80020B0C 2C00428C */  lw         $v0, 0x2C($v0)
/* 11310 80020B10 00000000 */  nop
/* 11314 80020B14 40004230 */  andi       $v0, $v0, 0x40
/* 11318 80020B18 39004014 */  bnez       $v0, .L80020C00
/* 1131C 80020B1C 00000000 */   nop
.L80020B20:
/* 11320 80020B20 5C003026 */  addiu      $s0, $s1, 0x5C
/* 11324 80020B24 1800658E */  lw         $a1, 0x18($s3)
/* 11328 80020B28 1400668E */  lw         $a2, 0x14($s3)
/* 1132C 80020B2C 79E0010C */  jal        COLLIDE_NearestPointOnLine_S
/* 11330 80020B30 21380002 */   addu      $a3, $s0, $zero
/* 11334 80020B34 1000A687 */  lh         $a2, 0x10($sp)
/* 11338 80020B38 5C002286 */  lh         $v0, 0x5C($s1)
/* 1133C 80020B3C 00000000 */  nop
/* 11340 80020B40 2330C200 */  subu       $a2, $a2, $v0
/* 11344 80020B44 43380600 */  sra        $a3, $a2, 1
/* 11348 80020B48 1800E700 */  mult       $a3, $a3
/* 1134C 80020B4C 1000A427 */  addiu      $a0, $sp, 0x10
/* 11350 80020B50 02008394 */  lhu        $v1, 0x2($a0)
/* 11354 80020B54 00000000 */  nop
/* 11358 80020B58 001C0300 */  sll        $v1, $v1, 16
/* 1135C 80020B5C 031C0300 */  sra        $v1, $v1, 16
/* 11360 80020B60 02000286 */  lh         $v0, 0x2($s0)
/* 11364 80020B64 12480000 */  mflo       $t1
/* 11368 80020B68 23186200 */  subu       $v1, $v1, $v0
/* 1136C 80020B6C 43280300 */  sra        $a1, $v1, 1
/* 11370 80020B70 1800A500 */  mult       $a1, $a1
/* 11374 80020B74 04008294 */  lhu        $v0, 0x4($a0)
/* 11378 80020B78 04000486 */  lh         $a0, 0x4($s0)
/* 1137C 80020B7C 000046AE */  sw         $a2, (0x1F800000 & 0xFFFF)($s2)
/* 11380 80020B80 040043AE */  sw         $v1, (0x1F800004 & 0xFFFF)($s2)
/* 11384 80020B84 000047AE */  sw         $a3, (0x1F800000 & 0xFFFF)($s2)
/* 11388 80020B88 040045AE */  sw         $a1, (0x1F800004 & 0xFFFF)($s2)
/* 1138C 80020B8C 00140200 */  sll        $v0, $v0, 16
/* 11390 80020B90 03140200 */  sra        $v0, $v0, 16
/* 11394 80020B94 23104400 */  subu       $v0, $v0, $a0
/* 11398 80020B98 12400000 */  mflo       $t0
/* 1139C 80020B9C 080042AE */  sw         $v0, (0x1F800008 & 0xFFFF)($s2)
/* 113A0 80020BA0 43100200 */  sra        $v0, $v0, 1
/* 113A4 80020BA4 18004200 */  mult       $v0, $v0
/* 113A8 80020BA8 080042AE */  sw         $v0, (0x1F800008 & 0xFFFF)($s2)
/* 113AC 80020BAC 1C00238E */  lw         $v1, 0x1C($s1)
/* 113B0 80020BB0 26012286 */  lh         $v0, 0x126($s1)
/* 113B4 80020BB4 0C00638C */  lw         $v1, 0xC($v1)
/* 113B8 80020BB8 80100200 */  sll        $v0, $v0, 2
/* 113BC 80020BBC 21104300 */  addu       $v0, $v0, $v1
/* 113C0 80020BC0 0000428C */  lw         $v0, 0x0($v0)
/* 113C4 80020BC4 00000000 */  nop
/* 113C8 80020BC8 2800428C */  lw         $v0, 0x28($v0)
/* 113CC 80020BCC 21182801 */  addu       $v1, $t1, $t0
/* 113D0 80020BD0 83100200 */  sra        $v0, $v0, 2
/* 113D4 80020BD4 12580000 */  mflo       $t3
/* 113D8 80020BD8 21186B00 */  addu       $v1, $v1, $t3
/* 113DC 80020BDC 2A186200 */  slt        $v1, $v1, $v0
/* 113E0 80020BE0 07006010 */  beqz       $v1, .L80020C00
/* 113E4 80020BE4 00000000 */   nop
/* 113E8 80020BE8 4000228E */  lw         $v0, 0x40($s1)
/* 113EC 80020BEC 00000000 */  nop
/* 113F0 80020BF0 03004010 */  beqz       $v0, .L80020C00
/* 113F4 80020BF4 21206002 */   addu      $a0, $s3, $zero
/* 113F8 80020BF8 9980000C */  jal        COLLIDE_PointAndInstance
/* 113FC 80020BFC 21282002 */   addu      $a1, $s1, $zero
.L80020C00:
/* 11400 80020C00 2800BF8F */  lw         $ra, 0x28($sp)
/* 11404 80020C04 2400B38F */  lw         $s3, 0x24($sp)
/* 11408 80020C08 2000B28F */  lw         $s2, 0x20($sp)
/* 1140C 80020C0C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 11410 80020C10 1800B08F */  lw         $s0, 0x18($sp)
/* 11414 80020C14 0800E003 */  jr         $ra
/* 11418 80020C18 3000BD27 */   addiu     $sp, $sp, 0x30
.size COLLIDE_PointAndInstanceTrivialReject, . - COLLIDE_PointAndInstanceTrivialReject
