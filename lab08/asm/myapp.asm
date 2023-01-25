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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + .L.str]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
	call	printf@PLT
                                        # kill: def $ecx killed $eax
	mov	al, byte ptr [rbp - 41]         # 1-byte Reload
	lea	rdi, [rip + .L.str.1]
	lea	rsi, [rbp - 8]
	call	__isoc99_scanf@PLT
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	mov	rax, rsp
	mov	qword ptr [rbp - 24], rax
	lea	rdx, [4*rcx + 15]
	and	rdx, -16
	mov	rax, rsp
	sub	rax, rdx
	mov	qword ptr [rbp - 40], rax       # 8-byte Spill
	mov	rsp, rax
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rax], 0
	mov	dword ptr [rax + 4], 1
	mov	dword ptr [rbp - 12], 2
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 40]       # 8-byte Reload
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	movsxd	rcx, ecx
	mov	edx, dword ptr [rax + 4*rcx]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 2
	movsxd	rcx, ecx
	add	edx, dword ptr [rax + 4*rcx]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 4*rcx], edx
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB0_1
.LBB0_4:
	mov	dword ptr [rbp - 12], 0
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	cmp	eax, dword ptr [rbp - 8]
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	mov	rax, qword ptr [rbp - 40]       # 8-byte Reload
	mov	esi, dword ptr [rbp - 12]
	movsxd	rcx, dword ptr [rbp - 12]
	mov	edx, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + .L.str.2]
	mov	al, 0
	call	printf@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB0_5
.LBB0_8:
	mov	dword ptr [rbp - 4], 0
	mov	rax, qword ptr [rbp - 24]
	mov	rsp, rax
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rbp
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
	.asciz	"enter size of array: "
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"location in array %d value: %d\n"
	.size	.L.str.2, 32

	.ident	"Ubuntu clang version 15.0.2-1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym __isoc99_scanf
