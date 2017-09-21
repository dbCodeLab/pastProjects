	.file	"XEngine.cc"
	.section	.text._ZN14XTextureLoaderD2Ev,"axG",@progbits,_ZN14XTextureLoaderD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN14XTextureLoaderD2Ev
	.type	_ZN14XTextureLoaderD2Ev, @function
_ZN14XTextureLoaderD2Ev:
.LFB54:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV14XTextureLoader+8, (%eax)
	ret
	.cfi_endproc
.LFE54:
	.size	_ZN14XTextureLoaderD2Ev, .-_ZN14XTextureLoaderD2Ev
	.section	.text._ZN7XEngineD2Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7XEngineD2Ev
	.type	_ZN7XEngineD2Ev, @function
_ZN7XEngineD2Ev:
.LFB1177:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	ret
	.cfi_endproc
.LFE1177:
	.size	_ZN7XEngineD2Ev, .-_ZN7XEngineD2Ev
	.section	.text._ZN7XEngineD0Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7XEngineD0Ev
	.type	_ZN7XEngineD0Ev, @function
_ZN7XEngineD0Ev:
.LFB1179:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	jmp	_ZdlPv
	.cfi_endproc
.LFE1179:
	.size	_ZN7XEngineD0Ev, .-_ZN7XEngineD0Ev
	.section	.text._ZN14XTextureLoaderD0Ev,"axG",@progbits,_ZN14XTextureLoaderD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN14XTextureLoaderD0Ev
	.type	_ZN14XTextureLoaderD0Ev, @function
_ZN14XTextureLoaderD0Ev:
.LFB56:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV14XTextureLoader+8, (%eax)
	jmp	_ZdlPv
	.cfi_endproc
.LFE56:
	.size	_ZN14XTextureLoaderD0Ev, .-_ZN14XTextureLoaderD0Ev
	.section	.text._ZN14XTextureLoader18release_tex_memoryEv,"axG",@progbits,_ZN14XTextureLoader18release_tex_memoryEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN14XTextureLoader18release_tex_memoryEv
	.type	_ZN14XTextureLoader18release_tex_memoryEv, @function
_ZN14XTextureLoader18release_tex_memoryEv:
.LFB57:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L11
	movl	%eax, 4(%esp)
	jmp	_ZdaPv
	.p2align 4,,7
	.p2align 3
.L11:
	rep
	ret
	.cfi_endproc
.LFE57:
	.size	_ZN14XTextureLoader18release_tex_memoryEv, .-_ZN14XTextureLoader18release_tex_memoryEv
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine11process_keyEc
	.type	_ZN7XEngine11process_keyEc, @function
_ZN7XEngine11process_keyEc:
.LFB1281:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movzbl	68(%esp), %eax
	movl	64(%esp), %ebx
	subl	$97, %eax
	cmpb	$23, %al
	ja	.L14
	movzbl	%al, %eax
	jmp	*.L25(,%eax,4)
	.section	.rodata
	.align 4
	.align 4
.L25:
	.long	.L16
	.long	.L17
	.long	.L18
	.long	.L19
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L14
	.long	.L20
	.long	.L14
	.long	.L21
	.long	.L14
	.long	.L14
	.long	.L22
	.long	.L23
	.long	.L24
	.text
	.p2align 4,,7
	.p2align 3
.L16:
	flds	132(%ebx)
	fsubs	136(%ebx)
.L45:
	fsts	132(%ebx)
	fld	%st(0)
	fldl	.LC0
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L46
	fstp	%st(2)
	fxch	%st(1)
	fsubp	%st, %st(1)
	fstps	44(%esp)
	flds	44(%esp)
	fsts	132(%ebx)
	jmp	.L29
	.p2align 4,,7
	.p2align 3
.L46:
	fstp	%st(0)
	fstp	%st(0)
.L29:
	fldz
	fucomip	%st(1), %st
	jbe	.L47
	fldl	.LC0
	faddp	%st, %st(1)
	fstps	132(%ebx)
	jmp	.L14
	.p2align 4,,7
	.p2align 3
.L47:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L14:
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.p2align 4,,7
	.p2align 3
.L24:
	.cfi_restore_state
	addl	$2, 116(%ebx)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L17:
	.cfi_restore_state
	movl	40(%ebx), %eax
	movl	32(%ebx), %edx
	subl	$2, %eax
	cmpl	%edx, %eax
	movl	%eax, 40(%ebx)
	jge	.L33
.L43:
	movl	%edx, 40(%ebx)
	movl	%edx, %eax
.L33:
	movl	36(%ebx), %edx
	cmpl	%eax, %edx
	jge	.L14
	movl	%edx, 40(%ebx)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L18:
	.cfi_restore_state
	subl	$2, 116(%ebx)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L19:
	.cfi_restore_state
	flds	132(%ebx)
	fadds	136(%ebx)
	jmp	.L45
	.p2align 4,,7
	.p2align 3
.L20:
	movl	$0, (%esp)
	call	exit
	.p2align 4,,7
	.p2align 3
.L21:
	leal	24(%esp), %eax
	leal	32(%esp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	flds	132(%ebx)
	fstpl	(%esp)
	call	sincos
	movl	124(%ebx), %eax
	negl	%eax
	fildl	108(%ebx)
	movl	%eax, 20(%esp)
	fildl	20(%esp)
	fnstcw	18(%esp)
	fmull	32(%esp)
	movzwl	18(%esp), %eax
	faddp	%st, %st(1)
	movb	$12, %ah
	movw	%ax, 16(%esp)
	movl	128(%ebx), %eax
	fldcw	16(%esp)
	fistpl	108(%ebx)
	fldcw	18(%esp)
	negl	%eax
	fildl	112(%ebx)
	movl	%eax, 20(%esp)
	fildl	20(%esp)
	fmull	24(%esp)
	faddp	%st, %st(1)
	fldcw	16(%esp)
	fistpl	112(%ebx)
	fldcw	18(%esp)
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L22:
	.cfi_restore_state
	movl	40(%ebx), %eax
	movl	32(%ebx), %edx
	addl	$2, %eax
	cmpl	%edx, %eax
	movl	%eax, 40(%ebx)
	jge	.L33
	jmp	.L43
	.p2align 4,,7
	.p2align 3
.L23:
	leal	32(%esp), %eax
	leal	24(%esp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	flds	132(%ebx)
	fstpl	(%esp)
	call	sincos
	fildl	108(%ebx)
	fildl	124(%ebx)
	fmull	24(%esp)
	fnstcw	18(%esp)
	movzwl	18(%esp), %eax
	faddp	%st, %st(1)
	movb	$12, %ah
	movw	%ax, 16(%esp)
	fldcw	16(%esp)
	fistpl	108(%ebx)
	fldcw	18(%esp)
	fildl	112(%ebx)
	fildl	128(%ebx)
	fmull	32(%esp)
	faddp	%st, %st(1)
	fldcw	16(%esp)
	fistpl	112(%ebx)
	fldcw	18(%esp)
	addl	$56, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1281:
	.size	_ZN7XEngine11process_keyEc, .-_ZN7XEngine11process_keyEc
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine15update_positionEi
	.type	_ZN7XEngine15update_positionEi, @function
_ZN7XEngine15update_positionEi:
.LFB1282:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$52, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	leal	40(%esp), %eax
	leal	32(%esp), %edx
	movl	68(%esp), %esi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	flds	132(%ebx)
	fstpl	(%esp)
	call	sincos
	movl	124(%ebx), %eax
	imull	%esi, %eax
	fildl	108(%ebx)
	fnstcw	26(%esp)
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fmull	32(%esp)
	movzwl	26(%esp), %eax
	movb	$12, %ah
	faddp	%st, %st(1)
	movw	%ax, 24(%esp)
	imull	128(%ebx), %esi
	fldcw	24(%esp)
	fistpl	108(%ebx)
	fldcw	26(%esp)
	fildl	112(%ebx)
	movl	%esi, 28(%esp)
	fildl	28(%esp)
	fmull	40(%esp)
	faddp	%st, %st(1)
	fldcw	24(%esp)
	fistpl	112(%ebx)
	fldcw	26(%esp)
	addl	$52, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE1282:
	.size	_ZN7XEngine15update_positionEi, .-_ZN7XEngine15update_positionEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12update_angleEi
	.type	_ZN7XEngine12update_angleEi, @function
_ZN7XEngine12update_angleEi:
.LFB1283:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	fildl	20(%esp)
	fmuls	136(%eax)
	fadds	132(%eax)
	fsts	132(%eax)
	fld	%st(0)
	fldl	.LC0
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L56
	fstp	%st(2)
	fxch	%st(1)
	fsubp	%st, %st(1)
	fstps	4(%esp)
	flds	4(%esp)
	fsts	132(%eax)
	jmp	.L50
	.p2align 4,,7
	.p2align 3
.L56:
	fstp	%st(0)
	fstp	%st(0)
.L50:
	fldz
	fucomip	%st(1), %st
	jbe	.L57
	fldl	.LC0
	faddp	%st, %st(1)
	fstps	132(%eax)
	jmp	.L49
	.p2align 4,,7
	.p2align 3
.L57:
	fstp	%st(0)
.L49:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1283:
	.size	_ZN7XEngine12update_angleEi, .-_ZN7XEngine12update_angleEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13update_heightEi
	.type	_ZN7XEngine13update_heightEi, @function
_ZN7XEngine13update_heightEi:
.LFB1284:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	addl	%edx, %edx
	addl	%edx, 116(%eax)
	ret
	.cfi_endproc
.LFE1284:
	.size	_ZN7XEngine13update_heightEi, .-_ZN7XEngine13update_heightEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9update_vpEi
	.type	_ZN7XEngine9update_vpEi, @function
_ZN7XEngine9update_vpEi:
.LFB1285:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	40(%edx), %ecx
	leal	(%ecx,%eax,2), %eax
	movl	32(%edx), %ecx
	movl	%eax, 40(%edx)
	cmpl	%ecx, %eax
	jge	.L60
	movl	%ecx, 40(%edx)
	movl	%ecx, %eax
.L60:
	movl	36(%edx), %ecx
	cmpl	%eax, %ecx
	jge	.L59
	movl	%ecx, 40(%edx)
.L59:
	rep
	ret
	.cfi_endproc
.LFE1285:
	.size	_ZN7XEngine9update_vpEi, .-_ZN7XEngine9update_vpEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine10deg_to_radEi
	.type	_ZN7XEngine10deg_to_radEi, @function
_ZN7XEngine10deg_to_radEi:
.LFB1286:
	.cfi_startproc
	fildl	8(%esp)
	fmull	.LC3
	ret
	.cfi_endproc
.LFE1286:
	.size	_ZN7XEngine10deg_to_radEi, .-_ZN7XEngine10deg_to_radEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine17setup_screen_dataEv
	.type	_ZN7XEngine17setup_screen_dataEv, @function
_ZN7XEngine17setup_screen_dataEv:
.LFB1288:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	movl	16(%ebx), %eax
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	24(%ebx), %esi
	cmpl	28(%ebx), %esi
	movl	%eax, 24(%esp)
	movl	%eax, 176(%ebx)
	jg	.L64
	leal	(%esi,%esi,2), %edi
	sall	$2, %edi
	.p2align 4,,7
	.p2align 3
.L65:
	fildl	120(%ebx)
	fstpl	8(%esp)
	movl	16(%ebx), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	movl	%esi, %edx
	sarl	%eax
	addl	$1, %esi
	subl	%eax, %edx
	movl	%edx, 28(%esp)
	fildl	28(%esp)
	fstpl	(%esp)
	call	atan2
	movl	24(%esp), %eax
	leal	36(%esp), %edx
	fstps	(%eax,%edi)
	movl	176(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%eax, %ebp
	addl	%edi, %ebp
	addl	$12, %edi
	movl	%eax, 24(%esp)
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	sincosf
	movl	36(%esp), %eax
	cmpl	%esi, 28(%ebx)
	movl	%eax, 4(%ebp)
	movl	40(%esp), %eax
	movl	%eax, 8(%ebp)
	jge	.L65
.L64:
	movl	16(%ebx), %eax
	sall	$5, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 180(%ebx)
	movl	20(%ebx), %eax
	movl	%eax, 168(%ebx)
	leal	4(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	168(%ebx), %esi
	testl	%esi, %esi
	movl	%eax, %edi
	movl	%eax, 164(%ebx)
	jle	.L63
	movl	$1, %esi
	.p2align 4,,7
	.p2align 3
.L68:
	leal	0(,%esi,4), %eax
	addl	%eax, %edi
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%edi)
	fildl	148(%ebx)
	xorl	%eax, %eax
	movl	%esi, 28(%esp)
	movl	164(%ebx), %edi
	fildl	28(%esp)
	fdivrp	%st, %st(1)
	movl	(%edi,%esi,4), %edx
	fnstcw	34(%esp)
	movzwl	34(%esp), %ecx
	movb	$12, %ch
	movw	%cx, 32(%esp)
	fldz
	.p2align 4,,7
	.p2align 3
.L67:
	fldcw	32(%esp)
	fistl	(%edx,%eax,4)
	fldcw	34(%esp)
	addl	$1, %eax
	cmpl	%esi, %eax
	fadd	%st(1), %st
	jne	.L67
	fstp	%st(0)
	fstp	%st(0)
	addl	$1, %esi
	cmpl	%esi, 168(%ebx)
	jge	.L68
.L63:
	addl	$60, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1288:
	.size	_ZN7XEngine17setup_screen_dataEv, .-_ZN7XEngine17setup_screen_dataEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%s%d.ppm"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	.type	_ZN7XEngine18gen_light_texturesEPPPjiPKc, @function
_ZN7XEngine18gen_light_texturesEPPPjiPKc:
.LFB1290:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$284, %esp
	.cfi_def_cfa_offset 304
	movl	312(%esp), %ebp
	movl	308(%esp), %edx
	movl	316(%esp), %ecx
	movl	%gs:20, %eax
	movl	%eax, 268(%esp)
	xorl	%eax, %eax
	movl	304(%esp), %esi
	testl	%ebp, %ebp
	movl	%edx, 36(%esp)
	movl	%ecx, 52(%esp)
	je	.L71
	xorl	%ebp, %ebp
.L76:
	movl	52(%esp), %edx
	addl	$1, %ebp
	leal	68(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%ebp, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$.LC4, 12(%esp)
	movl	$200, 8(%esp)
	movl	$1, 4(%esp)
	call	__sprintf_chk
	movl	80(%esi), %eax
	leal	68(%esp), %ecx
	movl	(%eax), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	*8(%edx)
	movl	80(%esi), %eax
	movl	8(%eax), %eax
	movl	%eax, 48(%esp)
	movl	76(%esi), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	76(%esi), %edi
	movl	36(%esp), %edx
	testl	%edi, %edi
	movl	%eax, -4(%edx,%ebp,4)
	jle	.L73
	movl	$1, %edi
	.p2align 4,,7
	.p2align 3
.L75:
	leal	-1(%edi), %ebx
	leal	(%eax,%ebx,4), %edx
	movl	%edx, 32(%esp)
	movl	$16384, (%esp)
	call	_Znaj
	movl	32(%esp), %edx
	movl	36(%esp), %ecx
	movl	%eax, (%edx)
	movl	-4(%ecx,%ebp,4), %eax
	movl	48(%esp), %edx
	movl	(%eax,%ebx,4), %ebx
	movl	%edx, 4(%esp)
	movl	$16384, 8(%esp)
	movl	%ebx, (%esp)
	call	memcpy
	imull	$300, %edi, %eax
	movl	$0, %ecx
	leal	16384(%ebx), %edx
	movl	%ebp, 40(%esp)
	movl	%edx, %ebp
	movl	%edi, 44(%esp)
	movl	%eax, 60(%esp)
	fildl	60(%esp)
	fdivs	152(%esi)
	fnstcw	58(%esp)
	movzwl	58(%esp), %eax
	movb	$12, %ah
	movw	%ax, 56(%esp)
	fsubrs	.LC5
	fmuls	.LC6
	fldcw	56(%esp)
	fistpl	60(%esp)
	fldcw	58(%esp)
	movl	60(%esp), %eax
	testl	%eax, %eax
	cmovs	%ecx, %eax
	movl	%eax, %edi
	movl	%esi, %eax
	jmp	.L74
	.p2align 4,,7
	.p2align 3
.L78:
	movl	%esi, %ebx
.L74:
	movl	%edi, 8(%esp)
	leal	4(%ebx), %esi
	movl	%ebx, 4(%esp)
	movl	4(%eax), %edx
	movl	%eax, 32(%esp)
	movl	%edx, (%esp)
	call	_ZN14XScreenRgbInfo12light_nativeEPhi
	cmpl	%ebp, %esi
	movl	32(%esp), %eax
	jne	.L78
	movl	44(%esp), %edi
	movl	%eax, %esi
	movl	40(%esp), %ebp
	addl	$1, %edi
	cmpl	%edi, 76(%eax)
	jl	.L73
	movl	36(%esp), %edx
	movl	-4(%edx,%ebp,4), %eax
	jmp	.L75
.L73:
	movl	80(%esi), %eax
	movl	(%eax), %edx
	movl	%eax, (%esp)
	call	*12(%edx)
	cmpl	%ebp, 312(%esp)
	jne	.L76
.L71:
	movl	268(%esp), %ecx
	xorl	%gs:20, %ecx
	jne	.L81
	addl	$284, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
.L81:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE1290:
	.size	_ZN7XEngine18gen_light_texturesEPPPjiPKc, .-_ZN7XEngine18gen_light_texturesEPPPjiPKc
	.section	.rodata.str1.1
.LC8:
	.string	"xwall"
.LC9:
	.string	"ywall"
.LC10:
	.string	"floor"
.LC11:
	.string	"ceiling"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine14setup_texturesEv
	.type	_ZN7XEngine14setup_texturesEv, @function
_ZN7XEngine14setup_texturesEv:
.LFB1289:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	flds	.LC7
	fdivrs	152(%ebx)
	movl	$64, 68(%ebx)
	movl	$64, 72(%ebx)
	fnstcw	30(%esp)
	movzwl	30(%esp), %eax
	movb	$12, %ah
	movw	%ax, 28(%esp)
	fadds	.LC5
	fldcw	28(%esp)
	fistpl	76(%ebx)
	fldcw	30(%esp)
	movl	$8, (%esp)
	call	_Znaj
	movl	%eax, 52(%ebx)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	$.LC8, 12(%esp)
	movl	$2, 8(%esp)
	call	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	movl	$8, (%esp)
	call	_Znaj
	movl	%eax, 56(%ebx)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	$.LC9, 12(%esp)
	movl	$2, 8(%esp)
	call	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	movl	$4, (%esp)
	call	_Znaj
	movl	%eax, 60(%ebx)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	$.LC10, 12(%esp)
	movl	$1, 8(%esp)
	call	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	movl	$4, (%esp)
	call	_Znaj
	movl	%eax, 64(%ebx)
	movl	%ebx, (%esp)
	movl	$.LC11, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE1289:
	.size	_ZN7XEngine14setup_texturesEv, .-_ZN7XEngine14setup_texturesEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine8init_mapEv
	.type	_ZN7XEngine8init_mapEv, @function
_ZN7XEngine8init_mapEv:
.LFB1291:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %ebx
	movl	100(%ebx), %eax
	leal	1(%eax), %edx
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 84(%ebx)
	movl	100(%ebx), %eax
	leal	1(%eax), %edx
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 88(%ebx)
	movl	100(%ebx), %eax
	leal	1(%eax), %edx
	imull	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	84(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset
	movl	100(%ebx), %eax
	leal	1(%eax), %edx
	imull	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	88(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset
	movl	100(%ebx), %eax
	testl	%eax, %eax
	je	.L87
	leal	4(,%eax,4), %edx
	movl	%eax, %edi
	movl	84(%ebx), %ecx
	leal	-1(%eax), %ebp
	xorl	%esi, %esi
	movl	%edx, 24(%esp)
	imull	%eax, %edi
	movl	88(%ebx), %edx
	movl	%ebx, 28(%esp)
	imull	%eax, %ebp
	movl	24(%esp), %ebx
	.p2align 4,,7
	.p2align 3
.L86:
	addl	$1, %esi
	movl	$1, (%ecx)
	movl	$1, 4(%ecx)
	movl	$1, (%ecx,%eax,4)
	movl	$1, -4(%ecx,%eax,4)
	addl	%ebx, %ecx
	movl	$1, (%edx)
	movl	$1, (%edx,%eax,4)
	movl	$1, (%edx,%edi,4)
	movl	$1, (%edx,%ebp,4)
	addl	$4, %edx
	cmpl	%eax, %esi
	jne	.L86
	cmpl	$2, %eax
	movl	28(%esp), %ebx
	je	.L88
.L87:
	movl	$2, 24(%esp)
	movl	$1717986919, %ebp
	.p2align 4,,7
	.p2align 3
.L85:
	movl	24(%esp), %edi
	movl	$1, %esi
	movl	24(%esp), %edx
	subl	$1, %edi
	cmpl	$2, %eax
	movl	%edx, 28(%esp)
	movl	$1, %edx
	jne	.L97
	jmp	.L92
	.p2align 4,,7
	.p2align 3
.L89:
	movl	100(%ebx), %eax
	addl	$1, %esi
	leal	-1(%eax), %edx
	cmpl	%esi, %edx
	je	.L92
.L97:
	call	rand
	movl	%eax, %ecx
	imull	%ebp
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	%edx
	subl	%eax, %edx
	leal	(%edx,%edx,4), %eax
	cmpl	%eax, %ecx
	jne	.L89
	movl	100(%ebx), %edx
	movl	84(%ebx), %eax
	addl	$1, %edx
	imull	%edi, %edx
	addl	%esi, %edx
	leal	(%eax,%edx,4), %edx
	movl	%edx, 20(%esp)
	call	rand
	movl	20(%esp), %edx
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	andl	$1, %eax
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, (%edx)
	movl	100(%ebx), %eax
	addl	$1, %eax
	imull	%edi, %eax
	leal	1(%esi,%eax), %edx
	movl	84(%ebx), %eax
	leal	(%eax,%edx,4), %edx
	movl	%edx, 20(%esp)
	call	rand
	movl	20(%esp), %edx
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	andl	$1, %eax
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, (%edx)
	movl	100(%ebx), %edx
	movl	88(%ebx), %eax
	imull	%edi, %edx
	addl	%esi, %edx
	leal	(%eax,%edx,4), %edx
	movl	%edx, 20(%esp)
	call	rand
	movl	20(%esp), %edx
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	andl	$1, %eax
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, (%edx)
	movl	24(%esp), %edx
	imull	100(%ebx), %edx
	movl	88(%ebx), %eax
	addl	%esi, %edx
	leal	(%eax,%edx,4), %edx
	movl	%edx, 20(%esp)
	call	rand
	movl	20(%esp), %edx
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	andl	$1, %eax
	subl	%ecx, %eax
	addl	$1, %eax
	addl	$1, %esi
	movl	%eax, (%edx)
	movl	100(%ebx), %eax
	leal	-1(%eax), %edx
	cmpl	%esi, %edx
	jne	.L97
.L92:
	addl	$1, 24(%esp)
	cmpl	28(%esp), %edx
	jne	.L85
	movl	%eax, %edi
	imull	%eax, %edi
.L88:
	sall	$2, %edi
	movl	%edi, (%esp)
	call	_Znaj
	movl	%eax, 92(%ebx)
	movl	100(%ebx), %eax
	imull	%eax, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	100(%ebx), %ecx
	testl	%ecx, %ecx
	movl	%eax, 96(%ebx)
	je	.L83
	movl	92(%ebx), %edi
	xorl	%esi, %esi
	.p2align 4,,7
	.p2align 3
.L93:
	xorl	%edx, %edx
	.p2align 4,,7
	.p2align 3
.L95:
	imull	%esi, %ecx
	addl	%edx, %ecx
	movl	$0, (%edi,%ecx,4)
	movl	100(%ebx), %ecx
	imull	%esi, %ecx
	addl	%edx, %ecx
	addl	$1, %edx
	movl	$0, (%eax,%ecx,4)
	movl	100(%ebx), %ecx
	cmpl	%edx, %ecx
	jne	.L95
	addl	$1, %esi
	cmpl	%ecx, %esi
	jne	.L93
.L83:
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1291:
	.size	_ZN7XEngine8init_mapEv, .-_ZN7XEngine8init_mapEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9init_dataEv
	.type	_ZN7XEngine9init_dataEv, @function
_ZN7XEngine9init_dataEv:
.LFB1287:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	16(%ebx), %ecx
	movl	$20, 24(%ebx)
	movl	$20, 32(%ebx)
	leal	-21(%ecx), %eax
	subl	$40, %ecx
	movl	%eax, 28(%ebx)
	movl	20(%ebx), %eax
	movl	%ecx, 44(%ebx)
	leal	-21(%eax), %edx
	movl	%edx, 36(%ebx)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	subl	$40, %eax
	sarl	%edx
	movl	%edx, 40(%ebx)
	movl	%eax, 48(%ebx)
	movl	%ebx, (%esp)
	call	_ZN7XEngine8init_mapEv
	movl	16(%ebx), %eax
	movl	$96, 112(%ebx)
	movl	$96, 108(%ebx)
	movl	$9, 128(%ebx)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	$9, 124(%ebx)
	movl	$0x00000000, 132(%ebx)
	movl	$0x3d6147ae, 136(%ebx)
	movl	$32, 116(%ebx)
	movl	%eax, 24(%esp)
	fildl	24(%esp)
	fdivl	.LC13
	fnstcw	22(%esp)
	movzwl	22(%esp), %eax
	movb	$12, %ah
	movw	%ax, 20(%esp)
	movl	100(%ebx), %ecx
	movl	104(%ebx), %edx
	leal	(%ecx,%ecx), %eax
	imull	%edx, %eax
	imull	%ecx, %edx
	imull	%edx, %eax
	fldcw	20(%esp)
	fistpl	120(%ebx)
	fldcw	22(%esp)
	movl	%eax, 24(%esp)
	fildl	24(%esp)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L106
	fstp	%st(1)
.L104:
	fstps	152(%ebx)
	movl	%ebx, (%esp)
	call	_ZN7XEngine14setup_texturesEv
	movl	%ebx, 48(%esp)
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	jmp	_ZN7XEngine17setup_screen_dataEv
.L106:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L104
	.cfi_endproc
.LFE1287:
	.size	_ZN7XEngine9init_dataEv, .-_ZN7XEngine9init_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngineC2EiiP14XScreenRgbInfo
	.type	_ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1279:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1279
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%ebx, 60(%esp)
	movl	80(%esp), %ebx
	.cfi_offset 3, -20
	movl	%edi, 68(%esp)
	movl	92(%esp), %edi
	.cfi_offset 7, -12
	movl	88(%esp), %edx
	movl	%esi, 64(%esp)
	movl	%ebp, 72(%esp)
	movl	84(%esp), %ebp
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$_ZTV7XEngine+8, (%ebx)
	movl	$50, 100(%ebx)
	movl	$64, 104(%ebx)
	movl	$64, 148(%ebx)
	movl	$60, 172(%ebx)
	movl	%edi, 4(%ebx)
	movl	%edx, 44(%esp)
	movl	$20, (%esp)
.LEHB0:
	call	_Znwj
.LEHE0:
	movl	44(%esp), %edx
	movl	%eax, %esi
	movsbl	4(%edi), %eax
	movl	%eax, 16(%esp)
	movl	(%edi), %eax
	movl	%edx, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 12(%esp)
.LEHB1:
	call	_ZN11XRasterizerC1EiiPhc
.LEHE1:
	movl	12(%esi), %eax
	movl	%esi, 8(%ebx)
	movl	%eax, 12(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 16(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 20(%ebx)
	movl	$40, (%esp)
.LEHB2:
	call	_Znwj
	movl	64(%esp), %esi
	movl	72(%esp), %ebp
	movl	%edi, 4(%eax)
	movl	68(%esp), %edi
	movl	$0, 8(%eax)
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	movl	%eax, 80(%ebx)
	movl	%ebx, 80(%esp)
	movl	60(%esp), %ebx
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 3
	jmp	_ZN7XEngine9init_dataEv
.L109:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE1279:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1279:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1279-.LLSDACSB1279
.LLSDACSB1279:
	.uleb128 .LEHB0-.LFB1279
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1279
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L109-.LFB1279
	.uleb128 0
	.uleb128 .LEHB2-.LFB1279
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1279:
	.text
	.size	_ZN7XEngineC2EiiP14XScreenRgbInfo, .-_ZN7XEngineC2EiiP14XScreenRgbInfo
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12compute_viewEv
	.type	_ZN7XEngine12compute_viewEv, @function
_ZN7XEngine12compute_viewEv:
.LFB1292:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$172, %esp
	.cfi_def_cfa_offset 192
	movl	192(%esp), %ebx
	leal	156(%esp), %eax
	leal	152(%esp), %edx
	movl	104(%ebx), %ecx
	movl	%ecx, 44(%esp)
	fildl	44(%esp)
	fsts	60(%esp)
	fdivrs	.LC5
	fstps	52(%esp)
	flds	132(%ebx)
	fsts	104(%esp)
	fstps	(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	sincosf
	movl	36(%ebx), %ecx
	movl	32(%ebx), %esi
	movl	%ecx, 80(%esp)
	addl	$1, %ecx
	movl	%ecx, 96(%esp)
	flds	152(%esp)
	fsts	84(%esp)
	flds	156(%esp)
	movl	%ecx, 156(%ebx)
	movl	24(%ebx), %ecx
	fsts	88(%esp)
	fxch	%st(1)
	movl	%esi, 92(%esp)
	subl	$1, %esi
	cmpl	28(%ebx), %ecx
	fstps	140(%ebx)
	fstps	144(%ebx)
	movl	%esi, 100(%esp)
	movl	%esi, 160(%ebx)
	movl	%ecx, 76(%esp)
	jg	.L110
	movl	68(%ebx), %esi
	movl	108(%ebx), %eax
	movl	120(%ebx), %ecx
	movl	148(%ebx), %edx
	movl	%esi, 108(%esp)
	movl	168(%ebx), %esi
	movl	%eax, 64(%esp)
	movl	112(%ebx), %eax
	movl	%esi, 112(%esp)
	movl	100(%ebx), %esi
	movl	%eax, 68(%esp)
	fildl	68(%esp)
	fstps	120(%esp)
	movl	%esi, 36(%esp)
	movl	76(%esp), %esi
	fildl	64(%esp)
	fstps	116(%esp)
	fildl	40(%ebx)
	leal	(%esi,%esi,2), %eax
	movl	176(%ebx), %esi
	sall	$2, %eax
	fstps	128(%esp)
	addl	%esi, %eax
	movl	76(%esp), %esi
	movl	%eax, 56(%esp)
	movl	180(%ebx), %eax
	movl	%edx, 140(%esp)
	fildl	140(%esp)
	sall	$5, %esi
	addl	%eax, %esi
	movl	%ecx, %eax
	imull	%edx, %eax
	movl	%esi, 48(%esp)
	movl	36(%esp), %esi
	fstps	124(%esp)
	movl	%eax, 140(%esp)
	movl	116(%ebx), %eax
	fildl	140(%esp)
	addl	$1, %esi
	fstps	132(%esp)
	movl	%esi, 40(%esp)
	imull	%ecx, %eax
	movl	%eax, 140(%esp)
	fildl	140(%esp)
	fnstcw	146(%esp)
	fstps	136(%esp)
	movzwl	146(%esp), %eax
	movb	$12, %ah
	movw	%ax, 144(%esp)
	.p2align 4,,7
	.p2align 3
.L153:
	movl	56(%esp), %ecx
	flds	4(%ecx)
	fstps	72(%esp)
	flds	8(%ecx)
	flds	88(%esp)
	fmuls	72(%esp)
	flds	84(%esp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	flds	84(%esp)
	fmuls	72(%esp)
	fxch	%st(2)
	fmuls	88(%esp)
	fsubrp	%st, %st(2)
	fld1
	fld	%st(0)
	fdiv	%st(2), %st
	fxch	%st(1)
	fdiv	%st(3), %st
	fxch	%st(2)
	fdivp	%st, %st(3)
	fldz
	fxch	%st(3)
	fucomi	%st(3), %st
	fstp	%st(3)
	jp	.L112
	movl	56(%esp), %ecx
	flds	.LC14
	fcmovne	%st(3), %st
	fstp	%st(3)
.L112:
	flds	104(%esp)
	fadds	(%ecx)
	fldz
	fucomip	%st(1), %st
	jbe	.L114
	fldl	.LC0
	faddp	%st, %st(1)
	fstps	148(%esp)
	flds	148(%esp)
.L114:
	fldl	.LC0
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L189
	fsubp	%st, %st(1)
	fstps	148(%esp)
	flds	148(%esp)
	jmp	.L116
	.p2align 4,,7
	.p2align 3
.L189:
	fstp	%st(1)
.L116:
	movl	64(%esp), %eax
	fldl	.LC15
	movl	%eax, %edx
	sarl	$31, %edx
	fucomip	%st(1), %st
	jae	.L118
	fldl	.LC16
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jae	.L118
	idivl	44(%esp)
	flds	60(%esp)
	movl	$-1, %esi
	movl	44(%esp), %ecx
	fdiv	%st(4), %st
	fsts	24(%esp)
	fldz
	fxch	%st(1)
	imull	%eax, %ecx
	fucomi	%st(1), %st
	fstp	%st(1)
	jbe	.L190
	movl	$-1, %esi
	fchs
	fstps	24(%esp)
	jmp	.L121
	.p2align 4,,7
	.p2align 3
.L190:
	fstp	%st(0)
	jmp	.L121
	.p2align 4,,7
	.p2align 3
.L196:
	fstp	%st(0)
.L121:
	movl	68(%esp), %eax
	fldl	.LC17
	movl	%eax, %edx
	sarl	$31, %edx
	fucomip	%st(1), %st
	fstp	%st(0)
	jb	.L179
	idivl	44(%esp)
	flds	60(%esp)
	movl	$1, %edi
	fmul	%st(3), %st
	fsts	20(%esp)
	fldz
	addl	$1, %eax
	imull	44(%esp), %eax
	fucomip	%st(1), %st
	jbe	.L191
	movl	$1, %edi
	fchs
	fstps	20(%esp)
	jmp	.L126
	.p2align 4,,7
	.p2align 3
.L191:
	fstp	%st(0)
	jmp	.L126
	.p2align 4,,7
	.p2align 3
.L197:
	fstp	%st(0)
.L126:
	flds	60(%esp)
	fmul	%st(2), %st
	fstps	28(%esp)
	fldz
	flds	28(%esp)
	fxch	%st(1)
	fucomip	%st(1), %st
	jbe	.L192
	fchs
	fstps	28(%esp)
	jmp	.L129
	.p2align 4,,7
	.p2align 3
.L192:
	fstp	%st(0)
.L129:
	flds	60(%esp)
	fmul	%st(1), %st
	fstps	32(%esp)
	fldz
	flds	32(%esp)
	fxch	%st(1)
	fucomip	%st(1), %st
	jbe	.L193
	fchs
	fstps	32(%esp)
	jmp	.L131
	.p2align 4,,7
	.p2align 3
.L193:
	fstp	%st(0)
.L131:
	movl	64(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, 140(%esp)
	fildl	140(%esp)
	fmulp	%st, %st(2)
	fldz
	fucomip	%st(2), %st
	jbe	.L133
	fxch	%st(1)
	fchs
	fxch	%st(1)
.L133:
	movl	68(%esp), %edx
	subl	%eax, %edx
	movl	%edx, 140(%esp)
	fildl	140(%esp)
	fmulp	%st, %st(1)
	fldz
	fucomip	%st(1), %st
	jbe	.L135
	fchs
.L135:
	movl	%ecx, %edx
	subl	64(%esp), %edx
	movl	%edx, 140(%esp)
	movl	%eax, %edx
	fildl	140(%esp)
	fmul	%st(3), %st
	subl	68(%esp), %edx
	movl	%edx, 140(%esp)
	fadds	120(%esp)
	fildl	140(%esp)
	fdivp	%st, %st(4)
	fxch	%st(3)
	movl	%ecx, 140(%esp)
	fadds	116(%esp)
	fildl	140(%esp)
	fmuls	52(%esp)
	fldcw	144(%esp)
	fistpl	140(%esp)
	fldcw	146(%esp)
	movl	140(%esp), %edx
	movl	%eax, 140(%esp)
	fildl	140(%esp)
	fmuls	52(%esp)
	fldcw	144(%esp)
	fistpl	140(%esp)
	fldcw	146(%esp)
	movl	140(%esp), %eax
	flds	52(%esp)
	fmul	%st(4), %st
	flds	52(%esp)
	fmul	%st(2), %st
	flds	20(%esp)
	fmuls	52(%esp)
	flds	24(%esp)
	fmuls	52(%esp)
	fxch	%st(5)
	.p2align 4,,7
	.p2align 3
.L183:
	fucomi	%st(6), %st
	jbe	.L194
	fxch	%st(3)
	jmp	.L187
	.p2align 4,,7
	.p2align 3
.L195:
	fxch	%st(3)
	fxch	%st(6)
	fxch	%st(7)
	fxch	%st(6)
.L187:
	fldcw	144(%esp)
	fistl	140(%esp)
	fldcw	146(%esp)
	movl	140(%esp), %ebp
	imull	40(%esp), %ebp
	movl	84(%ebx), %ecx
	addl	%edx, %ebp
	movl	(%ecx,%ebp,4), %ecx
	testl	%ecx, %ecx
	jne	.L186
	fxch	%st(7)
	fadds	20(%esp)
	fxch	%st(6)
	addl	%esi, %edx
	fadds	28(%esp)
	fxch	%st(7)
	fadd	%st(1), %st
	fxch	%st(3)
	fucomi	%st(7), %st
	ja	.L195
	fxch	%st(2)
	fxch	%st(6)
	fxch	%st(7)
	fxch	%st(6)
	jmp	.L182
	.p2align 4,,7
	.p2align 3
.L194:
	fxch	%st(2)
.L182:
	movl	36(%esp), %ecx
	fldcw	144(%esp)
	fistl	140(%esp)
	fldcw	146(%esp)
	movl	140(%esp), %ebp
	imull	%eax, %ecx
	addl	%ecx, %ebp
	movl	88(%ebx), %ecx
	movl	(%ecx,%ebp,4), %ecx
	testl	%ecx, %ecx
	jne	.L188
	fxch	%st(4)
	fadds	24(%esp)
	fxch	%st(2)
	addl	%edi, %eax
	fadds	32(%esp)
	fxch	%st(4)
	fadd	%st(5), %st
	fxch	%st(2)
	fxch	%st(4)
	jmp	.L183
	.p2align 4,,7
	.p2align 3
.L118:
	idivl	44(%esp)
	flds	60(%esp)
	movl	$1, %esi
	movl	44(%esp), %ecx
	fdiv	%st(4), %st
	fstps	24(%esp)
	fldz
	flds	24(%esp)
	fxch	%st(1)
	addl	$1, %eax
	imull	%eax, %ecx
	fucomip	%st(1), %st
	jbe	.L196
	movl	$1, %esi
	fchs
	fstps	24(%esp)
	jmp	.L121
	.p2align 4,,7
	.p2align 3
.L179:
	idivl	44(%esp)
	flds	60(%esp)
	movl	$-1, %edi
	fmul	%st(3), %st
	fsts	20(%esp)
	fldz
	fxch	%st(1)
	imull	44(%esp), %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jbe	.L197
	movl	$-1, %edi
	fchs
	fstps	20(%esp)
	jmp	.L126
	.p2align 4,,7
	.p2align 3
.L186:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fxch	%st(1)
	fldcw	144(%esp)
	fistpl	140(%esp)
	fldcw	146(%esp)
	movl	%ecx, 28(%esp)
	movl	140(%esp), %eax
	movl	52(%ebx), %ebp
	flds	72(%esp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	44(%esp)
	fmulp	%st, %st(1)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	movl	%edx, 20(%esp)
	jnp	.L185
.L143:
	flds	.LC7
	fdivr	%st(1), %st
	fldcw	144(%esp)
	fistpl	140(%esp)
	fldcw	146(%esp)
	movl	140(%esp), %eax
	sall	$2, %eax
	movl	%eax, 24(%esp)
.L141:
	flds	132(%esp)
	fdiv	%st(1), %st
	fldcw	144(%esp)
	fistpl	140(%esp)
	fldcw	146(%esp)
	movl	140(%esp), %eax
	testl	%eax, %eax
	je	.L161
	movl	%eax, 140(%esp)
	fildl	140(%esp)
	fxch	%st(1)
.L147:
	fdivrs	136(%esp)
	xorl	%edi, %edi
	fadds	128(%esp)
	fldcw	144(%esp)
	fistpl	140(%esp)
	fldcw	146(%esp)
	movl	140(%esp), %esi
	fdivrs	124(%esp)
	movl	%esi, %edx
	subl	%eax, %edx
	addl	$1, %edx
	cmpl	%edx, 92(%esp)
	fldz
	jle	.L148
	fstp	%st(0)
	movl	92(%esp), %edi
	subl	%edx, %edi
	movl	92(%esp), %edx
	movl	%edi, 140(%esp)
	fildl	140(%esp)
	fmul	%st(1), %st
.L148:
	cmpl	80(%esp), %esi
	cmovg	80(%esp), %esi
	cmpl	96(%esp), %edx
	jge	.L149
	movl	%edx, 156(%ebx)
.L149:
	cmpl	100(%esp), %esi
	jle	.L150
	movl	%esi, 160(%ebx)
.L150:
	movl	48(%esp), %ecx
	movl	%esi, 4(%ecx)
	movl	28(%esp), %esi
	movl	%edx, (%ecx)
	movl	20(%esp), %edx
	imull	108(%esp), %edx
	movl	-4(%ebp,%esi,4), %ecx
	movl	24(%esp), %esi
	sall	$2, %edx
	addl	(%ecx,%esi), %edx
	movl	48(%esp), %ecx
	cmpl	112(%esp), %eax
	movl	%edx, 8(%ecx)
	jle	.L151
	flds	.LC18
	xorl	%eax, %eax
	fmul	%st, %st(1)
	fxch	%st(1)
	fldcw	144(%esp)
	fistpl	12(%ecx)
	fldcw	146(%esp)
	fmulp	%st, %st(1)
	fldcw	144(%esp)
	fistpl	16(%ecx)
	fldcw	146(%esp)
	movl	48(%esp), %ecx
.L152:
	addl	$1, 76(%esp)
	movl	76(%esp), %esi
	movl	%eax, 28(%ecx)
	addl	$32, %ecx
	addl	$12, 56(%esp)
	cmpl	%esi, 28(%ebx)
	movl	%ecx, 48(%esp)
	jl	.L110
	movl	156(%ebx), %ecx
	movl	160(%ebx), %esi
	movl	%ecx, 96(%esp)
	movl	%esi, 100(%esp)
	jmp	.L153
	.p2align 4,,7
	.p2align 3
.L188:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(5)
	fstp	%st(0)
	fstp	%st(2)
	fstp	%st(0)
	fldcw	144(%esp)
	fistpl	140(%esp)
	fldcw	146(%esp)
	movl	%ecx, 28(%esp)
	movl	140(%esp), %eax
	movl	56(%ebx), %ebp
	fmuls	72(%esp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	44(%esp)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	movl	%edx, 20(%esp)
	jp	.L143
.L185:
	jne	.L143
	fstp	%st(0)
	movl	$0, 24(%esp)
	fld1
	jmp	.L141
	.p2align 4,,7
	.p2align 3
.L161:
	fld1
	fxch	%st(1)
	movl	$1, %eax
	jmp	.L147
	.p2align 4,,7
	.p2align 3
.L151:
	fstp	%st(0)
	fstp	%st(0)
	movl	164(%ebx), %edx
	movl	%ecx, %esi
	movl	(%edx,%eax,4), %ecx
	movl	$1, %eax
	leal	(%ecx,%edi,4), %edi
	movl	%esi, %ecx
	movl	%edi, 20(%esi)
	jmp	.L152
.L110:
	addl	$172, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1292:
	.size	_ZN7XEngine12compute_viewEv, .-_ZN7XEngine12compute_viewEv
	.section	.rodata.str1.1
.LC19:
	.string	"ciao"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine11render_viewEv
	.type	_ZN7XEngine11render_viewEv, @function
_ZN7XEngine11render_viewEv:
.LFB1293:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$108, %esp
	.cfi_def_cfa_offset 128
	movl	128(%esp), %ebx
	movl	24(%ebx), %ecx
	movl	176(%ebx), %edi
	leal	(%ecx,%ecx,2), %eax
	leal	(%edi,%eax,4), %eax
	flds	4(%eax)
	fstps	64(%esp)
	flds	8(%eax)
	flds	140(%ebx)
	flds	64(%esp)
	fmul	%st(1), %st
	movl	28(%ebx), %eax
	subl	%ecx, %eax
	flds	144(%ebx)
	fld	%st(0)
	fmul	%st(4), %st
	movl	%eax, 92(%esp)
	movl	32(%ebx), %edx
	movl	16(%ebx), %ebp
	movl	12(%ebx), %esi
	fld	%st(2)
	movl	%edx, %eax
	fsub	%st(1), %st
	imull	%ebp, %eax
	movl	%edx, 44(%esp)
	movl	40(%ebx), %edx
	fstps	68(%esp)
	faddp	%st, %st(2)
	fxch	%st(1)
	addl	%ecx, %eax
	sall	$2, %eax
	fstps	72(%esp)
	addl	%esi, %eax
	fmuls	64(%esp)
	fxch	%st(1)
	movl	%edx, %esi
	cmpl	%edx, 44(%esp)
	movl	%eax, 56(%esp)
	fmulp	%st, %st(2)
	fld	%st(0)
	fadd	%st(2), %st
	fstps	76(%esp)
	fsubp	%st, %st(1)
	fstps	80(%esp)
	fildl	92(%esp)
	fdivrs	.LC5
	fstps	60(%esp)
	jg	.L199
	movl	180(%ebx), %edi
	fnstcw	90(%esp)
	flds	.LC7
	movl	%ecx, 24(%esp)
	movzwl	90(%esp), %eax
	movl	%edi, 84(%esp)
	movb	$12, %ah
	movw	%ax, 88(%esp)
	.p2align 4,,7
	.p2align 3
.L208:
	movl	104(%ebx), %eax
	subl	116(%ebx), %eax
	subl	44(%esp), %edx
	fildl	120(%ebx)
	movl	%eax, 92(%esp)
	fildl	92(%esp)
	movl	%edx, 92(%esp)
	fildl	92(%esp)
	fdivrp	%st, %st(1)
	fmulp	%st, %st(1)
	fdivs	64(%esp)
	fildl	108(%ebx)
	flds	68(%esp)
	fmul	%st(2), %st
	fadd	%st(1), %st
	fildl	112(%ebx)
	flds	76(%esp)
	fmul	%st(4), %st
	fadd	%st(1), %st
	fld	%st(4)
	fdiv	%st(6), %st
	fldcw	88(%esp)
	fistpl	28(%esp)
	fldcw	90(%esp)
	flds	.LC18
	fld	%st(3)
	fmul	%st(1), %st
	fldcw	88(%esp)
	fistpl	92(%esp)
	fldcw	90(%esp)
	movl	92(%esp), %eax
	flds	72(%esp)
	fmul	%st(6), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fsubp	%st, %st(3)
	fxch	%st(2)
	fmuls	60(%esp)
	fmul	%st(3), %st
	fldcw	88(%esp)
	fistpl	36(%esp)
	fldcw	90(%esp)
	fld	%st(1)
	fmul	%st(3), %st
	fldcw	88(%esp)
	fistpl	92(%esp)
	fldcw	90(%esp)
	fxch	%st(3)
	movl	92(%esp), %edx
	fmuls	80(%esp)
	faddp	%st, %st(3)
	fsubrp	%st, %st(2)
	fxch	%st(1)
	fmuls	60(%esp)
	fmulp	%st, %st(1)
	fldcw	88(%esp)
	fistpl	40(%esp)
	fldcw	90(%esp)
	movl	44(%esp), %ecx
	cmpl	%ecx, 156(%ebx)
	movl	44(%ebx), %edi
	jg	.L200
	testl	%edi, %edi
	je	.L202
	movl	28(%esp), %ebp
	subl	$1, %edi
	movl	56(%esp), %esi
	movl	24(%esp), %ecx
	movl	%edi, 24(%esp)
	sall	$2, %ebp
	addl	$4, %esi
	sall	$5, %ecx
	movl	%ebp, 52(%esp)
	addl	84(%esp), %ecx
	movl	%esi, 28(%esp)
	jmp	.L207
	.p2align 4,,7
	.p2align 3
.L228:
	movl	%eax, %ebp
	movl	%edx, %edi
	sarl	$16, %ebp
	movl	%ebp, 32(%esp)
	movl	32(%esp), %esi
	sarl	$16, %edi
	addl	$63, %ebp
	testl	%esi, %esi
	cmovns	32(%esp), %ebp
	leal	63(%edi), %esi
	sarl	$6, %ebp
	testl	%edi, %edi
	cmovns	%edi, %esi
	sarl	$6, %esi
	imull	100(%ebx), %esi
	addl	%ebp, %esi
	movl	96(%ebx), %ebp
	movl	0(%ebp,%esi,4), %ebp
	movl	64(%ebx), %esi
	movl	(%esi,%ebp,4), %esi
	movl	32(%esp), %ebp
	movl	%esi, 48(%esp)
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %edi
	andl	$63, %edi
	subl	%esi, %edi
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %ebp
	andl	$63, %ebp
	subl	%esi, %ebp
	sall	$6, %edi
	addl	%ebp, %edi
	movl	48(%esp), %ebp
	movl	%edi, 32(%esp)
	movl	52(%esp), %edi
	movl	0(%ebp,%edi), %esi
	movl	32(%esp), %edi
	movl	28(%esp), %ebp
	movl	(%esi,%edi,4), %esi
	movl	%esi, -4(%ebp)
.L205:
	subl	$1, 24(%esp)
	addl	$32, %ecx
	addl	36(%esp), %eax
	addl	40(%esp), %edx
	addl	$4, 28(%esp)
	cmpl	$-1, 24(%esp)
	je	.L227
.L207:
	movl	44(%esp), %edi
	cmpl	%edi, (%ecx)
	jg	.L228
	movl	28(%ecx), %esi
	testl	%esi, %esi
	je	.L206
	movl	20(%ecx), %esi
	movl	8(%ecx), %edi
	movl	(%esi), %ebp
	addl	$4, %esi
	movl	(%edi,%ebp,4), %edi
	movl	28(%esp), %ebp
	movl	%edi, -4(%ebp)
	movl	%esi, 20(%ecx)
	jmp	.L205
	.p2align 4,,7
	.p2align 3
.L206:
	movswl	14(%ecx), %edi
	movl	8(%ecx), %esi
	movl	(%esi,%edi,4), %esi
	movl	28(%esp), %edi
	movl	%esi, -4(%edi)
	movl	16(%ecx), %esi
	addl	%esi, 12(%ecx)
	jmp	.L205
	.p2align 4,,7
	.p2align 3
.L227:
	movl	40(%ebx), %esi
	movl	16(%ebx), %ebp
.L202:
	movl	56(%esp), %edx
	addl	$1, 44(%esp)
	cmpl	%esi, 44(%esp)
	leal	(%edx,%ebp,4), %edx
	movl	%edx, 56(%esp)
	jg	.L230
	movl	24(%ebx), %ecx
	movl	%esi, %edx
	movl	%ecx, 24(%esp)
	jmp	.L208
	.p2align 4,,7
	.p2align 3
.L200:
	testl	%edi, %edi
	je	.L202
	subl	$1, %edi
	movl	28(%esp), %ebp
	movl	%edi, 24(%esp)
	movl	96(%ebx), %edi
	movl	64(%ebx), %esi
	movl	%ebx, 28(%esp)
	sall	$2, %ebp
	movl	%edi, 48(%esp)
	movl	56(%esp), %edi
	movl	%esi, 32(%esp)
	movl	%ebp, 52(%esp)
	movl	%edi, 20(%esp)
	.p2align 4,,7
	.p2align 3
.L203:
	movl	%eax, %ebx
	movl	%edx, %ecx
	movl	28(%esp), %edi
	sarl	$16, %ebx
	sarl	$16, %ecx
	testl	%ebx, %ebx
	leal	63(%ebx), %ebp
	cmovns	%ebx, %ebp
	sarl	$6, %ebp
	testl	%ecx, %ecx
	leal	63(%ecx), %esi
	cmovns	%ecx, %esi
	sarl	$6, %esi
	imull	100(%edi), %esi
	movl	32(%esp), %edi
	subl	$1, 24(%esp)
	addl	%ebp, %esi
	movl	48(%esp), %ebp
	movl	0(%ebp,%esi,4), %esi
	movl	(%edi,%esi,4), %ebp
	movl	%edx, %esi
	sarl	$31, %esi
	movl	20(%esp), %edi
	shrl	$26, %esi
	addl	%esi, %ecx
	andl	$63, %ecx
	subl	%esi, %ecx
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$26, %esi
	addl	%esi, %ebx
	andl	$63, %ebx
	subl	%esi, %ebx
	movl	52(%esp), %esi
	sall	$6, %ecx
	addl	%ebx, %ecx
	addl	36(%esp), %eax
	movl	0(%ebp,%esi), %ebx
	addl	40(%esp), %edx
	movl	(%ebx,%ecx,4), %ecx
	movl	%ecx, (%edi)
	addl	$4, %edi
	cmpl	$-1, 24(%esp)
	movl	%edi, 20(%esp)
	jne	.L203
	movl	28(%esp), %ebx
	movl	40(%ebx), %esi
	movl	16(%ebx), %ebp
	jmp	.L202
	.p2align 4,,7
	.p2align 3
.L230:
	fstp	%st(0)
.L199:
	movl	36(%ebx), %eax
	cmpl	44(%esp), %eax
	jl	.L198
	.p2align 4,,7
	.p2align 3
.L224:
	movl	44(%esp), %edx
	fildl	120(%ebx)
	fildl	116(%ebx)
	subl	%esi, %edx
	movl	%edx, 92(%esp)
	fildl	92(%esp)
	fdivrp	%st, %st(1)
	fmulp	%st, %st(1)
	fdivs	64(%esp)
	fildl	108(%ebx)
	flds	68(%esp)
	fmul	%st(2), %st
	fadd	%st(1), %st
	fildl	112(%ebx)
	flds	76(%esp)
	fmul	%st(4), %st
	fnstcw	90(%esp)
	movzwl	90(%esp), %edx
	fadd	%st(1), %st
	flds	.LC7
	movb	$12, %dh
	fdivr	%st(5), %st
	movw	%dx, 88(%esp)
	fldcw	88(%esp)
	fistpl	32(%esp)
	fldcw	90(%esp)
	flds	.LC18
	fld	%st(3)
	fmul	%st(1), %st
	fldcw	88(%esp)
	fistpl	92(%esp)
	fldcw	90(%esp)
	movl	92(%esp), %edi
	flds	72(%esp)
	fmul	%st(6), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fsubp	%st, %st(3)
	fxch	%st(2)
	fmuls	60(%esp)
	fmul	%st(3), %st
	fldcw	88(%esp)
	fistpl	36(%esp)
	fldcw	90(%esp)
	fld	%st(1)
	fmul	%st(3), %st
	fldcw	88(%esp)
	fistpl	92(%esp)
	fldcw	90(%esp)
	fxch	%st(3)
	movl	92(%esp), %esi
	fmuls	80(%esp)
	faddp	%st, %st(3)
	fsubrp	%st, %st(2)
	fxch	%st(1)
	fmuls	60(%esp)
	fmulp	%st, %st(1)
	fldcw	88(%esp)
	fistpl	40(%esp)
	fldcw	90(%esp)
	movl	24(%ebx), %ecx
	movl	180(%ebx), %edx
	movl	%ecx, 28(%esp)
	movl	44(%esp), %ecx
	cmpl	160(%ebx), %ecx
	movl	%edx, 24(%esp)
	movl	44(%ebx), %edx
	jg	.L210
	testl	%edx, %edx
	je	.L212
	movl	28(%esp), %eax
	subl	$1, %edx
	movl	56(%esp), %ecx
	sall	$5, %eax
	addl	24(%esp), %eax
	addl	$4, %ecx
	movl	%edx, 24(%esp)
	movl	32(%esp), %edx
	movl	%ecx, 28(%esp)
	sall	$2, %edx
	movl	%edx, 52(%esp)
	jmp	.L217
	.p2align 4,,7
	.p2align 3
.L229:
	movl	%edi, %edx
	movl	%esi, %ecx
	sarl	$16, %edx
	movl	%edx, %ebp
	sarl	$16, %ecx
	addl	$63, %ebp
	testl	%edx, %edx
	cmovns	%edx, %ebp
	movl	%edx, 32(%esp)
	sarl	$6, %ebp
	testl	%ecx, %ecx
	leal	63(%ecx), %edx
	cmovns	%ecx, %edx
	sarl	$6, %edx
	imull	100(%ebx), %edx
	addl	%ebp, %edx
	movl	92(%ebx), %ebp
	movl	0(%ebp,%edx,4), %ebp
	movl	60(%ebx), %edx
	movl	(%edx,%ebp,4), %edx
	movl	32(%esp), %ebp
	movl	%edx, 48(%esp)
	movl	%esi, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%edx, %ecx
	andl	$63, %ecx
	subl	%edx, %ecx
	movl	%edi, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%edx, %ebp
	andl	$63, %ebp
	subl	%edx, %ebp
	sall	$6, %ecx
	addl	%ebp, %ecx
	movl	48(%esp), %ebp
	movl	%ecx, 32(%esp)
	movl	52(%esp), %ecx
	movl	0(%ebp,%ecx), %edx
	movl	32(%esp), %ecx
	movl	28(%esp), %ebp
	movl	(%edx,%ecx,4), %edx
	movl	%edx, -4(%ebp)
.L215:
	subl	$1, 24(%esp)
	addl	$32, %eax
	addl	36(%esp), %edi
	addl	40(%esp), %esi
	addl	$4, 28(%esp)
	cmpl	$-1, 24(%esp)
	je	.L226
.L217:
	movl	44(%esp), %ebp
	cmpl	4(%eax), %ebp
	jg	.L229
	movl	28(%eax), %ebp
	testl	%ebp, %ebp
	je	.L216
	movl	20(%eax), %edx
	movl	8(%eax), %ecx
	movl	(%edx), %ebp
	addl	$4, %edx
	movl	(%ecx,%ebp,4), %ecx
	movl	28(%esp), %ebp
	movl	%ecx, -4(%ebp)
	movl	%edx, 20(%eax)
	jmp	.L215
	.p2align 4,,7
	.p2align 3
.L216:
	movswl	14(%eax), %ecx
	movl	8(%eax), %edx
	movl	(%edx,%ecx,4), %edx
	movl	28(%esp), %ecx
	movl	%edx, -4(%ecx)
	movl	16(%eax), %edx
	addl	%edx, 12(%eax)
	jmp	.L215
	.p2align 4,,7
	.p2align 3
.L210:
	testl	%edx, %edx
	je	.L212
	movl	32(%esp), %ebp
	movl	%edx, 28(%esp)
	movl	56(%esp), %edx
	sall	$2, %ebp
	movl	%ebp, 32(%esp)
	movl	%edx, 24(%esp)
	.p2align 4,,7
	.p2align 3
.L213:
	movl	$.LC19, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	%edi, %edx
	movl	%esi, %eax
	sarl	$16, %edx
	sarl	$16, %eax
	testl	%edx, %edx
	leal	63(%edx), %ebp
	cmovns	%edx, %ebp
	sarl	$6, %ebp
	testl	%eax, %eax
	leal	63(%eax), %ecx
	cmovns	%eax, %ecx
	sarl	$6, %ecx
	imull	100(%ebx), %ecx
	addl	%ebp, %ecx
	movl	92(%ebx), %ebp
	movl	0(%ebp,%ecx,4), %ebp
	movl	60(%ebx), %ecx
	movl	(%ecx,%ebp,4), %ebp
	movl	%esi, %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	addl	%ecx, %eax
	andl	$63, %eax
	subl	%ecx, %eax
	movl	%edi, %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	addl	%ecx, %edx
	andl	$63, %edx
	subl	%ecx, %edx
	movl	32(%esp), %ecx
	sall	$6, %eax
	addl	%edx, %eax
	addl	36(%esp), %edi
	movl	0(%ebp,%ecx), %edx
	movl	24(%esp), %ebp
	addl	40(%esp), %esi
	movl	(%edx,%eax,4), %eax
	movl	%eax, 0(%ebp)
	addl	$4, %ebp
	subl	$1, 28(%esp)
	movl	%ebp, 24(%esp)
	jne	.L213
.L226:
	movl	36(%ebx), %eax
	movl	16(%ebx), %ebp
.L212:
	addl	$1, 44(%esp)
	cmpl	%eax, 44(%esp)
	jg	.L198
	movl	56(%esp), %esi
	leal	(%esi,%ebp,4), %esi
	movl	%esi, 56(%esp)
	movl	40(%ebx), %esi
	jmp	.L224
	.p2align 4,,7
	.p2align 3
.L198:
	addl	$108, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1293:
	.size	_ZN7XEngine11render_viewEv, .-_ZN7XEngine11render_viewEv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1295:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	$_ZNSt8ios_base4InitD1Ev, (%esp)
	call	__cxa_atexit
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1295:
	.size	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, .-_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo
	.weak	_ZTV7XEngine
	.section	.rodata._ZTV7XEngine,"aG",@progbits,_ZTV7XEngine,comdat
	.align 8
	.type	_ZTV7XEngine, @object
	.size	_ZTV7XEngine, 16
_ZTV7XEngine:
	.long	0
	.long	_ZTI7XEngine
	.long	_ZN7XEngineD1Ev
	.long	_ZN7XEngineD0Ev
	.weak	_ZTV14XTextureLoader
	.section	.rodata._ZTV14XTextureLoader,"aG",@progbits,_ZTV14XTextureLoader,comdat
	.align 8
	.type	_ZTV14XTextureLoader, @object
	.size	_ZTV14XTextureLoader, 24
_ZTV14XTextureLoader:
	.long	0
	.long	_ZTI14XTextureLoader
	.long	_ZN14XTextureLoaderD1Ev
	.long	_ZN14XTextureLoaderD0Ev
	.long	__cxa_pure_virtual
	.long	_ZN14XTextureLoader18release_tex_memoryEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weak	_ZTI7XEngine
	.section	.rodata._ZTI7XEngine,"aG",@progbits,_ZTI7XEngine,comdat
	.align 4
	.type	_ZTI7XEngine, @object
	.size	_ZTI7XEngine, 8
_ZTI7XEngine:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS7XEngine
	.weak	_ZTI14XTextureLoader
	.section	.rodata._ZTI14XTextureLoader,"aG",@progbits,_ZTI14XTextureLoader,comdat
	.align 4
	.type	_ZTI14XTextureLoader, @object
	.size	_ZTI14XTextureLoader, 8
_ZTI14XTextureLoader:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS14XTextureLoader
	.weak	_ZTS7XEngine
	.section	.rodata._ZTS7XEngine,"aG",@progbits,_ZTS7XEngine,comdat
	.type	_ZTS7XEngine, @object
	.size	_ZTS7XEngine, 9
_ZTS7XEngine:
	.string	"7XEngine"
	.weak	_ZTS14XTextureLoader
	.section	.rodata._ZTS14XTextureLoader,"aG",@progbits,_ZTS14XTextureLoader,comdat
	.type	_ZTS14XTextureLoader, @object
	.size	_ZTS14XTextureLoader, 17
_ZTS14XTextureLoader:
	.string	"14XTextureLoader"
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.weak	_ZN14XTextureLoaderD1Ev
	.set	_ZN14XTextureLoaderD1Ev,_ZN14XTextureLoaderD2Ev
	.weak	_ZN7XEngineD1Ev
	.set	_ZN7XEngineD1Ev,_ZN7XEngineD2Ev
	.globl	_ZN7XEngineC1EiiP14XScreenRgbInfo
	.set	_ZN7XEngineC1EiiP14XScreenRgbInfo,_ZN7XEngineC2EiiP14XScreenRgbInfo
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1413754136
	.long	1075388923
	.align 8
.LC3:
	.long	-1571644103
	.long	1066524486
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC5:
	.long	1065353216
	.align 4
.LC6:
	.long	1132462080
	.align 4
.LC7:
	.long	1112014848
	.section	.rodata.cst8
	.align 8
.LC13:
	.long	1167078172
	.long	1071806887
	.section	.rodata.cst4
	.align 4
.LC14:
	.long	953267991
	.section	.rodata.cst8
	.align 8
.LC15:
	.long	1413754136
	.long	1073291771
	.align 8
.LC16:
	.long	2134057426
	.long	1074977148
	.align 8
.LC17:
	.long	1413754136
	.long	1074340347
	.section	.rodata.cst4
	.align 4
.LC18:
	.long	1199570944
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
