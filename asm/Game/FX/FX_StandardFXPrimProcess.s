.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

# Handwritten function
glabel FX_StandardFXPrimProcess
/* 38B98 80048398 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 38B9C 8004839C 2000B0AF */  sw         $s0, 0x20($sp)
/* 38BA0 800483A0 21808000 */  addu       $s0, $a0, $zero
/* 38BA4 800483A4 2400BFAF */  sw         $ra, 0x24($sp)
/* 38BA8 800483A8 10000286 */  lh         $v0, 0x10($s0)
/* 38BAC 800483AC 10000396 */  lhu        $v1, 0x10($s0)
/* 38BB0 800483B0 04004018 */  blez       $v0, .L800483C4
/* 38BB4 800483B4 2138A000 */   addu      $a3, $a1, $zero
/* 38BB8 800483B8 FFFF6224 */  addiu      $v0, $v1, -0x1
/* 38BBC 800483BC 100002A6 */  sh         $v0, 0x10($s0)
/* 38BC0 800483C0 10000286 */  lh         $v0, 0x10($s0)
.L800483C4:
/* 38BC4 800483C4 00000000 */  nop
/* 38BC8 800483C8 48004010 */  beqz       $v0, .L800484EC
/* 38BCC 800483CC 0400023C */   lui       $v0, (0x40000 >> 16)
/* 38BD0 800483D0 0C00068E */  lw         $a2, 0xC($s0)
/* 38BD4 800483D4 00000000 */  nop
/* 38BD8 800483D8 2410C200 */  and        $v0, $a2, $v0
/* 38BDC 800483DC 3B004010 */  beqz       $v0, .L800484CC
/* 38BE0 800483E0 0020C230 */   andi      $v0, $a2, 0x2000
/* 38BE4 800483E4 2000048E */  lw         $a0, 0x20($s0)
/* 38BE8 800483E8 34000296 */  lhu        $v0, 0x34($s0)
/* 38BEC 800483EC 32000396 */  lhu        $v1, 0x32($s0)
/* 38BF0 800483F0 2400058E */  lw         $a1, 0x24($s0)
/* 38BF4 800483F4 21104300 */  addu       $v0, $v0, $v1
/* 38BF8 800483F8 1800A4AF */  sw         $a0, 0x18($sp)
/* 38BFC 800483FC 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 38C00 80048400 340002A6 */  sh         $v0, 0x34($s0)
/* 38C04 80048404 00140200 */  sll        $v0, $v0, 16
/* 38C08 80048408 03140200 */  sra        $v0, $v0, 16
/* 38C0C 8004840C 01104228 */  slti       $v0, $v0, 0x1001
/* 38C10 80048410 02004014 */  bnez       $v0, .L8004841C
/* 38C14 80048414 00100224 */   addiu     $v0, $zero, 0x1000
/* 38C18 80048418 340002A6 */  sh         $v0, 0x34($s0)
.L8004841C:
/* 38C1C 8004841C 34000386 */  lh         $v1, 0x34($s0)
/* 38C20 80048420 00100224 */  addiu      $v0, $zero, 0x1000
/* 38C24 80048424 23104300 */  subu       $v0, $v0, $v1
/* 38C28 80048428 00408248 */  mtc2       $v0, $8 # handwritten instruction
/* 38C2C 8004842C 1800A227 */  addiu      $v0, $sp, 0x18
/* 38C30 80048430 00004C90 */  lbu        $t4, 0x0($v0)
/* 38C34 80048434 01004D90 */  lbu        $t5, 0x1($v0)
/* 38C38 80048438 02004E90 */  lbu        $t6, 0x2($v0)
/* 38C3C 8004843C 00488C48 */  mtc2       $t4, $9 # handwritten instruction
/* 38C40 80048440 00508D48 */  mtc2       $t5, $10 # handwritten instruction
/* 38C44 80048444 00588E48 */  mtc2       $t6, $11 # handwritten instruction
/* 38C48 80048448 00000000 */  nop
/* 38C4C 8004844C 00000000 */  nop
/* 38C50 80048450 3D00984B */  GPF        1
/* 38C54 80048454 34000896 */  lhu        $t0, 0x34($s0)
/* 38C58 80048458 00000000 */  nop
/* 38C5C 8004845C 00408848 */  mtc2       $t0, $8 # handwritten instruction
/* 38C60 80048460 1C00A227 */  addiu      $v0, $sp, 0x1C
/* 38C64 80048464 00004C90 */  lbu        $t4, 0x0($v0)
/* 38C68 80048468 01004D90 */  lbu        $t5, 0x1($v0)
/* 38C6C 8004846C 02004E90 */  lbu        $t6, 0x2($v0)
/* 38C70 80048470 00488C48 */  mtc2       $t4, $9 # handwritten instruction
/* 38C74 80048474 00508D48 */  mtc2       $t5, $10 # handwritten instruction
/* 38C78 80048478 00588E48 */  mtc2       $t6, $11 # handwritten instruction
/* 38C7C 8004847C 00000000 */  nop
/* 38C80 80048480 00000000 */  nop
/* 38C84 80048484 3E00A84B */  GPL        1
/* 38C88 80048488 1C000226 */  addiu      $v0, $s0, 0x1C
/* 38C8C 8004848C 00480C48 */  mfc2       $t4, $9 # handwritten instruction
/* 38C90 80048490 00500D48 */  mfc2       $t5, $10 # handwritten instruction
/* 38C94 80048494 00580E48 */  mfc2       $t6, $11 # handwritten instruction
/* 38C98 80048498 00004CA0 */  sb         $t4, 0x0($v0)
/* 38C9C 8004849C 01004DA0 */  sb         $t5, 0x1($v0)
/* 38CA0 800484A0 02004EA0 */  sb         $t6, 0x2($v0)
/* 38CA4 800484A4 0100C230 */  andi       $v0, $a2, 0x1
/* 38CA8 800484A8 07004010 */  beqz       $v0, .L800484C8
/* 38CAC 800484AC FF03023C */   lui       $v0, (0x3FFFFFF >> 16)
/* 38CB0 800484B0 1C00038E */  lw         $v1, 0x1C($s0)
/* 38CB4 800484B4 FFFF4234 */  ori        $v0, $v0, (0x3FFFFFF & 0xFFFF)
/* 38CB8 800484B8 24186200 */  and        $v1, $v1, $v0
/* 38CBC 800484BC 002C023C */  lui        $v0, (0x2C000000 >> 16)
/* 38CC0 800484C0 25186200 */  or         $v1, $v1, $v0
/* 38CC4 800484C4 1C0003AE */  sw         $v1, 0x1C($s0)
.L800484C8:
/* 38CC8 800484C8 0020C230 */  andi       $v0, $a2, 0x2000
.L800484CC:
/* 38CCC 800484CC 0D004010 */  beqz       $v0, .L80048504
/* 38CD0 800484D0 2000C230 */   andi      $v0, $a2, 0x20
/* 38CD4 800484D4 3E000386 */  lh         $v1, 0x3E($s0)
/* 38CD8 800484D8 5A000286 */  lh         $v0, 0x5A($s0)
/* 38CDC 800484DC 00000000 */  nop
/* 38CE0 800484E0 23186200 */  subu       $v1, $v1, $v0
/* 38CE4 800484E4 0600601C */  bgtz       $v1, .L80048500
/* 38CE8 800484E8 2000C230 */   andi      $v0, $a2, 0x20
.L800484EC:
/* 38CEC 800484EC 21200002 */  addu       $a0, $s0, $zero
/* 38CF0 800484F0 9009010C */  jal        FX_Die
/* 38CF4 800484F4 2128E000 */   addu      $a1, $a3, $zero
/* 38CF8 800484F8 BE210108 */  j          .L800486F8
/* 38CFC 800484FC 00000000 */   nop
.L80048500:
/* 38D00 80048500 3E0003A6 */  sh         $v1, 0x3E($s0)
.L80048504:
/* 38D04 80048504 0F004010 */  beqz       $v0, .L80048544
/* 38D08 80048508 0200C230 */   andi      $v0, $a2, 0x2
/* 38D0C 8004850C 5C00038E */  lw         $v1, 0x5C($s0)
/* 38D10 80048510 6000028E */  lw         $v0, 0x60($s0)
/* 38D14 80048514 4000638C */  lw         $v1, 0x40($v1)
/* 38D18 80048518 40110200 */  sll        $v0, $v0, 5
/* 38D1C 8004851C 21186200 */  addu       $v1, $v1, $v0
/* 38D20 80048520 14006294 */  lhu        $v0, 0x14($v1)
/* 38D24 80048524 00000000 */  nop
/* 38D28 80048528 2C0002A6 */  sh         $v0, 0x2C($s0)
/* 38D2C 8004852C 18006294 */  lhu        $v0, 0x18($v1)
/* 38D30 80048530 00000000 */  nop
/* 38D34 80048534 2E0002A6 */  sh         $v0, 0x2E($s0)
/* 38D38 80048538 1C006294 */  lhu        $v0, 0x1C($v1)
/* 38D3C 8004853C 95210108 */  j          .L80048654
/* 38D40 80048540 300002A6 */   sh        $v0, 0x30($s0)
.L80048544:
/* 38D44 80048544 44004014 */  bnez       $v0, .L80048658
/* 38D48 80048548 0008023C */   lui       $v0, (0x8000000 >> 16)
/* 38D4C 8004854C 5C000296 */  lhu        $v0, 0x5C($s0)
/* 38D50 80048550 62000396 */  lhu        $v1, 0x62($s0)
/* 38D54 80048554 64000496 */  lhu        $a0, 0x64($s0)
/* 38D58 80048558 66000596 */  lhu        $a1, 0x66($s0)
/* 38D5C 8004855C 21104300 */  addu       $v0, $v0, $v1
/* 38D60 80048560 5C0002A6 */  sh         $v0, 0x5C($s0)
/* 38D64 80048564 5E000296 */  lhu        $v0, 0x5E($s0)
/* 38D68 80048568 60000396 */  lhu        $v1, 0x60($s0)
/* 38D6C 8004856C 21104400 */  addu       $v0, $v0, $a0
/* 38D70 80048570 21186500 */  addu       $v1, $v1, $a1
/* 38D74 80048574 5E0002A6 */  sh         $v0, 0x5E($s0)
/* 38D78 80048578 0001023C */  lui        $v0, (0x1000000 >> 16)
/* 38D7C 8004857C 2410C200 */  and        $v0, $a2, $v0
/* 38D80 80048580 1A004010 */  beqz       $v0, .L800485EC
/* 38D84 80048584 600003A6 */   sh        $v1, 0x60($s0)
/* 38D88 80048588 3C000296 */  lhu        $v0, 0x3C($s0)
/* 38D8C 8004858C 5C000496 */  lhu        $a0, 0x5C($s0)
/* 38D90 80048590 44000396 */  lhu        $v1, 0x44($s0)
/* 38D94 80048594 21288000 */  addu       $a1, $a0, $zero
/* 38D98 80048598 21104400 */  addu       $v0, $v0, $a0
/* 38D9C 8004859C 3C0002A6 */  sh         $v0, 0x3C($s0)
/* 38DA0 800485A0 3E000296 */  lhu        $v0, 0x3E($s0)
/* 38DA4 800485A4 5E000496 */  lhu        $a0, 0x5E($s0)
/* 38DA8 800485A8 21186500 */  addu       $v1, $v1, $a1
/* 38DAC 800485AC 440003A6 */  sh         $v1, 0x44($s0)
/* 38DB0 800485B0 46000396 */  lhu        $v1, 0x46($s0)
/* 38DB4 800485B4 21288000 */  addu       $a1, $a0, $zero
/* 38DB8 800485B8 21104400 */  addu       $v0, $v0, $a0
/* 38DBC 800485BC 3E0002A6 */  sh         $v0, 0x3E($s0)
/* 38DC0 800485C0 40000296 */  lhu        $v0, 0x40($s0)
/* 38DC4 800485C4 60000496 */  lhu        $a0, 0x60($s0)
/* 38DC8 800485C8 21186500 */  addu       $v1, $v1, $a1
/* 38DCC 800485CC 460003A6 */  sh         $v1, 0x46($s0)
/* 38DD0 800485D0 48000396 */  lhu        $v1, 0x48($s0)
/* 38DD4 800485D4 21288000 */  addu       $a1, $a0, $zero
/* 38DD8 800485D8 21104400 */  addu       $v0, $v0, $a0
/* 38DDC 800485DC 21186500 */  addu       $v1, $v1, $a1
/* 38DE0 800485E0 400002A6 */  sh         $v0, 0x40($s0)
/* 38DE4 800485E4 87210108 */  j          .L8004861C
/* 38DE8 800485E8 480003A6 */   sh        $v1, 0x48($s0)
.L800485EC:
/* 38DEC 800485EC 2C000296 */  lhu        $v0, 0x2C($s0)
/* 38DF0 800485F0 5C000396 */  lhu        $v1, 0x5C($s0)
/* 38DF4 800485F4 5E000496 */  lhu        $a0, 0x5E($s0)
/* 38DF8 800485F8 60000596 */  lhu        $a1, 0x60($s0)
/* 38DFC 800485FC 21104300 */  addu       $v0, $v0, $v1
/* 38E00 80048600 2C0002A6 */  sh         $v0, 0x2C($s0)
/* 38E04 80048604 2E000296 */  lhu        $v0, 0x2E($s0)
/* 38E08 80048608 30000396 */  lhu        $v1, 0x30($s0)
/* 38E0C 8004860C 21104400 */  addu       $v0, $v0, $a0
/* 38E10 80048610 21186500 */  addu       $v1, $v1, $a1
/* 38E14 80048614 2E0002A6 */  sh         $v0, 0x2E($s0)
/* 38E18 80048618 300003A6 */  sh         $v1, 0x30($s0)
.L8004861C:
/* 38E1C 8004861C 0001C230 */  andi       $v0, $a2, 0x100
/* 38E20 80048620 0D004010 */  beqz       $v0, .L80048658
/* 38E24 80048624 0008023C */   lui       $v0, (0x8000000 >> 16)
/* 38E28 80048628 30000386 */  lh         $v1, 0x30($s0)
/* 38E2C 8004862C 42000286 */  lh         $v0, 0x42($s0)
/* 38E30 80048630 00000000 */  nop
/* 38E34 80048634 2A104300 */  slt        $v0, $v0, $v1
/* 38E38 80048638 42000396 */  lhu        $v1, 0x42($s0)
/* 38E3C 8004863C 06004014 */  bnez       $v0, .L80048658
/* 38E40 80048640 0008023C */   lui       $v0, (0x8000000 >> 16)
/* 38E44 80048644 0C00028E */  lw         $v0, 0xC($s0)
/* 38E48 80048648 300003A6 */  sh         $v1, 0x30($s0)
/* 38E4C 8004864C 02004234 */  ori        $v0, $v0, 0x2
/* 38E50 80048650 0C0002AE */  sw         $v0, 0xC($s0)
.L80048654:
/* 38E54 80048654 0008023C */  lui        $v0, (0x8000000 >> 16)
.L80048658:
/* 38E58 80048658 2410C200 */  and        $v0, $a2, $v0
/* 38E5C 8004865C 26004014 */  bnez       $v0, .L800486F8
/* 38E60 80048660 00000000 */   nop
/* 38E64 80048664 1800038E */  lw         $v1, 0x18($s0)
/* 38E68 80048668 00000000 */  nop
/* 38E6C 8004866C 22006010 */  beqz       $v1, .L800486F8
/* 38E70 80048670 00000000 */   nop
/* 38E74 80048674 0800648C */  lw         $a0, 0x8($v1)
/* 38E78 80048678 00000000 */  nop
/* 38E7C 8004867C 02008230 */  andi       $v0, $a0, 0x2
/* 38E80 80048680 1D004014 */  bnez       $v0, .L800486F8
/* 38E84 80048684 02008234 */   ori       $v0, $a0, 0x2
/* 38E88 80048688 080062AC */  sw         $v0, 0x8($v1)
/* 38E8C 8004868C 8000C230 */  andi       $v0, $a2, 0x80
/* 38E90 80048690 19004010 */  beqz       $v0, .L800486F8
/* 38E94 80048694 00000000 */   nop
/* 38E98 80048698 53000482 */  lb         $a0, 0x53($s0)
/* 38E9C 8004869C 00000000 */  nop
/* 38EA0 800486A0 80100400 */  sll        $v0, $a0, 2
/* 38EA4 800486A4 1000A2A7 */  sh         $v0, 0x10($sp)
/* 38EA8 800486A8 5A000282 */  lb         $v0, 0x5A($s0)
/* 38EAC 800486AC 00000000 */  nop
/* 38EB0 800486B0 80100200 */  sll        $v0, $v0, 2
/* 38EB4 800486B4 1200A2A7 */  sh         $v0, 0x12($sp)
/* 38EB8 800486B8 5B000282 */  lb         $v0, 0x5B($s0)
/* 38EBC 800486BC 00000000 */  nop
/* 38EC0 800486C0 80100200 */  sll        $v0, $v0, 2
/* 38EC4 800486C4 1400A2A7 */  sh         $v0, 0x14($sp)
/* 38EC8 800486C8 1800058E */  lw         $a1, 0x18($s0)
/* 38ECC 800486CC 80200400 */  sll        $a0, $a0, 2
/* 38ED0 800486D0 98E3010C */  jal        RotMatrixX
/* 38ED4 800486D4 0C00A524 */   addiu     $a1, $a1, 0xC
/* 38ED8 800486D8 1800058E */  lw         $a1, 0x18($s0)
/* 38EDC 800486DC 1200A487 */  lh         $a0, 0x12($sp)
/* 38EE0 800486E0 E5E3010C */  jal        RotMatrixY
/* 38EE4 800486E4 0C00A524 */   addiu     $a1, $a1, 0xC
/* 38EE8 800486E8 1800058E */  lw         $a1, 0x18($s0)
/* 38EEC 800486EC 1400A487 */  lh         $a0, 0x14($sp)
/* 38EF0 800486F0 32E4010C */  jal        RotMatrixZ
/* 38EF4 800486F4 0C00A524 */   addiu     $a1, $a1, 0xC
.L800486F8:
/* 38EF8 800486F8 2400BF8F */  lw         $ra, 0x24($sp)
/* 38EFC 800486FC 2000B08F */  lw         $s0, 0x20($sp)
/* 38F00 80048700 0800E003 */  jr         $ra
/* 38F04 80048704 2800BD27 */   addiu     $sp, $sp, 0x28
.size FX_StandardFXPrimProcess, . - FX_StandardFXPrimProcess
