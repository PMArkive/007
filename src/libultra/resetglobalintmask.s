# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel __osResetGlobalIntMask
/* 0218E0 70020CE0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0218E4 70020CE4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0218E8 70020CE8 AFA40028 */  sw    $a0, 0x28($sp)
/* 0218EC 70020CEC 0C00617C */  jal   __osDisableInt
/* 0218F0 70020CF0 AFB00018 */   sw    $s0, 0x18($sp)
/* 0218F4 70020CF4 8FAF0028 */  lw    $t7, 0x28($sp)
/* 0218F8 70020CF8 3C0E8002 */  lui   $t6, %hi(__OSGlobalIntMask) 
/* 0218FC 70020CFC 8DCE698C */  lw    $t6, %lo(__OSGlobalIntMask)($t6)
/* 021900 70020D00 2401FBFE */  li    $at, -1026
/* 021904 70020D04 01E1C024 */  and   $t8, $t7, $at
/* 021908 70020D08 0300C827 */  not   $t9, $t8
/* 02190C 70020D0C 00408025 */  move  $s0, $v0
/* 021910 70020D10 3C018002 */  lui   $at, %hi(__OSGlobalIntMask)
/* 021914 70020D14 01D94024 */  and   $t0, $t6, $t9
/* 021918 70020D18 AC28698C */  sw    $t0, %lo(__OSGlobalIntMask)($at)
/* 02191C 70020D1C 0C006184 */  jal   __osRestoreInt
/* 021920 70020D20 02002025 */   move  $a0, $s0
/* 021924 70020D24 8FBF001C */  lw    $ra, 0x1c($sp)
/* 021928 70020D28 8FB00018 */  lw    $s0, 0x18($sp)
/* 02192C 70020D2C 27BD0028 */  addiu $sp, $sp, 0x28
/* 021930 70020D30 03E00008 */  jr    $ra
/* 021934 70020D34 00000000 */   nop   
