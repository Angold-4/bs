	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -68(%rbp)
	movl	$4, %edi
	callq	_malloc
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$10, (%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %esi

	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-80(%rbp), %rdi
	callq	_free
	movl	$0, -84(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$12, -84(%rbp)
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-84(%rbp), %ecx
	movslq	-84(%rbp), %rax
	movl	%ecx, -64(%rbp,%rax,4)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	LBB0_1
LBB0_4:
	leaq	L_.str.1(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-68(%rbp), %eax
	movl	%eax, -100(%rbp)                ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_6
## %bb.5:
	movl	-100(%rbp), %eax                ## 4-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
LBB0_6:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"p is %d"

L_.str.1:                               ## @.str.1
	.asciz	"Hello, World"

L_.str.2:                               ## @.str.2
	.asciz	"%s"

.subsections_via_symbols
