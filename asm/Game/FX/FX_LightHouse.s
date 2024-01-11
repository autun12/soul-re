.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FX_LightHouse
/* 3FDDC 8004F5DC 58FFBD27 */  addiu      $sp, $sp, -0xA8
/* 3FDE0 8004F5E0 8000B0AF */  sw         $s0, 0x80($sp)
/* 3FDE4 8004F5E4 21808000 */  addu       $s0, $a0, $zero
/* 3FDE8 8004F5E8 A000BEAF */  sw         $fp, 0xA0($sp)
/* 3FDEC 8004F5EC A400BFAF */  sw         $ra, 0xA4($sp)
/* 3FDF0 8004F5F0 9C00B7AF */  sw         $s7, 0x9C($sp)
/* 3FDF4 8004F5F4 9800B6AF */  sw         $s6, 0x98($sp)
/* 3FDF8 8004F5F8 9400B5AF */  sw         $s5, 0x94($sp)
/* 3FDFC 8004F5FC 9000B4AF */  sw         $s4, 0x90($sp)
/* 3FE00 8004F600 8C00B3AF */  sw         $s3, 0x8C($sp)
/* 3FE04 8004F604 8800B2AF */  sw         $s2, 0x88($sp)
/* 3FE08 8004F608 8400B1AF */  sw         $s1, 0x84($sp)
/* 3FE0C 8004F60C AC00A5AF */  sw         $a1, 0xAC($sp)
/* 3FE10 8004F610 1400C28C */  lw         $v0, 0x14($a2)
/* 3FE14 8004F614 C000B18F */  lw         $s1, 0xC0($sp)
/* 3FE18 8004F618 00084230 */  andi       $v0, $v0, 0x800
/* 3FE1C 8004F61C 02014014 */  bnez       $v0, .L8004FA28
/* 3FE20 8004F620 21F00000 */   addu      $fp, $zero, $zero
/* 3FE24 8004F624 4000C38C */  lw         $v1, 0x40($a2)
/* 3FE28 8004F628 00000000 */  nop
/* 3FE2C 8004F62C FE006010 */  beqz       $v1, .L8004FA28
/* 3FE30 8004F630 40110700 */   sll       $v0, $a3, 5
/* 3FE34 8004F634 21186200 */  addu       $v1, $v1, $v0
/* 3FE38 8004F638 14006294 */  lhu        $v0, 0x14($v1)
/* 3FE3C 8004F63C 00000000 */  nop
/* 3FE40 8004F640 2000A2A7 */  sh         $v0, 0x20($sp)
/* 3FE44 8004F644 18006294 */  lhu        $v0, 0x18($v1)
/* 3FE48 8004F648 00000000 */  nop
/* 3FE4C 8004F64C 2200A2A7 */  sh         $v0, 0x22($sp)
/* 3FE50 8004F650 1C006294 */  lhu        $v0, 0x1C($v1)
/* 3FE54 8004F654 00000000 */  nop
/* 3FE58 8004F658 2400A2A7 */  sh         $v0, 0x24($sp)
/* 3FE5C 8004F65C B800A28F */  lw         $v0, 0xB8($sp)
/* 3FE60 8004F660 4000C38C */  lw         $v1, 0x40($a2)
/* 3FE64 8004F664 40110200 */  sll        $v0, $v0, 5
/* 3FE68 8004F668 21186200 */  addu       $v1, $v1, $v0
/* 3FE6C 8004F66C 14006294 */  lhu        $v0, 0x14($v1)
/* 3FE70 8004F670 00000000 */  nop
/* 3FE74 8004F674 2800A2A7 */  sh         $v0, 0x28($sp)
/* 3FE78 8004F678 18006294 */  lhu        $v0, 0x18($v1)
/* 3FE7C 8004F67C 00000000 */  nop
/* 3FE80 8004F680 2A00A2A7 */  sh         $v0, 0x2A($sp)
/* 3FE84 8004F684 1C006294 */  lhu        $v0, 0x1C($v1)
/* 3FE88 8004F688 FF7F1424 */  addiu      $s4, $zero, 0x7FFF
/* 3FE8C 8004F68C 52F2020C */  jal        SetRotMatrix
/* 3FE90 8004F690 2C00A2A7 */   sh        $v0, 0x2C($sp)
/* 3FE94 8004F694 4AF2020C */  jal        SetTransMatrix
/* 3FE98 8004F698 21200002 */   addu      $a0, $s0, $zero
/* 3FE9C 8004F69C 2000A427 */  addiu      $a0, $sp, 0x20
/* 3FEA0 8004F6A0 2800A527 */  addiu      $a1, $sp, 0x28
/* 3FEA4 8004F6A4 21402002 */  addu       $t0, $s1, $zero
/* 3FEA8 8004F6A8 7000B1AF */  sw         $s1, 0x70($sp)
/* 3FEAC 8004F6AC 4000A0AF */  sw         $zero, 0x40($sp)
/* 3FEB0 8004F6B0 6C00A8AF */  sw         $t0, 0x6C($sp)
/* 3FEB4 8004F6B4 6400A8AF */  sw         $t0, 0x64($sp)
/* 3FEB8 8004F6B8 CAE7000C */  jal        MATH3D_DistanceBetweenPositions
/* 3FEBC 8004F6BC 6800A0AF */   sw        $zero, 0x68($sp)
/* 3FEC0 8004F6C0 C21F0200 */  srl        $v1, $v0, 31
/* 3FEC4 8004F6C4 21186200 */  addu       $v1, $v1, $v0
/* 3FEC8 8004F6C8 43380300 */  sra        $a3, $v1, 1
/* 3FECC 8004F6CC 40110700 */  sll        $v0, $a3, 5
/* 3FED0 8004F6D0 21104700 */  addu       $v0, $v0, $a3
/* 3FED4 8004F6D4 40110200 */  sll        $v0, $v0, 5
/* 3FED8 8004F6D8 02004104 */  bgez       $v0, .L8004F6E4
/* 3FEDC 8004F6DC 21B80000 */   addu      $s7, $zero, $zero
/* 3FEE0 8004F6E0 FF0F4224 */  addiu      $v0, $v0, 0xFFF
.L8004F6E4:
/* 3FEE4 8004F6E4 2190E002 */  addu       $s2, $s7, $zero
/* 3FEE8 8004F6E8 03130200 */  sra        $v0, $v0, 12
/* 3FEEC 8004F6EC BC00A38F */  lw         $v1, 0xBC($sp)
/* 3FEF0 8004F6F0 60004224 */  addiu      $v0, $v0, 0x60
/* 3FEF4 8004F6F4 7800A0AF */  sw         $zero, 0x78($sp)
/* 3FEF8 8004F6F8 7400A0AF */  sw         $zero, 0x74($sp)
/* 3FEFC 8004F6FC 02006104 */  bgez       $v1, .L8004F708
/* 3FF00 8004F700 7C00A2AF */   sw        $v0, 0x7C($sp)
/* 3FF04 8004F704 03006324 */  addiu      $v1, $v1, 0x3
.L8004F708:
/* 3FF08 8004F708 83980300 */  sra        $s3, $v1, 2
/* 3FF0C 8004F70C 00100224 */  addiu      $v0, $zero, 0x1000
/* 3FF10 8004F710 1A005300 */  div        $zero, $v0, $s3
/* 3FF14 8004F714 12B00000 */  mflo       $s6
/* 3FF18 8004F718 3C006006 */  bltz       $s3, .L8004F80C
/* 3FF1C 8004F71C 00000000 */   nop
/* 3FF20 8004F720 5000B527 */  addiu      $s5, $sp, 0x50
.L8004F724:
/* 3FF24 8004F724 1000B5AF */  sw         $s5, 0x10($sp)
/* 3FF28 8004F728 2000A427 */  addiu      $a0, $sp, 0x20
/* 3FF2C 8004F72C 2800A527 */  addiu      $a1, $sp, 0x28
/* 3FF30 8004F730 00100624 */  addiu      $a2, $zero, 0x1000
/* 3FF34 8004F734 2330D200 */  subu       $a2, $a2, $s2
/* 3FF38 8004F738 86F3020C */  jal        LoadAverageShort12
/* 3FF3C 8004F73C 21384002 */   addu      $a3, $s2, $zero
/* 3FF40 8004F740 0000A0CA */  lwc2       $0, 0x0($s5)
/* 3FF44 8004F744 0400A1CA */  lwc2       $1, 0x4($s5)
/* 3FF48 8004F748 00000000 */  nop
/* 3FF4C 8004F74C 00000000 */  nop
/* 3FF50 8004F750 0100184A */  RTPS
/* 3FF54 8004F754 3800A227 */  addiu      $v0, $sp, 0x38
/* 3FF58 8004F758 00004EE8 */  swc2       $14, 0x0($v0)
/* 3FF5C 8004F75C 6000A227 */  addiu      $v0, $sp, 0x60
/* 3FF60 8004F760 000053E8 */  swc2       $19, 0x0($v0)
/* 3FF64 8004F764 1E00C013 */  beqz       $fp, .L8004F7E0
/* 3FF68 8004F768 00000000 */   nop
/* 3FF6C 8004F76C 6000A28F */  lw         $v0, 0x60($sp)
/* 3FF70 8004F770 00000000 */  nop
/* 3FF74 8004F774 F1004228 */  slti       $v0, $v0, 0xF1
/* 3FF78 8004F778 21004014 */  bnez       $v0, .L8004F800
/* 3FF7C 8004F77C 00000000 */   nop
/* 3FF80 8004F780 3800A487 */  lh         $a0, 0x38($sp)
/* 3FF84 8004F784 00000000 */  nop
/* 3FF88 8004F788 01FE8228 */  slti       $v0, $a0, -0x1FF
/* 3FF8C 8004F78C 14004014 */  bnez       $v0, .L8004F7E0
/* 3FF90 8004F790 00028228 */   slti      $v0, $a0, 0x200
/* 3FF94 8004F794 12004010 */  beqz       $v0, .L8004F7E0
/* 3FF98 8004F798 00000000 */   nop
/* 3FF9C 8004F79C 3000A287 */  lh         $v0, 0x30($sp)
/* 3FFA0 8004F7A0 3A00A387 */  lh         $v1, 0x3A($sp)
/* 3FFA4 8004F7A4 23888200 */  subu       $s1, $a0, $v0
/* 3FFA8 8004F7A8 3200A287 */  lh         $v0, 0x32($sp)
/* 3FFAC 8004F7AC 21202002 */  addu       $a0, $s1, $zero
/* 3FFB0 8004F7B0 23806200 */  subu       $s0, $v1, $v0
/* 3FFB4 8004F7B4 E2E8000C */  jal        MATH3D_veclen2
/* 3FFB8 8004F7B8 21280002 */   addu      $a1, $s0, $zero
/* 3FFBC 8004F7BC 21184000 */  addu       $v1, $v0, $zero
/* 3FFC0 8004F7C0 2A10E302 */  slt        $v0, $s7, $v1
/* 3FFC4 8004F7C4 06004010 */  beqz       $v0, .L8004F7E0
/* 3FFC8 8004F7C8 00016228 */   slti      $v0, $v1, 0x100
/* 3FFCC 8004F7CC 04004010 */  beqz       $v0, .L8004F7E0
/* 3FFD0 8004F7D0 00000000 */   nop
/* 3FFD4 8004F7D4 21B86000 */  addu       $s7, $v1, $zero
/* 3FFD8 8004F7D8 7400B1AF */  sw         $s1, 0x74($sp)
/* 3FFDC 8004F7DC 7800B0AF */  sw         $s0, 0x78($sp)
.L8004F7E0:
/* 3FFE0 8004F7E0 6000A28F */  lw         $v0, 0x60($sp)
/* 3FFE4 8004F7E4 00000000 */  nop
/* 3FFE8 8004F7E8 F1004228 */  slti       $v0, $v0, 0xF1
/* 3FFEC 8004F7EC 04004014 */  bnez       $v0, .L8004F800
/* 3FFF0 8004F7F0 00000000 */   nop
/* 3FFF4 8004F7F4 3800A28F */  lw         $v0, 0x38($sp)
/* 3FFF8 8004F7F8 01001E24 */  addiu      $fp, $zero, 0x1
/* 3FFFC 8004F7FC 3000A2AF */  sw         $v0, 0x30($sp)
.L8004F800:
/* 40000 8004F800 FFFF7326 */  addiu      $s3, $s3, -0x1
/* 40004 8004F804 C7FF6106 */  bgez       $s3, .L8004F724
/* 40008 8004F808 21905602 */   addu      $s2, $s2, $s6
.L8004F80C:
/* 4000C 8004F80C 8600E012 */  beqz       $s7, .L8004FA28
/* 40010 8004F810 00100224 */   addiu     $v0, $zero, 0x1000
/* 40014 8004F814 BC00B38F */  lw         $s3, 0xBC($sp)
/* 40018 8004F818 00000000 */  nop
/* 4001C 8004F81C 1A005300 */  div        $zero, $v0, $s3
/* 40020 8004F820 12B00000 */  mflo       $s6
/* 40024 8004F824 80006006 */  bltz       $s3, .L8004FA28
/* 40028 8004F828 21900000 */   addu      $s2, $zero, $zero
/* 4002C 8004F82C 00101524 */  addiu      $s5, $zero, 0x1000
/* 40030 8004F830 21884002 */  addu       $s1, $s2, $zero
.L8004F834:
/* 40034 8004F834 5800A227 */  addiu      $v0, $sp, 0x58
/* 40038 8004F838 2000A427 */  addiu      $a0, $sp, 0x20
/* 4003C 8004F83C 2800A527 */  addiu      $a1, $sp, 0x28
/* 40040 8004F840 2330B202 */  subu       $a2, $s5, $s2
/* 40044 8004F844 21384002 */  addu       $a3, $s2, $zero
/* 40048 8004F848 86F3020C */  jal        LoadAverageShort12
/* 4004C 8004F84C 1000A2AF */   sw        $v0, 0x10($sp)
/* 40050 8004F850 7C00A88F */  lw         $t0, 0x7C($sp)
/* 40054 8004F854 00000000 */  nop
/* 40058 8004F858 A0FF0225 */  addiu      $v0, $t0, -0x60
/* 4005C 8004F85C 18005200 */  mult       $v0, $s2
/* 40060 8004F860 12100000 */  mflo       $v0
/* 40064 8004F864 02004104 */  bgez       $v0, .L8004F870
/* 40068 8004F868 00000000 */   nop
/* 4006C 8004F86C FF0F4224 */  addiu      $v0, $v0, 0xFFF
.L8004F870:
/* 40070 8004F870 03130200 */  sra        $v0, $v0, 12
/* 40074 8004F874 60005024 */  addiu      $s0, $v0, 0x60
/* 40078 8004F878 80101000 */  sll        $v0, $s0, 2
/* 4007C 8004F87C 21105000 */  addu       $v0, $v0, $s0
/* 40080 8004F880 80810200 */  sll        $s0, $v0, 6
/* 40084 8004F884 0008422A */  slti       $v0, $s2, 0x800
/* 40088 8004F888 05004014 */  bnez       $v0, .L8004F8A0
/* 4008C 8004F88C 2338B102 */   subu      $a3, $s5, $s1
/* 40090 8004F890 0108422A */  slti       $v0, $s2, 0x801
/* 40094 8004F894 02004014 */  bnez       $v0, .L8004F8A0
/* 40098 8004F898 21380000 */   addu      $a3, $zero, $zero
/* 4009C 8004F89C 00F02726 */  addiu      $a3, $s1, -0x1000
.L8004F8A0:
/* 400A0 8004F8A0 6400A427 */  addiu      $a0, $sp, 0x64
/* 400A4 8004F8A4 6800A527 */  addiu      $a1, $sp, 0x68
/* 400A8 8004F8A8 2330A702 */  subu       $a2, $s5, $a3
/* 400AC 8004F8AC 6C00A227 */  addiu      $v0, $sp, 0x6C
/* 400B0 8004F8B0 A8F3020C */  jal        LoadAverageCol
/* 400B4 8004F8B4 1000A2AF */   sw        $v0, 0x10($sp)
/* 400B8 8004F8B8 5800A227 */  addiu      $v0, $sp, 0x58
/* 400BC 8004F8BC 000040C8 */  lwc2       $0, 0x0($v0)
/* 400C0 8004F8C0 040041C8 */  lwc2       $1, 0x4($v0)
/* 400C4 8004F8C4 00000000 */  nop
/* 400C8 8004F8C8 00000000 */  nop
/* 400CC 8004F8CC 0100184A */  RTPS
/* 400D0 8004F8D0 3800A227 */  addiu      $v0, $sp, 0x38
/* 400D4 8004F8D4 00004EE8 */  swc2       $14, 0x0($v0)
/* 400D8 8004F8D8 6000A227 */  addiu      $v0, $sp, 0x60
/* 400DC 8004F8DC 000053E8 */  swc2       $19, 0x0($v0)
/* 400E0 8004F8E0 6000A38F */  lw         $v1, 0x60($sp)
/* 400E4 8004F8E4 00000000 */  nop
/* 400E8 8004F8E8 2A108302 */  slt        $v0, $s4, $v1
/* 400EC 8004F8EC 05004010 */  beqz       $v0, .L8004F904
/* 400F0 8004F8F0 00000000 */   nop
/* 400F4 8004F8F4 07008106 */  bgez       $s4, .L8004F914
/* 400F8 8004F8F8 21288002 */   addu      $a1, $s4, $zero
/* 400FC 8004F8FC 453E0108 */  j          .L8004F914
/* 40100 8004F900 03008526 */   addiu     $a1, $s4, 0x3
.L8004F904:
/* 40104 8004F904 21286000 */  addu       $a1, $v1, $zero
/* 40108 8004F908 0200A104 */  bgez       $a1, .L8004F914
/* 4010C 8004F90C 00000000 */   nop
/* 40110 8004F910 0300A524 */  addiu      $a1, $a1, 0x3
.L8004F914:
/* 40114 8004F914 24004012 */  beqz       $s2, .L8004F9A8
/* 40118 8004F918 83280500 */   sra       $a1, $a1, 2
/* 4011C 8004F91C 6000A28F */  lw         $v0, 0x60($sp)
/* 40120 8004F920 00000000 */  nop
/* 40124 8004F924 0200401C */  bgtz       $v0, .L8004F930
/* 40128 8004F928 01000224 */   addiu     $v0, $zero, 0x1
/* 4012C 8004F92C 6000A2AF */  sw         $v0, 0x60($sp)
.L8004F930:
/* 40130 8004F930 7800A88F */  lw         $t0, 0x78($sp)
/* 40134 8004F934 00000000 */  nop
/* 40138 8004F938 18001001 */  mult       $t0, $s0
/* 4013C 8004F93C 12180000 */  mflo       $v1
/* 40140 8004F940 6000A28F */  lw         $v0, 0x60($sp)
/* 40144 8004F944 00000000 */  nop
/* 40148 8004F948 1800E202 */  mult       $s7, $v0
/* 4014C 8004F94C 12100000 */  mflo       $v0
/* 40150 8004F950 00000000 */  nop
/* 40154 8004F954 00000000 */  nop
/* 40158 8004F958 1A006200 */  div        $zero, $v1, $v0
/* 4015C 8004F95C 12180000 */  mflo       $v1
/* 40160 8004F960 7400A88F */  lw         $t0, 0x74($sp)
/* 40164 8004F964 00000000 */  nop
/* 40168 8004F968 18001001 */  mult       $t0, $s0
/* 4016C 8004F96C 12480000 */  mflo       $t1
/* 40170 8004F970 00000000 */  nop
/* 40174 8004F974 00000000 */  nop
/* 40178 8004F978 1A002201 */  div        $zero, $t1, $v0
/* 4017C 8004F97C 12100000 */  mflo       $v0
/* 40180 8004F980 6666043C */  lui        $a0, (0x66666667 >> 16)
/* 40184 8004F984 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
/* 40188 8004F988 401A0300 */  sll        $v1, $v1, 9
/* 4018C 8004F98C 18006400 */  mult       $v1, $a0
/* 40190 8004F990 C31F0300 */  sra        $v1, $v1, 31
/* 40194 8004F994 4A00A2A7 */  sh         $v0, 0x4A($sp)
/* 40198 8004F998 10480000 */  mfhi       $t1
/* 4019C 8004F99C C3110900 */  sra        $v0, $t1, 7
/* 401A0 8004F9A0 23104300 */  subu       $v0, $v0, $v1
/* 401A4 8004F9A4 4800A2A7 */  sh         $v0, 0x48($sp)
.L8004F9A8:
/* 401A8 8004F9A8 04005616 */  bne        $s2, $s6, .L8004F9BC
/* 401AC 8004F9AC 00000000 */   nop
/* 401B0 8004F9B0 4800A28F */  lw         $v0, 0x48($sp)
/* 401B4 8004F9B4 00000000 */  nop
/* 401B8 8004F9B8 4000A2AF */  sw         $v0, 0x40($sp)
.L8004F9BC:
/* 401BC 8004F9BC 0F004012 */  beqz       $s2, .L8004F9FC
/* 401C0 8004F9C0 40101600 */   sll       $v0, $s6, 1
/* 401C4 8004F9C4 0D00A018 */  blez       $a1, .L8004F9FC
/* 401C8 8004F9C8 3000A627 */   addiu     $a2, $sp, 0x30
/* 401CC 8004F9CC AC00A48F */  lw         $a0, 0xAC($sp)
/* 401D0 8004F9D0 7000A88F */  lw         $t0, 0x70($sp)
/* 401D4 8004F9D4 4000A227 */  addiu      $v0, $sp, 0x40
/* 401D8 8004F9D8 1000A2AF */  sw         $v0, 0x10($sp)
/* 401DC 8004F9DC 4800A227 */  addiu      $v0, $sp, 0x48
/* 401E0 8004F9E0 1400A2AF */  sw         $v0, 0x14($sp)
/* 401E4 8004F9E4 1800A8AF */  sw         $t0, 0x18($sp)
/* 401E8 8004F9E8 6C00A28F */  lw         $v0, 0x6C($sp)
/* 401EC 8004F9EC 3800A727 */  addiu      $a3, $sp, 0x38
/* 401F0 8004F9F0 D43B010C */  jal        FX_Draw_Glowing_Line
/* 401F4 8004F9F4 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 401F8 8004F9F8 40101600 */  sll        $v0, $s6, 1
.L8004F9FC:
/* 401FC 8004F9FC 21882202 */  addu       $s1, $s1, $v0
/* 40200 8004FA00 21905602 */  addu       $s2, $s2, $s6
/* 40204 8004FA04 6C00A88F */  lw         $t0, 0x6C($sp)
/* 40208 8004FA08 6000B48F */  lw         $s4, 0x60($sp)
/* 4020C 8004FA0C 3800A28F */  lw         $v0, 0x38($sp)
/* 40210 8004FA10 4800A38F */  lw         $v1, 0x48($sp)
/* 40214 8004FA14 FFFF7326 */  addiu      $s3, $s3, -0x1
/* 40218 8004FA18 7000A8AF */  sw         $t0, 0x70($sp)
/* 4021C 8004FA1C 3000A2AF */  sw         $v0, 0x30($sp)
/* 40220 8004FA20 84FF6106 */  bgez       $s3, .L8004F834
/* 40224 8004FA24 4000A3AF */   sw        $v1, 0x40($sp)
.L8004FA28:
/* 40228 8004FA28 A400BF8F */  lw         $ra, 0xA4($sp)
/* 4022C 8004FA2C A000BE8F */  lw         $fp, 0xA0($sp)
/* 40230 8004FA30 9C00B78F */  lw         $s7, 0x9C($sp)
/* 40234 8004FA34 9800B68F */  lw         $s6, 0x98($sp)
/* 40238 8004FA38 9400B58F */  lw         $s5, 0x94($sp)
/* 4023C 8004FA3C 9000B48F */  lw         $s4, 0x90($sp)
/* 40240 8004FA40 8C00B38F */  lw         $s3, 0x8C($sp)
/* 40244 8004FA44 8800B28F */  lw         $s2, 0x88($sp)
/* 40248 8004FA48 8400B18F */  lw         $s1, 0x84($sp)
/* 4024C 8004FA4C 8000B08F */  lw         $s0, 0x80($sp)
/* 40250 8004FA50 0800E003 */  jr         $ra
/* 40254 8004FA54 A800BD27 */   addiu     $sp, $sp, 0xA8
.size FX_LightHouse, . - FX_LightHouse
