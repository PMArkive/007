# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text  
glabel osContInit
/* 015500 70014900 27BDFF80 */  addiu $sp, $sp, -0x80
/* 015504 70014904 3C0E8002 */  lui   $t6, %hi(__osContinitialized) 
/* 015508 70014908 8DCE77B0 */  lw    $t6, %lo(__osContinitialized)($t6)
/* 01550C 7001490C AFBF0024 */  sw    $ra, 0x24($sp)
/* 015510 70014910 AFA40080 */  sw    $a0, 0x80($sp)
/* 015514 70014914 AFA50084 */  sw    $a1, 0x84($sp)
/* 015518 70014918 AFA60088 */  sw    $a2, 0x88($sp)
/* 01551C 7001491C 11C00003 */  beqz  $t6, .L7001492C
/* 015520 70014920 AFA00078 */   sw    $zero, 0x78($sp)
/* 015524 70014924 10000070 */  b     .L70014AE8
/* 015528 70014928 00001025 */   move  $v0, $zero
.L7001492C:
/* 01552C 7001492C 240F0001 */  li    $t7, 1
/* 015530 70014930 3C018002 */  lui   $at, %hi(__osContinitialized)
/* 015534 70014934 0C003AEC */  jal   osGetTime
/* 015538 70014938 AC2F77B0 */   sw    $t7, %lo(__osContinitialized)($at)
/* 01553C 7001493C 3C050007 */  lui   $a1, (0x0007A120 >> 16) # lui $a1, 7
/* 015540 70014940 3C068002 */  lui   $a2, %hi(osClockRate)
/* 015544 70014944 3C078002 */  lui   $a3, %hi(osClockRate+0x4)
/* 015548 70014948 AFA20070 */  sw    $v0, 0x70($sp)
/* 01554C 7001494C AFA30074 */  sw    $v1, 0x74($sp)
/* 015550 70014950 8CE76984 */  lw    $a3, %lo(osClockRate+0x4)($a3)
/* 015554 70014954 8CC66980 */  lw    $a2, %lo(osClockRate)($a2)
/* 015558 70014958 34A5A120 */  ori   $a1, (0x0007A120 & 0xFFFF) # ori $a1, $a1, 0xa120
/* 01555C 7001495C 0C003B6A */  jal   __ll_mul
/* 015560 70014960 24040000 */   li    $a0, 0
/* 015564 70014964 AFA20030 */  sw    $v0, 0x30($sp)
/* 015568 70014968 AFA30034 */  sw    $v1, 0x34($sp)
/* 01556C 7001496C 3C07000F */  lui   $a3, (0x000F4240 >> 16) # lui $a3, 0xf
/* 015570 70014970 34E74240 */  ori   $a3, (0x000F4240 & 0xFFFF) # ori $a3, $a3, 0x4240
/* 015574 70014974 8FA50034 */  lw    $a1, 0x34($sp)
/* 015578 70014978 8FA40030 */  lw    $a0, 0x30($sp)
/* 01557C 7001497C 0C003B2A */  jal   __ull_div
/* 015580 70014980 24060000 */   li    $a2, 0
/* 015584 70014984 8FB80070 */  lw    $t8, 0x70($sp)
/* 015588 70014988 8FB90074 */  lw    $t9, 0x74($sp)
/* 01558C 7001498C 0058082B */  sltu  $at, $v0, $t8
/* 015590 70014990 14200031 */  bnez  $at, .L70014A58
/* 015594 70014994 0302082B */   sltu  $at, $t8, $v0
/* 015598 70014998 14200003 */  bnez  $at, .L700149A8
/* 01559C 7001499C 0323082B */   sltu  $at, $t9, $v1
/* 0155A0 700149A0 1020002D */  beqz  $at, .L70014A58
/* 0155A4 700149A4 00000000 */   nop   
.L700149A8:
/* 0155A8 700149A8 27A40038 */  addiu $a0, $sp, 0x38
/* 0155AC 700149AC 27A5007C */  addiu $a1, $sp, 0x7c
/* 0155B0 700149B0 0C0035B4 */  jal   osCreateMesgQueue
/* 0155B4 700149B4 24060001 */   li    $a2, 1
/* 0155B8 700149B8 3C050007 */  lui   $a1, (0x0007A120 >> 16) # lui $a1, 7
/* 0155BC 700149BC 3C068002 */  lui   $a2, %hi(osClockRate)
/* 0155C0 700149C0 3C078002 */  lui   $a3, %hi(osClockRate+4)
/* 0155C4 700149C4 8CE76984 */  lw    $a3, %lo(osClockRate+4)($a3)
/* 0155C8 700149C8 8CC66980 */  lw    $a2, %lo(osClockRate)($a2)
/* 0155CC 700149CC 34A5A120 */  ori   $a1, (0x0007A120 & 0xFFFF) # ori $a1, $a1, 0xa120
/* 0155D0 700149D0 0C003B6A */  jal   __ll_mul
/* 0155D4 700149D4 24040000 */   li    $a0, 0
/* 0155D8 700149D8 AFA20028 */  sw    $v0, 0x28($sp)
/* 0155DC 700149DC AFA3002C */  sw    $v1, 0x2c($sp)
/* 0155E0 700149E0 3C07000F */  lui   $a3, (0x000F4240 >> 16) # lui $a3, 0xf
/* 0155E4 700149E4 34E74240 */  ori   $a3, (0x000F4240 & 0xFFFF) # ori $a3, $a3, 0x4240
/* 0155E8 700149E8 8FA5002C */  lw    $a1, 0x2c($sp)
/* 0155EC 700149EC 8FA40028 */  lw    $a0, 0x28($sp)
/* 0155F0 700149F0 0C003B2A */  jal   __ull_div
/* 0155F4 700149F4 24060000 */   li    $a2, 0
/* 0155F8 700149F8 AFA20030 */  sw    $v0, 0x30($sp)
/* 0155FC 700149FC AFA30034 */  sw    $v1, 0x34($sp)
/* 015600 70014A00 8FA90034 */  lw    $t1, 0x34($sp)
/* 015604 70014A04 8FA80030 */  lw    $t0, 0x30($sp)
/* 015608 70014A08 8FAA0070 */  lw    $t2, 0x70($sp)
/* 01560C 70014A0C 8FAB0074 */  lw    $t3, 0x74($sp)
/* 015610 70014A10 240C0000 */  li    $t4, 0
/* 015614 70014A14 240D0000 */  li    $t5, 0
/* 015618 70014A18 27AE0038 */  addiu $t6, $sp, 0x38
/* 01561C 70014A1C 27AF007C */  addiu $t7, $sp, 0x7c
/* 015620 70014A20 010A3023 */  subu  $a2, $t0, $t2
/* 015624 70014A24 012B082B */  sltu  $at, $t1, $t3
/* 015628 70014A28 00C13023 */  subu  $a2, $a2, $at
/* 01562C 70014A2C AFAF001C */  sw    $t7, 0x1c($sp)
/* 015630 70014A30 AFAE0018 */  sw    $t6, 0x18($sp)
/* 015634 70014A34 AFAD0014 */  sw    $t5, 0x14($sp)
/* 015638 70014A38 AFAC0010 */  sw    $t4, 0x10($sp)
/* 01563C 70014A3C 27A40050 */  addiu $a0, $sp, 0x50
/* 015640 70014A40 0C004314 */  jal   osSetTimer
/* 015644 70014A44 012B3823 */   subu  $a3, $t1, $t3
/* 015648 70014A48 27A40038 */  addiu $a0, $sp, 0x38
/* 01564C 70014A4C 27A5007C */  addiu $a1, $sp, 0x7c
/* 015650 70014A50 0C003774 */  jal   osRecvMesg
/* 015654 70014A54 24060001 */   li    $a2, 1
.L70014A58:
/* 015658 70014A58 24180004 */  li    $t8, 4
/* 01565C 70014A5C 3C018006 */  lui   $at, %hi(__osMaxControllers)
/* 015660 70014A60 A0387CE1 */  sb    $t8, %lo(__osMaxControllers)($at)
/* 015664 70014A64 0C0052F2 */  jal   __osPackRequestData
/* 015668 70014A68 00002025 */   move  $a0, $zero
/* 01566C 70014A6C 3C058006 */  lui   $a1, %hi(__osContPifRam)
/* 015670 70014A70 24A57CA0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, 0x7ca0
/* 015674 70014A74 0C0057B4 */  jal   __osSiRawStartDma
/* 015678 70014A78 24040001 */   li    $a0, 1
/* 01567C 70014A7C AFA20078 */  sw    $v0, 0x78($sp)
/* 015680 70014A80 8FA40080 */  lw    $a0, 0x80($sp)
/* 015684 70014A84 27A5007C */  addiu $a1, $sp, 0x7c
/* 015688 70014A88 0C003774 */  jal   osRecvMesg
/* 01568C 70014A8C 24060001 */   li    $a2, 1
/* 015690 70014A90 3C058006 */  lui   $a1, %hi(__osContPifRam)
/* 015694 70014A94 24A57CA0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, 0x7ca0
/* 015698 70014A98 0C0057B4 */  jal   __osSiRawStartDma
/* 01569C 70014A9C 00002025 */   move  $a0, $zero
/* 0156A0 70014AA0 AFA20078 */  sw    $v0, 0x78($sp)
/* 0156A4 70014AA4 8FA40080 */  lw    $a0, 0x80($sp)
/* 0156A8 70014AA8 27A5007C */  addiu $a1, $sp, 0x7c
/* 0156AC 70014AAC 0C003774 */  jal   osRecvMesg
/* 0156B0 70014AB0 24060001 */   li    $a2, 1
/* 0156B4 70014AB4 8FA40084 */  lw    $a0, 0x84($sp)
/* 0156B8 70014AB8 0C0052BE */  jal   __osContGetInitData
/* 0156BC 70014ABC 8FA50088 */   lw    $a1, 0x88($sp)
/* 0156C0 70014AC0 3C018006 */  lui   $at, %hi(__osContLastCmd)
/* 0156C4 70014AC4 0C005784 */  jal   __osSiCreateAccessQueue
/* 0156C8 70014AC8 A0207CE0 */   sb    $zero, %lo(__osContLastCmd)($at)
/* 0156CC 70014ACC 3C048006 */  lui   $a0, %hi(__osEepromTimerQ)
/* 0156D0 70014AD0 3C058006 */  lui   $a1, %hi(__osEepromTimerMsg)
/* 0156D4 70014AD4 24A57D20 */  addiu $a1, %lo(__osEepromTimerMsg) # addiu $a1, $a1, 0x7d20
/* 0156D8 70014AD8 24847D08 */  addiu $a0, %lo(__osEepromTimerQ) # addiu $a0, $a0, 0x7d08
/* 0156DC 70014ADC 0C0035B4 */  jal   osCreateMesgQueue
/* 0156E0 70014AE0 24060001 */   li    $a2, 1
/* 0156E4 70014AE4 8FA20078 */  lw    $v0, 0x78($sp)
.L70014AE8:
/* 0156E8 70014AE8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0156EC 70014AEC 27BD0080 */  addiu $sp, $sp, 0x80
/* 0156F0 70014AF0 03E00008 */  jr    $ra
/* 0156F4 70014AF4 00000000 */   nop   

glabel __osContGetInitData
/* 0156F8 70014AF8 3C0F8006 */  lui   $t7, %hi(__osMaxControllers) 
/* 0156FC 70014AFC 91EF7CE1 */  lbu   $t7, %lo(__osMaxControllers)($t7)
/* 015700 70014B00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 015704 70014B04 3C0E8006 */  lui   $t6, %hi(__osContPifRam) 
/* 015708 70014B08 25CE7CA0 */  addiu $t6, %lo(__osContPifRam) # addiu $t6, $t6, 0x7ca0
/* 01570C 70014B0C A3A00007 */  sb    $zero, 7($sp)
/* 015710 70014B10 AFAE0014 */  sw    $t6, 0x14($sp)
/* 015714 70014B14 19E00028 */  blez  $t7, .L70014BB8
/* 015718 70014B18 AFA00008 */   sw    $zero, 8($sp)
.L70014B1C:
/* 01571C 70014B1C 8FB90014 */  lw    $t9, 0x14($sp)
/* 015720 70014B20 27B8000C */  addiu $t8, $sp, 0xc
/* 015724 70014B24 8B210000 */  lwl   $at, ($t9)
/* 015728 70014B28 9B210003 */  lwr   $at, 3($t9)
/* 01572C 70014B2C AF010000 */  sw    $at, ($t8)
/* 015730 70014B30 8B290004 */  lwl   $t1, 4($t9)
/* 015734 70014B34 9B290007 */  lwr   $t1, 7($t9)
/* 015738 70014B38 AF090004 */  sw    $t1, 4($t8)
/* 01573C 70014B3C 93AA000E */  lbu   $t2, 0xe($sp)
/* 015740 70014B40 314B00C0 */  andi  $t3, $t2, 0xc0
/* 015744 70014B44 000B6103 */  sra   $t4, $t3, 4
/* 015748 70014B48 A0AC0003 */  sb    $t4, 3($a1)
/* 01574C 70014B4C 90AD0003 */  lbu   $t5, 3($a1)
/* 015750 70014B50 15A0000E */  bnez  $t5, .L70014B8C
/* 015754 70014B54 00000000 */   nop   
/* 015758 70014B58 93AE0011 */  lbu   $t6, 0x11($sp)
/* 01575C 70014B5C 93A80010 */  lbu   $t0, 0x10($sp)
/* 015760 70014B60 240B0001 */  li    $t3, 1
/* 015764 70014B64 000E7A00 */  sll   $t7, $t6, 8
/* 015768 70014B68 01E8C025 */  or    $t8, $t7, $t0
/* 01576C 70014B6C A4B80000 */  sh    $t8, ($a1)
/* 015770 70014B70 93B90012 */  lbu   $t9, 0x12($sp)
/* 015774 70014B74 A0B90002 */  sb    $t9, 2($a1)
/* 015778 70014B78 8FAA0008 */  lw    $t2, 8($sp)
/* 01577C 70014B7C 93A90007 */  lbu   $t1, 7($sp)
/* 015780 70014B80 014B6004 */  sllv  $t4, $t3, $t2
/* 015784 70014B84 012C6825 */  or    $t5, $t1, $t4
/* 015788 70014B88 A3AD0007 */  sb    $t5, 7($sp)
.L70014B8C:
/* 01578C 70014B8C 8FAE0008 */  lw    $t6, 8($sp)
/* 015790 70014B90 3C198006 */  lui   $t9, %hi(__osMaxControllers) 
/* 015794 70014B94 93397CE1 */  lbu   $t9, %lo(__osMaxControllers)($t9)
/* 015798 70014B98 8FA80014 */  lw    $t0, 0x14($sp)
/* 01579C 70014B9C 25CF0001 */  addiu $t7, $t6, 1
/* 0157A0 70014BA0 01F9082A */  slt   $at, $t7, $t9
/* 0157A4 70014BA4 25180008 */  addiu $t8, $t0, 8
/* 0157A8 70014BA8 AFB80014 */  sw    $t8, 0x14($sp)
/* 0157AC 70014BAC AFAF0008 */  sw    $t7, 8($sp)
/* 0157B0 70014BB0 1420FFDA */  bnez  $at, .L70014B1C
/* 0157B4 70014BB4 24A50004 */   addiu $a1, $a1, 4
.L70014BB8:
/* 0157B8 70014BB8 93AB0007 */  lbu   $t3, 7($sp)
/* 0157BC 70014BBC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0157C0 70014BC0 03E00008 */  jr    $ra
/* 0157C4 70014BC4 A08B0000 */   sb    $t3, ($a0)

glabel __osPackRequestData
/* 0157C8 70014BC8 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0157CC 70014BCC 308400FF */  andi  $a0, $a0, 0xff
/* 0157D0 70014BD0 AFA00000 */  sw    $zero, ($sp)
.L70014BD4:
/* 0157D4 70014BD4 8FAE0000 */  lw    $t6, ($sp)
/* 0157D8 70014BD8 8FB80000 */  lw    $t8, ($sp)
/* 0157DC 70014BDC 3C018006 */  lui   $at, %hi(__osContPifRam)
/* 0157E0 70014BE0 000E7880 */  sll   $t7, $t6, 2
/* 0157E4 70014BE4 002F0821 */  addu  $at, $at, $t7
/* 0157E8 70014BE8 AC207CA0 */  sw    $zero, %lo(__osContPifRam)($at)
/* 0157EC 70014BEC 27190001 */  addiu $t9, $t8, 1
/* 0157F0 70014BF0 2B210010 */  slti  $at, $t9, 0x10
/* 0157F4 70014BF4 1420FFF7 */  bnez  $at, .L70014BD4
/* 0157F8 70014BF8 AFB90000 */   sw    $t9, ($sp)
/* 0157FC 70014BFC 3C198006 */  lui   $t9, %hi(__osMaxControllers) 
/* 015800 70014C00 93397CE1 */  lbu   $t9, %lo(__osMaxControllers)($t9)
/* 015804 70014C04 3C098006 */  lui   $t1, %hi(__osContPifRam) 
/* 015808 70014C08 24080001 */  li    $t0, 1
/* 01580C 70014C0C 3C018006 */  lui   $at, %hi(__osContPifRam+0x3c)
/* 015810 70014C10 25297CA0 */  addiu $t1, %lo(__osContPifRam) # addiu $t1, $t1, 0x7ca0
/* 015814 70014C14 240A00FF */  li    $t2, 255
/* 015818 70014C18 240B0001 */  li    $t3, 1
/* 01581C 70014C1C 240C0003 */  li    $t4, 3
/* 015820 70014C20 240D00FF */  li    $t5, 255
/* 015824 70014C24 240E00FF */  li    $t6, 255
/* 015828 70014C28 240F00FF */  li    $t7, 255
/* 01582C 70014C2C 241800FF */  li    $t8, 255
/* 015830 70014C30 AC287CDC */  sw    $t0, %lo(__osContPifRam+0x3c)($at)
/* 015834 70014C34 AFA9000C */  sw    $t1, 0xc($sp)
/* 015838 70014C38 A3AA0004 */  sb    $t2, 4($sp)
/* 01583C 70014C3C A3AB0005 */  sb    $t3, 5($sp)
/* 015840 70014C40 A3AC0006 */  sb    $t4, 6($sp)
/* 015844 70014C44 A3A40007 */  sb    $a0, 7($sp)
/* 015848 70014C48 A3AD0008 */  sb    $t5, 8($sp)
/* 01584C 70014C4C A3AE0009 */  sb    $t6, 9($sp)
/* 015850 70014C50 A3AF000A */  sb    $t7, 0xa($sp)
/* 015854 70014C54 A3B8000B */  sb    $t8, 0xb($sp)
/* 015858 70014C58 1B200013 */  blez  $t9, .L70014CA8
/* 01585C 70014C5C AFA00000 */   sw    $zero, ($sp)
.L70014C60:
/* 015860 70014C60 27A90004 */  addiu $t1, $sp, 4
/* 015864 70014C64 8D210000 */  lw    $at, ($t1)
/* 015868 70014C68 8FA8000C */  lw    $t0, 0xc($sp)
/* 01586C 70014C6C 3C188006 */  lui   $t8, %hi(__osMaxControllers) 
/* 015870 70014C70 A9010000 */  swl   $at, ($t0)
/* 015874 70014C74 B9010003 */  swr   $at, 3($t0)
/* 015878 70014C78 8D2B0004 */  lw    $t3, 4($t1)
/* 01587C 70014C7C A90B0004 */  swl   $t3, 4($t0)
/* 015880 70014C80 B90B0007 */  swr   $t3, 7($t0)
/* 015884 70014C84 8FAE0000 */  lw    $t6, ($sp)
/* 015888 70014C88 93187CE1 */  lbu   $t8, %lo(__osMaxControllers)($t8)
/* 01588C 70014C8C 8FAC000C */  lw    $t4, 0xc($sp)
/* 015890 70014C90 25CF0001 */  addiu $t7, $t6, 1
/* 015894 70014C94 01F8082A */  slt   $at, $t7, $t8
/* 015898 70014C98 258D0008 */  addiu $t5, $t4, 8
/* 01589C 70014C9C AFAF0000 */  sw    $t7, ($sp)
/* 0158A0 70014CA0 1420FFEF */  bnez  $at, .L70014C60
/* 0158A4 70014CA4 AFAD000C */   sw    $t5, 0xc($sp)
.L70014CA8:
/* 0158A8 70014CA8 8FAA000C */  lw    $t2, 0xc($sp)
/* 0158AC 70014CAC 241900FE */  li    $t9, 254
/* 0158B0 70014CB0 27BD0010 */  addiu $sp, $sp, 0x10
/* 0158B4 70014CB4 03E00008 */  jr    $ra
/* 0158B8 70014CB8 A1590000 */   sb    $t9, ($t2)

/* 0158BC 70014CBC 00000000 */  nop 

.section .data
glabel __osContinitialized
.word 0
.align 4

.section .bss
glabel __osContPifRam
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

glabel __osContLastCmd
.byte 0

glabel __osMaxControllers
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0

glabel __osEepromTimer
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

glabel __osEepromTimerQ
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

glabel __osEepromTimerMsg
.word 0
glabel padding_80067d24
.word 0, 0, 0


