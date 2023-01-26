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
	mov	dword ptr [rbp - 12], edx
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 16], edx
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 20], edx
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 10
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 24], edx
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	add	eax, dword ptr [rbp - 20]
	add	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], eax
	mov	esi, dword ptr [rbp - 28]
	lea	rdi, [rip + .L.str.2]
	mov	al, 0
	call	printf@PLT
	xor	eax, eax
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
	.asciz	"enter four digit number: "
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"sum of four digits is %d\n"
	.size	.L.str.2, 26

	.ident	"Ubuntu clang version 15.0.2-1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym __isoc99_scanf
