# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel sins
/* 017860 70016C60 308EFFFF */  andi  $t6, $a0, 0xffff
/* 017864 70016C64 000E7902 */  srl   $t7, $t6, 4
/* 017868 70016C68 31F8FFFF */  andi  $t8, $t7, 0xffff
/* 01786C 70016C6C 33190400 */  andi  $t9, $t8, 0x400
/* 017870 70016C70 AFA40000 */  sw    $a0, ($sp)
/* 017874 70016C74 13200008 */  beqz  $t9, .L70016C98
/* 017878 70016C78 03001025 */   move  $v0, $t8
/* 01787C 70016C7C 330803FF */  andi  $t0, $t8, 0x3ff
/* 017880 70016C80 00084840 */  sll   $t1, $t0, 1
/* 017884 70016C84 00095023 */  negu  $t2, $t1
/* 017888 70016C88 3C038002 */  lui   $v1, %hi(sin_table + 0x7FE) # 0x8002
/* 01788C 70016C8C 006A1821 */  addu  $v1, $v1, $t2
/* 017890 70016C90 10000006 */  b     .L70016CAC
/* 017894 70016C94 84637FCE */   lh    $v1, %lo(sin_table + 0x7FE)($v1) # 0x7fce($v1)
.L70016C98:
/* 017898 70016C98 304B03FF */  andi  $t3, $v0, 0x3ff
/* 01789C 70016C9C 000B6040 */  sll   $t4, $t3, 1
/* 0178A0 70016CA0 3C038002 */  lui   $v1, %hi(sin_table) # 0x8002
/* 0178A4 70016CA4 006C1821 */  addu  $v1, $v1, $t4
/* 0178A8 70016CA8 846377D0 */  lh    $v1, %lo(sin_table)($v1) # 0x77d0($v1)
.L70016CAC:
/* 0178AC 70016CAC 304D0800 */  andi  $t5, $v0, 0x800
/* 0178B0 70016CB0 11A00005 */  beqz  $t5, .L70016CC8
/* 0178B4 70016CB4 00601025 */   move  $v0, $v1
/* 0178B8 70016CB8 00031023 */  negu  $v0, $v1
/* 0178BC 70016CBC 00027400 */  sll   $t6, $v0, 0x10
/* 0178C0 70016CC0 03E00008 */  jr    $ra
/* 0178C4 70016CC4 000E1403 */   sra   $v0, $t6, 0x10

.L70016CC8:
/* 0178C8 70016CC8 03E00008 */  jr    $ra
/* 0178CC 70016CCC 00000000 */   nop  

 .section .data
glabel sin_table
.half      0,  0x32,  0x64,  0x96
.half   0xC9,  0xFB, 0x12D, 0x160
.half  0x192, 0x1C4, 0x1F7, 0x229
.half  0x25B, 0x28E, 0x2C0, 0x2F2
.half  0x324, 0x357, 0x389, 0x3BB
.half  0x3EE, 0x420, 0x452, 0x484
.half  0x4B7, 0x4E9, 0x51B, 0x54E
.half  0x580, 0x5B2, 0x5E4, 0x617
.half  0x649, 0x67B, 0x6AD, 0x6E0
.half  0x712, 0x744, 0x776, 0x7A9
.half  0x7DB, 0x80D, 0x83F, 0x871
.half  0x8A4, 0x8D6, 0x908, 0x93A
.half  0x96C, 0x99F, 0x9D1, 0xA03
.half  0xA35, 0xA67, 0xA99, 0xACB
.half  0xAFE, 0xB30, 0xB62, 0xB94
.half  0xBC6, 0xBF8, 0xC2A, 0xC5C
.half  0xC8E, 0xCC0, 0xCF2, 0xD25
.half  0xD57, 0xD89, 0xDBB, 0xDED
.half  0xE1F, 0xE51, 0xE83, 0xEB5
.half  0xEE7, 0xF19, 0xF4B, 0xF7C
.half  0xFAE, 0xFE0,0x1012,0x1044
.half 0x1076,0x10A8,0x10DA,0x110C
.half 0x113E,0x116F,0x11A1,0x11D3
.half 0x1205,0x1237,0x1269,0x129A
.half 0x12CC,0x12FE,0x1330,0x1361
.half 0x1393,0x13C5,0x13F6,0x1428
.half 0x145A,0x148C,0x14BD,0x14EF
.half 0x1520,0x1552,0x1584,0x15B5
.half 0x15E7,0x1618,0x164A,0x167B
.half 0x16AD,0x16DF,0x1710,0x1741
.half 0x1773,0x17A4,0x17D6,0x1807
.half 0x1839,0x186A,0x189B,0x18CD
.half 0x18FE,0x1930,0x1961,0x1992
.half 0x19C3,0x19F5,0x1A26,0x1A57
.half 0x1A88,0x1ABA,0x1AEB,0x1B1C
.half 0x1B4D,0x1B7E,0x1BAF,0x1BE1
.half 0x1C12,0x1C43,0x1C74,0x1CA5
.half 0x1CD6,0x1D07,0x1D38,0x1D69
.half 0x1D9A,0x1DCB,0x1DFC,0x1E2D
.half 0x1E5D,0x1E8E,0x1EBF,0x1EF0
.half 0x1F21,0x1F52,0x1F82,0x1FB3
.half 0x1FE4,0x2015,0x2045,0x2076
.half 0x20A7,0x20D7,0x2108,0x2139
.half 0x2169,0x219A,0x21CA,0x21FB
.half 0x222B,0x225C,0x228C,0x22BD
.half 0x22ED,0x231D,0x234E,0x237E
.half 0x23AE,0x23DF,0x240F,0x243F
.half 0x2470,0x24A0,0x24D0,0x2500
.half 0x2530,0x2560,0x2591,0x25C1
.half 0x25F1,0x2621,0x2651,0x2681
.half 0x26B1,0x26E1,0x2711,0x2740
.half 0x2770,0x27A0,0x27D0,0x2800
.half 0x2830,0x285F,0x288F,0x28BF
.half 0x28EE,0x291E,0x294E,0x297D
.half 0x29AD,0x29DD,0x2A0C,0x2A3C
.half 0x2A6B,0x2A9B,0x2ACA,0x2AF9
.half 0x2B29,0x2B58,0x2B87,0x2BB7
.half 0x2BE6,0x2C15,0x2C44,0x2C74
.half 0x2CA3,0x2CD2,0x2D01,0x2D30
.half 0x2D5F,0x2D8E,0x2DBD,0x2DEC
.half 0x2E1B,0x2E4A,0x2E79,0x2EA8
.half 0x2ED7,0x2F06,0x2F34,0x2F63
.half 0x2F92,0x2FC0,0x2FEF,0x301E
.half 0x304C,0x307B,0x30A9,0x30D8
.half 0x3107,0x3135,0x3163,0x3192
.half 0x31C0,0x31EF,0x321D,0x324B
.half 0x3279,0x32A8,0x32D6,0x3304
.half 0x3332,0x3360,0x338E,0x33BC
.half 0x33EA,0x3418,0x3446,0x3474
.half 0x34A2,0x34D0,0x34FE,0x352B
.half 0x3559,0x3587,0x35B5,0x35E2
.half 0x3610,0x363D,0x366B,0x3698
.half 0x36C6,0x36F3,0x3721,0x374E
.half 0x377C,0x37A9,0x37D6,0x3803
.half 0x3831,0x385E,0x388B,0x38B8
.half 0x38E5,0x3912,0x393F,0x396C
.half 0x3999,0x39C6,0x39F3,0x3A20
.half 0x3A4D,0x3A79,0x3AA6,0x3AD3
.half 0x3B00,0x3B2C,0x3B59,0x3B85
.half 0x3BB2,0x3BDE,0x3C0B,0x3C37
.half 0x3C64,0x3C90,0x3CBC,0x3CE9
.half 0x3D15,0x3D41,0x3D6D,0x3D99
.half 0x3DC5,0x3DF1,0x3E1D,0x3E49
.half 0x3E75,0x3EA1,0x3ECD,0x3EF9
.half 0x3F25,0x3F50,0x3F7C,0x3FA8
.half 0x3FD3,0x3FFF,0x402B,0x4056
.half 0x4082,0x40AD,0x40D8,0x4104
.half 0x412F,0x415A,0x4186,0x41B1
.half 0x41DC,0x4207,0x4232,0x425D
.half 0x4288,0x42B3,0x42DE,0x4309
.half 0x4334,0x435F,0x4389,0x43B4
.half 0x43DF,0x4409,0x4434,0x445F
.half 0x4489,0x44B4,0x44DE,0x4508
.half 0x4533,0x455D,0x4587,0x45B1
.half 0x45DC,0x4606,0x4630,0x465A
.half 0x4684,0x46AE,0x46D8,0x4702
.half 0x472C,0x4755,0x477F,0x47A9
.half 0x47D2,0x47FC,0x4826,0x484F
.half 0x4879,0x48A2,0x48CC,0x48F5
.half 0x491E,0x4948,0x4971,0x499A
.half 0x49C3,0x49EC,0x4A15,0x4A3E
.half 0x4A67,0x4A90,0x4AB9,0x4AE2
.half 0x4B0B,0x4B33,0x4B5C,0x4B85
.half 0x4BAD,0x4BD6,0x4BFE,0x4C27
.half 0x4C4F,0x4C78,0x4CA0,0x4CC8
.half 0x4CF0,0x4D19,0x4D41,0x4D69
.half 0x4D91,0x4DB9,0x4DE1,0x4E09
.half 0x4E31,0x4E58,0x4E80,0x4EA8
.half 0x4ED0,0x4EF7,0x4F1F,0x4F46
.half 0x4F6E,0x4F95,0x4FBD,0x4FE4
.half 0x500B,0x5032,0x505A,0x5081
.half 0x50A8,0x50CF,0x50F6,0x511D
.half 0x5144,0x516B,0x5191,0x51B8
.half 0x51DF,0x5205,0x522C,0x5253
.half 0x5279,0x52A0,0x52C6,0x52EC
.half 0x5313,0x5339,0x535F,0x5385
.half 0x53AB,0x53D1,0x53F7,0x541D
.half 0x5443,0x5469,0x548F,0x54B5
.half 0x54DA,0x5500,0x5525,0x554B
.half 0x5571,0x5596,0x55BB,0x55E1
.half 0x5606,0x562B,0x5650,0x5675
.half 0x569B,0x56C0,0x56E5,0x5709
.half 0x572E,0x5753,0x5778,0x579D
.half 0x57C1,0x57E6,0x580A,0x582F
.half 0x5853,0x5878,0x589C,0x58C0
.half 0x58E5,0x5909,0x592D,0x5951
.half 0x5975,0x5999,0x59BD,0x59E1
.half 0x5A04,0x5A28,0x5A4C,0x5A6F
.half 0x5A93,0x5AB7,0x5ADA,0x5AFD
.half 0x5B21,0x5B44,0x5B67,0x5B8B
.half 0x5BAE,0x5BD1,0x5BF4,0x5C17
.half 0x5C3A,0x5C5D,0x5C7F,0x5CA2
.half 0x5CC5,0x5CE7,0x5D0A,0x5D2D
.half 0x5D4F,0x5D71,0x5D94,0x5DB6
.half 0x5DD8,0x5DFA,0x5E1D,0x5E3F
.half 0x5E61,0x5E83,0x5EA5,0x5EC6
.half 0x5EE8,0x5F0A,0x5F2C,0x5F4D
.half 0x5F6F,0x5F90,0x5FB2,0x5FD3
.half 0x5FF4,0x6016,0x6037,0x6058
.half 0x6079,0x609A,0x60BB,0x60DC
.half 0x60FD,0x611E,0x613E,0x615F
.half 0x6180,0x61A0,0x61C1,0x61E1
.half 0x6202,0x6222,0x6242,0x6263
.half 0x6283,0x62A3,0x62C3,0x62E3
.half 0x6303,0x6323,0x6342,0x6362
.half 0x6382,0x63A1,0x63C1,0x63E0
.half 0x6400,0x641F,0x643F,0x645E
.half 0x647D,0x649C,0x64BB,0x64DA
.half 0x64F9,0x6518,0x6537,0x6556
.half 0x6574,0x6593,0x65B2,0x65D0
.half 0x65EF,0x660D,0x662B,0x664A
.half 0x6668,0x6686,0x66A4,0x66C2
.half 0x66E0,0x66FE,0x671C,0x673A
.half 0x6757,0x6775,0x6792,0x67B0
.half 0x67CD,0x67EB,0x6808,0x6825
.half 0x6843,0x6860,0x687D,0x689A
.half 0x68B7,0x68D4,0x68F1,0x690D
.half 0x692A,0x6947,0x6963,0x6980
.half 0x699C,0x69B9,0x69D5,0x69F1
.half 0x6A0E,0x6A2A,0x6A46,0x6A62
.half 0x6A7E,0x6A9A,0x6AB5,0x6AD1
.half 0x6AED,0x6B08,0x6B24,0x6B40
.half 0x6B5B,0x6B76,0x6B92,0x6BAD
.half 0x6BC8,0x6BE3,0x6BFE,0x6C19
.half 0x6C34,0x6C4F,0x6C6A,0x6C84
.half 0x6C9F,0x6CBA,0x6CD4,0x6CEF
.half 0x6D09,0x6D23,0x6D3E,0x6D58
.half 0x6D72,0x6D8C,0x6DA6,0x6DC0
.half 0x6DDA,0x6DF3,0x6E0D,0x6E27
.half 0x6E40,0x6E5A,0x6E73,0x6E8D
.half 0x6EA6,0x6EBF,0x6ED9,0x6EF2
.half 0x6F0B,0x6F24,0x6F3D,0x6F55
.half 0x6F6E,0x6F87,0x6FA0,0x6FB8
.half 0x6FD1,0x6FE9,0x7002,0x701A
.half 0x7032,0x704A,0x7062,0x707A
.half 0x7092,0x70AA,0x70C2,0x70DA
.half 0x70F2,0x7109,0x7121,0x7138
.half 0x7150,0x7167,0x717E,0x7196
.half 0x71AD,0x71C4,0x71DB,0x71F2
.half 0x7209,0x7220,0x7236,0x724D
.half 0x7264,0x727A,0x7291,0x72A7
.half 0x72BD,0x72D4,0x72EA,0x7300
.half 0x7316,0x732C,0x7342,0x7358
.half 0x736E,0x7383,0x7399,0x73AE
.half 0x73C4,0x73D9,0x73EF,0x7404
.half 0x7419,0x742E,0x7443,0x7458
.half 0x746D,0x7482,0x7497,0x74AC
.half 0x74C0,0x74D5,0x74EA,0x74FE
.half 0x7512,0x7527,0x753B,0x754F
.half 0x7563,0x7577,0x758B,0x759F
.half 0x75B3,0x75C7,0x75DA,0x75EE
.half 0x7601,0x7615,0x7628,0x763B
.half 0x764F,0x7662,0x7675,0x7688
.half 0x769B,0x76AE,0x76C1,0x76D3
.half 0x76E6,0x76F9,0x770B,0x771E
.half 0x7730,0x7742,0x7754,0x7767
.half 0x7779,0x778B,0x779D,0x77AF
.half 0x77C0,0x77D2,0x77E4,0x77F5
.half 0x7807,0x7818,0x782A,0x783B
.half 0x784C,0x785D,0x786E,0x787F
.half 0x7890,0x78A1,0x78B2,0x78C3
.half 0x78D3,0x78E4,0x78F4,0x7905
.half 0x7915,0x7925,0x7936,0x7946
.half 0x7956,0x7966,0x7976,0x7985
.half 0x7995,0x79A5,0x79B5,0x79C4
.half 0x79D4,0x79E3,0x79F2,0x7A02
.half 0x7A11,0x7A20,0x7A2F,0x7A3E
.half 0x7A4D,0x7A5B,0x7A6A,0x7A79
.half 0x7A87,0x7A96,0x7AA4,0x7AB3
.half 0x7AC1,0x7ACF,0x7ADD,0x7AEB
.half 0x7AF9,0x7B07,0x7B15,0x7B23
.half 0x7B31,0x7B3E,0x7B4C,0x7B59
.half 0x7B67,0x7B74,0x7B81,0x7B8E
.half 0x7B9B,0x7BA8,0x7BB5,0x7BC2
.half 0x7BCF,0x7BDC,0x7BE8,0x7BF5
.half 0x7C02,0x7C0E,0x7C1A,0x7C27
.half 0x7C33,0x7C3F,0x7C4B,0x7C57
.half 0x7C63,0x7C6F,0x7C7A,0x7C86
.half 0x7C92,0x7C9D,0x7CA9,0x7CB4
.half 0x7CBF,0x7CCB,0x7CD6,0x7CE1
.half 0x7CEC,0x7CF7,0x7D02,0x7D0C
.half 0x7D17,0x7D22,0x7D2C,0x7D37
.half 0x7D41,0x7D4B,0x7D56,0x7D60
.half 0x7D6A,0x7D74,0x7D7E,0x7D88
.half 0x7D91,0x7D9B,0x7DA5,0x7DAE
.half 0x7DB8,0x7DC1,0x7DCB,0x7DD4
.half 0x7DDD,0x7DE6,0x7DEF,0x7DF8
.half 0x7E01,0x7E0A,0x7E13,0x7E1B
.half 0x7E24,0x7E2C,0x7E35,0x7E3D
.half 0x7E45,0x7E4D,0x7E56,0x7E5E
.half 0x7E66,0x7E6D,0x7E75,0x7E7D
.half 0x7E85,0x7E8C,0x7E94,0x7E9B
.half 0x7EA3,0x7EAA,0x7EB1,0x7EB8
.half 0x7EBF,0x7EC6,0x7ECD,0x7ED4
.half 0x7EDB,0x7EE1,0x7EE8,0x7EEE
.half 0x7EF5,0x7EFB,0x7F01,0x7F08
.half 0x7F0E,0x7F14,0x7F1A,0x7F20
.half 0x7F25,0x7F2B,0x7F31,0x7F36
.half 0x7F3C,0x7F41,0x7F47,0x7F4C
.half 0x7F51,0x7F56,0x7F5B,0x7F60
.half 0x7F65,0x7F6A,0x7F6F,0x7F74
.half 0x7F78,0x7F7D,0x7F81,0x7F85
.half 0x7F8A,0x7F8E,0x7F92,0x7F96
.half 0x7F9A,0x7F9E,0x7FA2,0x7FA6
.half 0x7FA9,0x7FAD,0x7FB0,0x7FB4
.half 0x7FB7,0x7FBA,0x7FBE,0x7FC1
.half 0x7FC4,0x7FC7,0x7FCA,0x7FCC
.half 0x7FCF,0x7FD2,0x7FD4,0x7FD7
.half 0x7FD9,0x7FDC,0x7FDE,0x7FE0
.half 0x7FE2,0x7FE4,0x7FE6,0x7FE8
.half 0x7FEA,0x7FEC,0x7FED,0x7FEF
.half 0x7FF1,0x7FF2,0x7FF3,0x7FF5
.half 0x7FF6,0x7FF7,0x7FF8,0x7FF9
.half 0x7FFA,0x7FFB,0x7FFB,0x7FFC
.half 0x7FFD,0x7FFD,0x7FFE,0x7FFE
.half 0x7FFE,0x7FFE,0x7FFE,0x7FFF
