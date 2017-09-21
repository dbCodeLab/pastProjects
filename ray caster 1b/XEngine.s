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
.LFB1277:
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
	flds	68(%ebx)
	fstpl	(%esp)
	call	sincos
	movl	60(%ebx), %eax
	imull	%esi, %eax
	fildl	44(%ebx)
	fnstcw	26(%esp)
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fmull	32(%esp)
	movzwl	26(%esp), %eax
	movb	$12, %ah
	faddp	%st, %st(1)
	movw	%ax, 24(%esp)
	imull	64(%ebx), %esi
	fldcw	24(%esp)
	fistpl	44(%ebx)
	fldcw	26(%esp)
	fildl	48(%ebx)
	movl	%esi, 28(%esp)
	fildl	28(%esp)
	fmull	40(%esp)
	faddp	%st, %st(1)
	fldcw	24(%esp)
	fistpl	48(%ebx)
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
.LFE1277:
	.size	_ZN7XEngine15update_positionEi, .-_ZN7XEngine15update_positionEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12update_angleEi
	.type	_ZN7XEngine12update_angleEi, @function
_ZN7XEngine12update_angleEi:
.LFB1278:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	fildl	20(%esp)
	fmuls	72(%eax)
	fadds	68(%eax)
	fsts	68(%eax)
	fld	%st(0)
	fldl	.LC1
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L15
	fstp	%st(2)
	fxch	%st(1)
	fsubp	%st, %st(1)
	fstps	4(%esp)
	flds	4(%esp)
	fsts	68(%eax)
	jmp	.L8
	.p2align 4,,7
	.p2align 3
.L15:
	fstp	%st(0)
	fstp	%st(0)
.L8:
	fldz
	fucomip	%st(1), %st
	jbe	.L16
	fldl	.LC1
	faddp	%st, %st(1)
	fstps	68(%eax)
	jmp	.L7
	.p2align 4,,7
	.p2align 3
.L16:
	fstp	%st(0)
.L7:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1278:
	.size	_ZN7XEngine12update_angleEi, .-_ZN7XEngine12update_angleEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13update_heightEi
	.type	_ZN7XEngine13update_heightEi, @function
_ZN7XEngine13update_heightEi:
.LFB1279:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	addl	%edx, 52(%eax)
	ret
	.cfi_endproc
.LFE1279:
	.size	_ZN7XEngine13update_heightEi, .-_ZN7XEngine13update_heightEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9update_vpEi
	.type	_ZN7XEngine9update_vpEi, @function
_ZN7XEngine9update_vpEi:
.LFB1280:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	92(%edx), %ecx
	addl	100(%edx), %eax
	cmpl	%ecx, %eax
	movl	%eax, 100(%edx)
	jge	.L19
	movl	%ecx, 100(%edx)
	movl	%ecx, %eax
.L19:
	movl	96(%edx), %ecx
	cmpl	%eax, %ecx
	jge	.L18
	movl	%ecx, 100(%edx)
.L18:
	rep
	ret
	.cfi_endproc
.LFE1280:
	.size	_ZN7XEngine9update_vpEi, .-_ZN7XEngine9update_vpEi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"wall.ppm"
.LC4:
	.string	"floor.ppm"
.LC5:
	.string	"ceiling.ppm"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12load_bitmapsEv
	.type	_ZN7XEngine12load_bitmapsEv, @function
_ZN7XEngine12load_bitmapsEv:
.LFB1281:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	8(%ebx), %eax
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC3, 4(%esp)
	call	*8(%edx)
	movl	12(%ebx), %eax
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC4, 4(%esp)
	call	*8(%edx)
	movl	16(%ebx), %eax
	movl	(%eax), %edx
	movl	$.LC5, 4(%esp)
	movl	%eax, (%esp)
	call	*8(%edx)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE1281:
	.size	_ZN7XEngine12load_bitmapsEv, .-_ZN7XEngine12load_bitmapsEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine8init_mapEv
	.type	_ZN7XEngine8init_mapEv, @function
_ZN7XEngine8init_mapEv:
.LFB1283:
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
	movl	36(%esi), %eax
	movl	32(%esi), %edx
	movl	$0, 4(%esp)
	imull	%eax, %eax
	movl	%edx, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	memset
	movl	36(%esi), %eax
	testl	%eax, %eax
	je	.L36
	movl	32(%esi), %ecx
	xorl	%edx, %edx
	.p2align 4,,7
	.p2align 3
.L25:
	movl	$1, (%ecx,%edx,4)
	movl	36(%esi), %eax
	leal	-1(%eax), %ebx
	imull	%ebx, %eax
	addl	%edx, %eax
	movl	$1, (%ecx,%eax,4)
	movl	36(%esi), %eax
	imull	%edx, %eax
	addl	$1, %edx
	movl	$1, (%ecx,%eax,4)
	movl	36(%esi), %eax
	imull	%edx, %eax
	movl	$1, -4(%ecx,%eax,4)
	movl	36(%esi), %eax
	cmpl	%edx, %eax
	jne	.L25
	cmpl	$2, %edx
	je	.L22
.L26:
	movl	$1, %ebp
	movl	$-2004318071, %edi
	.p2align 4,,7
	.p2align 3
.L34:
	cmpl	$2, %eax
	je	.L35
	movl	$1, %ebx
	.p2align 4,,7
	.p2align 3
.L29:
	call	rand
	movl	%eax, %ecx
	imull	%edi
	movl	%ecx, %eax
	sarl	$31, %eax
	addl	%ecx, %edx
	sarl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jne	.L28
	movl	36(%esi), %edx
	movl	32(%esi), %eax
	imull	%ebp, %edx
	addl	%ebx, %edx
	movl	$1, (%eax,%edx,4)
.L28:
	movl	36(%esi), %eax
	addl	$1, %ebx
	leal	-1(%eax), %edx
	cmpl	%ebx, %edx
	jne	.L29
	addl	$1, %ebp
	cmpl	%ebp, %ebx
	jne	.L34
.L22:
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
.L35:
	.cfi_restore_state
	jmp	.L35
	.p2align 4,,7
	.p2align 3
.L36:
	xorl	%eax, %eax
	jmp	.L26
	.cfi_endproc
.LFE1283:
	.size	_ZN7XEngine8init_mapEv, .-_ZN7XEngine8init_mapEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9init_dataEv
	.type	_ZN7XEngine9init_dataEv, @function
_ZN7XEngine9init_dataEv:
.LFB1282:
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
	movl	64(%esp), %esi
	movl	24(%esi), %eax
	movl	$20, 84(%esi)
	movl	$20, 92(%esi)
	subl	$20, %eax
	movl	%eax, 88(%esi)
	movl	28(%esi), %eax
	leal	-20(%eax), %edx
	movl	%edx, 96(%esi)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 100(%esi)
	movl	36(%esi), %eax
	imull	%eax, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 32(%esi)
	movl	%esi, (%esp)
	call	_ZN7XEngine8init_mapEv
	movl	24(%esi), %eax
	movl	$96, 48(%esi)
	movl	$96, 44(%esi)
	movl	$15, 64(%esi)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movl	$15, 60(%esi)
	sall	$2, %eax
	movl	$0x00000000, 68(%esi)
	movl	$0x3d4ccccd, 72(%esi)
	movl	$32, 52(%esi)
	movl	%edx, 24(%esp)
	fildl	24(%esp)
	fdivl	.LC7
	fnstcw	30(%esp)
	movzwl	30(%esp), %edx
	movb	$12, %dh
	movw	%dx, 28(%esp)
	fldcw	28(%esp)
	fistpl	56(%esi)
	fldcw	30(%esp)
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 104(%esi)
	movl	24(%esi), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 108(%esi)
	movl	8(%esi), %eax
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC3, 4(%esp)
	call	*8(%edx)
	movl	12(%esi), %eax
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC4, 4(%esp)
	call	*8(%edx)
	movl	16(%esi), %eax
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC5, 4(%esp)
	call	*8(%edx)
	movl	36(%esi), %ecx
	movl	40(%esi), %edx
	leal	(%ecx,%ecx), %eax
	imull	%edx, %eax
	imull	%ecx, %edx
	imull	%edx, %eax
	movl	%eax, 24(%esp)
	fildl	24(%esp)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L45
	fstp	%st(1)
.L38:
	fnstcw	30(%esp)
	movzwl	30(%esp), %eax
	movb	$12, %ah
	movw	%ax, 28(%esp)
	fldcw	28(%esp)
	fistpl	24(%esp)
	fldcw	30(%esp)
	movl	24(%esp), %eax
	movl	%eax, 80(%esi)
	leal	4(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_Znaj
	cmpl	$1, 80(%esi)
	movl	%eax, %ecx
	movl	%eax, 112(%esi)
	je	.L37
	movl	$1, 20(%esp)
	.p2align 4,,7
	.p2align 3
.L43:
	movl	56(%esi), %ebx
	imull	76(%esi), %ebx
	movl	%ebx, %edx
	movl	%ebx, %eax
	sarl	$31, %edx
	idivl	20(%esp)
	movl	20(%esp), %edx
	leal	(%ecx,%edx,4), %edi
	movl	%eax, %ebx
	leal	0(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_Znaj
	testl	%ebx, %ebx
	fildl	76(%esi)
	movl	%eax, (%edi)
	movl	%ebx, 24(%esp)
	fildl	24(%esp)
	fdivrp	%st, %st(1)
	je	.L47
	movl	112(%esi), %eax
	fldz
	movl	8(%esi), %ebp
	movl	20(%esp), %edx
	movl	12(%ebp), %ecx
	movl	(%eax,%edx,4), %edi
	xorl	%eax, %eax
	fnstcw	30(%esp)
	movzwl	30(%esp), %edx
	movb	$12, %dh
	movw	%dx, 28(%esp)
	jmp	.L42
	.p2align 4,,7
	.p2align 3
.L46:
	movl	12(%ebp), %ecx
.L42:
	fldcw	28(%esp)
	fistl	24(%esp)
	fldcw	30(%esp)
	movl	24(%esp), %edx
	fadd	%st(1), %st
	imull	%ecx, %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L46
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L41
.L47:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L41:
	addl	$1, 20(%esp)
	movl	20(%esp), %eax
	cmpl	%eax, 80(%esi)
	je	.L37
	movl	112(%esi), %ecx
	jmp	.L43
.L37:
	addl	$44, %esp
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
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L38
	.cfi_endproc
.LFE1282:
	.size	_ZN7XEngine9init_dataEv, .-_ZN7XEngine9init_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngineC2EiiP14XScreenRgbInfo
	.type	_ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1275:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1275
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%ebx, 60(%esp)
	movl	80(%esp), %ebx
	.cfi_offset 3, -20
	movl	%esi, 64(%esp)
	movl	92(%esp), %esi
	.cfi_offset 6, -16
	movl	88(%esp), %edx
	movl	%edi, 68(%esp)
	movl	%ebp, 72(%esp)
	movl	84(%esp), %ebp
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	$50, 36(%ebx)
	movl	$64, 40(%ebx)
	movl	$64, 76(%ebx)
	movl	%esi, (%ebx)
	movl	%edx, 44(%esp)
	movl	$20, (%esp)
.LEHB0:
	call	_Znwj
.LEHE0:
	movl	44(%esp), %edx
	movl	%eax, %edi
	movsbl	4(%esi), %eax
	movl	%eax, 16(%esp)
	movl	(%esi), %eax
	movl	%edx, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 12(%esp)
.LEHB1:
	call	_ZN11XRasterizerC1EiiPhc
.LEHE1:
	movl	%edi, 4(%ebx)
	movl	$40, (%esp)
.LEHB2:
	call	_Znwj
	movl	%esi, 4(%eax)
	movl	$0, 8(%eax)
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	movl	%eax, 8(%ebx)
	movl	$40, (%esp)
	call	_Znwj
	movl	%esi, 4(%eax)
	movl	$0, 8(%eax)
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	movl	%eax, 12(%ebx)
	movl	$40, (%esp)
	call	_Znwj
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	movl	%esi, 4(%eax)
	movl	64(%esp), %esi
	movl	$0, 8(%eax)
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	movl	%eax, 16(%ebx)
	movl	4(%ebx), %eax
	movl	12(%eax), %edx
	movl	%edx, 20(%ebx)
	movl	4(%eax), %edx
	movl	8(%eax), %eax
	movl	%edx, 24(%ebx)
	movl	%eax, 28(%ebx)
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
.L50:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%edi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE1275:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1275:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1275-.LLSDACSB1275
.LLSDACSB1275:
	.uleb128 .LEHB0-.LFB1275
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1275
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L50-.LFB1275
	.uleb128 0
	.uleb128 .LEHB2-.LFB1275
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1275:
	.text
	.size	_ZN7XEngineC2EiiP14XScreenRgbInfo, .-_ZN7XEngineC2EiiP14XScreenRgbInfo
	.section	.rodata.str1.1
.LC11:
	.string	"ciao"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine6renderEv
	.type	_ZN7XEngine6renderEv, @function
_ZN7XEngine6renderEv:
.LFB1284:
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
	subl	$156, %esp
	.cfi_def_cfa_offset 176
	movl	176(%esp), %ebx
	fildl	40(%ebx)
	fdivrs	.LC8
	movl	84(%ebx), %ecx
	cmpl	88(%ebx), %ecx
	movl	24(%ebx), %ebp
	movl	%ecx, 96(%esp)
	fstps	92(%esp)
	jg	.L135
	sall	$2, %ecx
	leal	136(%esp), %esi
	leal	132(%esp), %edi
	movl	%ecx, 100(%esp)
	movl	%esi, 112(%esp)
	movl	%edi, 108(%esp)
	.p2align 4,,7
	.p2align 3
.L90:
	movl	%ebp, %eax
	fildl	56(%ebx)
	shrl	$31, %eax
	addl	%eax, %ebp
	movl	96(%esp), %eax
	sarl	%ebp
	fstpl	8(%esp)
	subl	%ebp, %eax
	movl	%eax, 124(%esp)
	fildl	124(%esp)
	fstpl	(%esp)
	call	atan2
	fstps	140(%esp)
	flds	140(%esp)
	flds	68(%ebx)
	fadd	%st(1), %st
	fld	%st(0)
	fldl	.LC1
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L126
	fstp	%st(2)
	fxch	%st(1)
	fsubp	%st, %st(1)
	fstps	140(%esp)
	flds	140(%esp)
	jmp	.L56
	.p2align 4,,7
	.p2align 3
.L148:
	fstp	%st(0)
	fstp	%st(0)
.L56:
	movl	112(%esp), %ecx
	fstps	(%esp)
	movl	108(%esp), %ebp
	fstps	48(%esp)
	movl	%ecx, 4(%esp)
	movl	%ebp, 8(%esp)
	call	sincosf
	flds	132(%esp)
	flds	136(%esp)
	flds	48(%esp)
	fstps	(%esp)
	fstps	32(%esp)
	fstps	48(%esp)
	call	cosf
	movl	44(%ebx), %ecx
	movl	%ecx, 124(%esp)
	movl	48(%ebx), %edi
	fstps	104(%esp)
	fld1
	flds	32(%esp)
	fld	%st(1)
	fdiv	%st(1), %st
	fnstcw	130(%esp)
	movzwl	130(%esp), %eax
	movb	$12, %ah
	movw	%ax, 128(%esp)
	flds	48(%esp)
	fld	%st(3)
	fdiv	%st(1), %st
	fildl	124(%esp)
	movl	%edi, 124(%esp)
	fildl	124(%esp)
	flds	.LC10
	fmul	%st, %st(4)
	fxch	%st(4)
	fadd	%st(2), %st
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	fxch	%st(5)
	movl	124(%esp), %eax
	fmulp	%st, %st(3)
	fxch	%st(2)
	fadd	%st(4), %st
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %esi
	subl	%edi, %esi
	subl	%ecx, %eax
	je	.L101
	fstp	%st(4)
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(3)
	movl	%eax, 124(%esp)
	fildl	124(%esp)
.L58:
	movl	%esi, 124(%esp)
	fildl	124(%esp)
	fdivp	%st, %st(1)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	.L59
	flds	.LC9
	fcmovne	%st(1), %st
	fstp	%st(1)
.L59:
	movl	40(%ebx), %ebp
	testl	%eax, %eax
	movl	%ecx, %edx
	movl	%ecx, %eax
	movl	%ebp, 88(%esp)
	jle	.L61
	sarl	$31, %edx
	fildl	88(%esp)
	idivl	%ebp
	fld	%st(0)
	fdiv	%st(2), %st
	fstps	68(%esp)
	fldz
	flds	68(%esp)
	fxch	%st(1)
	addl	$1, %eax
	imull	%eax, %ebp
	fucomip	%st(1), %st
	jbe	.L127
	fchs
	fstps	68(%esp)
	movl	$1, 80(%esp)
.L62:
	movl	%edi, %edx
	movl	%edi, %eax
	sarl	$31, %edx
	idivl	88(%esp)
	testl	%esi, %esi
	jle	.L65
.L140:
	fld	%st(1)
	addl	$1, %eax
	fmul	%st(1), %st
	imull	88(%esp), %eax
	fsts	64(%esp)
	fldz
	fucomip	%st(1), %st
	jbe	.L129
	fchs
	fstps	64(%esp)
	movl	$1, 84(%esp)
.L66:
	fld	%st(2)
	fmul	%st(1), %st
	fsts	72(%esp)
	fldz
	fucomip	%st(1), %st
	jbe	.L141
	fchs
	fstps	72(%esp)
	jmp	.L69
	.p2align 4,,7
	.p2align 3
.L141:
	fstp	%st(0)
.L69:
	fmul	%st(4), %st
	fstps	76(%esp)
	fldz
	flds	76(%esp)
	fxch	%st(1)
	fucomip	%st(1), %st
	jbe	.L142
	fchs
	fstps	76(%esp)
	jmp	.L71
	.p2align 4,,7
	.p2align 3
.L142:
	fstp	%st(0)
.L71:
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	%edx, 124(%esp)
	fildl	124(%esp)
	fmulp	%st, %st(2)
	fldz
	fucomip	%st(2), %st
	jbe	.L73
	fxch	%st(1)
	fchs
	fxch	%st(1)
.L73:
	movl	%edi, %edx
	subl	%eax, %edx
	movl	%edx, 124(%esp)
	fildl	124(%esp)
	fmulp	%st, %st(4)
	fldz
	fucomip	%st(4), %st
	jbe	.L75
	fxch	%st(3)
	fchs
	fxch	%st(3)
.L75:
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, 124(%esp)
	movl	%eax, %edx
	fildl	124(%esp)
	subl	%edi, %edx
	fmul	%st(1), %st
	movl	%edx, 124(%esp)
	faddp	%st, %st(5)
	fildl	124(%esp)
	fdivp	%st, %st(1)
	movl	%ebp, 124(%esp)
	faddp	%st, %st(2)
	fildl	124(%esp)
	fmuls	92(%esp)
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %edx
	movl	%eax, 124(%esp)
	fildl	124(%esp)
	fmuls	92(%esp)
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %eax
	movl	32(%ebx), %esi
	movl	36(%ebx), %ecx
	flds	92(%esp)
	fmul	%st(4), %st
	flds	92(%esp)
	fmul	%st(3), %st
	flds	64(%esp)
	fmuls	92(%esp)
	flds	68(%esp)
	fmuls	92(%esp)
	fxch	%st(6)
	.p2align 4,,7
	.p2align 3
.L133:
	fucomi	%st(4), %st
	jbe	.L143
	fxch	%st(3)
	jmp	.L137
	.p2align 4,,7
	.p2align 3
.L144:
	fxch	%st(3)
	fxch	%st(4)
	fxch	%st(7)
	fxch	%st(4)
.L137:
	fldcw	128(%esp)
	fistl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %edi
	imull	%ecx, %edi
	addl	%edx, %edi
	movl	(%esi,%edi,4), %ebp
	testl	%ebp, %ebp
	jne	.L136
	fxch	%st(7)
	fadds	64(%esp)
	fxch	%st(4)
	addl	80(%esp), %edx
	fadds	72(%esp)
	fxch	%st(7)
	fadd	%st(1), %st
	fxch	%st(3)
	fucomi	%st(7), %st
	ja	.L144
	fxch	%st(2)
	fxch	%st(4)
	fxch	%st(7)
	fxch	%st(4)
	jmp	.L131
	.p2align 4,,7
	.p2align 3
.L143:
	fxch	%st(2)
.L131:
	fldcw	128(%esp)
	fistl	124(%esp)
	fldcw	130(%esp)
	movl	%eax, %edi
	imull	%ecx, %edi
	movl	124(%esp), %ebp
	addl	%ebp, %edi
	movl	(%esi,%edi,4), %edi
	testl	%edi, %edi
	jne	.L138
	fxch	%st(5)
	fadds	68(%esp)
	fxch	%st(2)
	addl	84(%esp), %eax
	fadds	76(%esp)
	fxch	%st(5)
	fadd	%st(6), %st
	fxch	%st(2)
	fxch	%st(5)
	jmp	.L133
	.p2align 4,,7
	.p2align 3
.L136:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(2)
	fstp	%st(0)
	fxch	%st(1)
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %eax
	fmuls	104(%esp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	88(%esp)
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %ecx
	testl	%ecx, %ecx
	movl	%edx, 64(%esp)
	je	.L108
	leal	0(,%ecx,4), %edi
	movl	%edi, 68(%esp)
.L81:
	movl	56(%ebx), %edi
	movl	76(%ebx), %eax
	imull	%edi, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	%ecx
	movl	%eax, %esi
	movl	52(%ebx), %eax
	imull	%edi, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	%ecx
	movl	92(%ebx), %edx
	xorl	%ecx, %ecx
	addl	100(%ebx), %eax
	movl	%eax, %ebp
	subl	%esi, %ebp
	addl	$1, %ebp
	cmpl	%edx, %ebp
	jge	.L85
	movl	%ebp, %ecx
	subl	%edx, %ecx
	addl	%ecx, %esi
	movl	%edx, %ecx
	subl	%ebp, %ecx
	movl	%edx, %ebp
	sall	$2, %ecx
.L85:
	movl	96(%ebx), %edx
	cmpl	%edx, %eax
	jle	.L86
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edx, %eax
	addl	%edi, %esi
.L86:
	movl	108(%ebx), %edx
	movl	100(%esp), %edi
	movl	%ebp, (%edx,%edi)
	movl	104(%ebx), %edx
	movl	%eax, (%edx,%edi)
	movl	20(%ebx), %edx
	movl	24(%ebx), %edi
	movl	8(%ebx), %eax
	movl	%edx, 72(%esp)
	movl	%edi, 76(%esp)
	movl	64(%esp), %edi
	movl	8(%eax), %edx
	movl	112(%ebx), %eax
	leal	(%edx,%edi,4), %edi
	movl	68(%esp), %edx
	movl	(%eax,%edx), %eax
	movl	%ecx, 48(%esp)
	movl	$.LC11, 4(%esp)
	movl	$1, (%esp)
	movl	%eax, 64(%esp)
	call	__printf_chk
	testl	%esi, %esi
	movl	48(%esp), %ecx
	je	.L139
	movl	72(%esp), %eax
	imull	76(%esp), %ebp
	addl	96(%esp), %ebp
	addl	64(%esp), %ecx
	leal	(%eax,%ebp,4), %edx
	xorl	%eax, %eax
	.p2align 4,,7
	.p2align 3
.L89:
	movl	(%ecx,%eax,4), %ebp
	addl	$1, %eax
	cmpl	%esi, %eax
	movl	(%edi,%ebp,4), %ebp
	movl	%ebp, (%edx)
	movl	24(%ebx), %ebp
	leal	(%edx,%ebp,4), %edx
	jne	.L89
.L88:
	addl	$1, 96(%esp)
	movl	96(%esp), %ecx
	addl	$4, 100(%esp)
	cmpl	%ecx, 88(%ebx)
	jge	.L90
	movl	84(%ebx), %esi
	movl	%esi, 96(%esp)
.L53:
	movl	12(%ebx), %eax
	fildl	56(%ebx)
	movl	8(%eax), %eax
	fstpl	8(%esp)
	movl	%eax, 80(%esp)
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%eax, %ebp
	movl	96(%esp), %eax
	sarl	%ebp
	subl	%ebp, %eax
	movl	%eax, 124(%esp)
	fildl	124(%esp)
	fstpl	(%esp)
	call	atan2
	movl	108(%esp), %edi
	movl	112(%esp), %ebp
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	fstps	(%esp)
	call	sincosf
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	68(%ebx), %eax
	flds	132(%esp)
	fstps	84(%esp)
	flds	136(%esp)
	movl	%eax, (%esp)
	fstps	48(%esp)
	call	sincosf
	movl	88(%ebx), %edx
	movl	84(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	flds	132(%esp)
	flds	136(%esp)
	flds	84(%esp)
	fmul	%st(2), %st
	movl	%ecx, 124(%esp)
	movl	100(%ebx), %edi
	movl	96(%ebx), %ebp
	movl	%eax, 64(%esp)
	fsts	88(%esp)
	movl	%edi, %ecx
	flds	48(%esp)
	cmpl	%edi, %ebp
	fld	%st(2)
	fmul	%st(1), %st
	fstps	112(%esp)
	fxch	%st(2)
	fmuls	84(%esp)
	fsts	116(%esp)
	fxch	%st(3)
	fmulp	%st, %st(2)
	fxch	%st(1)
	fsts	120(%esp)
	fildl	124(%esp)
	fdivrs	.LC8
	jl	.L145
	fxch	%st(2)
	fsubs	112(%esp)
	movl	20(%ebx), %eax
	fnstcw	130(%esp)
	fstps	92(%esp)
	movzwl	130(%esp), %esi
	fld	%st(2)
	faddp	%st, %st(1)
	movl	%eax, 108(%esp)
	movl	%esi, %eax
	fstps	96(%esp)
	movb	$12, %ah
	flds	88(%esp)
	fadds	112(%esp)
	movw	%ax, 128(%esp)
	movl	64(%esp), %eax
	fstps	100(%esp)
	flds	120(%esp)
	fsubrp	%st, %st(2)
	fxch	%st(1)
	fstps	104(%esp)
	flds	.LC12
	.p2align 4,,7
	.p2align 3
.L95:
	fildl	44(%ebx)
	movl	%edi, %esi
	fildl	56(%ebx)
	subl	%ecx, %esi
	cmpl	%eax, %edx
	fildl	52(%ebx)
	movl	%esi, 124(%esp)
	fildl	124(%esp)
	fdivrp	%st, %st(1)
	fmulp	%st, %st(1)
	fdivs	84(%esp)
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %esi
	movl	%esi, 124(%esp)
	movl	24(%ebx), %esi
	fildl	124(%esp)
	flds	92(%esp)
	fmul	%st(1), %st
	fadd	%st(2), %st
	fildl	48(%ebx)
	flds	96(%esp)
	fmul	%st(3), %st
	fadd	%st(1), %st
	flds	100(%esp)
	fmul	%st(4), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fsub	%st(2), %st
	fmul	%st(6), %st
	fmul	%st(5), %st
	fldcw	128(%esp)
	fistpl	64(%esp)
	fldcw	130(%esp)
	fxch	%st(2)
	fmuls	104(%esp)
	faddp	%st, %st(2)
	fxch	%st(1)
	fsub	%st(2), %st
	fmul	%st(4), %st
	fmul	%st(3), %st
	fldcw	128(%esp)
	fistpl	68(%esp)
	fldcw	130(%esp)
	jl	.L146
	fmul	%st(2), %st
	movl	%esi, %ecx
	movl	108(%esp), %esi
	imull	%edi, %ecx
	fldcw	128(%esp)
	fistpl	24(%esp)
	fldcw	130(%esp)
	addl	%eax, %ecx
	leal	(%esi,%ecx,4), %ecx
	movl	%eax, %esi
	movl	%ecx, 76(%esp)
	negl	%esi
	fmul	%st(1), %st
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	104(%ebx), %ebp
	movl	124(%esp), %ecx
	movl	%ebp, 72(%esp)
	movl	76(%esp), %ebp
	leal	0(%ebp,%esi,4), %ebp
	movl	24(%esp), %esi
	movl	%ebp, 76(%esp)
	.p2align 4,,7
	.p2align 3
.L94:
	movl	72(%esp), %ebp
	cmpl	0(%ebp,%eax,4), %edi
	jle	.L93
	movl	%ecx, %ebp
	movl	%esi, %edx
	shrl	$10, %ebp
	sarl	$16, %edx
	andl	$4032, %ebp
	andl	$63, %edx
	addl	%ebp, %edx
	movl	80(%esp), %ebp
	movl	0(%ebp,%edx,4), %edx
	movl	76(%esp), %ebp
	movl	%edx, 0(%ebp,%eax,4)
	movl	88(%ebx), %edx
.L93:
	addl	$1, %eax
	addl	64(%esp), %esi
	addl	68(%esp), %ecx
	cmpl	%edx, %eax
	jle	.L94
	movl	100(%ebx), %ecx
	movl	96(%ebx), %ebp
	jmp	.L92
.L146:
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L92:
	addl	$1, %edi
	cmpl	%ebp, %edi
	jg	.L147
	movl	84(%ebx), %eax
	jmp	.L95
	.p2align 4,,7
	.p2align 3
.L108:
	movl	$4, 68(%esp)
	movl	$1, %ecx
	jmp	.L81
	.p2align 4,,7
	.p2align 3
.L138:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(5)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(1)
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %eax
	fmuls	104(%esp)
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	88(%esp)
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %ecx
	testl	%ecx, %ecx
	movl	%edx, 64(%esp)
	je	.L108
	leal	0(,%ecx,4), %esi
	movl	%esi, 68(%esp)
	jmp	.L81
	.p2align 4,,7
	.p2align 3
.L101:
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(3)
	fxch	%st(4)
	movl	$1, %eax
	jmp	.L58
	.p2align 4,,7
	.p2align 3
.L126:
	fldz
	fucomip	%st(3), %st
	jbe	.L148
	fstp	%st(2)
	fxch	%st(1)
	faddp	%st, %st(1)
	fstps	140(%esp)
	flds	140(%esp)
	jmp	.L56
	.p2align 4,,7
	.p2align 3
.L127:
	fstp	%st(0)
	movl	%edi, %edx
	movl	%edi, %eax
	sarl	$31, %edx
	idivl	88(%esp)
	testl	%esi, %esi
	movl	$1, 80(%esp)
	jg	.L140
.L65:
	fld	%st(1)
	fmul	%st(1), %st
	imull	88(%esp), %eax
	fsts	64(%esp)
	fldz
	fxch	%st(1)
	subl	$1, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	jbe	.L130
	fchs
	fstps	64(%esp)
	movl	$-1, 84(%esp)
	jmp	.L66
	.p2align 4,,7
	.p2align 3
.L129:
	fstp	%st(0)
	movl	$1, 84(%esp)
	jmp	.L66
	.p2align 4,,7
	.p2align 3
.L61:
	sarl	$31, %edx
	fildl	88(%esp)
	idivl	%ebp
	fld	%st(0)
	fdiv	%st(2), %st
	fstps	68(%esp)
	fldz
	flds	68(%esp)
	imull	%ebp, %eax
	fucomi	%st(1), %st
	fstp	%st(1)
	leal	-1(%eax), %ebp
	jbe	.L128
	fchs
	fstps	68(%esp)
	movl	$-1, 80(%esp)
	jmp	.L62
	.p2align 4,,7
	.p2align 3
.L128:
	fstp	%st(0)
	movl	$-1, 80(%esp)
	jmp	.L62
	.p2align 4,,7
	.p2align 3
.L130:
	fstp	%st(0)
	movl	$-1, 84(%esp)
	jmp	.L66
.L145:
	fstp	%st(2)
	fstp	%st(0)
	fstp	%st(1)
	jmp	.L91
	.p2align 4,,7
	.p2align 3
.L147:
	fstp	%st(0)
.L91:
	movl	16(%ebx), %eax
	leal	-1(%ecx), %edi
	movl	92(%ebx), %esi
	movl	8(%eax), %eax
	cmpl	%edi, %esi
	movl	%eax, 80(%esp)
	jg	.L149
	flds	88(%esp)
	fsubs	112(%esp)
	movl	20(%ebx), %eax
	fnstcw	130(%esp)
	fstps	92(%esp)
	flds	116(%esp)
	fadds	120(%esp)
	movl	%eax, 104(%esp)
	movzwl	130(%esp), %eax
	fstps	96(%esp)
	movb	$12, %ah
	flds	88(%esp)
	fadds	112(%esp)
	movw	%ax, 128(%esp)
	fstps	88(%esp)
	flds	116(%esp)
	fsubs	120(%esp)
	fstps	100(%esp)
	flds	.LC12
	.p2align 4,,7
	.p2align 3
.L100:
	movl	40(%ebx), %eax
	subl	%edi, %ecx
	subl	52(%ebx), %eax
	fildl	44(%ebx)
	fildl	56(%ebx)
	movl	%eax, 124(%esp)
	fildl	124(%esp)
	movl	%ecx, 124(%esp)
	fildl	124(%esp)
	fdivrp	%st, %st(1)
	fmulp	%st, %st(1)
	fdivs	84(%esp)
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	124(%esp), %eax
	movl	%eax, 124(%esp)
	movl	84(%ebx), %eax
	fildl	124(%esp)
	flds	92(%esp)
	fmul	%st(1), %st
	movl	24(%ebx), %ecx
	cmpl	%edx, %eax
	fadd	%st(2), %st
	fildl	48(%ebx)
	flds	96(%esp)
	fmul	%st(3), %st
	fadd	%st(1), %st
	flds	88(%esp)
	fmul	%st(4), %st
	faddp	%st, %st(5)
	fxch	%st(4)
	fsub	%st(2), %st
	fmul	%st(6), %st
	fmul	%st(5), %st
	fldcw	128(%esp)
	fistpl	64(%esp)
	fldcw	130(%esp)
	fxch	%st(2)
	fmuls	100(%esp)
	faddp	%st, %st(2)
	fxch	%st(1)
	fsub	%st(2), %st
	fmul	%st(4), %st
	fmul	%st(3), %st
	fldcw	128(%esp)
	fistpl	68(%esp)
	fldcw	130(%esp)
	jg	.L150
	fmul	%st(2), %st
	movl	104(%esp), %esi
	imull	%edi, %ecx
	fldcw	128(%esp)
	fistpl	112(%esp)
	fldcw	130(%esp)
	addl	%eax, %ecx
	leal	(%esi,%ecx,4), %ecx
	movl	%eax, %esi
	movl	%ecx, 76(%esp)
	negl	%esi
	fmul	%st(1), %st
	fldcw	128(%esp)
	fistpl	124(%esp)
	fldcw	130(%esp)
	movl	108(%ebx), %ebp
	movl	124(%esp), %ecx
	movl	%ebp, 72(%esp)
	movl	76(%esp), %ebp
	leal	0(%ebp,%esi,4), %ebp
	movl	112(%esp), %esi
	movl	%ebp, 76(%esp)
	.p2align 4,,7
	.p2align 3
.L99:
	movl	72(%esp), %ebp
	cmpl	0(%ebp,%eax,4), %edi
	jge	.L98
	movl	%ecx, %ebp
	movl	%esi, %edx
	shrl	$10, %ebp
	sarl	$16, %edx
	andl	$4032, %ebp
	andl	$63, %edx
	addl	%ebp, %edx
	movl	80(%esp), %ebp
	movl	0(%ebp,%edx,4), %edx
	movl	76(%esp), %ebp
	movl	%edx, 0(%ebp,%eax,4)
	movl	88(%ebx), %edx
.L98:
	addl	$1, %eax
	addl	64(%esp), %esi
	addl	68(%esp), %ecx
	cmpl	%edx, %eax
	jle	.L99
	movl	92(%ebx), %esi
	jmp	.L97
.L150:
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L97:
	subl	$1, %edi
	cmpl	%esi, %edi
	jl	.L151
	movl	100(%ebx), %ecx
	jmp	.L100
.L149:
	fstp	%st(0)
	jmp	.L51
	.p2align 4,,7
	.p2align 3
.L151:
	fstp	%st(0)
	fstp	%st(0)
.L51:
	addl	$156, %esp
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
.L139:
	.cfi_restore_state
	movl	24(%ebx), %ebp
	jmp	.L88
.L135:
	leal	136(%esp), %esi
	leal	132(%esp), %edi
	movl	%esi, 112(%esp)
	movl	%edi, 108(%esp)
	jmp	.L53
	.cfi_endproc
.LFE1284:
	.size	_ZN7XEngine6renderEv, .-_ZN7XEngine6renderEv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1286:
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
.LFE1286:
	.size	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, .-_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo
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
	.weak	_ZTI14XTextureLoader
	.section	.rodata._ZTI14XTextureLoader,"aG",@progbits,_ZTI14XTextureLoader,comdat
	.align 4
	.type	_ZTI14XTextureLoader, @object
	.size	_ZTI14XTextureLoader, 8
_ZTI14XTextureLoader:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS14XTextureLoader
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
	.globl	_ZN7XEngineC1EiiP14XScreenRgbInfo
	.set	_ZN7XEngineC1EiiP14XScreenRgbInfo,_ZN7XEngineC2EiiP14XScreenRgbInfo
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	1413754136
	.long	1075388923
	.align 8
.LC7:
	.long	1167078172
	.long	1071806887
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC8:
	.long	1065353216
	.align 4
.LC9:
	.long	967543818
	.align 4
.LC10:
	.long	1149239296
	.align 4
.LC12:
	.long	1199570944
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
