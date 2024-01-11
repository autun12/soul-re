.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FX_ConstrictProcess
/* 38164 80047964 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 38168 80047968 1400B1AF */  sw         $s1, 0x14($sp)
/* 3816C 8004796C 21888000 */  addu       $s1, $a0, $zero
/* 38170 80047970 1800B2AF */  sw         $s2, 0x18($sp)
/* 38174 80047974 2190A000 */  addu       $s2, $a1, $zero
/* 38178 80047978 6C9A8387 */  lh         $v1, %gp_rel(FX_ConstrictStage)($gp)
/* 3817C 8004797C 01000224 */  addiu      $v0, $zero, 0x1
/* 38180 80047980 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 38184 80047984 6F006214 */  bne        $v1, $v0, .L80047B44
/* 38188 80047988 1000B0AF */   sw        $s0, 0x10($sp)
/* 3818C 8004798C FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 38190 80047990 0CBF828F */  lw         $v0, %gp_rel(gameTrackerX + 0x144)($gp)
/* 38194 80047994 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 38198 80047998 04004234 */  ori        $v0, $v0, 0x4
/* 3819C 8004799C 0CBF82AF */  sw         $v0, %gp_rel(gameTrackerX + 0x144)($gp)
/* 381A0 800479A0 200023AE */  sw         $v1, 0x20($s1)
/* 381A4 800479A4 52002386 */  lh         $v1, 0x52($s1)
/* 381A8 800479A8 28000224 */  addiu      $v0, $zero, 0x28
/* 381AC 800479AC 100022A6 */  sh         $v0, 0x10($s1)
/* 381B0 800479B0 66000224 */  addiu      $v0, $zero, 0x66
/* 381B4 800479B4 320022A6 */  sh         $v0, 0x32($s1)
/* 381B8 800479B8 80030224 */  addiu      $v0, $zero, 0x380
/* 381BC 800479BC 3A0020A6 */  sh         $zero, 0x3A($s1)
/* 381C0 800479C0 380020A6 */  sh         $zero, 0x38($s1)
/* 381C4 800479C4 360020A6 */  sh         $zero, 0x36($s1)
/* 381C8 800479C8 340020A6 */  sh         $zero, 0x34($s1)
/* 381CC 800479CC 4A0022A6 */  sh         $v0, 0x4A($s1)
/* 381D0 800479D0 420022A6 */  sh         $v0, 0x42($s1)
/* 381D4 800479D4 2A006010 */  beqz       $v1, .L80047A80
/* 381D8 800479D8 4A0020A6 */   sh        $zero, 0x4A($s1)
/* 381DC 800479DC 00100224 */  addiu      $v0, $zero, 0x1000
/* 381E0 800479E0 4E002386 */  lh         $v1, 0x4E($s1)
/* 381E4 800479E4 B2C39027 */  addiu      $s0, $gp, %gp_rel(FX_ConstrictPosition + 0x2)
/* 381E8 800479E8 360022A6 */  sh         $v0, 0x36($s1)
/* 381EC 800479EC 340022A6 */  sh         $v0, 0x34($s1)
/* 381F0 800479F0 3A0020A6 */  sh         $zero, 0x3A($s1)
/* 381F4 800479F4 380020A6 */  sh         $zero, 0x38($s1)
/* 381F8 800479F8 B2C38487 */  lh         $a0, %gp_rel(FX_ConstrictPosition + 0x2)($gp)
/* 381FC 800479FC 4C002286 */  lh         $v0, 0x4C($s1)
/* 38200 80047A00 FEFF0586 */  lh         $a1, -0x2($s0)
/* 38204 80047A04 23206400 */  subu       $a0, $v1, $a0
/* 38208 80047A08 26F3020C */  jal        ratan2
/* 3820C 80047A0C 23284500 */   subu      $a1, $v0, $a1
/* 38210 80047A10 56002386 */  lh         $v1, 0x56($s1)
/* 38214 80047A14 520022A6 */  sh         $v0, 0x52($s1)
/* 38218 80047A18 B2C38487 */  lh         $a0, %gp_rel(FX_ConstrictPosition + 0x2)($gp)
/* 3821C 80047A1C 54002286 */  lh         $v0, 0x54($s1)
/* 38220 80047A20 FEFF0586 */  lh         $a1, -0x2($s0)
/* 38224 80047A24 23206400 */  subu       $a0, $v1, $a0
/* 38228 80047A28 26F3020C */  jal        ratan2
/* 3822C 80047A2C 23284500 */   subu      $a1, $v0, $a1
/* 38230 80047A30 40002486 */  lh         $a0, 0x40($s1)
/* 38234 80047A34 50002386 */  lh         $v1, 0x50($s1)
/* 38238 80047A38 50002596 */  lhu        $a1, 0x50($s1)
/* 3823C 80047A3C 5A0022A6 */  sh         $v0, 0x5A($s1)
/* 38240 80047A40 23108300 */  subu       $v0, $a0, $v1
/* 38244 80047A44 02004104 */  bgez       $v0, .L80047A50
/* 38248 80047A48 00000000 */   nop
/* 3824C 80047A4C 03004224 */  addiu      $v0, $v0, 0x3
.L80047A50:
/* 38250 80047A50 83100200 */  sra        $v0, $v0, 2
/* 38254 80047A54 48002486 */  lh         $a0, 0x48($s1)
/* 38258 80047A58 58002386 */  lh         $v1, 0x58($s1)
/* 3825C 80047A5C 2110A200 */  addu       $v0, $a1, $v0
/* 38260 80047A60 400022A6 */  sh         $v0, 0x40($s1)
/* 38264 80047A64 58002296 */  lhu        $v0, 0x58($s1)
/* 38268 80047A68 23208300 */  subu       $a0, $a0, $v1
/* 3826C 80047A6C 40180400 */  sll        $v1, $a0, 1
/* 38270 80047A70 21186400 */  addu       $v1, $v1, $a0
/* 38274 80047A74 21104300 */  addu       $v0, $v0, $v1
/* 38278 80047A78 C81E0108 */  j          .L80047B20
/* 3827C 80047A7C 480022A6 */   sh        $v0, 0x48($s1)
.L80047A80:
/* 38280 80047A80 00100224 */  addiu      $v0, $zero, 0x1000
/* 38284 80047A84 3E002386 */  lh         $v1, 0x3E($s1)
/* 38288 80047A88 B2C39027 */  addiu      $s0, $gp, %gp_rel(FX_ConstrictPosition + 0x2)
/* 3828C 80047A8C 360020A6 */  sh         $zero, 0x36($s1)
/* 38290 80047A90 340020A6 */  sh         $zero, 0x34($s1)
/* 38294 80047A94 3A0022A6 */  sh         $v0, 0x3A($s1)
/* 38298 80047A98 380022A6 */  sh         $v0, 0x38($s1)
/* 3829C 80047A9C B2C38487 */  lh         $a0, %gp_rel(FX_ConstrictPosition + 0x2)($gp)
/* 382A0 80047AA0 3C002286 */  lh         $v0, 0x3C($s1)
/* 382A4 80047AA4 FEFF0586 */  lh         $a1, -0x2($s0)
/* 382A8 80047AA8 23206400 */  subu       $a0, $v1, $a0
/* 382AC 80047AAC 26F3020C */  jal        ratan2
/* 382B0 80047AB0 23284500 */   subu      $a1, $v0, $a1
/* 382B4 80047AB4 46002386 */  lh         $v1, 0x46($s1)
/* 382B8 80047AB8 520022A6 */  sh         $v0, 0x52($s1)
/* 382BC 80047ABC B2C38487 */  lh         $a0, %gp_rel(FX_ConstrictPosition + 0x2)($gp)
/* 382C0 80047AC0 44002286 */  lh         $v0, 0x44($s1)
/* 382C4 80047AC4 FEFF0586 */  lh         $a1, -0x2($s0)
/* 382C8 80047AC8 23206400 */  subu       $a0, $v1, $a0
/* 382CC 80047ACC 26F3020C */  jal        ratan2
/* 382D0 80047AD0 23284500 */   subu      $a1, $v0, $a1
/* 382D4 80047AD4 50002486 */  lh         $a0, 0x50($s1)
/* 382D8 80047AD8 40002386 */  lh         $v1, 0x40($s1)
/* 382DC 80047ADC 40002596 */  lhu        $a1, 0x40($s1)
/* 382E0 80047AE0 5A0022A6 */  sh         $v0, 0x5A($s1)
/* 382E4 80047AE4 23108300 */  subu       $v0, $a0, $v1
/* 382E8 80047AE8 02004104 */  bgez       $v0, .L80047AF4
/* 382EC 80047AEC 00000000 */   nop
/* 382F0 80047AF0 03004224 */  addiu      $v0, $v0, 0x3
.L80047AF4:
/* 382F4 80047AF4 83100200 */  sra        $v0, $v0, 2
/* 382F8 80047AF8 58002486 */  lh         $a0, 0x58($s1)
/* 382FC 80047AFC 48002386 */  lh         $v1, 0x48($s1)
/* 38300 80047B00 2110A200 */  addu       $v0, $a1, $v0
/* 38304 80047B04 500022A6 */  sh         $v0, 0x50($s1)
/* 38308 80047B08 48002296 */  lhu        $v0, 0x48($s1)
/* 3830C 80047B0C 23208300 */  subu       $a0, $a0, $v1
/* 38310 80047B10 40180400 */  sll        $v1, $a0, 1
/* 38314 80047B14 21186400 */  addu       $v1, $v1, $a0
/* 38318 80047B18 21104300 */  addu       $v0, $v0, $v1
/* 3831C 80047B1C 580022A6 */  sh         $v0, 0x58($s1)
.L80047B20:
/* 38320 80047B20 B0C38297 */  lhu        $v0, %gp_rel(FX_ConstrictPosition)($gp)
/* 38324 80047B24 00000000 */  nop
/* 38328 80047B28 440022A6 */  sh         $v0, 0x44($s1)
/* 3832C 80047B2C 540022A6 */  sh         $v0, 0x54($s1)
/* 38330 80047B30 B2C38297 */  lhu        $v0, %gp_rel(FX_ConstrictPosition + 0x2)($gp)
/* 38334 80047B34 00000000 */  nop
/* 38338 80047B38 460022A6 */  sh         $v0, 0x46($s1)
/* 3833C 80047B3C F91E0108 */  j          .L80047BE4
/* 38340 80047B40 560022A6 */   sh        $v0, 0x56($s1)
.L80047B44:
/* 38344 80047B44 42002286 */  lh         $v0, 0x42($s1)
/* 38348 80047B48 42002496 */  lhu        $a0, 0x42($s1)
/* 3834C 80047B4C 0500401C */  bgtz       $v0, .L80047B64
/* 38350 80047B50 00000000 */   nop
/* 38354 80047B54 4A002286 */  lh         $v0, 0x4A($s1)
/* 38358 80047B58 00000000 */  nop
/* 3835C 80047B5C 21004018 */  blez       $v0, .L80047BE4
/* 38360 80047B60 00000000 */   nop
.L80047B64:
/* 38364 80047B64 52002396 */  lhu        $v1, 0x52($s1)
/* 38368 80047B68 D8FF8224 */  addiu      $v0, $a0, -0x28
/* 3836C 80047B6C 420022A6 */  sh         $v0, 0x42($s1)
/* 38370 80047B70 C0FF6324 */  addiu      $v1, $v1, -0x40
/* 38374 80047B74 00240300 */  sll        $a0, $v1, 16
/* 38378 80047B78 03240400 */  sra        $a0, $a0, 16
/* 3837C 80047B7C DCE4010C */  jal        rcos
/* 38380 80047B80 520023A6 */   sh        $v1, 0x52($s1)
/* 38384 80047B84 42002386 */  lh         $v1, 0x42($s1)
/* 38388 80047B88 00000000 */  nop
/* 3838C 80047B8C 18006200 */  mult       $v1, $v0
/* 38390 80047B90 52002486 */  lh         $a0, 0x52($s1)
/* 38394 80047B94 B0C38297 */  lhu        $v0, %gp_rel(FX_ConstrictPosition)($gp)
/* 38398 80047B98 12300000 */  mflo       $a2
/* 3839C 80047B9C 031B0600 */  sra        $v1, $a2, 12
/* 383A0 80047BA0 21104300 */  addu       $v0, $v0, $v1
/* 383A4 80047BA4 3C0022A6 */  sh         $v0, 0x3C($s1)
/* 383A8 80047BA8 D0E4010C */  jal        rsin
/* 383AC 80047BAC 4C0022A6 */   sh        $v0, 0x4C($s1)
/* 383B0 80047BB0 42002386 */  lh         $v1, 0x42($s1)
/* 383B4 80047BB4 00000000 */  nop
/* 383B8 80047BB8 18006200 */  mult       $v1, $v0
/* 383BC 80047BBC B2C38297 */  lhu        $v0, %gp_rel(FX_ConstrictPosition + 0x2)($gp)
/* 383C0 80047BC0 12300000 */  mflo       $a2
/* 383C4 80047BC4 031B0600 */  sra        $v1, $a2, 12
/* 383C8 80047BC8 21104300 */  addu       $v0, $v0, $v1
/* 383CC 80047BCC 3E0022A6 */  sh         $v0, 0x3E($s1)
/* 383D0 80047BD0 4E0022A6 */  sh         $v0, 0x4E($s1)
/* 383D4 80047BD4 0CBF828F */  lw         $v0, %gp_rel(gameTrackerX + 0x144)($gp)
/* 383D8 80047BD8 00000000 */  nop
/* 383DC 80047BDC 04004234 */  ori        $v0, $v0, 0x4
/* 383E0 80047BE0 0CBF82AF */  sw         $v0, %gp_rel(gameTrackerX + 0x144)($gp)
.L80047BE4:
/* 383E4 80047BE4 21202002 */  addu       $a0, $s1, $zero
/* 383E8 80047BE8 1C1E010C */  jal        FX_RibbonProcess
/* 383EC 80047BEC 21284002 */   addu      $a1, $s2, $zero
/* 383F0 80047BF0 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 383F4 80047BF4 1800B28F */  lw         $s2, 0x18($sp)
/* 383F8 80047BF8 1400B18F */  lw         $s1, 0x14($sp)
/* 383FC 80047BFC 1000B08F */  lw         $s0, 0x10($sp)
/* 38400 80047C00 0800E003 */  jr         $ra
/* 38404 80047C04 2000BD27 */   addiu     $sp, $sp, 0x20
.size FX_ConstrictProcess, . - FX_ConstrictProcess
