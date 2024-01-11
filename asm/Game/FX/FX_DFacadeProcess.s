.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FX_DFacadeProcess
/* 33350 80042B50 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 33354 80042B54 1800B0AF */  sw         $s0, 0x18($sp)
/* 33358 80042B58 21808000 */  addu       $s0, $a0, $zero
/* 3335C 80042B5C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 33360 80042B60 10000286 */  lh         $v0, 0x10($s0)
/* 33364 80042B64 10000396 */  lhu        $v1, 0x10($s0)
/* 33368 80042B68 02004018 */  blez       $v0, .L80042B74
/* 3336C 80042B6C FFFF6224 */   addiu     $v0, $v1, -0x1
/* 33370 80042B70 100002A6 */  sh         $v0, 0x10($s0)
.L80042B74:
/* 33374 80042B74 10000286 */  lh         $v0, 0x10($s0)
/* 33378 80042B78 00000000 */  nop
/* 3337C 80042B7C 05004014 */  bnez       $v0, .L80042B94
/* 33380 80042B80 00000000 */   nop
/* 33384 80042B84 9009010C */  jal        FX_Die
/* 33388 80042B88 21200002 */   addu      $a0, $s0, $zero
/* 3338C 80042B8C 450B0108 */  j          .L80042D14
/* 33390 80042B90 00000000 */   nop
.L80042B94:
/* 33394 80042B94 0C00038E */  lw         $v1, 0xC($s0)
/* 33398 80042B98 00000000 */  nop
/* 3339C 80042B9C 20006230 */  andi       $v0, $v1, 0x20
/* 333A0 80042BA0 0F004010 */  beqz       $v0, .L80042BE0
/* 333A4 80042BA4 02006230 */   andi      $v0, $v1, 0x2
/* 333A8 80042BA8 5C00038E */  lw         $v1, 0x5C($s0)
/* 333AC 80042BAC 6000028E */  lw         $v0, 0x60($s0)
/* 333B0 80042BB0 4000638C */  lw         $v1, 0x40($v1)
/* 333B4 80042BB4 40110200 */  sll        $v0, $v0, 5
/* 333B8 80042BB8 21186200 */  addu       $v1, $v1, $v0
/* 333BC 80042BBC 14006294 */  lhu        $v0, 0x14($v1)
/* 333C0 80042BC0 00000000 */  nop
/* 333C4 80042BC4 2C0002A6 */  sh         $v0, 0x2C($s0)
/* 333C8 80042BC8 18006294 */  lhu        $v0, 0x18($v1)
/* 333CC 80042BCC 00000000 */  nop
/* 333D0 80042BD0 2E0002A6 */  sh         $v0, 0x2E($s0)
/* 333D4 80042BD4 1C006294 */  lhu        $v0, 0x1C($v1)
/* 333D8 80042BD8 200B0108 */  j          .L80042C80
/* 333DC 80042BDC 300002A6 */   sh        $v0, 0x30($s0)
.L80042BE0:
/* 333E0 80042BE0 27004014 */  bnez       $v0, .L80042C80
/* 333E4 80042BE4 00000000 */   nop
/* 333E8 80042BE8 5C000296 */  lhu        $v0, 0x5C($s0)
/* 333EC 80042BEC 62000396 */  lhu        $v1, 0x62($s0)
/* 333F0 80042BF0 64000496 */  lhu        $a0, 0x64($s0)
/* 333F4 80042BF4 66000596 */  lhu        $a1, 0x66($s0)
/* 333F8 80042BF8 21104300 */  addu       $v0, $v0, $v1
/* 333FC 80042BFC 5C0002A6 */  sh         $v0, 0x5C($s0)
/* 33400 80042C00 5E000296 */  lhu        $v0, 0x5E($s0)
/* 33404 80042C04 60000396 */  lhu        $v1, 0x60($s0)
/* 33408 80042C08 21104400 */  addu       $v0, $v0, $a0
/* 3340C 80042C0C 5E0002A6 */  sh         $v0, 0x5E($s0)
/* 33410 80042C10 2C000296 */  lhu        $v0, 0x2C($s0)
/* 33414 80042C14 5C000496 */  lhu        $a0, 0x5C($s0)
/* 33418 80042C18 21186500 */  addu       $v1, $v1, $a1
/* 3341C 80042C1C 600003A6 */  sh         $v1, 0x60($s0)
/* 33420 80042C20 2E000396 */  lhu        $v1, 0x2E($s0)
/* 33424 80042C24 5E000596 */  lhu        $a1, 0x5E($s0)
/* 33428 80042C28 21104400 */  addu       $v0, $v0, $a0
/* 3342C 80042C2C 30000496 */  lhu        $a0, 0x30($s0)
/* 33430 80042C30 21186500 */  addu       $v1, $v1, $a1
/* 33434 80042C34 2E0003A6 */  sh         $v1, 0x2E($s0)
/* 33438 80042C38 60000396 */  lhu        $v1, 0x60($s0)
/* 3343C 80042C3C 2C0002A6 */  sh         $v0, 0x2C($s0)
/* 33440 80042C40 0C00028E */  lw         $v0, 0xC($s0)
/* 33444 80042C44 21208300 */  addu       $a0, $a0, $v1
/* 33448 80042C48 00014230 */  andi       $v0, $v0, 0x100
/* 3344C 80042C4C 0C004010 */  beqz       $v0, .L80042C80
/* 33450 80042C50 300004A6 */   sh        $a0, 0x30($s0)
/* 33454 80042C54 00140400 */  sll        $v0, $a0, 16
/* 33458 80042C58 03140200 */  sra        $v0, $v0, 16
/* 3345C 80042C5C 42000386 */  lh         $v1, 0x42($s0)
/* 33460 80042C60 42000496 */  lhu        $a0, 0x42($s0)
/* 33464 80042C64 2A186200 */  slt        $v1, $v1, $v0
/* 33468 80042C68 05006014 */  bnez       $v1, .L80042C80
/* 3346C 80042C6C 00000000 */   nop
/* 33470 80042C70 0C00028E */  lw         $v0, 0xC($s0)
/* 33474 80042C74 300004A6 */  sh         $a0, 0x30($s0)
/* 33478 80042C78 02004234 */  ori        $v0, $v0, 0x2
/* 3347C 80042C7C 0C0002AE */  sw         $v0, 0xC($s0)
.L80042C80:
/* 33480 80042C80 1800048E */  lw         $a0, 0x18($s0)
/* 33484 80042C84 00000000 */  nop
/* 33488 80042C88 0800838C */  lw         $v1, 0x8($a0)
/* 3348C 80042C8C 00000000 */  nop
/* 33490 80042C90 02006230 */  andi       $v0, $v1, 0x2
/* 33494 80042C94 1F004014 */  bnez       $v0, .L80042D14
/* 33498 80042C98 02006234 */   ori       $v0, $v1, 0x2
/* 3349C 80042C9C 080082AC */  sw         $v0, 0x8($a0)
/* 334A0 80042CA0 0C00028E */  lw         $v0, 0xC($s0)
/* 334A4 80042CA4 00000000 */  nop
/* 334A8 80042CA8 80004230 */  andi       $v0, $v0, 0x80
/* 334AC 80042CAC 19004010 */  beqz       $v0, .L80042D14
/* 334B0 80042CB0 00000000 */   nop
/* 334B4 80042CB4 53000482 */  lb         $a0, 0x53($s0)
/* 334B8 80042CB8 00000000 */  nop
/* 334BC 80042CBC 80100400 */  sll        $v0, $a0, 2
/* 334C0 80042CC0 1000A2A7 */  sh         $v0, 0x10($sp)
/* 334C4 80042CC4 5A000282 */  lb         $v0, 0x5A($s0)
/* 334C8 80042CC8 00000000 */  nop
/* 334CC 80042CCC 80100200 */  sll        $v0, $v0, 2
/* 334D0 80042CD0 1200A2A7 */  sh         $v0, 0x12($sp)
/* 334D4 80042CD4 5B000282 */  lb         $v0, 0x5B($s0)
/* 334D8 80042CD8 00000000 */  nop
/* 334DC 80042CDC 80100200 */  sll        $v0, $v0, 2
/* 334E0 80042CE0 1400A2A7 */  sh         $v0, 0x14($sp)
/* 334E4 80042CE4 1800058E */  lw         $a1, 0x18($s0)
/* 334E8 80042CE8 80200400 */  sll        $a0, $a0, 2
/* 334EC 80042CEC 98E3010C */  jal        RotMatrixX
/* 334F0 80042CF0 0C00A524 */   addiu     $a1, $a1, 0xC
/* 334F4 80042CF4 1800058E */  lw         $a1, 0x18($s0)
/* 334F8 80042CF8 1200A487 */  lh         $a0, 0x12($sp)
/* 334FC 80042CFC E5E3010C */  jal        RotMatrixY
/* 33500 80042D00 0C00A524 */   addiu     $a1, $a1, 0xC
/* 33504 80042D04 1800058E */  lw         $a1, 0x18($s0)
/* 33508 80042D08 1400A487 */  lh         $a0, 0x14($sp)
/* 3350C 80042D0C 32E4010C */  jal        RotMatrixZ
/* 33510 80042D10 0C00A524 */   addiu     $a1, $a1, 0xC
.L80042D14:
/* 33514 80042D14 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 33518 80042D18 1800B08F */  lw         $s0, 0x18($sp)
/* 3351C 80042D1C 0800E003 */  jr         $ra
/* 33520 80042D20 2000BD27 */   addiu     $sp, $sp, 0x20
.size FX_DFacadeProcess, . - FX_DFacadeProcess
