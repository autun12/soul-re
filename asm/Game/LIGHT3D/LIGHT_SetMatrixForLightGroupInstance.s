.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LIGHT_SetMatrixForLightGroupInstance
/* 27000 80036800 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 27004 80036804 8800B2AF */  sw         $s2, 0x88($sp)
/* 27008 80036808 21908000 */  addu       $s2, $a0, $zero
/* 2700C 8003680C 0D80023C */  lui        $v0, %hi(default_lightgroup + 0x48)
/* 27010 80036810 8C00BFAF */  sw         $ra, 0x8C($sp)
/* 27014 80036814 8400B1AF */  sw         $s1, 0x84($sp)
/* 27018 80036818 8000B0AF */  sw         $s0, 0x80($sp)
/* 2701C 8003681C 10094A24 */  addiu      $t2, $v0, %lo(default_lightgroup + 0x48)
/* 27020 80036820 0000478D */  lw         $a3, 0x0($t2)
/* 27024 80036824 0400488D */  lw         $t0, 0x4($t2)
/* 27028 80036828 0800498D */  lw         $t1, 0x8($t2)
/* 2702C 8003682C 7000A7AF */  sw         $a3, 0x70($sp)
/* 27030 80036830 7400A8AF */  sw         $t0, 0x74($sp)
/* 27034 80036834 7800A9AF */  sw         $t1, 0x78($sp)
/* 27038 80036838 0C00478D */  lw         $a3, 0xC($t2)
/* 2703C 8003683C 00000000 */  nop
/* 27040 80036840 7C00A7AF */  sw         $a3, 0x7C($sp)
/* 27044 80036844 4000428E */  lw         $v0, 0x40($s2)
/* 27048 80036848 62005192 */  lbu        $s1, 0x62($s2)
/* 2704C 8003684C D8004010 */  beqz       $v0, .L80036BB0
/* 27050 80036850 00000000 */   nop
/* 27054 80036854 D2BD8287 */  lh         $v0, %gp_rel(gameTrackerX + 0xA)($gp)
/* 27058 80036858 00000000 */  nop
/* 2705C 8003685C 10004010 */  beqz       $v0, .L800368A0
/* 27060 80036860 00000000 */   nop
/* 27064 80036864 5400B08C */  lw         $s0, 0x54($a1)
/* 27068 80036868 00000000 */  nop
/* 2706C 8003686C 0C000012 */  beqz       $s0, .L800368A0
/* 27070 80036870 00000000 */   nop
/* 27074 80036874 0400028E */  lw         $v0, 0x4($s0)
/* 27078 80036878 00000000 */  nop
/* 2707C 8003687C 08004010 */  beqz       $v0, .L800368A0
/* 27080 80036880 00000000 */   nop
/* 27084 80036884 6A005192 */  lbu        $s1, 0x6A($s2)
/* 27088 80036888 00000000 */  nop
/* 2708C 8003688C 2A105100 */  slt        $v0, $v0, $s1
/* 27090 80036890 0E004010 */  beqz       $v0, .L800368CC
/* 27094 80036894 00000000 */   nop
/* 27098 80036898 32DA0008 */  j          .L800368C8
/* 2709C 8003689C 6A0040A2 */   sb        $zero, 0x6A($s2)
.L800368A0:
/* 270A0 800368A0 0400B08C */  lw         $s0, 0x4($a1)
/* 270A4 800368A4 00000000 */  nop
/* 270A8 800368A8 08000012 */  beqz       $s0, .L800368CC
/* 270AC 800368AC 00000000 */   nop
/* 270B0 800368B0 0400028E */  lw         $v0, 0x4($s0)
/* 270B4 800368B4 00000000 */  nop
/* 270B8 800368B8 2A105100 */  slt        $v0, $v0, $s1
/* 270BC 800368BC 03004010 */  beqz       $v0, .L800368CC
/* 270C0 800368C0 00000000 */   nop
/* 270C4 800368C4 620040A2 */  sb         $zero, 0x62($s2)
.L800368C8:
/* 270C8 800368C8 21880000 */  addu       $s1, $zero, $zero
.L800368CC:
/* 270CC 800368CC F4D9000C */  jal        LIGHT_SetAmbientInstance
/* 270D0 800368D0 21204002 */   addu      $a0, $s2, $zero
/* 270D4 800368D4 0400028E */  lw         $v0, 0x4($s0)
/* 270D8 800368D8 00000000 */  nop
/* 270DC 800368DC 04004014 */  bnez       $v0, .L800368F0
/* 270E0 800368E0 80111100 */   sll       $v0, $s1, 6
/* 270E4 800368E4 30939027 */  addiu      $s0, $gp, %gp_rel(default_lightgroup)
/* 270E8 800368E8 3FDA0008 */  j          .L800368FC
/* 270EC 800368EC 00000000 */   nop
.L800368F0:
/* 270F0 800368F0 0800038E */  lw         $v1, 0x8($s0)
/* 270F4 800368F4 00000000 */  nop
/* 270F8 800368F8 21806200 */  addu       $s0, $v1, $v0
.L800368FC:
/* 270FC 800368FC 06014286 */  lh         $v0, 0x106($s2)
/* 27100 80036900 00000000 */  nop
/* 27104 80036904 16004010 */  beqz       $v0, .L80036960
/* 27108 80036908 40110200 */   sll       $v0, $v0, 5
/* 2710C 8003690C 4000438E */  lw         $v1, 0x40($s2)
/* 27110 80036910 00000000 */  nop
/* 27114 80036914 21104300 */  addu       $v0, $v0, $v1
/* 27118 80036918 0000478C */  lw         $a3, 0x0($v0)
/* 2711C 8003691C 0400488C */  lw         $t0, 0x4($v0)
/* 27120 80036920 0800498C */  lw         $t1, 0x8($v0)
/* 27124 80036924 0C004A8C */  lw         $t2, 0xC($v0)
/* 27128 80036928 1000A7AF */  sw         $a3, 0x10($sp)
/* 2712C 8003692C 1400A8AF */  sw         $t0, 0x14($sp)
/* 27130 80036930 1800A9AF */  sw         $t1, 0x18($sp)
/* 27134 80036934 1C00AAAF */  sw         $t2, 0x1C($sp)
/* 27138 80036938 1000478C */  lw         $a3, 0x10($v0)
/* 2713C 8003693C 1400488C */  lw         $t0, 0x14($v0)
/* 27140 80036940 1800498C */  lw         $t1, 0x18($v0)
/* 27144 80036944 1C004A8C */  lw         $t2, 0x1C($v0)
/* 27148 80036948 2000A7AF */  sw         $a3, 0x20($sp)
/* 2714C 8003694C 2400A8AF */  sw         $t0, 0x24($sp)
/* 27150 80036950 2800A9AF */  sw         $t1, 0x28($sp)
/* 27154 80036954 2C00AAAF */  sw         $t2, 0x2C($sp)
/* 27158 80036958 73DA0008 */  j          .L800369CC
/* 2715C 8003695C 00000000 */   nop
.L80036960:
/* 27160 80036960 1400428E */  lw         $v0, 0x14($s2)
/* 27164 80036964 00000000 */  nop
/* 27168 80036968 01004230 */  andi       $v0, $v0, 0x1
/* 2716C 8003696C 15004010 */  beqz       $v0, .L800369C4
/* 27170 80036970 74004426 */   addiu     $a0, $s2, 0x74
/* 27174 80036974 4000428E */  lw         $v0, 0x40($s2)
/* 27178 80036978 00000000 */  nop
/* 2717C 8003697C 0000478C */  lw         $a3, 0x0($v0)
/* 27180 80036980 0400488C */  lw         $t0, 0x4($v0)
/* 27184 80036984 0800498C */  lw         $t1, 0x8($v0)
/* 27188 80036988 0C004A8C */  lw         $t2, 0xC($v0)
/* 2718C 8003698C 1000A7AF */  sw         $a3, 0x10($sp)
/* 27190 80036990 1400A8AF */  sw         $t0, 0x14($sp)
/* 27194 80036994 1800A9AF */  sw         $t1, 0x18($sp)
/* 27198 80036998 1C00AAAF */  sw         $t2, 0x1C($sp)
/* 2719C 8003699C 1000478C */  lw         $a3, 0x10($v0)
/* 271A0 800369A0 1400488C */  lw         $t0, 0x14($v0)
/* 271A4 800369A4 1800498C */  lw         $t1, 0x18($v0)
/* 271A8 800369A8 1C004A8C */  lw         $t2, 0x1C($v0)
/* 271AC 800369AC 2000A7AF */  sw         $a3, 0x20($sp)
/* 271B0 800369B0 2400A8AF */  sw         $t0, 0x24($sp)
/* 271B4 800369B4 2800A9AF */  sw         $t1, 0x28($sp)
/* 271B8 800369B8 2C00AAAF */  sw         $t2, 0x2C($sp)
/* 271BC 800369BC 73DA0008 */  j          .L800369CC
/* 271C0 800369C0 00000000 */   nop
.L800369C4:
/* 271C4 800369C4 3DE3010C */  jal        RotMatrix
/* 271C8 800369C8 1000A527 */   addiu     $a1, $sp, 0x10
.L800369CC:
/* 271CC 800369CC F400428E */  lw         $v0, 0xF4($s2)
/* 271D0 800369D0 00000000 */  nop
/* 271D4 800369D4 58004010 */  beqz       $v0, .L80036B38
/* 271D8 800369D8 1000A527 */   addiu     $a1, $sp, 0x10
/* 271DC 800369DC 00000296 */  lhu        $v0, 0x0($s0)
/* 271E0 800369E0 00000000 */  nop
/* 271E4 800369E4 3000A2A7 */  sh         $v0, 0x30($sp)
/* 271E8 800369E8 02000296 */  lhu        $v0, 0x2($s0)
/* 271EC 800369EC 00000000 */  nop
/* 271F0 800369F0 3200A2A7 */  sh         $v0, 0x32($sp)
/* 271F4 800369F4 04000296 */  lhu        $v0, 0x4($s0)
/* 271F8 800369F8 00000000 */  nop
/* 271FC 800369FC 3400A2A7 */  sh         $v0, 0x34($sp)
/* 27200 80036A00 06000296 */  lhu        $v0, 0x6($s0)
/* 27204 80036A04 00000000 */  nop
/* 27208 80036A08 3600A2A7 */  sh         $v0, 0x36($sp)
/* 2720C 80036A0C 08000296 */  lhu        $v0, 0x8($s0)
/* 27210 80036A10 00000000 */  nop
/* 27214 80036A14 3800A2A7 */  sh         $v0, 0x38($sp)
/* 27218 80036A18 0A000296 */  lhu        $v0, 0xA($s0)
/* 2721C 80036A1C 00000000 */  nop
/* 27220 80036A20 3A00A2A7 */  sh         $v0, 0x3A($sp)
/* 27224 80036A24 F8004386 */  lh         $v1, 0xF8($s2)
/* 27228 80036A28 FE004286 */  lh         $v0, 0xFE($s2)
/* 2722C 80036A2C 00000000 */  nop
/* 27230 80036A30 18006200 */  mult       $v1, $v0
/* 27234 80036A34 12380000 */  mflo       $a3
/* 27238 80036A38 03130700 */  sra        $v0, $a3, 12
/* 2723C 80036A3C 3C00A2A7 */  sh         $v0, 0x3C($sp)
/* 27240 80036A40 FA004386 */  lh         $v1, 0xFA($s2)
/* 27244 80036A44 FE004286 */  lh         $v0, 0xFE($s2)
/* 27248 80036A48 00000000 */  nop
/* 2724C 80036A4C 18006200 */  mult       $v1, $v0
/* 27250 80036A50 12380000 */  mflo       $a3
/* 27254 80036A54 03130700 */  sra        $v0, $a3, 12
/* 27258 80036A58 3E00A2A7 */  sh         $v0, 0x3E($sp)
/* 2725C 80036A5C FC004386 */  lh         $v1, 0xFC($s2)
/* 27260 80036A60 FE004286 */  lh         $v0, 0xFE($s2)
/* 27264 80036A64 00000000 */  nop
/* 27268 80036A68 18006200 */  mult       $v1, $v0
/* 2726C 80036A6C 12380000 */  mflo       $a3
/* 27270 80036A70 03130700 */  sra        $v0, $a3, 12
/* 27274 80036A74 4000A2A7 */  sh         $v0, 0x40($sp)
/* 27278 80036A78 20000296 */  lhu        $v0, 0x20($s0)
/* 2727C 80036A7C 00000000 */  nop
/* 27280 80036A80 5000A2A7 */  sh         $v0, 0x50($sp)
/* 27284 80036A84 26000296 */  lhu        $v0, 0x26($s0)
/* 27288 80036A88 00000000 */  nop
/* 2728C 80036A8C 5600A2A7 */  sh         $v0, 0x56($sp)
/* 27290 80036A90 2C000296 */  lhu        $v0, 0x2C($s0)
/* 27294 80036A94 00000000 */  nop
/* 27298 80036A98 5C00A2A7 */  sh         $v0, 0x5C($sp)
/* 2729C 80036A9C 22000296 */  lhu        $v0, 0x22($s0)
/* 272A0 80036AA0 00000000 */  nop
/* 272A4 80036AA4 5200A2A7 */  sh         $v0, 0x52($sp)
/* 272A8 80036AA8 28000296 */  lhu        $v0, 0x28($s0)
/* 272AC 80036AAC 00000000 */  nop
/* 272B0 80036AB0 5800A2A7 */  sh         $v0, 0x58($sp)
/* 272B4 80036AB4 2E000296 */  lhu        $v0, 0x2E($s0)
/* 272B8 80036AB8 00000000 */  nop
/* 272BC 80036ABC 5E00A2A7 */  sh         $v0, 0x5E($sp)
/* 272C0 80036AC0 F400428E */  lw         $v0, 0xF4($s2)
/* 272C4 80036AC4 00000000 */  nop
/* 272C8 80036AC8 08004290 */  lbu        $v0, 0x8($v0)
/* 272CC 80036ACC 00000000 */  nop
/* 272D0 80036AD0 00110200 */  sll        $v0, $v0, 4
/* 272D4 80036AD4 5400A2A7 */  sh         $v0, 0x54($sp)
/* 272D8 80036AD8 F400428E */  lw         $v0, 0xF4($s2)
/* 272DC 80036ADC 00000000 */  nop
/* 272E0 80036AE0 09004290 */  lbu        $v0, 0x9($v0)
/* 272E4 80036AE4 3000A427 */  addiu      $a0, $sp, 0x30
/* 272E8 80036AE8 00110200 */  sll        $v0, $v0, 4
/* 272EC 80036AEC 5A00A2A7 */  sh         $v0, 0x5A($sp)
/* 272F0 80036AF0 F400428E */  lw         $v0, 0xF4($s2)
/* 272F4 80036AF4 00000000 */  nop
/* 272F8 80036AF8 0A004290 */  lbu        $v0, 0xA($v0)
/* 272FC 80036AFC 2130A000 */  addu       $a2, $a1, $zero
/* 27300 80036B00 00110200 */  sll        $v0, $v0, 4
/* 27304 80036B04 BFF7020C */  jal        MulMatrix0
/* 27308 80036B08 6000A2A7 */   sh        $v0, 0x60($sp)
/* 2730C 80036B0C 9FF7020C */  jal        SetLightMatrix
/* 27310 80036B10 1000A427 */   addiu     $a0, $sp, 0x10
/* 27314 80036B14 1400428E */  lw         $v0, 0x14($s2)
/* 27318 80036B18 2000033C */  lui        $v1, (0x200000 >> 16)
/* 2731C 80036B1C 24104300 */  and        $v0, $v0, $v1
/* 27320 80036B20 03004010 */  beqz       $v0, .L80036B30
/* 27324 80036B24 5000A427 */   addiu     $a0, $sp, 0x50
/* 27328 80036B28 96E4010C */  jal        ScaleMatrix
/* 2732C 80036B2C 7000A527 */   addiu     $a1, $sp, 0x70
.L80036B30:
/* 27330 80036B30 EADA0008 */  j          .L80036BA8
/* 27334 80036B34 5000A427 */   addiu     $a0, $sp, 0x50
.L80036B38:
/* 27338 80036B38 21200002 */  addu       $a0, $s0, $zero
/* 2733C 80036B3C BFF7020C */  jal        MulMatrix0
/* 27340 80036B40 2130A000 */   addu      $a2, $a1, $zero
/* 27344 80036B44 9FF7020C */  jal        SetLightMatrix
/* 27348 80036B48 1000A427 */   addiu     $a0, $sp, 0x10
/* 2734C 80036B4C 1400428E */  lw         $v0, 0x14($s2)
/* 27350 80036B50 2000033C */  lui        $v1, (0x200000 >> 16)
/* 27354 80036B54 24104300 */  and        $v0, $v0, $v1
/* 27358 80036B58 12004010 */  beqz       $v0, .L80036BA4
/* 2735C 80036B5C 00000000 */   nop
/* 27360 80036B60 2000088E */  lw         $t0, 0x20($s0)
/* 27364 80036B64 2400098E */  lw         $t1, 0x24($s0)
/* 27368 80036B68 28000A8E */  lw         $t2, 0x28($s0)
/* 2736C 80036B6C 2C00078E */  lw         $a3, 0x2C($s0)
/* 27370 80036B70 5000A8AF */  sw         $t0, 0x50($sp)
/* 27374 80036B74 5400A9AF */  sw         $t1, 0x54($sp)
/* 27378 80036B78 5800AAAF */  sw         $t2, 0x58($sp)
/* 2737C 80036B7C 5C00A7AF */  sw         $a3, 0x5C($sp)
/* 27380 80036B80 3000088E */  lw         $t0, 0x30($s0)
/* 27384 80036B84 00000000 */  nop
/* 27388 80036B88 6000A8AF */  sw         $t0, 0x60($sp)
/* 2738C 80036B8C 5000B027 */  addiu      $s0, $sp, 0x50
/* 27390 80036B90 21200002 */  addu       $a0, $s0, $zero
/* 27394 80036B94 96E4010C */  jal        ScaleMatrix
/* 27398 80036B98 7000A527 */   addiu     $a1, $sp, 0x70
/* 2739C 80036B9C EADA0008 */  j          .L80036BA8
/* 273A0 80036BA0 21200002 */   addu      $a0, $s0, $zero
.L80036BA4:
/* 273A4 80036BA4 20000426 */  addiu      $a0, $s0, 0x20
.L80036BA8:
/* 273A8 80036BA8 B3F7020C */  jal        SetColorMatrix
/* 273AC 80036BAC 00000000 */   nop
.L80036BB0:
/* 273B0 80036BB0 8C00BF8F */  lw         $ra, 0x8C($sp)
/* 273B4 80036BB4 8800B28F */  lw         $s2, 0x88($sp)
/* 273B8 80036BB8 8400B18F */  lw         $s1, 0x84($sp)
/* 273BC 80036BBC 8000B08F */  lw         $s0, 0x80($sp)
/* 273C0 80036BC0 0800E003 */  jr         $ra
/* 273C4 80036BC4 9000BD27 */   addiu     $sp, $sp, 0x90
.size LIGHT_SetMatrixForLightGroupInstance, . - LIGHT_SetMatrixForLightGroupInstance
