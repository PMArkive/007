# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel __osProbeTLB
/* 019C20 70019020 40085000 */  mfc0  $t0, $10
/* 019C24 70019024 310900FF */  andi  $t1, $t0, 0xff
/* 019C28 70019028 2401E000 */  li    $at, -8192
/* 019C2C 7001902C 00815024 */  and   $t2, $a0, $at
/* 019C30 70019030 012A4825 */  or    $t1, $t1, $t2
/* 019C34 70019034 40895000 */  mtc0  $t1, $10
/* 019C38 70019038 00000000 */  nop   
/* 019C3C 7001903C 00000000 */  nop   
/* 019C40 70019040 00000000 */  nop   
/* 019C44 70019044 42000008 */  tlbp  
/* 019C48 70019048 00000000 */  nop   
/* 019C4C 7001904C 00000000 */  nop   
/* 019C50 70019050 400B0000 */  mfc0  $t3, $0
/* 019C54 70019054 3C018000 */  lui   $at, 0x8000
/* 019C58 70019058 01615824 */  and   $t3, $t3, $at
/* 019C5C 7001905C 1560001A */  bnez  $t3, .L700190C8
/* 019C60 70019060 00000000 */   nop   
/* 019C64 70019064 42000001 */  tlbr  
/* 019C68 70019068 00000000 */  nop   
/* 019C6C 7001906C 00000000 */  nop   
/* 019C70 70019070 00000000 */  nop   
/* 019C74 70019074 400B2800 */  mfc0  $t3, $5
/* 019C78 70019078 216B2000 */  addi  $t3, $t3, 0x2000
/* 019C7C 7001907C 000B5842 */  srl   $t3, $t3, 1
/* 019C80 70019080 01646024 */  and   $t4, $t3, $a0
/* 019C84 70019084 15800004 */  bnez  $t4, .L70019098
/* 019C88 70019088 216BFFFF */   addi  $t3, $t3, -1
/* 019C8C 7001908C 40021000 */  mfc0  $v0, $2
/* 019C90 70019090 10000002 */  b     .L7001909C
/* 019C94 70019094 00000000 */   nop   
.L70019098:
/* 019C98 70019098 40021800 */  mfc0  $v0, $3
.L7001909C:
/* 019C9C 7001909C 304D0002 */  andi  $t5, $v0, 2
/* 019CA0 700190A0 11A00009 */  beqz  $t5, .L700190C8
/* 019CA4 700190A4 00000000 */   nop   
/* 019CA8 700190A8 3C013FFF */  lui   $at, (0x3FFFFFC0 >> 16) # lui $at, 0x3fff
/* 019CAC 700190AC 3421FFC0 */  ori   $at, (0x3FFFFFC0 & 0xFFFF) # ori $at, $at, 0xffc0
/* 019CB0 700190B0 00411024 */  and   $v0, $v0, $at
/* 019CB4 700190B4 00021180 */  sll   $v0, $v0, 6
/* 019CB8 700190B8 008B6824 */  and   $t5, $a0, $t3
/* 019CBC 700190BC 004D1020 */  add   $v0, $v0, $t5
/* 019CC0 700190C0 10000002 */  b     .L700190CC
/* 019CC4 700190C4 00000000 */   nop   
.L700190C8:
/* 019CC8 700190C8 2402FFFF */  li    $v0, -1
.L700190CC:
/* 019CCC 700190CC 40885000 */  mtc0  $t0, $10
/* 019CD0 700190D0 03E00008 */  jr    $ra
/* 019CD4 700190D4 00000000 */   nop   



