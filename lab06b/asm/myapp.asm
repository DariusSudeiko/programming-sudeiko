	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + .L.str]
	mov	al, 0
	call	printf@PLT
	lea	rdi, [rip + .L.str.1]
	lea	rsi, [rbp - 8]
	mov	al, 0
	call	__isoc99_scanf@PLT
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 16], edx
	mov	dword ptr [rbp - 20], 3
	cmp	dword ptr [rbp - 8], 99
	jle	.LBB0_8
# %bb.1:
	cmp	dword ptr [rbp - 8], 1000
	jge	.LBB0_8
# %bb.2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 0
	jle	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 12], edx
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jle	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 1
	mov	dword ptr [rbp - 20], eax
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	jmp	.LBB0_3
.LBB0_7:
	mov	esi, dword ptr [rbp - 16]
	lea	rdi, [rip + .L.str.2]
	mov	al, 0
	call	printf@PLT
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + .L.str.3]
	mov	al, 0
	call	printf@PLT
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB0_9
.LBB0_8:
	lea	rdi, [rip + .L.str.4]
	mov	al, 0
	call	printf@PLT
.LBB0_9:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Enter a three digit number: "
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"The Smallest Digit is :%d \n"
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Which is digit number: %d \n"
	.size	.L.str.3, 28

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"incorrect input"
	.size	.L.str.4, 16

	.ident	"Ubuntu clang version 15.0.2-1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym __isoc99_scanf
