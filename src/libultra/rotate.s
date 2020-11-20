# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel guRotateF
/* 018320 70017720 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 018324 70017724 3C018003 */  lui   $at, %hi(F32_80029810)
/* 018328 70017728 C4249810 */  lwc1  $f4, %lo(F32_80029810)($at)
/* 01832C 7001772C AFB00018 */  sw    $s0, 0x18($sp)
/* 018330 70017730 00808025 */  move  $s0, $a0
/* 018334 70017734 3C018006 */  lui    $at, %hi(flt_CODE_bss_80067DE0)
/* 018338 70017738 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01833C 7001773C AFA5003C */  sw    $a1, 0x3c($sp)
/* 018340 70017740 AFA60040 */  sw    $a2, 0x40($sp)
/* 018344 70017744 AFA70044 */  sw    $a3, 0x44($sp)
/* 018348 70017748 27A60048 */  addiu $a2, $sp, 0x48
/* 01834C 7001774C 27A50044 */  addiu $a1, $sp, 0x44
/* 018350 70017750 27A40040 */  addiu $a0, $sp, 0x40
/* 018354 70017754 0C007DD4 */  jal   guNormalize
/* 018358 70017758 E4247DE0 */   swc1  $f4, %lo(flt_CODE_bss_80067DE0)($at)
/* 01835C 7001775C 3C018006 */  lui    $at, %hi(flt_CODE_bss_80067DE0)
/* 018360 70017760 C7AC003C */  lwc1  $f12, 0x3c($sp)
/* 018364 70017764 C4267DE0 */  lwc1  $f6, %lo(flt_CODE_bss_80067DE0)($at)
/* 018368 70017768 46066302 */  mul.s $f12, $f12, $f6
/* 01836C 7001776C 0FC15FAB */  jal   sinf
/* 018370 70017770 E7AC003C */   swc1  $f12, 0x3c($sp)
/* 018374 70017774 C7AC003C */  lwc1  $f12, 0x3c($sp)
/* 018378 70017778 0FC15FA8 */  jal   cosf
/* 01837C 7001777C E7A00034 */   swc1  $f0, 0x34($sp)
/* 018380 70017780 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 018384 70017784 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 018388 70017788 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01838C 7001778C 44814000 */  mtc1  $at, $f8
/* 018390 70017790 46045182 */  mul.s $f6, $f10, $f4
/* 018394 70017794 02002025 */  move  $a0, $s0
/* 018398 70017798 46004081 */  sub.s $f2, $f8, $f0
/* 01839C 7001779C C7A80048 */  lwc1  $f8, 0x48($sp)
/* 0183A0 700177A0 E7A00030 */  swc1  $f0, 0x30($sp)
/* 0183A4 700177A4 46023402 */  mul.s $f16, $f6, $f2
/* 0183A8 700177A8 00000000 */  nop   
/* 0183AC 700177AC 46082182 */  mul.s $f6, $f4, $f8
/* 0183B0 700177B0 E7B0002C */  swc1  $f16, 0x2c($sp)
/* 0183B4 700177B4 46023482 */  mul.s $f18, $f6, $f2
/* 0183B8 700177B8 00000000 */  nop   
/* 0183BC 700177BC 460A4102 */  mul.s $f4, $f8, $f10
/* 0183C0 700177C0 E7B20028 */  swc1  $f18, 0x28($sp)
/* 0183C4 700177C4 46022182 */  mul.s $f6, $f4, $f2
/* 0183C8 700177C8 0C004004 */  jal   guMtxIdentF
/* 0183CC 700177CC E7A60024 */   swc1  $f6, 0x24($sp)
/* 0183D0 700177D0 C7A80040 */  lwc1  $f8, 0x40($sp)
/* 0183D4 700177D4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0183D8 700177D8 44815000 */  mtc1  $at, $f10
/* 0183DC 700177DC 46084002 */  mul.s $f0, $f8, $f8
/* 0183E0 700177E0 C7AC0030 */  lwc1  $f12, 0x30($sp)
/* 0183E4 700177E4 C7AE0034 */  lwc1  $f14, 0x34($sp)
/* 0183E8 700177E8 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 0183EC 700177EC C7B20028 */  lwc1  $f18, 0x28($sp)
/* 0183F0 700177F0 46005101 */  sub.s $f4, $f10, $f0
/* 0183F4 700177F4 460C2182 */  mul.s $f6, $f4, $f12
/* 0183F8 700177F8 46003200 */  add.s $f8, $f6, $f0
/* 0183FC 700177FC E6080000 */  swc1  $f8, ($s0)
/* 018400 70017800 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 018404 70017804 460E5102 */  mul.s $f4, $f10, $f14
/* 018408 70017808 46049181 */  sub.s $f6, $f18, $f4
/* 01840C 7001780C E6060024 */  swc1  $f6, 0x24($s0)
/* 018410 70017810 C7A80040 */  lwc1  $f8, 0x40($sp)
/* 018414 70017814 460E4282 */  mul.s $f10, $f8, $f14
/* 018418 70017818 44814000 */  mtc1  $at, $f8
/* 01841C 7001781C 46125100 */  add.s $f4, $f10, $f18
/* 018420 70017820 E6040018 */  swc1  $f4, 0x18($s0)
/* 018424 70017824 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 018428 70017828 46063082 */  mul.s $f2, $f6, $f6
/* 01842C 7001782C 46024281 */  sub.s $f10, $f8, $f2
/* 018430 70017830 460C5102 */  mul.s $f4, $f10, $f12
/* 018434 70017834 46022180 */  add.s $f6, $f4, $f2
/* 018438 70017838 E6060014 */  swc1  $f6, 0x14($s0)
/* 01843C 7001783C C7A80044 */  lwc1  $f8, 0x44($sp)
/* 018440 70017840 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 018444 70017844 460E4282 */  mul.s $f10, $f8, $f14
/* 018448 70017848 46045180 */  add.s $f6, $f10, $f4
/* 01844C 7001784C E6060020 */  swc1  $f6, 0x20($s0)
/* 018450 70017850 C7AA0044 */  lwc1  $f10, 0x44($sp)
/* 018454 70017854 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 018458 70017858 460E5102 */  mul.s $f4, $f10, $f14
/* 01845C 7001785C 46044181 */  sub.s $f6, $f8, $f4
/* 018460 70017860 44814000 */  mtc1  $at, $f8
/* 018464 70017864 E6060008 */  swc1  $f6, 8($s0)
/* 018468 70017868 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 01846C 7001786C 460A5002 */  mul.s $f0, $f10, $f10
/* 018470 70017870 46004101 */  sub.s $f4, $f8, $f0
/* 018474 70017874 460C2182 */  mul.s $f6, $f4, $f12
/* 018478 70017878 46003280 */  add.s $f10, $f6, $f0
/* 01847C 7001787C E60A0028 */  swc1  $f10, 0x28($s0)
/* 018480 70017880 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 018484 70017884 460E4102 */  mul.s $f4, $f8, $f14
/* 018488 70017888 46048181 */  sub.s $f6, $f16, $f4
/* 01848C 7001788C E6060010 */  swc1  $f6, 0x10($s0)
/* 018490 70017890 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 018494 70017894 460E5202 */  mul.s $f8, $f10, $f14
/* 018498 70017898 46104100 */  add.s $f4, $f8, $f16
/* 01849C 7001789C E6040004 */  swc1  $f4, 4($s0)
/* 0184A0 700178A0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0184A4 700178A4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0184A8 700178A8 27BD0038 */  addiu $sp, $sp, 0x38
/* 0184AC 700178AC 03E00008 */  jr    $ra
/* 0184B0 700178B0 00000000 */   nop   

glabel guRotate
/* 0184B4 700178B4 44856000 */  mtc1  $a1, $f12
/* 0184B8 700178B8 44867000 */  mtc1  $a2, $f14
/* 0184BC 700178BC 44878000 */  mtc1  $a3, $f16
/* 0184C0 700178C0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0184C4 700178C4 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 0184C8 700178C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0184CC 700178CC AFA40060 */  sw    $a0, 0x60($sp)
/* 0184D0 700178D0 44056000 */  mfc1  $a1, $f12
/* 0184D4 700178D4 44067000 */  mfc1  $a2, $f14
/* 0184D8 700178D8 44078000 */  mfc1  $a3, $f16
/* 0184DC 700178DC 27A40020 */  addiu $a0, $sp, 0x20
/* 0184E0 700178E0 0C005DC8 */  jal   guRotateF
/* 0184E4 700178E4 E7A40010 */   swc1  $f4, 0x10($sp)
/* 0184E8 700178E8 27A40020 */  addiu $a0, $sp, 0x20
/* 0184EC 700178EC 0C003FC4 */  jal   guMtxF2L
/* 0184F0 700178F0 8FA50060 */   lw    $a1, 0x60($sp)
/* 0184F4 700178F4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0184F8 700178F8 27BD0060 */  addiu $sp, $sp, 0x60
/* 0184FC 700178FC 03E00008 */  jr    $ra
/* 018500 70017900 00000000 */   nop   
.align 4

.section .rodata
glabel F32_80029810
.float 0.017453292
.align 4

.section .bss
glabel flt_CODE_bss_80067DE0
.word 0
.word 0,0,0
