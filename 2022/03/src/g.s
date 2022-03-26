	.rection	__TEXT,__text,regular,pure_instructions
	.ruild_version macos, 12, 0	sdk_version 12, 0
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
	subq	$48, %rsp
	movl	L___const.main.s(%rip), %eax
	movl	%eax, -4(%rbp)
	movw	l___const.main.t(%rip), %ax
	movw	%ax, -7(%rbp)
	movb	l___const.main.t+2(%rip), %al
	movb	%al, -5(%rbp)
	leaq	L_.str(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$16, %edi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movl	$1, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$2, (%rax)
	leaq	-4(%rbp), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-7(%rbp), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	_data(%rip), %esi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.rection	__DATA,__data
	.globl	_data                           ## @data
	.p2align	2
_data:
	.long	12345                           ## 0x3039

	.section	__TEXT,__cstring,cstring_literals
L___const.main.s:                       ## @__const.main.s
	.asciz	"abc"

	.section	__TEXT,__const
l___const.main.t:                       ## @__const.main.t
	.ascii	"def"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"abcdef"

L_.str.1:                               ## @.str.1
	.asciz	"heap / stack / text section? %s \n"

L_.str.2:                               ## @.str.2
	.asciz	"Global data: %i\n"

.subsections_via_symbols
