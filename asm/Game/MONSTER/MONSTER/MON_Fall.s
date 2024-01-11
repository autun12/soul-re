.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MON_Fall
/* 79218 80088A18 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 7921C 80088A1C 1400B1AF */  sw         $s1, 0x14($sp)
/* 79220 80088A20 21888000 */  addu       $s1, $a0, $zero
/* 79224 80088A24 2000BFAF */  sw         $ra, 0x20($sp)
/* 79228 80088A28 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 7922C 80088A2C 1800B2AF */  sw         $s2, 0x18($sp)
/* 79230 80088A30 1000B0AF */  sw         $s0, 0x10($sp)
/* 79234 80088A34 6C01338E */  lw         $s3, 0x16C($s1)
/* 79238 80088A38 00000000 */  nop
/* 7923C 80088A3C 0000638E */  lw         $v1, 0x0($s3)
/* 79240 80088A40 00000000 */  nop
/* 79244 80088A44 02006230 */  andi       $v0, $v1, 0x2
/* 79248 80088A48 03004010 */  beqz       $v0, .L80088A58
/* 7924C 80088A4C 04001224 */   addiu     $s2, $zero, 0x4
/* 79250 80088A50 9D220208 */  j          .L80088A74
/* 79254 80088A54 0F001224 */   addiu     $s2, $zero, 0xF
.L80088A58:
/* 79258 80088A58 00046230 */  andi       $v0, $v1, 0x400
/* 7925C 80088A5C 03004010 */  beqz       $v0, .L80088A6C
/* 79260 80088A60 00000000 */   nop
/* 79264 80088A64 9D220208 */  j          .L80088A74
/* 79268 80088A68 12001224 */   addiu     $s2, $zero, 0x12
.L80088A6C:
/* 7926C 80088A6C CF04020C */  jal        MON_ApplyPhysics
/* 79270 80088A70 21202002 */   addu      $a0, $s1, $zero
.L80088A74:
/* 79274 80088A74 04000224 */  addiu      $v0, $zero, 0x4
/* 79278 80088A78 03004212 */  beq        $s2, $v0, .L80088A88
/* 7927C 80088A7C 21202002 */   addu      $a0, $s1, $zero
/* 79280 80088A80 91FE010C */  jal        MON_SwitchState
/* 79284 80088A84 21284002 */   addu      $a1, $s2, $zero
.L80088A88:
/* 79288 80088A88 9006020C */  jal        MON_GetTime
/* 7928C 80088A8C 21202002 */   addu      $a0, $s1, $zero
/* 79290 80088A90 1401638E */  lw         $v1, 0x114($s3)
/* 79294 80088A94 00000000 */  nop
/* 79298 80088A98 2B186200 */  sltu       $v1, $v1, $v0
/* 7929C 80088A9C 19006010 */  beqz       $v1, .L80088B04
/* 792A0 80088AA0 0001103C */   lui       $s0, (0x1000007 >> 16)
/* 792A4 80088AA4 5C00238E */  lw         $v1, 0x5C($s1)
/* 792A8 80088AA8 6400228E */  lw         $v0, 0x64($s1)
/* 792AC 80088AAC 00000000 */  nop
/* 792B0 80088AB0 15006214 */  bne        $v1, $v0, .L80088B08
/* 792B4 80088AB4 07001036 */   ori       $s0, $s0, (0x1000007 & 0xFFFF)
/* 792B8 80088AB8 60002386 */  lh         $v1, 0x60($s1)
/* 792BC 80088ABC 68002286 */  lh         $v0, 0x68($s1)
/* 792C0 80088AC0 00000000 */  nop
/* 792C4 80088AC4 0E006214 */  bne        $v1, $v0, .L80088B00
/* 792C8 80088AC8 00000000 */   nop
/* 792CC 80088ACC 3AF2020C */  jal        rand
/* 792D0 80088AD0 00000000 */   nop
/* 792D4 80088AD4 7F005030 */  andi       $s0, $v0, 0x7F
/* 792D8 80088AD8 3AF2020C */  jal        rand
/* 792DC 80088ADC C1FF1026 */   addiu     $s0, $s0, -0x3F
/* 792E0 80088AE0 5C002396 */  lhu        $v1, 0x5C($s1)
/* 792E4 80088AE4 7F004230 */  andi       $v0, $v0, 0x7F
/* 792E8 80088AE8 21187000 */  addu       $v1, $v1, $s0
/* 792EC 80088AEC 5C0023A6 */  sh         $v1, 0x5C($s1)
/* 792F0 80088AF0 5E002396 */  lhu        $v1, 0x5E($s1)
/* 792F4 80088AF4 C1FF4224 */  addiu      $v0, $v0, -0x3F
/* 792F8 80088AF8 21186200 */  addu       $v1, $v1, $v0
/* 792FC 80088AFC 5E0023A6 */  sh         $v1, 0x5E($s1)
.L80088B00:
/* 79300 80088B00 0001103C */  lui        $s0, (0x1000007 >> 16)
.L80088B04:
/* 79304 80088B04 07001036 */  ori        $s0, $s0, (0x1000007 & 0xFFFF)
.L80088B08:
/* 79308 80088B08 27C3010C */  jal        DeMessageQueue
/* 7930C 80088B0C 08006426 */   addiu     $a0, $s3, 0x8
/* 79310 80088B10 21284000 */  addu       $a1, $v0, $zero
/* 79314 80088B14 0900A010 */  beqz       $a1, .L80088B3C
/* 79318 80088B18 10000224 */   addiu     $v0, $zero, 0x10
/* 7931C 80088B1C 0000A28C */  lw         $v0, 0x0($a1)
/* 79320 80088B20 00000000 */  nop
/* 79324 80088B24 F8FF5010 */  beq        $v0, $s0, .L80088B08
/* 79328 80088B28 00000000 */   nop
/* 7932C 80088B2C 6513020C */  jal        MON_DefaultMessageHandler
/* 79330 80088B30 21202002 */   addu      $a0, $s1, $zero
/* 79334 80088B34 C2220208 */  j          .L80088B08
/* 79338 80088B38 00000000 */   nop
.L80088B3C:
/* 7933C 80088B3C 9801238E */  lw         $v1, 0x198($s1)
/* 79340 80088B40 00000000 */  nop
/* 79344 80088B44 0C006214 */  bne        $v1, $v0, .L80088B78
/* 79348 80088B48 04000224 */   addiu     $v0, $zero, 0x4
/* 7934C 80088B4C 0A004216 */  bne        $s2, $v0, .L80088B78
/* 79350 80088B50 20000224 */   addiu     $v0, $zero, 0x20
/* 79354 80088B54 54016496 */  lhu        $a0, 0x154($s3)
/* 79358 80088B58 00000000 */  nop
/* 7935C 80088B5C 03008210 */  beq        $a0, $v0, .L80088B6C
/* 79360 80088B60 40000224 */   addiu     $v0, $zero, 0x40
/* 79364 80088B64 04008214 */  bne        $a0, $v0, .L80088B78
/* 79368 80088B68 00000000 */   nop
.L80088B6C:
/* 7936C 80088B6C 21202002 */  addu       $a0, $s1, $zero
/* 79370 80088B70 BA10020C */  jal        MON_BurnInAir
/* 79374 80088B74 04000524 */   addiu     $a1, $zero, 0x4
.L80088B78:
/* 79378 80088B78 2000BF8F */  lw         $ra, 0x20($sp)
/* 7937C 80088B7C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 79380 80088B80 1800B28F */  lw         $s2, 0x18($sp)
/* 79384 80088B84 1400B18F */  lw         $s1, 0x14($sp)
/* 79388 80088B88 1000B08F */  lw         $s0, 0x10($sp)
/* 7938C 80088B8C 0800E003 */  jr         $ra
/* 79390 80088B90 2800BD27 */   addiu     $sp, $sp, 0x28
.size MON_Fall, . - MON_Fall
