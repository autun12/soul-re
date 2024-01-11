.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EVENT_DoVMObjectAction
/* 54058 80063858 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 5405C 8006385C 1800B0AF */  sw         $s0, 0x18($sp)
/* 54060 80063860 21808000 */  addu       $s0, $a0, $zero
/* 54064 80063864 2120A000 */  addu       $a0, $a1, $zero
/* 54068 80063868 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 5406C 8006386C 21880000 */  addu       $s1, $zero, $zero
/* 54070 80063870 FFFF0624 */  addiu      $a2, $zero, -0x1
/* 54074 80063874 01000224 */  addiu      $v0, $zero, 0x1
/* 54078 80063878 2400BFAF */  sw         $ra, 0x24($sp)
/* 5407C 8006387C 2000B2AF */  sw         $s2, 0x20($sp)
/* 54080 80063880 1400A2AF */  sw         $v0, 0x14($sp)
/* 54084 80063884 1000A2AF */  sw         $v0, 0x10($sp)
/* 54088 80063888 0800028E */  lw         $v0, 0x8($s0)
/* 5408C 8006388C 00000000 */  nop
/* 54090 80063890 5A004610 */  beq        $v0, $a2, .L800639FC
/* 54094 80063894 2190C000 */   addu      $s2, $a2, $zero
/* 54098 80063898 1000A527 */  addiu      $a1, $sp, 0x10
/* 5409C 8006389C 008E010C */  jal        EVENT_ParseOperand2
/* 540A0 800638A0 1400A627 */   addiu     $a2, $sp, 0x14
/* 540A4 800638A4 21304000 */  addu       $a2, $v0, $zero
/* 540A8 800638A8 0800038E */  lw         $v1, 0x8($s0)
/* 540AC 800638AC 0E000224 */  addiu      $v0, $zero, 0xE
/* 540B0 800638B0 0E006210 */  beq        $v1, $v0, .L800638EC
/* 540B4 800638B4 0F006228 */   slti      $v0, $v1, 0xF
/* 540B8 800638B8 05004010 */  beqz       $v0, .L800638D0
/* 540BC 800638BC 0D000224 */   addiu     $v0, $zero, 0xD
/* 540C0 800638C0 0E006210 */  beq        $v1, $v0, .L800638FC
/* 540C4 800638C4 21102002 */   addu      $v0, $s1, $zero
/* 540C8 800638C8 808E0108 */  j          .L80063A00
/* 540CC 800638CC 00000000 */   nop
.L800638D0:
/* 540D0 800638D0 63000224 */  addiu      $v0, $zero, 0x63
/* 540D4 800638D4 19006210 */  beq        $v1, $v0, .L8006393C
/* 540D8 800638D8 64000224 */   addiu     $v0, $zero, 0x64
/* 540DC 800638DC 34006210 */  beq        $v1, $v0, .L800639B0
/* 540E0 800638E0 21102002 */   addu      $v0, $s1, $zero
/* 540E4 800638E4 808E0108 */  j          .L80063A00
/* 540E8 800638E8 00000000 */   nop
.L800638EC:
/* 540EC 800638EC 1400A28F */  lw         $v0, 0x14($sp)
/* 540F0 800638F0 00000000 */  nop
/* 540F4 800638F4 0100422C */  sltiu      $v0, $v0, 0x1
/* 540F8 800638F8 1400A2AF */  sw         $v0, 0x14($sp)
.L800638FC:
/* 540FC 800638FC 1400A28F */  lw         $v0, 0x14($sp)
/* 54100 80063900 00000000 */  nop
/* 54104 80063904 06004010 */  beqz       $v0, .L80063920
/* 54108 80063908 00000000 */   nop
/* 5410C 8006390C 0000038E */  lw         $v1, 0x0($s0)
/* 54110 80063910 00000000 */  nop
/* 54114 80063914 00006294 */  lhu        $v0, 0x0($v1)
/* 54118 80063918 4D8E0108 */  j          .L80063934
/* 5411C 8006391C FDFF4230 */   andi      $v0, $v0, 0xFFFD
.L80063920:
/* 54120 80063920 0000038E */  lw         $v1, 0x0($s0)
/* 54124 80063924 00000000 */  nop
/* 54128 80063928 00006294 */  lhu        $v0, 0x0($v1)
/* 5412C 8006392C 00000000 */  nop
/* 54130 80063930 02004234 */  ori        $v0, $v0, 0x2
.L80063934:
/* 54134 80063934 7E8E0108 */  j          .L800639F8
/* 54138 80063938 000062A4 */   sh        $v0, 0x0($v1)
.L8006393C:
/* 5413C 8006393C 3000D210 */  beq        $a2, $s2, .L80063A00
/* 54140 80063940 21102002 */   addu      $v0, $s1, $zero
/* 54144 80063944 2E00C004 */  bltz       $a2, .L80063A00
/* 54148 80063948 00000000 */   nop
/* 5414C 8006394C 0000058E */  lw         $a1, 0x0($s0)
/* 54150 80063950 00000000 */  nop
/* 54154 80063954 1C00A28C */  lw         $v0, 0x1C($a1)
/* 54158 80063958 00000000 */  nop
/* 5415C 8006395C 2A10C200 */  slt        $v0, $a2, $v0
/* 54160 80063960 27004010 */  beqz       $v0, .L80063A00
/* 54164 80063964 21102002 */   addu      $v0, $s1, $zero
/* 54168 80063968 0400048E */  lw         $a0, 0x4($s0)
/* 5416C 8006396C 0740010C */  jal        VM_VMObjectSetTable
/* 54170 80063970 00000000 */   nop
/* 54174 80063974 0000058E */  lw         $a1, 0x0($s0)
/* 54178 80063978 00000000 */  nop
/* 5417C 8006397C 0000A294 */  lhu        $v0, 0x0($a1)
/* 54180 80063980 00000000 */  nop
/* 54184 80063984 02004230 */  andi       $v0, $v0, 0x2
/* 54188 80063988 1D004010 */  beqz       $v0, .L80063A00
/* 5418C 8006398C 21102002 */   addu      $v0, $s1, $zero
/* 54190 80063990 0400048E */  lw         $a0, 0x4($s0)
/* 54194 80063994 00000000 */  nop
/* 54198 80063998 19008010 */  beqz       $a0, .L80063A00
/* 5419C 8006399C 00000000 */   nop
/* 541A0 800639A0 54E2010C */  jal        VM_ProcessVMObjectSetColor_S
/* 541A4 800639A4 00000000 */   nop
/* 541A8 800639A8 808E0108 */  j          .L80063A00
/* 541AC 800639AC 21102002 */   addu      $v0, $s1, $zero
.L800639B0:
/* 541B0 800639B0 1200D210 */  beq        $a2, $s2, .L800639FC
/* 541B4 800639B4 01001124 */   addiu     $s1, $zero, 0x1
/* 541B8 800639B8 0000028E */  lw         $v0, 0x0($s0)
/* 541BC 800639BC 00000000 */  nop
/* 541C0 800639C0 0C0046AC */  sw         $a2, 0xC($v0)
/* 541C4 800639C4 0000058E */  lw         $a1, 0x0($s0)
/* 541C8 800639C8 00000000 */  nop
/* 541CC 800639CC 0000A294 */  lhu        $v0, 0x0($a1)
/* 541D0 800639D0 00000000 */  nop
/* 541D4 800639D4 02004230 */  andi       $v0, $v0, 0x2
/* 541D8 800639D8 09004010 */  beqz       $v0, .L80063A00
/* 541DC 800639DC 21102002 */   addu      $v0, $s1, $zero
/* 541E0 800639E0 0400048E */  lw         $a0, 0x4($s0)
/* 541E4 800639E4 00000000 */  nop
/* 541E8 800639E8 05008010 */  beqz       $a0, .L80063A00
/* 541EC 800639EC 00000000 */   nop
/* 541F0 800639F0 54E2010C */  jal        VM_ProcessVMObjectSetColor_S
/* 541F4 800639F4 00000000 */   nop
.L800639F8:
/* 541F8 800639F8 01001124 */  addiu      $s1, $zero, 0x1
.L800639FC:
/* 541FC 800639FC 21102002 */  addu       $v0, $s1, $zero
.L80063A00:
/* 54200 80063A00 2400BF8F */  lw         $ra, 0x24($sp)
/* 54204 80063A04 2000B28F */  lw         $s2, 0x20($sp)
/* 54208 80063A08 1C00B18F */  lw         $s1, 0x1C($sp)
/* 5420C 80063A0C 1800B08F */  lw         $s0, 0x18($sp)
/* 54210 80063A10 0800E003 */  jr         $ra
/* 54214 80063A14 2800BD27 */   addiu     $sp, $sp, 0x28
.size EVENT_DoVMObjectAction, . - EVENT_DoVMObjectAction
