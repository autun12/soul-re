.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel aadPlayTonePitchBend
/* 48D80 80058580 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 48D84 80058584 4000A28F */  lw         $v0, 0x40($sp)
/* 48D88 80058588 1800B0AF */  sw         $s0, 0x18($sp)
/* 48D8C 8005858C 21808000 */  addu       $s0, $a0, $zero
/* 48D90 80058590 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 48D94 80058594 01004224 */  addiu      $v0, $v0, 0x1
/* 48D98 80058598 18004200 */  mult       $v0, $v0
/* 48D9C 8005859C 5800B18F */  lw         $s1, 0x58($sp)
/* 48DA0 800585A0 4800A48F */  lw         $a0, 0x48($sp)
/* 48DA4 800585A4 2000B2AF */  sw         $s2, 0x20($sp)
/* 48DA8 800585A8 5400B28F */  lw         $s2, 0x54($sp)
/* 48DAC 800585AC 2800B4AF */  sw         $s4, 0x28($sp)
/* 48DB0 800585B0 21A0A000 */  addu       $s4, $a1, $zero
/* 48DB4 800585B4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 48DB8 800585B8 2400B3AF */  sw         $s3, 0x24($sp)
/* 48DBC 800585BC D89B828F */  lw         $v0, %gp_rel(aadMem)($gp)
/* 48DC0 800585C0 12480000 */  mflo       $t1
/* 48DC4 800585C4 FFFF2325 */  addiu      $v1, $t1, -0x1
/* 48DC8 800585C8 1200A3A7 */  sh         $v1, 0x12($sp)
/* 48DCC 800585CC 1000A3A7 */  sh         $v1, 0x10($sp)
/* 48DD0 800585D0 2400428C */  lw         $v0, 0x24($v0)
/* 48DD4 800585D4 00000000 */  nop
/* 48DD8 800585D8 01004230 */  andi       $v0, $v0, 0x1
/* 48DDC 800585DC 1B004014 */  bnez       $v0, .L8005864C
/* 48DE0 800585E0 2198E000 */   addu      $s3, $a3, $zero
/* 48DE4 800585E4 41008228 */  slti       $v0, $a0, 0x41
/* 48DE8 800585E8 0D004014 */  bnez       $v0, .L80058620
/* 48DEC 800585EC 3F008228 */   slti      $v0, $a0, 0x3F
/* 48DF0 800585F0 80000224 */  addiu      $v0, $zero, 0x80
/* 48DF4 800585F4 23104400 */  subu       $v0, $v0, $a0
/* 48DF8 800585F8 18004200 */  mult       $v0, $v0
/* 48DFC 800585FC 00140300 */  sll        $v0, $v1, 16
/* 48E00 80058600 12480000 */  mflo       $t1
/* 48E04 80058604 03140200 */  sra        $v0, $v0, 16
/* 48E08 80058608 FFFF2325 */  addiu      $v1, $t1, -0x1
/* 48E0C 8005860C 18004300 */  mult       $v0, $v1
/* 48E10 80058610 12480000 */  mflo       $t1
/* 48E14 80058614 02130900 */  srl        $v0, $t1, 12
/* 48E18 80058618 93610108 */  j          .L8005864C
/* 48E1C 8005861C 1000A2A7 */   sh        $v0, 0x10($sp)
.L80058620:
/* 48E20 80058620 0A004010 */  beqz       $v0, .L8005864C
/* 48E24 80058624 01008224 */   addiu     $v0, $a0, 0x1
/* 48E28 80058628 18004200 */  mult       $v0, $v0
/* 48E2C 8005862C 00140300 */  sll        $v0, $v1, 16
/* 48E30 80058630 12480000 */  mflo       $t1
/* 48E34 80058634 03140200 */  sra        $v0, $v0, 16
/* 48E38 80058638 01002325 */  addiu      $v1, $t1, 0x1
/* 48E3C 8005863C 18004300 */  mult       $v0, $v1
/* 48E40 80058640 12480000 */  mflo       $t1
/* 48E44 80058644 03130900 */  sra        $v0, $t1, 12
/* 48E48 80058648 1200A2A7 */  sh         $v0, 0x12($sp)
.L8005864C:
/* 48E4C 8005864C 02000292 */  lbu        $v0, 0x2($s0)
/* 48E50 80058650 00000000 */  nop
/* 48E54 80058654 01004224 */  addiu      $v0, $v0, 0x1
/* 48E58 80058658 18004200 */  mult       $v0, $v0
/* 48E5C 8005865C 12180000 */  mflo       $v1
/* 48E60 80058660 1000A287 */  lh         $v0, 0x10($sp)
/* 48E64 80058664 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 48E68 80058668 18004300 */  mult       $v0, $v1
/* 48E6C 8005866C 12400000 */  mflo       $t0
/* 48E70 80058670 1200A287 */  lh         $v0, 0x12($sp)
/* 48E74 80058674 00000000 */  nop
/* 48E78 80058678 18004300 */  mult       $v0, $v1
/* 48E7C 8005867C D89B828F */  lw         $v0, %gp_rel(aadMem)($gp)
/* 48E80 80058680 822B0800 */  srl        $a1, $t0, 14
/* 48E84 80058684 1000A5A7 */  sh         $a1, 0x10($sp)
/* 48E88 80058688 12180000 */  mflo       $v1
/* 48E8C 8005868C 82230300 */  srl        $a0, $v1, 14
/* 48E90 80058690 1200A4A7 */  sh         $a0, 0x12($sp)
/* 48E94 80058694 2400428C */  lw         $v0, 0x24($v0)
/* 48E98 80058698 00000000 */  nop
/* 48E9C 8005869C 01004230 */  andi       $v0, $v0, 0x1
/* 48EA0 800586A0 20004014 */  bnez       $v0, .L80058724
/* 48EA4 800586A4 00000000 */   nop
/* 48EA8 800586A8 03000392 */  lbu        $v1, 0x3($s0)
/* 48EAC 800586AC 00000000 */  nop
/* 48EB0 800586B0 4100622C */  sltiu      $v0, $v1, 0x41
/* 48EB4 800586B4 0D004014 */  bnez       $v0, .L800586EC
/* 48EB8 800586B8 3F00622C */   sltiu     $v0, $v1, 0x3F
/* 48EBC 800586BC 80000224 */  addiu      $v0, $zero, 0x80
/* 48EC0 800586C0 23104300 */  subu       $v0, $v0, $v1
/* 48EC4 800586C4 18004200 */  mult       $v0, $v0
/* 48EC8 800586C8 00140400 */  sll        $v0, $a0, 16
/* 48ECC 800586CC 12480000 */  mflo       $t1
/* 48ED0 800586D0 03140200 */  sra        $v0, $v0, 16
/* 48ED4 800586D4 FFFF2325 */  addiu      $v1, $t1, -0x1
/* 48ED8 800586D8 18004300 */  mult       $v0, $v1
/* 48EDC 800586DC 12480000 */  mflo       $t1
/* 48EE0 800586E0 02130900 */  srl        $v0, $t1, 12
/* 48EE4 800586E4 C9610108 */  j          .L80058724
/* 48EE8 800586E8 1000A2A7 */   sh        $v0, 0x10($sp)
.L800586EC:
/* 48EEC 800586EC 0D004010 */  beqz       $v0, .L80058724
/* 48EF0 800586F0 00000000 */   nop
/* 48EF4 800586F4 03000292 */  lbu        $v0, 0x3($s0)
/* 48EF8 800586F8 00000000 */  nop
/* 48EFC 800586FC 01004224 */  addiu      $v0, $v0, 0x1
/* 48F00 80058700 18004200 */  mult       $v0, $v0
/* 48F04 80058704 00140500 */  sll        $v0, $a1, 16
/* 48F08 80058708 12480000 */  mflo       $t1
/* 48F0C 8005870C 03140200 */  sra        $v0, $v0, 16
/* 48F10 80058710 01002325 */  addiu      $v1, $t1, 0x1
/* 48F14 80058714 18004300 */  mult       $v0, $v1
/* 48F18 80058718 12480000 */  mflo       $t1
/* 48F1C 8005871C 03130900 */  sra        $v0, $t1, 12
/* 48F20 80058720 1200A2A7 */  sh         $v0, 0x12($sp)
.L80058724:
/* 48F24 80058724 4400A28F */  lw         $v0, 0x44($sp)
/* 48F28 80058728 00000000 */  nop
/* 48F2C 8005872C 01004224 */  addiu      $v0, $v0, 0x1
/* 48F30 80058730 18004200 */  mult       $v0, $v0
/* 48F34 80058734 12180000 */  mflo       $v1
/* 48F38 80058738 1000A287 */  lh         $v0, 0x10($sp)
/* 48F3C 8005873C FFFF6324 */  addiu      $v1, $v1, -0x1
/* 48F40 80058740 18004300 */  mult       $v0, $v1
/* 48F44 80058744 12400000 */  mflo       $t0
/* 48F48 80058748 1200A287 */  lh         $v0, 0x12($sp)
/* 48F4C 8005874C 00000000 */  nop
/* 48F50 80058750 18004300 */  mult       $v0, $v1
/* 48F54 80058754 821B0800 */  srl        $v1, $t0, 14
/* 48F58 80058758 1000A3A7 */  sh         $v1, 0x10($sp)
/* 48F5C 8005875C 12100000 */  mflo       $v0
/* 48F60 80058760 82230200 */  srl        $a0, $v0, 14
/* 48F64 80058764 1200A4A7 */  sh         $a0, 0x12($sp)
/* 48F68 80058768 0400C290 */  lbu        $v0, 0x4($a2)
/* 48F6C 8005876C 00000000 */  nop
/* 48F70 80058770 01004224 */  addiu      $v0, $v0, 0x1
/* 48F74 80058774 18004200 */  mult       $v0, $v0
/* 48F78 80058778 001C0300 */  sll        $v1, $v1, 16
/* 48F7C 8005877C 12100000 */  mflo       $v0
/* 48F80 80058780 031C0300 */  sra        $v1, $v1, 16
/* 48F84 80058784 FFFF4524 */  addiu      $a1, $v0, -0x1
/* 48F88 80058788 18006500 */  mult       $v1, $a1
/* 48F8C 8005878C 4C00A28F */  lw         $v0, 0x4C($sp)
/* 48F90 80058790 12180000 */  mflo       $v1
/* 48F94 80058794 01004224 */  addiu      $v0, $v0, 0x1
/* 48F98 80058798 00000000 */  nop
/* 48F9C 8005879C 18004200 */  mult       $v0, $v0
/* 48FA0 800587A0 12100000 */  mflo       $v0
/* 48FA4 800587A4 00240400 */  sll        $a0, $a0, 16
/* 48FA8 800587A8 03240400 */  sra        $a0, $a0, 16
/* 48FAC 800587AC 18008500 */  mult       $a0, $a1
/* 48FB0 800587B0 823B0300 */  srl        $a3, $v1, 14
/* 48FB4 800587B4 FFFF4324 */  addiu      $v1, $v0, -0x1
/* 48FB8 800587B8 12300000 */  mflo       $a2
/* 48FBC 800587BC 00140700 */  sll        $v0, $a3, 16
/* 48FC0 800587C0 03140200 */  sra        $v0, $v0, 16
/* 48FC4 800587C4 18004300 */  mult       $v0, $v1
/* 48FC8 800587C8 5000A28F */  lw         $v0, 0x50($sp)
/* 48FCC 800587CC 12280000 */  mflo       $a1
/* 48FD0 800587D0 01004224 */  addiu      $v0, $v0, 0x1
/* 48FD4 800587D4 00000000 */  nop
/* 48FD8 800587D8 18004200 */  mult       $v0, $v0
/* 48FDC 800587DC 82330600 */  srl        $a2, $a2, 14
/* 48FE0 800587E0 12200000 */  mflo       $a0
/* 48FE4 800587E4 00140600 */  sll        $v0, $a2, 16
/* 48FE8 800587E8 03140200 */  sra        $v0, $v0, 16
/* 48FEC 800587EC 18004300 */  mult       $v0, $v1
/* 48FF0 800587F0 822B0500 */  srl        $a1, $a1, 14
/* 48FF4 800587F4 FFFF8324 */  addiu      $v1, $a0, -0x1
/* 48FF8 800587F8 12500000 */  mflo       $t2
/* 48FFC 800587FC 00140500 */  sll        $v0, $a1, 16
/* 49000 80058800 03140200 */  sra        $v0, $v0, 16
/* 49004 80058804 18004300 */  mult       $v0, $v1
/* 49008 80058808 82230A00 */  srl        $a0, $t2, 14
/* 4900C 8005880C 12400000 */  mflo       $t0
/* 49010 80058810 00140400 */  sll        $v0, $a0, 16
/* 49014 80058814 03140200 */  sra        $v0, $v0, 16
/* 49018 80058818 18004300 */  mult       $v0, $v1
/* 4901C 8005881C 1000A7A7 */  sh         $a3, 0x10($sp)
/* 49020 80058820 1200A6A7 */  sh         $a2, 0x12($sp)
/* 49024 80058824 1000A5A7 */  sh         $a1, 0x10($sp)
/* 49028 80058828 1200A4A7 */  sh         $a0, 0x12($sp)
/* 4902C 8005882C 82130800 */  srl        $v0, $t0, 14
/* 49030 80058830 002C0200 */  sll        $a1, $v0, 16
/* 49034 80058834 032C0500 */  sra        $a1, $a1, 16
/* 49038 80058838 1000A2A7 */  sh         $v0, 0x10($sp)
/* 4903C 8005883C 12180000 */  mflo       $v1
/* 49040 80058840 82330300 */  srl        $a2, $v1, 14
/* 49044 80058844 1200A6A7 */  sh         $a2, 0x12($sp)
/* 49048 80058848 00340600 */  sll        $a2, $a2, 16
/* 4904C 8005884C 11004492 */  lbu        $a0, 0x11($s2)
/* 49050 80058850 D000030C */  jal        SpuSetVoiceVolume
/* 49054 80058854 03340600 */   sra       $a2, $a2, 16
/* 49058 80058858 09000292 */  lbu        $v0, 0x9($s0)
/* 4905C 8005885C 00200324 */  addiu      $v1, $zero, 0x2000
/* 49060 80058860 1A006200 */  div        $zero, $v1, $v0
/* 49064 80058864 12180000 */  mflo       $v1
/* 49068 80058868 00E03126 */  addiu      $s1, $s1, -0x2000
/* 4906C 8005886C 00000000 */  nop
/* 49070 80058870 1A002302 */  div        $zero, $s1, $v1
/* 49074 80058874 12200000 */  mflo       $a0
/* 49078 80058878 10280000 */  mfhi       $a1
/* 4907C 8005887C 04000292 */  lbu        $v0, 0x4($s0)
/* 49080 80058880 00000000 */  nop
/* 49084 80058884 C4FF4224 */  addiu      $v0, $v0, -0x3C
/* 49088 80058888 23386202 */  subu       $a3, $s3, $v0
/* 4908C 8005888C 50A08227 */  addiu      $v0, $gp, %gp_rel(aadStepsPerSemitone)
/* 49090 80058890 2138E400 */  addu       $a3, $a3, $a0
/* 49094 80058894 40300700 */  sll        $a2, $a3, 1
/* 49098 80058898 2110C200 */  addu       $v0, $a2, $v0
/* 4909C 8005889C 00004284 */  lh         $v0, 0x0($v0)
/* 490A0 800588A0 00000000 */  nop
/* 490A4 800588A4 18004500 */  mult       $v0, $a1
/* 490A8 800588A8 05000292 */  lbu        $v0, 0x5($s0)
/* 490AC 800588AC 12400000 */  mflo       $t0
/* 490B0 800588B0 80004230 */  andi       $v0, $v0, 0x80
/* 490B4 800588B4 00000000 */  nop
/* 490B8 800588B8 1A000301 */  div        $zero, $t0, $v1
/* 490BC 800588BC 12400000 */  mflo       $t0
/* 490C0 800588C0 14004010 */  beqz       $v0, .L80058914
/* 490C4 800588C4 80100700 */   sll       $v0, $a3, 2
/* 490C8 800588C8 00010524 */  addiu      $a1, $zero, 0x100
/* 490CC 800588CC FC9E8327 */  addiu      $v1, $gp, %gp_rel(aadStepsPerCent)
/* 490D0 800588D0 21104300 */  addu       $v0, $v0, $v1
/* 490D4 800588D4 05000492 */  lbu        $a0, 0x5($s0)
/* 490D8 800588D8 0000438C */  lw         $v1, 0x0($v0)
/* 490DC 800588DC 2328A400 */  subu       $a1, $a1, $a0
/* 490E0 800588E0 40100300 */  sll        $v0, $v1, 1
/* 490E4 800588E4 21104300 */  addu       $v0, $v0, $v1
/* 490E8 800588E8 C0100200 */  sll        $v0, $v0, 3
/* 490EC 800588EC 21104300 */  addu       $v0, $v0, $v1
/* 490F0 800588F0 80100200 */  sll        $v0, $v0, 2
/* 490F4 800588F4 18004500 */  mult       $v0, $a1
/* 490F8 800588F8 509E8227 */  addiu      $v0, $gp, %gp_rel(aadPitchTable)
/* 490FC 800588FC 2110C200 */  addu       $v0, $a2, $v0
/* 49100 80058900 00004594 */  lhu        $a1, 0x0($v0)
/* 49104 80058904 12480000 */  mflo       $t1
/* 49108 80058908 C2150900 */  srl        $v0, $t1, 23
/* 4910C 8005890C 55620108 */  j          .L80058954
/* 49110 80058910 2328A200 */   subu      $a1, $a1, $v0
.L80058914:
/* 49114 80058914 FC9E8327 */  addiu      $v1, $gp, %gp_rel(aadStepsPerCent)
/* 49118 80058918 21104300 */  addu       $v0, $v0, $v1
/* 4911C 8005891C 0000438C */  lw         $v1, 0x0($v0)
/* 49120 80058920 05000592 */  lbu        $a1, 0x5($s0)
/* 49124 80058924 40100300 */  sll        $v0, $v1, 1
/* 49128 80058928 21104300 */  addu       $v0, $v0, $v1
/* 4912C 8005892C C0100200 */  sll        $v0, $v0, 3
/* 49130 80058930 21104300 */  addu       $v0, $v0, $v1
/* 49134 80058934 80100200 */  sll        $v0, $v0, 2
/* 49138 80058938 18004500 */  mult       $v0, $a1
/* 4913C 8005893C 509E8227 */  addiu      $v0, $gp, %gp_rel(aadPitchTable)
/* 49140 80058940 2110C200 */  addu       $v0, $a2, $v0
/* 49144 80058944 00004594 */  lhu        $a1, 0x0($v0)
/* 49148 80058948 12480000 */  mflo       $t1
/* 4914C 8005894C C2150900 */  srl        $v0, $t1, 23
/* 49150 80058950 2128A200 */  addu       $a1, $a1, $v0
.L80058954:
/* 49154 80058954 2128A800 */  addu       $a1, $a1, $t0
/* 49158 80058958 11004492 */  lbu        $a0, 0x11($s2)
/* 4915C 8005895C 9DFE020C */  jal        SpuSetVoicePitch
/* 49160 80058960 FFFFA530 */   andi      $a1, $a1, 0xFFFF
/* 49164 80058964 11004492 */  lbu        $a0, 0x11($s2)
/* 49168 80058968 F000030C */  jal        SpuSetVoiceStartAddr
/* 4916C 8005896C 21288002 */   addu      $a1, $s4, $zero
/* 49170 80058970 11004492 */  lbu        $a0, 0x11($s2)
/* 49174 80058974 0A000596 */  lhu        $a1, 0xA($s0)
/* 49178 80058978 0C000696 */  lhu        $a2, 0xC($s0)
/* 4917C 8005897C 2A60010C */  jal        SpuSetVoiceADSR1ADSR2
/* 49180 80058980 00000000 */   nop
/* 49184 80058984 08000392 */  lbu        $v1, 0x8($s0)
/* 49188 80058988 04000224 */  addiu      $v0, $zero, 0x4
/* 4918C 8005898C 08006214 */  bne        $v1, $v0, .L800589B0
/* 49190 80058990 00000000 */   nop
/* 49194 80058994 D89B828F */  lw         $v0, %gp_rel(aadMem)($gp)
/* 49198 80058998 0000448E */  lw         $a0, 0x0($s2)
/* 4919C 8005899C CC04438C */  lw         $v1, 0x4CC($v0)
/* 491A0 800589A0 00000000 */  nop
/* 491A4 800589A4 25186400 */  or         $v1, $v1, $a0
/* 491A8 800589A8 72620108 */  j          .L800589C8
/* 491AC 800589AC CC0443AC */   sw        $v1, 0x4CC($v0)
.L800589B0:
/* 491B0 800589B0 D89B828F */  lw         $v0, %gp_rel(aadMem)($gp)
/* 491B4 800589B4 0000438E */  lw         $v1, 0x0($s2)
/* 491B8 800589B8 CC04448C */  lw         $a0, 0x4CC($v0)
/* 491BC 800589BC 27180300 */  nor        $v1, $zero, $v1
/* 491C0 800589C0 24208300 */  and        $a0, $a0, $v1
/* 491C4 800589C4 CC0444AC */  sw         $a0, 0x4CC($v0)
.L800589C8:
/* 491C8 800589C8 D89B828F */  lw         $v0, %gp_rel(aadMem)($gp)
/* 491CC 800589CC 0000448E */  lw         $a0, 0x0($s2)
/* 491D0 800589D0 C804438C */  lw         $v1, 0x4C8($v0)
/* 491D4 800589D4 00000000 */  nop
/* 491D8 800589D8 25186400 */  or         $v1, $v1, $a0
/* 491DC 800589DC C80443AC */  sw         $v1, 0x4C8($v0)
/* 491E0 800589E0 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 491E4 800589E4 2800B48F */  lw         $s4, 0x28($sp)
/* 491E8 800589E8 2400B38F */  lw         $s3, 0x24($sp)
/* 491EC 800589EC 2000B28F */  lw         $s2, 0x20($sp)
/* 491F0 800589F0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 491F4 800589F4 1800B08F */  lw         $s0, 0x18($sp)
/* 491F8 800589F8 0800E003 */  jr         $ra
/* 491FC 800589FC 3000BD27 */   addiu     $sp, $sp, 0x30
.size aadPlayTonePitchBend, . - aadPlayTonePitchBend
