.text
.file 1 "inserted_by_delocate.c"
.loc 1 1 0
.type BORINGSSL_bcm_text_hash, @object
.size BORINGSSL_bcm_text_hash, 32
BORINGSSL_bcm_text_hash:
.byte 0xae
.byte 0x2c
.byte 0xea
.byte 0x2a
.byte 0xbd
.byte 0xa6
.byte 0xf3
.byte 0xec
.byte 0x97
.byte 0x7f
.byte 0x9b
.byte 0xf6
.byte 0x94
.byte 0x9a
.byte 0xfc
.byte 0x83
.byte 0x68
.byte 0x27
.byte 0xcb
.byte 0xa0
.byte 0xa0
.byte 0x9f
.byte 0x6b
.byte 0x6f
.byte 0xde
.byte 0x52
.byte 0xcd
.byte 0xe2
.byte 0xcd
.byte 0xff
.byte 0x31
.byte 0x80
BORINGSSL_bcm_text_start:
	.text
.Lfoo_local_target:
foo:
# WAS addis 22,2,bar@toc@ha
# WAS ld 0,bar@toc@l(22)
	addi 1, 1, -288
	mflr 0
	std 0, -8(1)
	std 3, -16(1)
	bl .Lbcm_loadtoc_bar
	std 3, -24(1)
	ld 3, -8(1)
	mtlr 3
	ld 0, -24(1)
	ld 3, -16(1)
	addi 1, 1, 288
	addi 1, 1, -288
	std 3, -8(1)
	mr 3, 0
	ld 0, 0(3)
	ld 3, -8(1)
	addi 1, 1, 288
.text
.loc 1 2 0
BORINGSSL_bcm_text_end:
.type bcm_loadtoc_bar, @function
bcm_loadtoc_bar:
.Lbcm_loadtoc_bar:
	addis 3, 2, bar@toc@ha
	addi 3, 3, bar@toc@l
	blr
.LBORINGSSL_external_toc:
.quad .TOC.-.LBORINGSSL_external_toc
