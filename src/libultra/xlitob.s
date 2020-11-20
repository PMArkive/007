# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel _Litob
/* 01E3D0 7001D7D0 27BDFF70 */  addiu $sp, $sp, -0x90
/* 01E3D4 7001D7D4 AFB10020 */  sw    $s1, 0x20($sp)
/* 01E3D8 7001D7D8 30A200FF */  andi  $v0, $a1, 0xff
/* 01E3DC 7001D7DC 24030058 */  li    $v1, 88
/* 01E3E0 7001D7E0 00808825 */  move  $s1, $a0
/* 01E3E4 7001D7E4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 01E3E8 7001D7E8 AFB30028 */  sw    $s3, 0x28($sp)
/* 01E3EC 7001D7EC AFB20024 */  sw    $s2, 0x24($sp)
/* 01E3F0 7001D7F0 AFB0001C */  sw    $s0, 0x1c($sp)
/* 01E3F4 7001D7F4 14620004 */  bne   $v1, $v0, .L7001D808
/* 01E3F8 7001D7F8 AFA50094 */   sw    $a1, 0x94($sp)
/* 01E3FC 7001D7FC 3C138003 */  lui   $s3, %hi(auppercase_hex_char)
/* 01E400 7001D800 10000003 */  b     .L7001D810
/* 01E404 7001D804 26738304 */   addiu $s3, %lo(auppercase_hex_char) # addiu $s3, $s3, -0x7cfc
.L7001D808:
/* 01E408 7001D808 3C138003 */  lui   $s3, %hi(alowercase_hex_char)
/* 01E40C 7001D80C 267382F0 */  addiu $s3, %lo(alowercase_hex_char) # addiu $s3, $s3, -0x7d10
.L7001D810:
/* 01E410 7001D810 2401006F */  li    $at, 111
/* 01E414 7001D814 14410003 */  bne   $v0, $at, .L7001D824
/* 01E418 7001D818 24100018 */   li    $s0, 24
/* 01E41C 7001D81C 10000009 */  b     .L7001D844
/* 01E420 7001D820 24090008 */   li    $t1, 8
.L7001D824:
/* 01E424 7001D824 24010078 */  li    $at, 120
/* 01E428 7001D828 10410005 */  beq   $v0, $at, .L7001D840
/* 01E42C 7001D82C 24080010 */   li    $t0, 16
/* 01E430 7001D830 10620003 */  beq   $v1, $v0, .L7001D840
/* 01E434 7001D834 00000000 */   nop   
/* 01E438 7001D838 10000001 */  b     .L7001D840
/* 01E43C 7001D83C 2408000A */   li    $t0, 10
.L7001D840:
/* 01E440 7001D840 01004825 */  move  $t1, $t0
.L7001D844:
/* 01E444 7001D844 8E380000 */  lw    $t8, ($s1)
/* 01E448 7001D848 8E390004 */  lw    $t9, 4($s1)
/* 01E44C 7001D84C 24010064 */  li    $at, 100
/* 01E450 7001D850 AFB80060 */  sw    $t8, 0x60($sp)
/* 01E454 7001D854 AFB80040 */  sw    $t8, 0x40($sp)
/* 01E458 7001D858 AFB90044 */  sw    $t9, 0x44($sp)
/* 01E45C 7001D85C 10410004 */  beq   $v0, $at, .L7001D870
/* 01E460 7001D860 AFB90064 */   sw    $t9, 0x64($sp)
/* 01E464 7001D864 24010069 */  li    $at, 105
/* 01E468 7001D868 54410010 */  bnel  $v0, $at, .L7001D8AC
/* 01E46C 7001D86C 8FAA0060 */   lw    $t2, 0x60($sp)
.L7001D870:
/* 01E470 7001D870 8FAC0040 */  lw    $t4, 0x40($sp)
/* 01E474 7001D874 5D80000D */  bgtzl $t4, .L7001D8AC
/* 01E478 7001D878 8FAA0060 */   lw    $t2, 0x60($sp)
/* 01E47C 7001D87C 05800003 */  bltz  $t4, .L7001D88C
/* 01E480 7001D880 8FAE0060 */   lw    $t6, 0x60($sp)
/* 01E484 7001D884 10000009 */  b     .L7001D8AC
/* 01E488 7001D888 8FAA0060 */   lw    $t2, 0x60($sp)
.L7001D88C:
/* 01E48C 7001D88C 8FAF0064 */  lw    $t7, 0x64($sp)
/* 01E490 7001D890 01C0C027 */  not   $t8, $t6
/* 01E494 7001D894 2DE10001 */  sltiu $at, $t7, 1
/* 01E498 7001D898 0301C021 */  addu  $t8, $t8, $at
/* 01E49C 7001D89C 000FC823 */  negu  $t9, $t7
/* 01E4A0 7001D8A0 AFB90064 */  sw    $t9, 0x64($sp)
/* 01E4A4 7001D8A4 AFB80060 */  sw    $t8, 0x60($sp)
/* 01E4A8 7001D8A8 8FAA0060 */  lw    $t2, 0x60($sp)
.L7001D8AC:
/* 01E4AC 7001D8AC 8FAB0064 */  lw    $t3, 0x64($sp)
/* 01E4B0 7001D8B0 24080017 */  li    $t0, 23
/* 01E4B4 7001D8B4 15400006 */  bnez  $t2, .L7001D8D0
/* 01E4B8 7001D8B8 8FA40060 */   lw    $a0, 0x60($sp)
/* 01E4BC 7001D8BC 55600005 */  bnezl $t3, .L7001D8D4
/* 01E4C0 7001D8C0 24100017 */   li    $s0, 23
/* 01E4C4 7001D8C4 8E2C0024 */  lw    $t4, 0x24($s1)
/* 01E4C8 7001D8C8 51800010 */  beql  $t4, $zero, .L7001D90C
/* 01E4CC 7001D8CC 27B20078 */   addiu $s2, $sp, 0x78
.L7001D8D0:
/* 01E4D0 7001D8D0 24100017 */  li    $s0, 23
.L7001D8D4:
/* 01E4D4 7001D8D4 8FA50064 */  lw    $a1, 0x64($sp)
/* 01E4D8 7001D8D8 01203825 */  move  $a3, $t1
/* 01E4DC 7001D8DC 000937C3 */  sra   $a2, $t1, 0x1f
/* 01E4E0 7001D8E0 AFA8004C */  sw    $t0, 0x4c($sp)
/* 01E4E4 7001D8E4 0C003B1B */  jal   __ull_rem
/* 01E4E8 7001D8E8 AFA90070 */   sw    $t1, 0x70($sp)
/* 01E4EC 7001D8EC 8FA8004C */  lw    $t0, 0x4c($sp)
/* 01E4F0 7001D8F0 00737021 */  addu  $t6, $v1, $s3
/* 01E4F4 7001D8F4 91CF0000 */  lbu   $t7, ($t6)
/* 01E4F8 7001D8F8 27B20078 */  addiu $s2, $sp, 0x78
/* 01E4FC 7001D8FC 8FA90070 */  lw    $t1, 0x70($sp)
/* 01E500 7001D900 0248C021 */  addu  $t8, $s2, $t0
/* 01E504 7001D904 A30F0000 */  sb    $t7, ($t8)
/* 01E508 7001D908 27B20078 */  addiu $s2, $sp, 0x78
.L7001D90C:
/* 01E50C 7001D90C 8FA40060 */  lw    $a0, 0x60($sp)
/* 01E510 7001D910 8FA50064 */  lw    $a1, 0x64($sp)
/* 01E514 7001D914 01203825 */  move  $a3, $t1
/* 01E518 7001D918 000937C3 */  sra   $a2, $t1, 0x1f
/* 01E51C 7001D91C 0C003B2A */  jal   __ull_div
/* 01E520 7001D920 AFA90070 */   sw    $t1, 0x70($sp)
/* 01E524 7001D924 8FA90070 */  lw    $t1, 0x70($sp)
/* 01E528 7001D928 AE230004 */  sw    $v1, 4($s1)
/* 01E52C 7001D92C 0440002B */  bltz  $v0, .L7001D9DC
/* 01E530 7001D930 AE220000 */   sw    $v0, ($s1)
/* 01E534 7001D934 1C400003 */  bgtz  $v0, .L7001D944
/* 01E538 7001D938 00000000 */   nop   
/* 01E53C 7001D93C 50600028 */  beql  $v1, $zero, .L7001D9E0
/* 01E540 7001D940 240C0018 */   li    $t4, 24
.L7001D944:
/* 01E544 7001D944 1A000025 */  blez  $s0, .L7001D9DC
/* 01E548 7001D948 000967C3 */   sra   $t4, $t1, 0x1f
/* 01E54C 7001D94C 8E2A0000 */  lw    $t2, ($s1)
/* 01E550 7001D950 8E2B0004 */  lw    $t3, 4($s1)
/* 01E554 7001D954 AFA9003C */  sw    $t1, 0x3c($sp)
/* 01E558 7001D958 AFAC0038 */  sw    $t4, 0x38($sp)
/* 01E55C 7001D95C AFAA0040 */  sw    $t2, 0x40($sp)
/* 01E560 7001D960 AFAB0044 */  sw    $t3, 0x44($sp)
/* 01E564 7001D964 8FAE0038 */  lw    $t6, 0x38($sp)
.L7001D968:
/* 01E568 7001D968 8FAF003C */  lw    $t7, 0x3c($sp)
/* 01E56C 7001D96C 27A40050 */  addiu $a0, $sp, 0x50
/* 01E570 7001D970 8FA60040 */  lw    $a2, 0x40($sp)
/* 01E574 7001D974 8FA70044 */  lw    $a3, 0x44($sp)
/* 01E578 7001D978 AFAE0010 */  sw    $t6, 0x10($sp)
/* 01E57C 7001D97C 0C0082D4 */  jal   lldiv
/* 01E580 7001D980 AFAF0014 */   sw    $t7, 0x14($sp)
/* 01E584 7001D984 8FB80050 */  lw    $t8, 0x50($sp)
/* 01E588 7001D988 8FB90054 */  lw    $t9, 0x54($sp)
/* 01E58C 7001D98C 2604FFFF */  addiu $a0, $s0, -1
/* 01E590 7001D990 AE380000 */  sw    $t8, ($s1)
/* 01E594 7001D994 AE390004 */  sw    $t9, 4($s1)
/* 01E598 7001D998 8FAB005C */  lw    $t3, 0x5c($sp)
/* 01E59C 7001D99C 02447821 */  addu  $t7, $s2, $a0
/* 01E5A0 7001D9A0 00808025 */  move  $s0, $a0
/* 01E5A4 7001D9A4 01736821 */  addu  $t5, $t3, $s3
/* 01E5A8 7001D9A8 91AE0000 */  lbu   $t6, ($t5)
/* 01E5AC 7001D9AC A1EE0000 */  sb    $t6, ($t7)
/* 01E5B0 7001D9B0 8E380000 */  lw    $t8, ($s1)
/* 01E5B4 7001D9B4 8E390004 */  lw    $t9, 4($s1)
/* 01E5B8 7001D9B8 AFB80040 */  sw    $t8, 0x40($sp)
/* 01E5BC 7001D9BC 07000007 */  bltz  $t8, .L7001D9DC
/* 01E5C0 7001D9C0 AFB90044 */   sw    $t9, 0x44($sp)
/* 01E5C4 7001D9C4 1F000003 */  bgtz  $t8, .L7001D9D4
/* 01E5C8 7001D9C8 00000000 */   nop   
/* 01E5CC 7001D9CC 53200004 */  beql  $t9, $zero, .L7001D9E0
/* 01E5D0 7001D9D0 240C0018 */   li    $t4, 24
.L7001D9D4:
/* 01E5D4 7001D9D4 5E00FFE4 */  bgtzl $s0, .L7001D968
/* 01E5D8 7001D9D8 8FAE0038 */   lw    $t6, 0x38($sp)
.L7001D9DC:
/* 01E5DC 7001D9DC 240C0018 */  li    $t4, 24
.L7001D9E0:
/* 01E5E0 7001D9E0 01903023 */  subu  $a2, $t4, $s0
/* 01E5E4 7001D9E4 AE260014 */  sw    $a2, 0x14($s1)
/* 01E5E8 7001D9E8 8E240008 */  lw    $a0, 8($s1)
/* 01E5EC 7001D9EC 0C004E14 */  jal   memcpy
/* 01E5F0 7001D9F0 02502821 */   addu  $a1, $s2, $s0
/* 01E5F4 7001D9F4 8E250014 */  lw    $a1, 0x14($s1)
/* 01E5F8 7001D9F8 8E240024 */  lw    $a0, 0x24($s1)
/* 01E5FC 7001D9FC 00A4082A */  slt   $at, $a1, $a0
/* 01E600 7001DA00 10200002 */  beqz  $at, .L7001DA0C
/* 01E604 7001DA04 00856823 */   subu  $t5, $a0, $a1
/* 01E608 7001DA08 AE2D0010 */  sw    $t5, 0x10($s1)
.L7001DA0C:
/* 01E60C 7001DA0C 04830010 */  bgezl $a0, .L7001DA50
/* 01E610 7001DA10 8FBF002C */   lw    $ra, 0x2c($sp)
/* 01E614 7001DA14 8E2E0030 */  lw    $t6, 0x30($s1)
/* 01E618 7001DA18 24010010 */  li    $at, 16
/* 01E61C 7001DA1C 31CF0014 */  andi  $t7, $t6, 0x14
/* 01E620 7001DA20 55E1000B */  bnel  $t7, $at, .L7001DA50
/* 01E624 7001DA24 8FBF002C */   lw    $ra, 0x2c($sp)
/* 01E628 7001DA28 8E380028 */  lw    $t8, 0x28($s1)
/* 01E62C 7001DA2C 8E39000C */  lw    $t9, 0xc($s1)
/* 01E630 7001DA30 8E220010 */  lw    $v0, 0x10($s1)
/* 01E634 7001DA34 03195023 */  subu  $t2, $t8, $t9
/* 01E638 7001DA38 01425823 */  subu  $t3, $t2, $v0
/* 01E63C 7001DA3C 01658023 */  subu  $s0, $t3, $a1
/* 01E640 7001DA40 1A000002 */  blez  $s0, .L7001DA4C
/* 01E644 7001DA44 00506021 */   addu  $t4, $v0, $s0
/* 01E648 7001DA48 AE2C0010 */  sw    $t4, 0x10($s1)
.L7001DA4C:
/* 01E64C 7001DA4C 8FBF002C */  lw    $ra, 0x2c($sp)
.L7001DA50:
/* 01E650 7001DA50 8FB0001C */  lw    $s0, 0x1c($sp)
/* 01E654 7001DA54 8FB10020 */  lw    $s1, 0x20($sp)
/* 01E658 7001DA58 8FB20024 */  lw    $s2, 0x24($sp)
/* 01E65C 7001DA5C 8FB30028 */  lw    $s3, 0x28($sp)
/* 01E660 7001DA60 03E00008 */  jr    $ra
/* 01E664 7001DA64 27BD0090 */   addiu $sp, $sp, 0x90


.section .data
glabel alowercase_hex_char
.asciiz "0123456789abcdef"
.align 2
glabel auppercase_hex_char
.asciiz "0123456789ABCDEF"
.align 4
