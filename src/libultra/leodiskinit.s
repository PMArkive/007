# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel osLeoDiskInit
/* 0203F0 7001F7F0 240E0002 */  li    $t6, 2
/* 0203F4 7001F7F4 3C018007 */  lui   $at, %hi(LeoDiskHandle+0x4)
/* 0203F8 7001F7F8 A02E9004 */  sb    $t6, %lo(LeoDiskHandle+0x4)($at)
/* 0203FC 7001F7FC 3C018007 */  lui   $at, %hi(LeoDiskHandle+0xC)
/* 020400 7001F800 3C0FA500 */  lui   $t7, 0xa500
/* 020404 7001F804 AC2F900C */  sw    $t7, %lo(LeoDiskHandle+0xC)($at)
/* 020408 7001F808 3C018007 */  lui   $at, %hi(LeoDiskHandle+0x5)
/* 02040C 7001F80C 24180003 */  li    $t8, 3
/* 020410 7001F810 A0389005 */  sb    $t8, %lo(LeoDiskHandle+0x5)($at)
/* 020414 7001F814 3C018007 */  lui   $at, %hi(LeoDiskHandle+0x8)
/* 020418 7001F818 24190006 */  li    $t9, 6
/* 02041C 7001F81C A0399008 */  sb    $t9, %lo(LeoDiskHandle+0x8)($at)
/* 020420 7001F820 3C018007 */  lui   $at, %hi(LeoDiskHandle+0x7)
/* 020424 7001F824 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 020428 7001F828 24080006 */  li    $t0, 6
/* 02042C 7001F82C 24090002 */  li    $t1, 2
/* 020430 7001F830 AFBF0014 */  sw    $ra, 0x14($sp)
/* 020434 7001F834 A0289006 */  sb    $t0, %lo(LeoDiskHandle+0x6)($at)
/* 020438 7001F838 A0299007 */  sb    $t1, %lo(LeoDiskHandle+0x7)($at)
/* 02043C 7001F83C 240A0003 */  li    $t2, 3
/* 020440 7001F840 3C0BA460 */  lui   $t3, %hi(PI_BSD_DOM2_LAT_REG) # $t3, 0xa460
/* 020444 7001F844 AD6A0024 */  sw    $t2, %lo(PI_BSD_DOM2_LAT_REG)($t3)
/* 020448 7001F848 3C0C8007 */  lui   $t4, %hi(LeoDiskHandle+0x8) 
/* 02044C 7001F84C 918C9008 */  lbu   $t4, %lo(LeoDiskHandle+0x8)($t4)
/* 020450 7001F850 3C0DA460 */  lui   $t5, %hi(PI_BSD_DOM2_PWD_REG) # $t5, 0xa460
/* 020454 7001F854 3C0E8007 */  lui   $t6, %hi(LeoDiskHandle+0x6) 
/* 020458 7001F858 ADAC0028 */  sw    $t4, %lo(PI_BSD_DOM2_PWD_REG)($t5)
/* 02045C 7001F85C 91CE9006 */  lbu   $t6, %lo(LeoDiskHandle+0x6)($t6)
/* 020460 7001F860 3C0FA460 */  lui   $t7, %hi(PI_BSD_DOM2_PGS_REG) # $t7, 0xa460
/* 020464 7001F864 3C188007 */  lui   $t8, %hi(LeoDiskHandle+0x7) 
/* 020468 7001F868 ADEE002C */  sw    $t6, %lo(PI_BSD_DOM2_PGS_REG)($t7)
/* 02046C 7001F86C 93189007 */  lbu   $t8, %lo(LeoDiskHandle+0x7)($t8)
/* 020470 7001F870 3C048007 */  lui   $a0, %hi(LeoDiskHandle)
/* 020474 7001F874 3C19A460 */  lui   $t9, %hi(PI_BSD_DOM2_RLS_REG) # $t9, 0xa460
/* 020478 7001F878 24849000 */  addiu $a0, %lo(LeoDiskHandle) # addiu $a0, $a0, -0x7000
/* 02047C 7001F87C 24840014 */  addiu $a0, $a0, 0x14
/* 020480 7001F880 24050060 */  li    $a1, 96
/* 020484 7001F884 0C005F10 */  jal   bzero
/* 020488 7001F888 AF380030 */   sw    $t8, %lo(PI_BSD_DOM2_RLS_REG)($t9)
/* 02048C 7001F88C 0C00617C */  jal   __osDisableInt
/* 020490 7001F890 00000000 */   nop   
/* 020494 7001F894 3C088002 */  lui   $t0, %hi(__osPiTable) 
/* 020498 7001F898 8D0877AC */  lw    $t0, %lo(__osPiTable)($t0)
/* 02049C 7001F89C 3C018007 */  lui   $at, %hi(LeoDiskHandle)
/* 0204A0 7001F8A0 3C098007 */  lui   $t1, %hi(LeoDiskHandle) 
/* 0204A4 7001F8A4 AC289000 */  sw    $t0, %lo(LeoDiskHandle)($at)
/* 0204A8 7001F8A8 3C018002 */  lui   $at, %hi(__osPiTable)
/* 0204AC 7001F8AC 25299000 */  addiu $t1, %lo(LeoDiskHandle) # addiu $t1, $t1, -0x7000
/* 0204B0 7001F8B0 AC2977AC */  sw    $t1, %lo(__osPiTable)($at)
/* 0204B4 7001F8B4 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0204B8 7001F8B8 3C018007 */  lui   $at, %hi(__osDiskHandle)
/* 0204BC 7001F8BC AC299074 */  sw    $t1, %lo(__osDiskHandle)($at)
/* 0204C0 7001F8C0 0C006184 */  jal   __osRestoreInt
/* 0204C4 7001F8C4 8FA4001C */   lw    $a0, 0x1c($sp)
/* 0204C8 7001F8C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0204CC 7001F8CC 3C028007 */  lui   $v0, %hi(LeoDiskHandle)
/* 0204D0 7001F8D0 24429000 */  addiu $v0, %lo(LeoDiskHandle) # addiu $v0, $v0, -0x7000
/* 0204D4 7001F8D4 03E00008 */  jr    $ra
/* 0204D8 7001F8D8 27BD0020 */   addiu $sp, $sp, 0x20

/* 0204DC 7001F8DC 00000000 */  nop   
.section .bss
glabel LeoDiskHandle
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0

glabel __osDiskHandle
.word 0
.word 0, 0

