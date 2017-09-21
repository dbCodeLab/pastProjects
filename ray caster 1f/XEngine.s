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
.LFB1176:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	ret
	.cfi_endproc
.LFE1176:
	.size	_ZN7XEngineD2Ev, .-_ZN7XEngineD2Ev
	.section	.text._ZN7XEngineD0Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7XEngineD0Ev
	.type	_ZN7XEngineD0Ev, @function
_ZN7XEngineD0Ev:
.LFB1178:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	jmp	_ZdlPv
	.cfi_endproc
.LFE1178:
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
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine15update_positionEi
	.type	_ZN7XEngine15update_positionEi, @function
_ZN7XEngine15update_positionEi:
.LFB1280:
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
	flds	84(%ebx)
	fstpl	(%esp)
	call	sincos
	movl	76(%ebx), %eax
	imull	%esi, %eax
	fildl	60(%ebx)
	fnstcw	26(%esp)
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fmull	32(%esp)
	movzwl	26(%esp), %eax
	movb	$12, %ah
	faddp	%st, %st(1)
	movw	%ax, 24(%esp)
	imull	80(%ebx), %esi
	fldcw	24(%esp)
	fistpl	60(%ebx)
	fldcw	26(%esp)
	fildl	64(%ebx)
	movl	%esi, 28(%esp)
	fildl	28(%esp)
	fmull	40(%esp)
	faddp	%st, %st(1)
	fldcw	24(%esp)
	fistpl	64(%ebx)
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
.LFE1280:
	.size	_ZN7XEngine15update_positionEi, .-_ZN7XEngine15update_positionEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12update_angleEi
	.type	_ZN7XEngine12update_angleEi, @function
_ZN7XEngine12update_angleEi:
.LFB1281:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	fildl	20(%esp)
	fmuls	88(%eax)
	fadds	84(%eax)
	fsts	84(%eax)
	fld	%st(0)
	fldl	.LC1
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L20
	fstp	%st(2)
	fxch	%st(1)
	fsubp	%st, %st(1)
	fstps	4(%esp)
	flds	4(%esp)
	fsts	84(%eax)
	jmp	.L13
	.p2align 4,,7
	.p2align 3
.L20:
	fstp	%st(0)
	fstp	%st(0)
.L13:
	fldz
	fucomip	%st(1), %st
	jbe	.L21
	fldl	.LC1
	faddp	%st, %st(1)
	fstps	84(%eax)
	jmp	.L12
	.p2align 4,,7
	.p2align 3
.L21:
	fstp	%st(0)
.L12:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1281:
	.size	_ZN7XEngine12update_angleEi, .-_ZN7XEngine12update_angleEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13update_heightEi
	.type	_ZN7XEngine13update_heightEi, @function
_ZN7XEngine13update_heightEi:
.LFB1282:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	addl	%edx, 68(%eax)
	ret
	.cfi_endproc
.LFE1282:
	.size	_ZN7XEngine13update_heightEi, .-_ZN7XEngine13update_heightEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9update_vpEi
	.type	_ZN7XEngine9update_vpEi, @function
_ZN7XEngine9update_vpEi:
.LFB1283:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	124(%edx), %ecx
	addl	132(%edx), %eax
	cmpl	%ecx, %eax
	movl	%eax, 132(%edx)
	jge	.L24
	movl	%ecx, 132(%edx)
	movl	%ecx, %eax
.L24:
	movl	128(%edx), %ecx
	cmpl	%eax, %ecx
	jge	.L23
	movl	%ecx, 132(%edx)
.L23:
	rep
	ret
	.cfi_endproc
.LFE1283:
	.size	_ZN7XEngine9update_vpEi, .-_ZN7XEngine9update_vpEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine10deg_to_radEi
	.type	_ZN7XEngine10deg_to_radEi, @function
_ZN7XEngine10deg_to_radEi:
.LFB1284:
	.cfi_startproc
	fildl	8(%esp)
	fmull	.LC3
	ret
	.cfi_endproc
.LFE1284:
	.size	_ZN7XEngine10deg_to_radEi, .-_ZN7XEngine10deg_to_radEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine15setup_cols_dataEv
	.type	_ZN7XEngine15setup_cols_dataEv, @function
_ZN7XEngine15setup_cols_dataEv:
.LFB1286:
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
	movl	40(%ebx), %eax
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	116(%ebx), %esi
	cmpl	120(%ebx), %esi
	movl	%eax, 28(%esp)
	movl	%eax, 140(%ebx)
	jg	.L28
	leal	(%esi,%esi,2), %edi
	sall	$2, %edi
	.p2align 4,,7
	.p2align 3
.L29:
	fildl	72(%ebx)
	fstpl	8(%esp)
	movl	40(%ebx), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	movl	%esi, %edx
	sarl	%eax
	addl	$1, %esi
	subl	%eax, %edx
	movl	%edx, 32(%esp)
	fildl	32(%esp)
	fstpl	(%esp)
	call	atan2
	movl	28(%esp), %eax
	leal	36(%esp), %edx
	fstps	(%eax,%edi)
	movl	140(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%eax, %ebp
	addl	%edi, %ebp
	addl	$12, %edi
	movl	%eax, 28(%esp)
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	sincosf
	movl	36(%esp), %eax
	cmpl	%esi, 120(%ebx)
	movl	%eax, 4(%ebp)
	movl	40(%esp), %eax
	movl	%eax, 8(%ebp)
	jge	.L29
.L28:
	movl	40(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 144(%ebx)
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
.LFE1286:
	.size	_ZN7XEngine15setup_cols_dataEv, .-_ZN7XEngine15setup_cols_dataEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"wall.ppm"
.LC5:
	.string	"floor.ppm"
.LC6:
	.string	"ceiling.ppm"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13setup_bitmapsEv
	.type	_ZN7XEngine13setup_bitmapsEv, @function
_ZN7XEngine13setup_bitmapsEv:
.LFB1287:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	32(%ebx), %eax
	movl	$64, 24(%ebx)
	movl	$64, 28(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC4, 4(%esp)
	call	*8(%edx)
	movl	32(%ebx), %eax
	movl	8(%eax), %edx
	movl	%edx, 12(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC5, 4(%esp)
	call	*8(%edx)
	movl	32(%ebx), %eax
	movl	8(%eax), %edx
	movl	%edx, 16(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC6, 4(%esp)
	call	*8(%edx)
	movl	32(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, 20(%ebx)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE1287:
	.size	_ZN7XEngine13setup_bitmapsEv, .-_ZN7XEngine13setup_bitmapsEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine8init_mapEv
	.type	_ZN7XEngine8init_mapEv, @function
_ZN7XEngine8init_mapEv:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	movl	52(%esi), %eax
	imull	%eax, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	52(%esi), %edx
	imull	%edx, %edx
	movl	%eax, 48(%esi)
	movl	$0, 4(%esp)
	sall	$2, %edx
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	memset
	movl	52(%esi), %eax
	testl	%eax, %eax
	je	.L46
	movl	48(%esi), %ecx
	xorl	%edx, %edx
	.p2align 4,,7
	.p2align 3
.L35:
	movl	$1, (%ecx,%edx,4)
	movl	52(%esi), %eax
	leal	-1(%eax), %ebx
	imull	%ebx, %eax
	addl	%edx, %eax
	movl	$1, (%ecx,%eax,4)
	movl	52(%esi), %eax
	imull	%edx, %eax
	addl	$1, %edx
	movl	$1, (%ecx,%eax,4)
	movl	52(%esi), %eax
	imull	%edx, %eax
	movl	$1, -4(%ecx,%eax,4)
	movl	52(%esi), %eax
	cmpl	%edx, %eax
	jne	.L35
	cmpl	$2, %edx
	je	.L32
.L36:
	movl	$1, %ebp
	movl	$1717986919, %edi
	.p2align 4,,7
	.p2align 3
.L44:
	cmpl	$2, %eax
	je	.L45
	movl	$1, %ebx
	.p2align 4,,7
	.p2align 3
.L39:
	call	rand
	movl	%eax, %ecx
	imull	%edi
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	leal	(%edx,%edx,4), %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jne	.L38
	movl	52(%esi), %edx
	movl	48(%esi), %eax
	imull	%ebp, %edx
	addl	%ebx, %edx
	movl	$1, (%eax,%edx,4)
.L38:
	movl	52(%esi), %eax
	addl	$1, %ebx
	leal	-1(%eax), %edx
	cmpl	%ebx, %edx
	jne	.L39
	addl	$1, %ebp
	cmpl	%ebp, %ebx
	jne	.L44
.L32:
	addl	$28, %esp
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
.L45:
	.cfi_restore_state
	jmp	.L45
	.p2align 4,,7
	.p2align 3
.L46:
	xorl	%eax, %eax
	jmp	.L36
	.cfi_endproc
.LFE1288:
	.size	_ZN7XEngine8init_mapEv, .-_ZN7XEngine8init_mapEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9init_dataEv
	.type	_ZN7XEngine9init_dataEv, @function
_ZN7XEngine9init_dataEv:
.LFB1285:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	40(%ebx), %eax
	movl	$20, 116(%ebx)
	movl	$20, 124(%ebx)
	subl	$21, %eax
	movl	%eax, 120(%ebx)
	movl	44(%ebx), %eax
	leal	-21(%eax), %edx
	movl	%edx, 128(%ebx)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 132(%ebx)
	movl	%ebx, (%esp)
	call	_ZN7XEngine8init_mapEv
	movl	40(%ebx), %eax
	movl	$96, 64(%ebx)
	movl	$96, 60(%ebx)
	movl	$15, 80(%ebx)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	$15, 76(%ebx)
	movl	$0x00000000, 84(%ebx)
	movl	$0x3d4ccccd, 88(%ebx)
	movl	$32, 68(%ebx)
	movl	%eax, 24(%esp)
	fildl	24(%esp)
	fdivl	.LC8
	fnstcw	30(%esp)
	movzwl	30(%esp), %eax
	movb	$12, %ah
	movw	%ax, 28(%esp)
	movl	32(%ebx), %eax
	movl	(%eax), %edx
	fldcw	28(%esp)
	fistpl	72(%ebx)
	fldcw	30(%esp)
	movl	$64, 24(%ebx)
	movl	$64, 28(%ebx)
	movl	%eax, (%esp)
	movl	$.LC4, 4(%esp)
	call	*8(%edx)
	movl	32(%ebx), %eax
	movl	8(%eax), %edx
	movl	%edx, 12(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC5, 4(%esp)
	call	*8(%edx)
	movl	32(%ebx), %eax
	movl	8(%eax), %edx
	movl	%edx, 16(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC6, 4(%esp)
	call	*8(%edx)
	movl	32(%ebx), %eax
	movl	52(%ebx), %ecx
	movl	56(%ebx), %edx
	movl	8(%eax), %eax
	movl	%eax, 20(%ebx)
	leal	(%ecx,%ecx), %eax
	imull	%edx, %eax
	imull	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, 24(%esp)
	fildl	24(%esp)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L50
	fstp	%st(1)
.L48:
	fnstcw	30(%esp)
	movzwl	30(%esp), %eax
	movb	$12, %ah
	movw	%ax, 28(%esp)
	fldcw	28(%esp)
	fistpl	104(%ebx)
	fldcw	30(%esp)
	movl	%ebx, 48(%esp)
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	jmp	_ZN7XEngine15setup_cols_dataEv
.L50:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L48
	.cfi_endproc
.LFE1285:
	.size	_ZN7XEngine9init_dataEv, .-_ZN7XEngine9init_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngineC2EiiP14XScreenRgbInfo
	.type	_ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1278:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1278
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
	movl	$50, 52(%ebx)
	movl	$64, 56(%ebx)
	movl	$64, 100(%ebx)
	movl	$60, 136(%ebx)
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
	movl	%eax, 36(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 40(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 44(%ebx)
	movl	$40, (%esp)
.LEHB2:
	call	_Znwj
	movl	64(%esp), %esi
	movl	72(%esp), %ebp
	movl	%edi, 4(%eax)
	movl	68(%esp), %edi
	movl	$0, 8(%eax)
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	movl	%eax, 32(%ebx)
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
.L53:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE1278:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1278:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1278-.LLSDACSB1278
.LLSDACSB1278:
	.uleb128 .LEHB0-.LFB1278
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1278
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L53-.LFB1278
	.uleb128 0
	.uleb128 .LEHB2-.LFB1278
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1278:
	.text
	.size	_ZN7XEngineC2EiiP14XScreenRgbInfo, .-_ZN7XEngineC2EiiP14XScreenRgbInfo
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12compute_viewEv
	.type	_ZN7XEngine12compute_viewEv, @function
_ZN7XEngine12compute_viewEv:
.LFB1289:
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
	movl	56(%ebx), %ebx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, 48(%esp)
	movl	192(%esp), %ebx
	fildl	48(%esp)
	fstps	68(%esp)
	fld1
	flds	68(%esp)
	fdivr	%st(1), %st
	movl	84(%ebx), %eax
	movl	%eax, (%esp)
	fstps	60(%esp)
	fstps	16(%esp)
	call	sincosf
	movl	192(%esp), %esi
	movl	124(%esi), %edi
	movl	116(%esi), %ebp
	flds	152(%esp)
	fsts	88(%esp)
	flds	156(%esp)
	fsts	92(%esp)
	fxch	%st(1)
	fstps	92(%ebx)
	fstps	96(%ebx)
	movl	128(%ebx), %ebx
	movl	%edi, 96(%esp)
	subl	$1, %edi
	movl	%edi, 112(%esp)
	movl	%edi, 112(%esi)
	movl	%ebx, 84(%esp)
	addl	$1, %ebx
	movl	%ebx, 108(%esp)
	movl	%ebx, 108(%esi)
	movl	120(%esi), %ebx
	movl	%ebp, 80(%esp)
	cmpl	%ebx, %ebp
	movl	%ebx, 116(%esp)
	jg	.L54
	movl	60(%esi), %eax
	movl	%esi, %edi
	movl	72(%esi), %edx
	movl	100(%esi), %ecx
	movl	%eax, 56(%esp)
	movl	64(%esi), %eax
	fildl	56(%esp)
	fstps	100(%esp)
	movl	%eax, 64(%esp)
	movl	%edx, %eax
	imull	%ecx, %eax
	fildl	64(%esp)
	fstps	104(%esp)
	movl	%eax, 144(%esp)
	movl	68(%esi), %eax
	fildl	144(%esp)
	fstps	120(%esp)
	imull	%edx, %eax
	movl	%eax, 144(%esp)
	leal	0(%ebp,%ebp,2), %eax
	fildl	144(%esp)
	fstps	124(%esp)
	fildl	132(%esi)
	movl	%ecx, 144(%esp)
	movl	140(%edi), %edx
	fstps	128(%esp)
	movl	12(%esi), %ebx
	movl	52(%edi), %ecx
	movl	24(%esi), %esi
	leal	(%edx,%eax,4), %eax
	fildl	144(%esp)
	addl	$4, %eax
	movl	%eax, 72(%esp)
	leal	0(%ebp,%ebp,4), %eax
	movl	144(%edi), %ebp
	movl	%ebx, 136(%esp)
	movl	48(%edi), %ebx
	sall	$2, %eax
	fnstcw	150(%esp)
	fstps	132(%esp)
	movl	%esi, 140(%esp)
	addl	%ebp, %eax
	movl	%eax, 52(%esp)
	movzwl	150(%esp), %eax
	movb	$12, %ah
	movw	%ax, 148(%esp)
	.p2align 4,,7
	.p2align 3
.L89:
	movl	72(%esp), %esi
	flds	(%esi)
	fstps	76(%esp)
	flds	4(%esi)
	flds	92(%esp)
	fmuls	76(%esp)
	flds	88(%esp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	flds	88(%esp)
	fmuls	76(%esp)
	fxch	%st(2)
	fmuls	92(%esp)
	fsubrp	%st, %st(2)
	fld1
	fdiv	%st(1), %st
	fld1
	fdiv	%st(3), %st
	flds	.LC11
	fmul	%st, %st(4)
	fxch	%st(4)
	fadds	100(%esp)
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	fxch	%st(2)
	movl	144(%esp), %eax
	fmulp	%st, %st(3)
	fxch	%st(2)
	fadds	104(%esp)
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %esi
	subl	64(%esp), %esi
	subl	56(%esp), %eax
	je	.L90
	movl	%eax, 144(%esp)
	fildl	144(%esp)
.L56:
	movl	%esi, 144(%esp)
	fildl	144(%esp)
	fdivp	%st, %st(1)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	.L57
	flds	.LC10
	fcmovne	%st(1), %st
	fstp	%st(1)
.L57:
	testl	%eax, %eax
	movl	56(%esp), %eax
	movl	%eax, %edx
	jle	.L59
	sarl	$31, %edx
	flds	68(%esp)
	idivl	48(%esp)
	movl	48(%esp), %edi
	fdiv	%st(1), %st
	fsts	32(%esp)
	fldz
	addl	$1, %eax
	imull	%eax, %edi
	fucomip	%st(1), %st
	jbe	.L109
	fchs
	fstps	32(%esp)
	movl	$1, 44(%esp)
.L60:
	movl	64(%esp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	48(%esp)
	testl	%esi, %esi
	jle	.L63
	flds	68(%esp)
	addl	$1, %eax
	movl	$1, %ebp
	fmul	%st(1), %st
	imull	48(%esp), %eax
	fsts	28(%esp)
	fldz
	fucomip	%st(1), %st
	jbe	.L118
	movl	$1, %ebp
	fchs
	fstps	28(%esp)
	jmp	.L64
	.p2align 4,,7
	.p2align 3
.L118:
	fstp	%st(0)
	jmp	.L64
	.p2align 4,,7
	.p2align 3
.L123:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L64:
	flds	68(%esp)
	fmul	%st(2), %st
	fsts	36(%esp)
	fldz
	fucomip	%st(1), %st
	jbe	.L119
	fchs
	fstps	36(%esp)
	jmp	.L67
	.p2align 4,,7
	.p2align 3
.L119:
	fstp	%st(0)
.L67:
	flds	68(%esp)
	fmul	%st(3), %st
	fsts	40(%esp)
	fldz
	fucomip	%st(1), %st
	jbe	.L120
	fchs
	fstps	40(%esp)
	jmp	.L69
	.p2align 4,,7
	.p2align 3
.L120:
	fstp	%st(0)
.L69:
	movl	56(%esp), %edx
	subl	%edi, %edx
	movl	%edx, 144(%esp)
	fildl	144(%esp)
	fmulp	%st, %st(2)
	fldz
	fucomip	%st(2), %st
	jbe	.L71
	fxch	%st(1)
	fchs
	fxch	%st(1)
.L71:
	movl	64(%esp), %edx
	subl	%eax, %edx
	movl	%edx, 144(%esp)
	fildl	144(%esp)
	fmulp	%st, %st(3)
	fldz
	fucomip	%st(3), %st
	jbe	.L73
	fxch	%st(2)
	fchs
	fxch	%st(2)
.L73:
	movl	%edi, %edx
	subl	56(%esp), %edx
	movl	%edx, 144(%esp)
	movl	%eax, %edx
	fildl	144(%esp)
	fmul	%st(1), %st
	subl	64(%esp), %edx
	movl	%edx, 144(%esp)
	fadds	104(%esp)
	fildl	144(%esp)
	fdivp	%st, %st(2)
	fxch	%st(1)
	movl	%edi, 144(%esp)
	fadds	100(%esp)
	fildl	144(%esp)
	fmuls	60(%esp)
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %edx
	movl	%eax, 144(%esp)
	fildl	144(%esp)
	fmuls	60(%esp)
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %eax
	flds	60(%esp)
	fmul	%st(2), %st
	flds	60(%esp)
	fmul	%st(2), %st
	flds	28(%esp)
	fmuls	60(%esp)
	flds	32(%esp)
	fmuls	60(%esp)
	fxch	%st(7)
	.p2align 4,,7
	.p2align 3
.L114:
	fucomi	%st(6), %st
	jbe	.L121
	fxch	%st(3)
	jmp	.L116
	.p2align 4,,7
	.p2align 3
.L122:
	fxch	%st(3)
	fxch	%st(5)
	fxch	%st(6)
	fxch	%st(5)
.L116:
	fldcw	148(%esp)
	fistl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %esi
	imull	%ecx, %esi
	addl	%edx, %esi
	movl	(%ebx,%esi,4), %edi
	testl	%edi, %edi
	jne	.L115
	fxch	%st(5)
	fadds	28(%esp)
	fxch	%st(6)
	addl	44(%esp), %edx
	fadds	36(%esp)
	fxch	%st(5)
	fadd	%st(1), %st
	fxch	%st(3)
	fucomi	%st(5), %st
	ja	.L122
	fxch	%st(2)
	fxch	%st(5)
	fxch	%st(6)
	fxch	%st(5)
	jmp	.L113
	.p2align 4,,7
	.p2align 3
.L121:
	fxch	%st(2)
.L113:
	fldcw	148(%esp)
	fistl	144(%esp)
	fldcw	150(%esp)
	movl	%eax, %esi
	imull	%ecx, %esi
	movl	144(%esp), %edi
	addl	%edi, %esi
	movl	(%ebx,%esi,4), %esi
	testl	%esi, %esi
	jne	.L117
	fxch	%st(4)
	fadds	32(%esp)
	fxch	%st(2)
	addl	%ebp, %eax
	fadds	40(%esp)
	fxch	%st(4)
	fadd	%st(7), %st
	fxch	%st(2)
	fxch	%st(4)
	jmp	.L114
	.p2align 4,,7
	.p2align 3
.L115:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(2)
	fxch	%st(1)
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %eax
	flds	76(%esp)
	fmulp	%st, %st(1)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	48(%esp)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	.L79
	fld1
	fcmovne	%st(1), %st
	fstp	%st(1)
.L79:
	flds	120(%esp)
	fdiv	%st(1), %st
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %eax
	testl	%eax, %eax
	je	.L98
	movl	%eax, 144(%esp)
	fildl	144(%esp)
	fxch	%st(1)
.L85:
	fdivrs	124(%esp)
	fadds	128(%esp)
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %esi
	fdivrs	132(%esp)
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	xorl	%edi, %edi
	addl	$1, %eax
	cmpl	%eax, 96(%esp)
	jle	.L86
	movl	96(%esp), %ebp
	subl	%eax, %ebp
	movl	96(%esp), %eax
	movl	%ebp, 144(%esp)
	fildl	144(%esp)
	fmul	%st(1), %st
	fadds	.LC2
	fmuls	.LC12
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %edi
.L86:
	cmpl	84(%esp), %esi
	cmovg	84(%esp), %esi
	cmpl	108(%esp), %eax
	jge	.L87
	movl	192(%esp), %ebp
	movl	%eax, 108(%ebp)
.L87:
	cmpl	112(%esp), %esi
	jle	.L88
	movl	192(%esp), %ebp
	movl	%esi, 112(%esp)
	movl	%esi, 112(%ebp)
.L88:
	movl	52(%esp), %ebp
	imull	140(%esp), %edx
	fmuls	.LC12
	addl	$1, 80(%esp)
	addl	$12, 72(%esp)
	movl	%esi, 4(%ebp)
	movl	136(%esp), %esi
	movl	%eax, 0(%ebp)
	movl	%edi, 12(%ebp)
	movl	80(%esp), %edi
	leal	(%esi,%edx,4), %eax
	movl	%eax, 8(%ebp)
	fldcw	148(%esp)
	fistpl	16(%ebp)
	fldcw	150(%esp)
	addl	$20, %ebp
	cmpl	%edi, 116(%esp)
	movl	%ebp, 52(%esp)
	jl	.L54
	movl	192(%esp), %ebp
	movl	108(%ebp), %ebp
	movl	%ebp, 108(%esp)
	jmp	.L89
	.p2align 4,,7
	.p2align 3
.L98:
	fld1
	fxch	%st(1)
	movl	$1, %eax
	jmp	.L85
	.p2align 4,,7
	.p2align 3
.L117:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(5)
	fstp	%st(0)
	fstp	%st(2)
	fstp	%st(0)
	fldcw	148(%esp)
	fistpl	144(%esp)
	fldcw	150(%esp)
	movl	144(%esp), %eax
	fmuls	76(%esp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	48(%esp)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	.L79
	fld1
	fcmovne	%st(1), %st
	fstp	%st(1)
	jmp	.L79
	.p2align 4,,7
	.p2align 3
.L90:
	fld1
	movl	$1, %eax
	jmp	.L56
	.p2align 4,,7
	.p2align 3
.L109:
	fstp	%st(0)
	movl	$1, 44(%esp)
	jmp	.L60
	.p2align 4,,7
	.p2align 3
.L59:
	sarl	$31, %edx
	flds	68(%esp)
	idivl	48(%esp)
	fdiv	%st(1), %st
	fsts	32(%esp)
	fldz
	fxch	%st(1)
	imull	48(%esp), %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	leal	-1(%eax), %edi
	jbe	.L110
	fchs
	fstps	32(%esp)
	movl	$-1, 44(%esp)
	jmp	.L60
	.p2align 4,,7
	.p2align 3
.L63:
	flds	68(%esp)
	movl	$-1, %ebp
	fmul	%st(1), %st
	imull	48(%esp), %eax
	fsts	28(%esp)
	fldz
	fxch	%st(1)
	subl	$1, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jbe	.L123
	movl	$-1, %ebp
	fchs
	fstps	28(%esp)
	jmp	.L64
	.p2align 4,,7
	.p2align 3
.L110:
	fstp	%st(0)
	movl	$-1, 44(%esp)
	jmp	.L60
.L54:
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
.LFE1289:
	.size	_ZN7XEngine12compute_viewEv, .-_ZN7XEngine12compute_viewEv
	.section	.rodata.str1.1
.LC13:
	.string	"ciao"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine11render_viewEv
	.type	_ZN7XEngine11render_viewEv, @function
_ZN7XEngine11render_viewEv:
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
	subl	$124, %esp
	.cfi_def_cfa_offset 144
	movl	144(%esp), %ebx
	movl	116(%ebx), %ebp
	movl	140(%ebx), %ecx
	movl	120(%ebx), %edi
	leal	0(%ebp,%ebp,2), %eax
	leal	(%ecx,%eax,4), %eax
	flds	4(%eax)
	fstps	60(%esp)
	flds	8(%eax)
	movl	%edi, %eax
	flds	92(%ebx)
	subl	%ebp, %eax
	flds	60(%esp)
	fmul	%st(1), %st
	fstps	76(%esp)
	flds	96(%ebx)
	fld	%st(0)
	fmul	%st(3), %st
	movl	%eax, 108(%esp)
	movl	124(%ebx), %edx
	movl	40(%ebx), %ecx
	movl	20(%ebx), %esi
	fsts	92(%esp)
	fxch	%st(1)
	movl	%edx, %eax
	fmuls	60(%esp)
	movl	%edx, 40(%esp)
	movl	36(%ebx), %edx
	imull	%ecx, %eax
	movl	%ecx, 36(%esp)
	fsts	96(%esp)
	fxch	%st(3)
	addl	%ebp, %eax
	fmulp	%st, %st(2)
	fxch	%st(1)
	sall	$2, %eax
	addl	%edx, %eax
	movl	132(%ebx), %edx
	cmpl	%edx, 40(%esp)
	fsts	100(%esp)
	fildl	108(%esp)
	fdivrs	.LC9
	movl	%edx, %ecx
	movl	%eax, 56(%esp)
	jg	.L156
	flds	76(%esp)
	fsub	%st(3), %st
	movl	144(%ebx), %eax
	fnstcw	106(%esp)
	movl	%edi, 52(%esp)
	fstps	64(%esp)
	fxch	%st(3)
	fadd	%st(1), %st
	movl	%eax, 88(%esp)
	movzwl	106(%esp), %eax
	fstps	68(%esp)
	flds	76(%esp)
	faddp	%st, %st(2)
	fxch	%st(1)
	movb	$12, %ah
	movw	%ax, 104(%esp)
	fstps	72(%esp)
	flds	96(%esp)
	fsubp	%st, %st(1)
	fstps	80(%esp)
	flds	.LC12
	.p2align 4,,7
	.p2align 3
.L133:
	movl	56(%ebx), %eax
	subl	68(%ebx), %eax
	subl	40(%esp), %edx
	fildl	60(%ebx)
	fildl	72(%ebx)
	movl	%eax, 108(%esp)
	fildl	108(%esp)
	movl	%edx, 108(%esp)
	fildl	108(%esp)
	fdivrp	%st, %st(1)
	fmulp	%st, %st(1)
	fdivs	60(%esp)
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	movl	108(%esp), %eax
	movl	%eax, 108(%esp)
	fildl	108(%esp)
	flds	64(%esp)
	fmul	%st(1), %st
	fadd	%st(2), %st
	fildl	64(%ebx)
	flds	68(%esp)
	fmul	%st(3), %st
	fadd	%st(1), %st
	fld	%st(2)
	fmul	%st(6), %st
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	movl	108(%esp), %eax
	flds	72(%esp)
	fmul	%st(4), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fsubp	%st, %st(2)
	fxch	%st(1)
	fmul	%st(5), %st
	fmul	%st(4), %st
	fldcw	104(%esp)
	fistpl	44(%esp)
	fldcw	106(%esp)
	fld	%st(2)
	fmul	%st(4), %st
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	fxch	%st(1)
	movl	108(%esp), %edx
	fmuls	80(%esp)
	faddp	%st, %st(1)
	fsubp	%st, %st(1)
	fmul	%st(2), %st
	fmul	%st(1), %st
	fldcw	104(%esp)
	fistpl	48(%esp)
	fldcw	106(%esp)
	movl	40(%esp), %edi
	cmpl	%edi, 108(%ebx)
	jg	.L126
	cmpl	52(%esp), %ebp
	jg	.L128
	movl	88(%esp), %edi
	leal	0(%ebp,%ebp,4), %ecx
	movl	%esi, 52(%esp)
	movl	%ebp, %esi
	movl	%ebx, 36(%esp)
	leal	(%edi,%ecx,4), %ecx
	movl	56(%esp), %edi
	addl	$4, %edi
	movl	%edi, 84(%esp)
	movl	84(%esp), %ebx
	jmp	.L132
	.p2align 4,,7
	.p2align 3
.L154:
	movl	%edx, %ebp
	movl	%eax, %edi
	shrl	$10, %ebp
	sarl	$16, %edi
	andl	$4032, %ebp
	andl	$63, %edi
	addl	%ebp, %edi
	movl	52(%esp), %ebp
	movl	0(%ebp,%edi,4), %edi
	movl	%edi, -4(%ebx)
.L131:
	movl	36(%esp), %ebp
	addl	$1, %esi
	addl	$20, %ecx
	addl	44(%esp), %eax
	addl	$4, %ebx
	addl	48(%esp), %edx
	movl	120(%ebp), %edi
	cmpl	%esi, %edi
	jl	.L153
.L132:
	movl	40(%esp), %ebp
	cmpl	%ebp, (%ecx)
	jg	.L154
	movswl	14(%ecx), %ebp
	movl	8(%ecx), %edi
	movl	(%edi,%ebp,4), %edi
	movl	%edi, -4(%ebx)
	movl	16(%ecx), %edi
	addl	%edi, 12(%ecx)
	jmp	.L131
	.p2align 4,,7
	.p2align 3
.L153:
	movl	40(%ebp), %eax
	movl	%ebp, %ebx
	movl	132(%ebp), %ecx
	movl	52(%esp), %esi
	movl	%edi, 52(%esp)
	movl	%eax, 36(%esp)
.L128:
	movl	56(%esp), %edi
	movl	36(%esp), %edx
	addl	$1, 40(%esp)
	cmpl	%ecx, 40(%esp)
	leal	(%edi,%edx,4), %edi
	movl	%edi, 56(%esp)
	jg	.L157
	movl	116(%ebx), %ebp
	movl	%ecx, %edx
	jmp	.L133
	.p2align 4,,7
	.p2align 3
.L126:
	cmpl	52(%esp), %ebp
	jg	.L128
	movl	%ebp, %edi
	movl	%ebp, %ecx
	movl	56(%esp), %ebp
	negl	%edi
	leal	0(%ebp,%edi,4), %edi
	movl	%edi, 36(%esp)
	.p2align 4,,7
	.p2align 3
.L129:
	movl	%edx, %ebp
	movl	%eax, %edi
	shrl	$10, %ebp
	sarl	$16, %edi
	andl	$4032, %ebp
	andl	$63, %edi
	addl	%ebp, %edi
	movl	36(%esp), %ebp
	movl	(%esi,%edi,4), %edi
	addl	44(%esp), %eax
	addl	48(%esp), %edx
	movl	%edi, 0(%ebp,%ecx,4)
	movl	120(%ebx), %edi
	addl	$1, %ecx
	cmpl	%ecx, %edi
	jge	.L129
	movl	40(%ebx), %eax
	movl	%edi, 52(%esp)
	movl	132(%ebx), %ecx
	movl	%eax, 36(%esp)
	jmp	.L128
.L156:
	fstp	%st(2)
	fstp	%st(0)
	fstp	%st(1)
	jmp	.L125
	.p2align 4,,7
	.p2align 3
.L157:
	fstp	%st(0)
.L125:
	movl	16(%ebx), %edx
	movl	128(%ebx), %ebp
	cmpl	40(%esp), %ebp
	movl	%edx, 52(%esp)
	jl	.L158
	flds	76(%esp)
	movl	%ecx, %eax
	fsubs	92(%esp)
	movl	36(%esp), %ecx
	fstps	64(%esp)
	flds	96(%esp)
	fadds	100(%esp)
	fstps	68(%esp)
	flds	76(%esp)
	fadds	92(%esp)
	fstps	76(%esp)
	flds	96(%esp)
	fsubs	100(%esp)
	fstps	72(%esp)
	.p2align 4,,7
	.p2align 3
.L143:
	movl	40(%esp), %edx
	fildl	60(%ebx)
	fildl	72(%ebx)
	fildl	68(%ebx)
	subl	%eax, %edx
	movl	%edx, 108(%esp)
	fildl	108(%esp)
	fdivrp	%st, %st(1)
	fnstcw	106(%esp)
	movzwl	106(%esp), %eax
	movb	$12, %ah
	movw	%ax, 104(%esp)
	fmulp	%st, %st(1)
	fdivs	60(%esp)
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	movl	108(%esp), %eax
	movl	%eax, 108(%esp)
	fildl	108(%esp)
	flds	64(%esp)
	fmul	%st(1), %st
	fadd	%st(2), %st
	fildl	64(%ebx)
	flds	68(%esp)
	fmul	%st(3), %st
	fadd	%st(1), %st
	flds	.LC12
	fld	%st(3)
	fmul	%st(1), %st
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	movl	108(%esp), %esi
	flds	76(%esp)
	fmul	%st(5), %st
	faddp	%st, %st(6)
	fxch	%st(5)
	fsubp	%st, %st(3)
	fxch	%st(2)
	fmul	%st(5), %st
	fmul	%st(4), %st
	fldcw	104(%esp)
	fistpl	44(%esp)
	fldcw	106(%esp)
	fld	%st(1)
	fmul	%st(4), %st
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	fxch	%st(2)
	movl	108(%esp), %edi
	fmuls	72(%esp)
	faddp	%st, %st(2)
	fsubrp	%st, %st(1)
	fmul	%st(2), %st
	fmulp	%st, %st(1)
	fldcw	104(%esp)
	fistpl	48(%esp)
	fldcw	106(%esp)
	movl	144(%ebx), %eax
	movl	116(%ebx), %edx
	movl	%eax, 36(%esp)
	movl	40(%esp), %eax
	cmpl	112(%ebx), %eax
	jg	.L135
	cmpl	120(%ebx), %edx
	jg	.L137
	movl	36(%esp), %ebp
	leal	(%edx,%edx,4), %ecx
	movl	%ebx, 36(%esp)
	leal	0(%ebp,%ecx,4), %eax
	movl	56(%esp), %ecx
	addl	$4, %ecx
	jmp	.L142
	.p2align 4,,7
	.p2align 3
.L155:
	movl	%edi, %ebp
	movl	%esi, %ebx
	shrl	$10, %ebp
	sarl	$16, %ebx
	andl	$4032, %ebp
	andl	$63, %ebx
	addl	%ebp, %ebx
	movl	52(%esp), %ebp
	movl	0(%ebp,%ebx,4), %ebx
	movl	%ebx, -4(%ecx)
.L141:
	movl	36(%esp), %ebx
	addl	$1, %edx
	addl	$20, %eax
	addl	44(%esp), %esi
	addl	$4, %ecx
	addl	48(%esp), %edi
	cmpl	%edx, 120(%ebx)
	jl	.L152
.L142:
	movl	40(%esp), %ebx
	cmpl	4(%eax), %ebx
	jg	.L155
	movswl	14(%eax), %ebp
	movl	8(%eax), %ebx
	movl	(%ebx,%ebp,4), %ebx
	movl	%ebx, -4(%ecx)
	movl	16(%eax), %ebx
	addl	%ebx, 12(%eax)
	jmp	.L141
	.p2align 4,,7
	.p2align 3
.L135:
	fstps	16(%esp)
	movl	$.LC13, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	movl	116(%ebx), %eax
	movl	56(%esp), %ecx
	movl	%eax, %edx
	negl	%edx
	cmpl	120(%ebx), %eax
	leal	(%ecx,%edx,4), %ebp
	flds	16(%esp)
	jg	.L152
	movl	%ebp, 36(%esp)
	movl	52(%esp), %ebp
	.p2align 4,,7
	.p2align 3
.L145:
	movl	%edi, %ecx
	movl	%esi, %edx
	shrl	$10, %ecx
	sarl	$16, %edx
	andl	$4032, %ecx
	andl	$63, %edx
	addl	%ecx, %edx
	movl	36(%esp), %ecx
	movl	0(%ebp,%edx,4), %edx
	addl	44(%esp), %esi
	addl	48(%esp), %edi
	movl	%edx, (%ecx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 120(%ebx)
	jge	.L145
.L152:
	movl	128(%ebx), %ebp
	movl	40(%ebx), %ecx
.L137:
	addl	$1, 40(%esp)
	cmpl	%ebp, 40(%esp)
	jg	.L159
	movl	56(%esp), %edi
	movl	132(%ebx), %eax
	leal	(%edi,%ecx,4), %edi
	movl	%edi, 56(%esp)
	jmp	.L143
.L158:
	fstp	%st(0)
	jmp	.L124
	.p2align 4,,7
	.p2align 3
.L159:
	fstp	%st(0)
.L124:
	addl	$124, %esp
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
.LFE1290:
	.size	_ZN7XEngine11render_viewEv, .-_ZN7XEngine11render_viewEv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1292:
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
.LFE1292:
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
	.size	_ZTV14XTextureLoader, 20
_ZTV14XTextureLoader:
	.long	0
	.long	_ZTI14XTextureLoader
	.long	_ZN14XTextureLoaderD1Ev
	.long	_ZN14XTextureLoaderD0Ev
	.long	__cxa_pure_virtual
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
.LC1:
	.long	1413754136
	.long	1075388923
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	0
	.section	.rodata.cst8
	.align 8
.LC3:
	.long	-1571644103
	.long	1066524486
	.align 8
.LC8:
	.long	1167078172
	.long	1071806887
	.section	.rodata.cst4
	.align 4
.LC9:
	.long	1065353216
	.align 4
.LC10:
	.long	967543818
	.align 4
.LC11:
	.long	1149239296
	.align 4
.LC12:
	.long	1199570944
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
