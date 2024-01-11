.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel sfxCmdSetToneVolumeAndPan
/* 47EB0 800576B0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 47EB4 800576B4 21480000 */  addu       $t1, $zero, $zero
/* 47EB8 800576B8 1800BFAF */  sw         $ra, 0x18($sp)
/* 47EBC 800576BC 0400878C */  lw         $a3, 0x4($a0)
/* 47EC0 800576C0 FFFF2531 */  andi       $a1, $t1, 0xFFFF
.L800576C4:
/* 47EC4 800576C4 C0100500 */  sll        $v0, $a1, 3
/* 47EC8 800576C8 23104500 */  subu       $v0, $v0, $a1
/* 47ECC 800576CC 80100200 */  sll        $v0, $v0, 2
/* 47ED0 800576D0 D89B868F */  lw         $a2, %gp_rel(aadMem)($gp)
/* 47ED4 800576D4 DC014224 */  addiu      $v0, $v0, 0x1DC
/* 47ED8 800576D8 2140C200 */  addu       $t0, $a2, $v0
/* 47EDC 800576DC 08000391 */  lbu        $v1, 0x8($t0)
/* 47EE0 800576E0 D0000224 */  addiu      $v0, $zero, 0xD0
/* 47EE4 800576E4 C6006214 */  bne        $v1, $v0, .L80057A00
/* 47EE8 800576E8 00000000 */   nop
/* 47EEC 800576EC 0400028D */  lw         $v0, 0x4($t0)
/* 47EF0 800576F0 00000000 */  nop
/* 47EF4 800576F4 C2004714 */  bne        $v0, $a3, .L80057A00
/* 47EF8 800576F8 2110C500 */   addu      $v0, $a2, $a1
/* 47EFC 800576FC 7C044390 */  lbu        $v1, 0x47C($v0)
/* 47F00 80057700 00000000 */  nop
/* 47F04 80057704 BE006010 */  beqz       $v1, .L80057A00
/* 47F08 80057708 02000224 */   addiu     $v0, $zero, 0x2
/* 47F0C 8005770C BC006210 */  beq        $v1, $v0, .L80057A00
/* 47F10 80057710 00000000 */   nop
/* 47F14 80057714 0E000291 */  lbu        $v0, 0xE($t0)
/* 47F18 80057718 00000000 */  nop
/* 47F1C 8005771C 18004200 */  mult       $v0, $v0
/* 47F20 80057720 12380000 */  mflo       $a3
/* 47F24 80057724 1000A7A7 */  sh         $a3, 0x10($sp)
/* 47F28 80057728 0E000291 */  lbu        $v0, 0xE($t0)
/* 47F2C 8005772C 00000000 */  nop
/* 47F30 80057730 18004200 */  mult       $v0, $v0
/* 47F34 80057734 12280000 */  mflo       $a1
/* 47F38 80057738 1200A5A7 */  sh         $a1, 0x12($sp)
/* 47F3C 8005773C 2400C28C */  lw         $v0, 0x24($a2)
/* 47F40 80057740 00000000 */  nop
/* 47F44 80057744 01004230 */  andi       $v0, $v0, 0x1
/* 47F48 80057748 20004014 */  bnez       $v0, .L800577CC
/* 47F4C 8005774C 00000000 */   nop
/* 47F50 80057750 02008390 */  lbu        $v1, 0x2($a0)
/* 47F54 80057754 00000000 */  nop
/* 47F58 80057758 4100622C */  sltiu      $v0, $v1, 0x41
/* 47F5C 8005775C 0D004014 */  bnez       $v0, .L80057794
/* 47F60 80057760 3F00622C */   sltiu     $v0, $v1, 0x3F
/* 47F64 80057764 80000224 */  addiu      $v0, $zero, 0x80
/* 47F68 80057768 23104300 */  subu       $v0, $v0, $v1
/* 47F6C 8005776C 18004200 */  mult       $v0, $v0
/* 47F70 80057770 00140500 */  sll        $v0, $a1, 16
/* 47F74 80057774 12500000 */  mflo       $t2
/* 47F78 80057778 03140200 */  sra        $v0, $v0, 16
/* 47F7C 8005777C FFFF4325 */  addiu      $v1, $t2, -0x1
/* 47F80 80057780 18004300 */  mult       $v0, $v1
/* 47F84 80057784 12500000 */  mflo       $t2
/* 47F88 80057788 02130A00 */  srl        $v0, $t2, 12
/* 47F8C 8005778C F35D0108 */  j          .L800577CC
/* 47F90 80057790 1000A2A7 */   sh        $v0, 0x10($sp)
.L80057794:
/* 47F94 80057794 0D004010 */  beqz       $v0, .L800577CC
/* 47F98 80057798 00000000 */   nop
/* 47F9C 8005779C 02008290 */  lbu        $v0, 0x2($a0)
/* 47FA0 800577A0 00000000 */  nop
/* 47FA4 800577A4 01004224 */  addiu      $v0, $v0, 0x1
/* 47FA8 800577A8 18004200 */  mult       $v0, $v0
/* 47FAC 800577AC 00140700 */  sll        $v0, $a3, 16
/* 47FB0 800577B0 12500000 */  mflo       $t2
/* 47FB4 800577B4 03140200 */  sra        $v0, $v0, 16
/* 47FB8 800577B8 01004325 */  addiu      $v1, $t2, 0x1
/* 47FBC 800577BC 18004300 */  mult       $v0, $v1
/* 47FC0 800577C0 12500000 */  mflo       $t2
/* 47FC4 800577C4 03130A00 */  sra        $v0, $t2, 12
/* 47FC8 800577C8 1200A2A7 */  sh         $v0, 0x12($sp)
.L800577CC:
/* 47FCC 800577CC 1400028D */  lw         $v0, 0x14($t0)
/* 47FD0 800577D0 00000000 */  nop
/* 47FD4 800577D4 02004290 */  lbu        $v0, 0x2($v0)
/* 47FD8 800577D8 00000000 */  nop
/* 47FDC 800577DC 01004224 */  addiu      $v0, $v0, 0x1
/* 47FE0 800577E0 18004200 */  mult       $v0, $v0
/* 47FE4 800577E4 12180000 */  mflo       $v1
/* 47FE8 800577E8 1000A287 */  lh         $v0, 0x10($sp)
/* 47FEC 800577EC FFFF6324 */  addiu      $v1, $v1, -0x1
/* 47FF0 800577F0 18004300 */  mult       $v0, $v1
/* 47FF4 800577F4 12380000 */  mflo       $a3
/* 47FF8 800577F8 1200A287 */  lh         $v0, 0x12($sp)
/* 47FFC 800577FC 00000000 */  nop
/* 48000 80057800 18004300 */  mult       $v0, $v1
/* 48004 80057804 D89B828F */  lw         $v0, %gp_rel(aadMem)($gp)
/* 48008 80057808 823B0700 */  srl        $a3, $a3, 14
/* 4800C 8005780C 1000A7A7 */  sh         $a3, 0x10($sp)
/* 48010 80057810 12180000 */  mflo       $v1
/* 48014 80057814 82330300 */  srl        $a2, $v1, 14
/* 48018 80057818 1200A6A7 */  sh         $a2, 0x12($sp)
/* 4801C 8005781C 2400428C */  lw         $v0, 0x24($v0)
/* 48020 80057820 00000000 */  nop
/* 48024 80057824 01004230 */  andi       $v0, $v0, 0x1
/* 48028 80057828 23004014 */  bnez       $v0, .L800578B8
/* 4802C 8005782C 00000000 */   nop
/* 48030 80057830 1400038D */  lw         $v1, 0x14($t0)
/* 48034 80057834 00000000 */  nop
/* 48038 80057838 03006590 */  lbu        $a1, 0x3($v1)
/* 4803C 8005783C 00000000 */  nop
/* 48040 80057840 4100A22C */  sltiu      $v0, $a1, 0x41
/* 48044 80057844 0E004014 */  bnez       $v0, .L80057880
/* 48048 80057848 3F00A22C */   sltiu     $v0, $a1, 0x3F
/* 4804C 8005784C 2118A000 */  addu       $v1, $a1, $zero
/* 48050 80057850 80000224 */  addiu      $v0, $zero, 0x80
/* 48054 80057854 23104300 */  subu       $v0, $v0, $v1
/* 48058 80057858 18004200 */  mult       $v0, $v0
/* 4805C 8005785C 00140600 */  sll        $v0, $a2, 16
/* 48060 80057860 12500000 */  mflo       $t2
/* 48064 80057864 03140200 */  sra        $v0, $v0, 16
/* 48068 80057868 FFFF4325 */  addiu      $v1, $t2, -0x1
/* 4806C 8005786C 18004300 */  mult       $v0, $v1
/* 48070 80057870 12500000 */  mflo       $t2
/* 48074 80057874 02130A00 */  srl        $v0, $t2, 12
/* 48078 80057878 2E5E0108 */  j          .L800578B8
/* 4807C 8005787C 1000A2A7 */   sh        $v0, 0x10($sp)
.L80057880:
/* 48080 80057880 0D004010 */  beqz       $v0, .L800578B8
/* 48084 80057884 00000000 */   nop
/* 48088 80057888 03006290 */  lbu        $v0, 0x3($v1)
/* 4808C 8005788C 00000000 */  nop
/* 48090 80057890 01004224 */  addiu      $v0, $v0, 0x1
/* 48094 80057894 18004200 */  mult       $v0, $v0
/* 48098 80057898 00140700 */  sll        $v0, $a3, 16
/* 4809C 8005789C 12500000 */  mflo       $t2
/* 480A0 800578A0 03140200 */  sra        $v0, $v0, 16
/* 480A4 800578A4 01004325 */  addiu      $v1, $t2, 0x1
/* 480A8 800578A8 18004300 */  mult       $v0, $v1
/* 480AC 800578AC 12500000 */  mflo       $t2
/* 480B0 800578B0 03130A00 */  sra        $v0, $t2, 12
/* 480B4 800578B4 1200A2A7 */  sh         $v0, 0x12($sp)
.L800578B8:
/* 480B8 800578B8 01008290 */  lbu        $v0, 0x1($a0)
/* 480BC 800578BC 00000000 */  nop
/* 480C0 800578C0 01004224 */  addiu      $v0, $v0, 0x1
/* 480C4 800578C4 18004200 */  mult       $v0, $v0
/* 480C8 800578C8 12180000 */  mflo       $v1
/* 480CC 800578CC 1000A287 */  lh         $v0, 0x10($sp)
/* 480D0 800578D0 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 480D4 800578D4 18004300 */  mult       $v0, $v1
/* 480D8 800578D8 12380000 */  mflo       $a3
/* 480DC 800578DC 1200A287 */  lh         $v0, 0x12($sp)
/* 480E0 800578E0 00000000 */  nop
/* 480E4 800578E4 18004300 */  mult       $v0, $v1
/* 480E8 800578E8 82130700 */  srl        $v0, $a3, 14
/* 480EC 800578EC 1000A2A7 */  sh         $v0, 0x10($sp)
/* 480F0 800578F0 12180000 */  mflo       $v1
/* 480F4 800578F4 82130300 */  srl        $v0, $v1, 14
/* 480F8 800578F8 1200A2A7 */  sh         $v0, 0x12($sp)
/* 480FC 800578FC 01008290 */  lbu        $v0, 0x1($a0)
/* 48100 80057900 1800038D */  lw         $v1, 0x18($t0)
/* 48104 80057904 0F0002A1 */  sb         $v0, 0xF($t0)
/* 48108 80057908 04006290 */  lbu        $v0, 0x4($v1)
/* 4810C 8005790C 00000000 */  nop
/* 48110 80057910 01004224 */  addiu      $v0, $v0, 0x1
/* 48114 80057914 18004200 */  mult       $v0, $v0
/* 48118 80057918 12180000 */  mflo       $v1
/* 4811C 8005791C 1000A287 */  lh         $v0, 0x10($sp)
/* 48120 80057920 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 48124 80057924 18004300 */  mult       $v0, $v1
/* 48128 80057928 12380000 */  mflo       $a3
/* 4812C 8005792C 1200A287 */  lh         $v0, 0x12($sp)
/* 48130 80057930 00000000 */  nop
/* 48134 80057934 18004300 */  mult       $v0, $v1
/* 48138 80057938 D89B858F */  lw         $a1, %gp_rel(aadMem)($gp)
/* 4813C 8005793C 821B0700 */  srl        $v1, $a3, 14
/* 48140 80057940 1000A3A7 */  sh         $v1, 0x10($sp)
/* 48144 80057944 12100000 */  mflo       $v0
/* 48148 80057948 82230200 */  srl        $a0, $v0, 14
/* 4814C 8005794C 1200A4A7 */  sh         $a0, 0x12($sp)
/* 48150 80057950 DA01A290 */  lbu        $v0, 0x1DA($a1)
/* 48154 80057954 00000000 */  nop
/* 48158 80057958 01004224 */  addiu      $v0, $v0, 0x1
/* 4815C 8005795C 18004200 */  mult       $v0, $v0
/* 48160 80057960 001C0300 */  sll        $v1, $v1, 16
/* 48164 80057964 12100000 */  mflo       $v0
/* 48168 80057968 031C0300 */  sra        $v1, $v1, 16
/* 4816C 8005796C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 48170 80057970 18006200 */  mult       $v1, $v0
/* 48174 80057974 12180000 */  mflo       $v1
/* 48178 80057978 00240400 */  sll        $a0, $a0, 16
/* 4817C 8005797C 03240400 */  sra        $a0, $a0, 16
/* 48180 80057980 18008200 */  mult       $a0, $v0
/* 48184 80057984 821B0300 */  srl        $v1, $v1, 14
/* 48188 80057988 1000A3A7 */  sh         $v1, 0x10($sp)
/* 4818C 8005798C 12100000 */  mflo       $v0
/* 48190 80057990 82230200 */  srl        $a0, $v0, 14
/* 48194 80057994 1200A4A7 */  sh         $a0, 0x12($sp)
/* 48198 80057998 1C00A28C */  lw         $v0, 0x1C($a1)
/* 4819C 8005799C 00000000 */  nop
/* 481A0 800579A0 01004224 */  addiu      $v0, $v0, 0x1
/* 481A4 800579A4 18004200 */  mult       $v0, $v0
/* 481A8 800579A8 001C0300 */  sll        $v1, $v1, 16
/* 481AC 800579AC 12100000 */  mflo       $v0
/* 481B0 800579B0 031C0300 */  sra        $v1, $v1, 16
/* 481B4 800579B4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 481B8 800579B8 18006200 */  mult       $v1, $v0
/* 481BC 800579BC 12180000 */  mflo       $v1
/* 481C0 800579C0 00240400 */  sll        $a0, $a0, 16
/* 481C4 800579C4 03240400 */  sra        $a0, $a0, 16
/* 481C8 800579C8 18008200 */  mult       $a0, $v0
/* 481CC 800579CC 822B0300 */  srl        $a1, $v1, 14
/* 481D0 800579D0 1000A5A7 */  sh         $a1, 0x10($sp)
/* 481D4 800579D4 002C0500 */  sll        $a1, $a1, 16
/* 481D8 800579D8 FFFF2431 */  andi       $a0, $t1, 0xFFFF
/* 481DC 800579DC 032C0500 */  sra        $a1, $a1, 16
/* 481E0 800579E0 12100000 */  mflo       $v0
/* 481E4 800579E4 82330200 */  srl        $a2, $v0, 14
/* 481E8 800579E8 1200A6A7 */  sh         $a2, 0x12($sp)
/* 481EC 800579EC 00340600 */  sll        $a2, $a2, 16
/* 481F0 800579F0 D000030C */  jal        SpuSetVoiceVolume
/* 481F4 800579F4 03340600 */   sra       $a2, $a2, 16
/* 481F8 800579F8 855E0108 */  j          .L80057A14
/* 481FC 800579FC 00000000 */   nop
.L80057A00:
/* 48200 80057A00 01002925 */  addiu      $t1, $t1, 0x1
/* 48204 80057A04 FFFF2231 */  andi       $v0, $t1, 0xFFFF
/* 48208 80057A08 1800422C */  sltiu      $v0, $v0, 0x18
/* 4820C 80057A0C 2DFF4014 */  bnez       $v0, .L800576C4
/* 48210 80057A10 FFFF2531 */   andi      $a1, $t1, 0xFFFF
.L80057A14:
/* 48214 80057A14 1800BF8F */  lw         $ra, 0x18($sp)
/* 48218 80057A18 00000000 */  nop
/* 4821C 80057A1C 0800E003 */  jr         $ra
/* 48220 80057A20 2000BD27 */   addiu     $sp, $sp, 0x20
.size sfxCmdSetToneVolumeAndPan, . - sfxCmdSetToneVolumeAndPan
