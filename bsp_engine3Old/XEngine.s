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
.LFB1210:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	ret
	.cfi_endproc
.LFE1210:
	.size	_ZN7XEngineD2Ev, .-_ZN7XEngineD2Ev
	.section	.text._ZN7XEngineD0Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7XEngineD0Ev
	.type	_ZN7XEngineD0Ev, @function
_ZN7XEngineD0Ev:
.LFB1212:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	jmp	_ZdlPv
	.cfi_endproc
.LFE1212:
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
	.type	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7, @function
_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7:
.LFB1360:
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
	movl	%eax, %ebx
	subl	$300, %esp
	.cfi_def_cfa_offset 320
	movl	324(%esp), %eax
	movl	%edx, 52(%esp)
	movl	320(%esp), %esi
	movl	%ecx, 56(%esp)
	movb	$0, 232(%esp)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 60(%esp)
	leal	232(%esp), %eax
	fildl	60(%esp)
	fldl	12(%esi)
	fsub	%st(1), %st
	movl	$0, 284(%esp)
	fldl	4(%esi)
	fsub	%st(2), %st
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	236(%esp)
	fstpl	244(%esp)
	fstpl	16(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 176(%esp)
	movl	$0, 228(%esp)
	fldl	16(%esp)
	fldl	12(%esi)
	fsub	%st(1), %st
	movl	%eax, 44(%esp)
	leal	176(%esp), %eax
	fldl	4(%esi)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	180(%esp)
	fstpl	188(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 120(%esp)
	movl	$0, 172(%esp)
	fldl	16(%esp)
	movl	%eax, %ebp
	fldl	12(%esi)
	leal	120(%esp), %eax
	fadd	%st(1), %st
	fldl	4(%esi)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	124(%esp)
	fstpl	132(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 64(%esp)
	movl	$0, 116(%esp)
	fldl	16(%esp)
	movl	%eax, %edi
	fldl	12(%esi)
	leal	64(%esp), %eax
	fadd	%st(1), %st
	fxch	%st(1)
	fsubrl	4(%esi)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	68(%esp)
	fstpl	76(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$252, (%esp)
	movl	%eax, 48(%esp)
	call	_Znwj
	movl	52(%esp), %edx
	movl	%eax, %esi
	fldl	4(%ebp)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	328(%esp), %eax
	movl	%ebp, 8(%esi)
	movl	%edx, 48(%esi)
	movl	$0, 32(%esi)
	movl	%eax, 248(%esi)
	movl	44(%esp), %eax
	movl	$0, 52(%esi)
	movl	%eax, 4(%esi)
	movl	56(%esp), %eax
	movl	%eax, 28(%esi)
	movl	44(%esp), %eax
	fsubl	4(%eax)
	fldl	12(%ebp)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L23
	fstp	%st(1)
.L15:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	52(%esp), %edx
	fldl	4(%edi)
	movl	%eax, %ebx
	fsubl	4(%ebp)
	movl	%edx, 48(%eax)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%esi, 248(%eax)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	%ebp, 4(%eax)
	movl	%edi, 8(%eax)
	movl	56(%esp), %eax
	movl	$0, 32(%ebx)
	movl	$0, 52(%ebx)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%ebx)
	fstpl	20(%ebx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L24
	fstp	%st(1)
.L17:
	fstpl	12(%ebx)
	fld1
	fstpl	40(%ebx)
	movl	$252, (%esp)
	call	_Znwj
	movl	52(%esp), %edx
	movl	%eax, %esi
	movl	%edi, 4(%eax)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%ebx, 248(%eax)
	movl	48(%esp), %eax
	movl	%edx, 48(%esi)
	movl	$0, 32(%esi)
	movl	$0, 52(%esi)
	movl	%eax, 8(%esi)
	movl	56(%esp), %eax
	movl	%eax, 28(%esi)
	movl	48(%esp), %eax
	fldl	4(%eax)
	fsubl	4(%edi)
	fldl	12(%eax)
	fsubl	12(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L25
	fstp	%st(1)
.L19:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	48(%esp), %edx
	movl	%edx, 4(%eax)
	movl	44(%esp), %edx
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%esi, 248(%eax)
	movl	%edx, 8(%eax)
	movl	52(%esp), %edx
	movl	$0, 32(%eax)
	movl	$0, 52(%eax)
	movl	%edx, 48(%eax)
	movl	56(%esp), %edx
	movl	%edx, 28(%eax)
	movl	44(%esp), %edx
	fldl	4(%edx)
	movl	48(%esp), %edx
	fsubl	4(%edx)
	movl	44(%esp), %edx
	fldl	12(%edx)
	movl	48(%esp), %edx
	fsubl	12(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L26
	fstp	%st(1)
.L21:
	fstpl	12(%eax)
	fld1
	fstpl	40(%eax)
	addl	$300, %esp
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
.L23:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L15
.L26:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 40(%esp)
	call	sqrt
	movl	40(%esp), %eax
	jmp	.L21
.L25:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L19
.L24:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L17
	.cfi_endproc
.LFE1360:
	.size	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7, .-_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine15update_positionEi
	.type	_ZN7XEngine15update_positionEi, @function
_ZN7XEngine15update_positionEi:
.LFB1320:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %eax
	leal	32(%esp), %edx
	fildl	68(%esp)
	movl	100(%eax), %ebx
	leal	40(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	fldl	60(%ebx)
	fstpl	(%esp)
	fstpl	16(%esp)
	call	sincos
	fldl	40(%esp)
	fldl	16(%esp)
	fldl	32(%esp)
	fmul	%st(1), %st
	faddl	4(%ebx)
	fstpl	4(%ebx)
	fmulp	%st, %st(1)
	faddl	12(%ebx)
	fstpl	12(%ebx)
	addl	$56, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE1320:
	.size	_ZN7XEngine15update_positionEi, .-_ZN7XEngine15update_positionEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12update_angleEi
	.type	_ZN7XEngine12update_angleEi, @function
_ZN7XEngine12update_angleEi:
.LFB1321:
	.cfi_startproc
	movl	4(%esp), %eax
	fildl	8(%esp)
	fmull	.LC2
	movl	100(%eax), %eax
	faddl	60(%eax)
	fstl	60(%eax)
	fldl	.LC3
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L35
	fsubp	%st, %st(1)
	fstl	60(%eax)
	jmp	.L29
	.p2align 4,,7
	.p2align 3
.L35:
	fstp	%st(1)
.L29:
	fldz
	fucomip	%st(1), %st
	jbe	.L36
	faddl	.LC3
	fstpl	60(%eax)
	jmp	.L28
	.p2align 4,,7
	.p2align 3
.L36:
	fstp	%st(0)
.L28:
	rep
	ret
	.cfi_endproc
.LFE1321:
	.size	_ZN7XEngine12update_angleEi, .-_ZN7XEngine12update_angleEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13update_heightEi
	.type	_ZN7XEngine13update_heightEi, @function
_ZN7XEngine13update_heightEi:
.LFB1322:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	100(%eax), %eax
	addl	%edx, %edx
	addl	%edx, 56(%eax)
	ret
	.cfi_endproc
.LFE1322:
	.size	_ZN7XEngine13update_heightEi, .-_ZN7XEngine13update_heightEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9update_vpEi
	.type	_ZN7XEngine9update_vpEi, @function
_ZN7XEngine9update_vpEi:
.LFB1323:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	44(%edx), %ecx
	leal	(%ecx,%eax,2), %eax
	movl	36(%edx), %ecx
	movl	%eax, 44(%edx)
	cmpl	%ecx, %eax
	jge	.L39
	movl	%ecx, 44(%edx)
	movl	%ecx, %eax
.L39:
	movl	40(%edx), %ecx
	cmpl	%eax, %ecx
	jge	.L38
	movl	%ecx, 44(%edx)
.L38:
	rep
	ret
	.cfi_endproc
.LFE1323:
	.size	_ZN7XEngine9update_vpEi, .-_ZN7XEngine9update_vpEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine10deg_to_radEi
	.type	_ZN7XEngine10deg_to_radEi, @function
_ZN7XEngine10deg_to_radEi:
.LFB1324:
	.cfi_startproc
	fildl	8(%esp)
	fmull	.LC5
	ret
	.cfi_endproc
.LFE1324:
	.size	_ZN7XEngine10deg_to_radEi, .-_ZN7XEngine10deg_to_radEi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"wall0.ppm"
.LC7:
	.string	"wall1.ppm"
.LC8:
	.string	"floor0.ppm"
.LC9:
	.string	"floor1.ppm"
.LC10:
	.string	"ceiling0.ppm"
.LC11:
	.string	"ceiling1.ppm"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine14setup_texturesEv
	.type	_ZN7XEngine14setup_texturesEv, @function
_ZN7XEngine14setup_texturesEv:
.LFB1326:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1326
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	12(%ebx), %eax
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC6, 4(%esp)
.LEHB0:
	call	*8(%edx)
	movl	$24, (%esp)
	call	_Znwj
.LEHE0:
	movl	4(%ebx), %edx
	movl	%eax, %esi
	movl	12(%ebx), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edi
	movl	8(%eax), %eax
	movl	$256, 4(%esi)
	movl	%ecx, 16(%esi)
	movl	%edi, 12(%esi)
	movl	%eax, (%esi)
	movl	%edx, 20(%esi)
	movl	%esi, (%esp)
.LEHB1:
	call	_ZN7Texture23generate_light_texturesEv
.LEHE1:
	movl	12(%ebx), %eax
	movl	%esi, 64(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC7, 4(%esp)
.LEHB2:
	call	*8(%edx)
	movl	$24, (%esp)
	call	_Znwj
.LEHE2:
	movl	4(%ebx), %edx
	movl	%eax, %esi
	movl	12(%ebx), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edi
	movl	8(%eax), %eax
	movl	$256, 4(%esi)
	movl	%ecx, 16(%esi)
	movl	%edi, 12(%esi)
	movl	%eax, (%esi)
	movl	%edx, 20(%esi)
	movl	%esi, (%esp)
.LEHB3:
	call	_ZN7Texture23generate_light_texturesEv
.LEHE3:
	movl	12(%ebx), %eax
	movl	%esi, 68(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC8, 4(%esp)
.LEHB4:
	call	*8(%edx)
	movl	$24, (%esp)
	call	_Znwj
.LEHE4:
	movl	4(%ebx), %edx
	movl	%eax, %esi
	movl	12(%ebx), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edi
	movl	8(%eax), %eax
	movl	$256, 4(%esi)
	movl	%ecx, 16(%esi)
	movl	%edi, 12(%esi)
	movl	%eax, (%esi)
	movl	%edx, 20(%esi)
	movl	%esi, (%esp)
.LEHB5:
	call	_ZN7Texture23generate_light_texturesEv
.LEHE5:
	movl	12(%ebx), %eax
	movl	%esi, 76(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC9, 4(%esp)
.LEHB6:
	call	*8(%edx)
	movl	$24, (%esp)
	call	_Znwj
.LEHE6:
	movl	4(%ebx), %edx
	movl	%eax, %esi
	movl	12(%ebx), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edi
	movl	8(%eax), %eax
	movl	$256, 4(%esi)
	movl	%ecx, 16(%esi)
	movl	%edi, 12(%esi)
	movl	%eax, (%esi)
	movl	%edx, 20(%esi)
	movl	%esi, (%esp)
.LEHB7:
	call	_ZN7Texture23generate_light_texturesEv
.LEHE7:
	movl	12(%ebx), %eax
	movl	%esi, 80(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC10, 4(%esp)
.LEHB8:
	call	*8(%edx)
	movl	$24, (%esp)
	call	_Znwj
.LEHE8:
	movl	4(%ebx), %edx
	movl	%eax, %esi
	movl	12(%ebx), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edi
	movl	8(%eax), %eax
	movl	$256, 4(%esi)
	movl	%ecx, 16(%esi)
	movl	%edi, 12(%esi)
	movl	%eax, (%esi)
	movl	%edx, 20(%esi)
	movl	%esi, (%esp)
.LEHB9:
	call	_ZN7Texture23generate_light_texturesEv
.LEHE9:
	movl	12(%ebx), %eax
	movl	%esi, 88(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC11, 4(%esp)
.LEHB10:
	call	*8(%edx)
	movl	$24, (%esp)
	call	_Znwj
.LEHE10:
	movl	4(%ebx), %edx
	movl	%eax, %esi
	movl	12(%ebx), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edi
	movl	8(%eax), %eax
	movl	$255, 4(%esi)
	movl	%ecx, 16(%esi)
	movl	%edi, 12(%esi)
	movl	%eax, (%esi)
	movl	%edx, 20(%esi)
	movl	%esi, (%esp)
.LEHB11:
	call	_ZN7Texture23generate_light_texturesEv
.LEHE11:
	movl	%esi, 92(%ebx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 8
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	ret
.L49:
.L55:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB12:
	call	_Unwind_Resume
.LEHE12:
.L54:
	jmp	.L55
.L53:
	.p2align 4,,5
	jmp	.L55
.L52:
	.p2align 4,,11
	jmp	.L55
.L51:
	.p2align 4,,11
	jmp	.L55
.L50:
	.p2align 4,,11
	jmp	.L55
	.cfi_endproc
.LFE1326:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1326:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1326-.LLSDACSB1326
.LLSDACSB1326:
	.uleb128 .LEHB0-.LFB1326
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1326
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L49-.LFB1326
	.uleb128 0
	.uleb128 .LEHB2-.LFB1326
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1326
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L50-.LFB1326
	.uleb128 0
	.uleb128 .LEHB4-.LFB1326
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1326
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L51-.LFB1326
	.uleb128 0
	.uleb128 .LEHB6-.LFB1326
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB1326
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L52-.LFB1326
	.uleb128 0
	.uleb128 .LEHB8-.LFB1326
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB1326
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L53-.LFB1326
	.uleb128 0
	.uleb128 .LEHB10-.LFB1326
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1326
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L54-.LFB1326
	.uleb128 0
	.uleb128 .LEHB12-.LFB1326
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE1326:
	.text
	.size	_ZN7XEngine14setup_texturesEv, .-_ZN7XEngine14setup_texturesEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12setup_playerEv
	.type	_ZN7XEngine12setup_playerEv, @function
_ZN7XEngine12setup_playerEv:
.LFB1327:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	$68, (%esp)
	call	_Znwj
	movl	$17, %ecx
	movl	%eax, %edx
	xorl	%eax, %eax
	flds	.LC12
	movl	%edx, %edi
	rep stosl
	movl	32(%esp), %eax
	movl	%edx, 100(%eax)
	fstl	4(%edx)
	movl	$32, 56(%edx)
	fstpl	12(%edx)
	fldl	.LC13
	fstpl	60(%edx)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	ret
	.cfi_endproc
.LFE1327:
	.size	_ZN7XEngine12setup_playerEv, .-_ZN7XEngine12setup_playerEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine17setup_screen_dataEv
	.type	_ZN7XEngine17setup_screen_dataEv, @function
_ZN7XEngine17setup_screen_dataEv:
.LFB1331:
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
	movl	20(%ebx), %eax
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	28(%ebx), %esi
	movl	%eax, %ebp
	movl	%eax, 60(%ebx)
	movl	32(%ebx), %eax
	cmpl	%eax, %esi
	jg	.L58
	leal	(%esi,%esi,2), %edi
	sall	$3, %edi
	movl	%ebp, 24(%esp)
	.p2align 4,,7
	.p2align 3
.L59:
	fildl	52(%ebx)
	fstpl	8(%esp)
	movl	20(%ebx), %eax
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
	leal	32(%esp), %edx
	fstpl	(%eax,%edi)
	movl	60(%ebx), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 24(%esp)
	movl	%eax, %ebp
	leal	40(%esp), %eax
	addl	%edi, %ebp
	movl	%eax, 8(%esp)
	addl	$24, %edi
	fldl	0(%ebp)
	fstpl	(%esp)
	call	sincos
	movl	32(%ebx), %eax
	cmpl	%esi, %eax
	fldl	32(%esp)
	fstpl	8(%ebp)
	fldl	40(%esp)
	fstpl	16(%ebp)
	jge	.L59
	movl	28(%ebx), %esi
.L58:
	subl	%esi, %eax
	addl	$1, %eax
	movl	%eax, 48(%ebx)
	movl	20(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 144(%ebx)
	movl	20(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 148(%ebx)
	movl	20(%ebx), %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 156(%ebx)
	movl	20(%ebx), %eax
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 180(%ebx)
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
.LFE1331:
	.size	_ZN7XEngine17setup_screen_dataEv, .-_ZN7XEngine17setup_screen_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine16setup_level_dataEv
	.type	_ZN7XEngine16setup_level_dataEv, @function
_ZN7XEngine16setup_level_dataEv:
.LFB1332:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1332
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
	subl	$3788, %esp
	.cfi_def_cfa_offset 3808
	movl	3808(%esp), %ebx
	movl	$20, (%esp)
.LEHB13:
	call	_Znwj
.LEHE13:
	movl	%eax, %esi
	movl	%eax, (%esp)
.LEHB14:
	call	_ZN9VertexSetC1Ev
.LEHE14:
	movl	%esi, 128(%ebx)
	movl	$32, (%esp)
.LEHB15:
	call	_Znwj
	movl	80(%ebx), %edx
	movl	%eax, %esi
	movl	92(%ebx), %eax
	fld1
	fstpl	16(%esi)
	movl	%edx, 24(%esi)
	movl	$1, (%esi)
	movl	$20, 4(%esi)
	movl	$96, 8(%esi)
	movl	%eax, 28(%esi)
	movl	$76, 12(%esi)
	movl	$32, (%esp)
	call	_Znwj
	movl	76(%ebx), %edx
	movl	%eax, 124(%esp)
	movl	124(%esp), %ecx
	fld1
	movl	92(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$2, (%ecx)
	movl	$0, 4(%ecx)
	movl	$128, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$128, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	76(%ebx), %edx
	movl	%eax, %edi
	movl	92(%ebx), %eax
	fld1
	fstpl	16(%edi)
	movl	%edx, 24(%edi)
	movl	$3, (%edi)
	movl	$32, 4(%edi)
	movl	$150, 8(%edi)
	movl	%eax, 28(%edi)
	movl	$118, 12(%edi)
	movl	$32, (%esp)
	call	_Znwj
	movl	80(%ebx), %edx
	movl	%eax, 140(%esp)
	movl	140(%esp), %ecx
	fld1
	movl	88(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$4, (%ecx)
	movl	$42, 4(%ecx)
	movl	$140, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$98, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	80(%ebx), %edx
	movl	%eax, 144(%esp)
	movl	144(%esp), %ecx
	fld1
	movl	88(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$5, (%ecx)
	movl	$52, 4(%ecx)
	movl	$130, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$78, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	76(%ebx), %edx
	movl	%eax, 148(%esp)
	movl	148(%esp), %ecx
	fld1
	movl	92(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$5, (%ecx)
	movl	$62, 4(%ecx)
	movl	$150, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$88, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	76(%ebx), %edx
	movl	%eax, 152(%esp)
	movl	152(%esp), %ecx
	fld1
	movl	92(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$5, (%ecx)
	movl	$72, 4(%ecx)
	movl	$150, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$78, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	76(%ebx), %edx
	movl	%eax, 128(%esp)
	movl	128(%esp), %ecx
	fld1
	movl	88(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$5, (%ecx)
	movl	$30, 4(%ecx)
	movl	$86, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$56, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	76(%ebx), %edx
	movl	%eax, 156(%esp)
	movl	156(%esp), %ecx
	fld1
	movl	92(%ebx), %eax
	fstpl	16(%ecx)
	movl	$5, (%ecx)
	fldz
	movl	$20, 4(%ecx)
	movl	$150, 8(%ecx)
	fstl	308(%esp)
	movl	%eax, 28(%ecx)
	leal	304(%esp), %eax
	flds	.LC14
	movl	%edx, 24(%ecx)
	movl	$130, 12(%ecx)
	fstl	316(%esp)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstps	32(%esp)
	fstps	48(%esp)
	movb	$0, 304(%esp)
	movl	$0, 356(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 360(%esp)
	movl	$0, 412(%esp)
	flds	48(%esp)
	movl	%eax, 216(%esp)
	leal	360(%esp), %eax
	fstpl	364(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	372(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 416(%esp)
	movl	$0, 468(%esp)
	movl	%eax, %ecx
	flds	.LC15
	leal	416(%esp), %eax
	fstpl	420(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	movl	%ecx, 28(%esp)
	fstpl	428(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 472(%esp)
	movl	$0, 524(%esp)
	flds	.LC15
	movl	%eax, 220(%esp)
	leal	472(%esp), %eax
	fstpl	476(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC16
	fstpl	484(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 528(%esp)
	movl	$0, 580(%esp)
	flds	.LC17
	movl	%eax, 224(%esp)
	leal	528(%esp), %eax
	fstpl	532(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC16
	fstpl	540(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 584(%esp)
	movl	$0, 636(%esp)
	flds	.LC17
	movl	%eax, 228(%esp)
	leal	584(%esp), %eax
	fstpl	588(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC18
	fstpl	596(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 640(%esp)
	movl	$0, 692(%esp)
	flds	.LC15
	movl	%eax, 232(%esp)
	leal	640(%esp), %eax
	fstpl	644(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC18
	fstpl	652(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 696(%esp)
	movl	$0, 748(%esp)
	flds	.LC15
	movl	%eax, 236(%esp)
	leal	696(%esp), %eax
	fstpl	700(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC19
	fstpl	708(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 752(%esp)
	movl	$0, 804(%esp)
	flds	.LC17
	movl	%eax, 240(%esp)
	leal	752(%esp), %eax
	fstpl	756(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC19
	fstpl	764(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 808(%esp)
	movl	$0, 860(%esp)
	movl	%eax, 244(%esp)
	flds	32(%esp)
	leal	808(%esp), %eax
	fstpl	812(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC18
	fstpl	820(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 864(%esp)
	movl	$0, 916(%esp)
	flds	.LC20
	fstl	868(%esp)
	movl	%eax, 248(%esp)
	leal	864(%esp), %eax
	flds	.LC16
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	876(%esp)
	movl	%eax, (%esp)
	fstps	48(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 920(%esp)
	movl	$0, 972(%esp)
	flds	.LC21
	fstl	924(%esp)
	movl	%eax, 132(%esp)
	leal	920(%esp), %eax
	flds	.LC16
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	932(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 976(%esp)
	movl	$0, 1028(%esp)
	flds	.LC17
	fstpl	980(%esp)
	movl	%eax, 136(%esp)
	leal	976(%esp), %eax
	flds	.LC22
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	988(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1032(%esp)
	movl	$0, 1084(%esp)
	flds	.LC17
	fstpl	1036(%esp)
	movl	%eax, 160(%esp)
	leal	1032(%esp), %eax
	flds	.LC23
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	1044(%esp)
	movl	%eax, (%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1088(%esp)
	movl	$0, 1140(%esp)
	flds	64(%esp)
	movl	%eax, 164(%esp)
	leal	1088(%esp), %eax
	fstpl	1092(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC18
	fstpl	1100(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1144(%esp)
	movl	$0, 1196(%esp)
	flds	48(%esp)
	movl	%eax, 168(%esp)
	leal	1144(%esp), %eax
	fstpl	1148(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC18
	fstpl	1156(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1200(%esp)
	movl	$0, 1252(%esp)
	flds	64(%esp)
	movl	%eax, 172(%esp)
	leal	1200(%esp), %eax
	fstpl	1204(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	1212(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1256(%esp)
	movl	$0, 1308(%esp)
	flds	64(%esp)
	movl	%eax, 252(%esp)
	leal	1256(%esp), %eax
	fstpl	1260(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	80(%esp)
	fstpl	1268(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1312(%esp)
	movl	$0, 1364(%esp)
	flds	48(%esp)
	movl	%eax, 256(%esp)
	leal	1312(%esp), %eax
	fstpl	1316(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	1324(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1368(%esp)
	movl	$0, 1420(%esp)
	flds	48(%esp)
	movl	%eax, 260(%esp)
	leal	1368(%esp), %eax
	fstpl	1372(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	80(%esp)
	fstpl	1380(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1424(%esp)
	movl	$0, 1476(%esp)
	flds	.LC15
	movl	%eax, 264(%esp)
	leal	1424(%esp), %eax
	fstpl	1428(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	1436(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1480(%esp)
	movl	$0, 1532(%esp)
	movl	%eax, 268(%esp)
	flds	.LC15
	leal	1480(%esp), %eax
	fstpl	1484(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	80(%esp)
	fstpl	1492(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1536(%esp)
	movl	$0, 1588(%esp)
	flds	.LC16
	fstpl	1540(%esp)
	movl	%eax, 272(%esp)
	leal	1536(%esp), %eax
	flds	.LC24
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	1548(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1592(%esp)
	movl	$0, 1644(%esp)
	flds	.LC15
	movl	%eax, 276(%esp)
	leal	1592(%esp), %eax
	fstpl	1596(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	1604(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1648(%esp)
	movl	$0, 1700(%esp)
	flds	.LC16
	movl	%eax, 176(%esp)
	leal	1648(%esp), %eax
	fstpl	1652(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC19
	fstpl	1660(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1704(%esp)
	movl	$0, 1756(%esp)
	flds	.LC15
	fstpl	1708(%esp)
	movl	%eax, 180(%esp)
	leal	1704(%esp), %eax
	flds	.LC25
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	1716(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1760(%esp)
	movl	$0, 1812(%esp)
	flds	.LC26
	fstpl	1764(%esp)
	movl	%eax, 280(%esp)
	leal	1760(%esp), %eax
	flds	.LC27
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	1772(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1816(%esp)
	movl	$0, 1868(%esp)
	flds	.LC16
	movl	%eax, 284(%esp)
	leal	1816(%esp), %eax
	fstpl	1820(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	1828(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1872(%esp)
	movl	$0, 1924(%esp)
	flds	.LC28
	fstl	1876(%esp)
	movl	%eax, 288(%esp)
	leal	1872(%esp), %eax
	flds	32(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	1884(%esp)
	movl	%eax, (%esp)
	fstps	48(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1928(%esp)
	movl	$0, 1980(%esp)
	flds	48(%esp)
	fstpl	1932(%esp)
	movl	%eax, 184(%esp)
	leal	1928(%esp), %eax
	flds	.LC29
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	1940(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1984(%esp)
	movl	$0, 2036(%esp)
	flds	.LC30
	movl	%eax, 188(%esp)
	leal	1984(%esp), %eax
	fstpl	1988(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	1996(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2040(%esp)
	movl	$0, 2092(%esp)
	flds	.LC31
	fstl	2044(%esp)
	movl	%eax, 292(%esp)
	leal	2040(%esp), %eax
	flds	.LC32
	fstl	2052(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstps	48(%esp)
	fstps	96(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2096(%esp)
	movl	$0, 2148(%esp)
	flds	.LC33
	fstl	2100(%esp)
	movl	%eax, 192(%esp)
	leal	2096(%esp), %eax
	flds	32(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	2108(%esp)
	movl	%eax, (%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2152(%esp)
	movl	$0, 2204(%esp)
	flds	96(%esp)
	fstpl	2156(%esp)
	movl	%eax, 196(%esp)
	leal	2152(%esp), %eax
	flds	.LC34
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	2164(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2208(%esp)
	movl	$0, 2260(%esp)
	flds	80(%esp)
	movl	%eax, 200(%esp)
	leal	2208(%esp), %eax
	fstpl	2212(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	2220(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2264(%esp)
	movl	$0, 2316(%esp)
	flds	.LC19
	movl	%eax, 204(%esp)
	leal	2264(%esp), %eax
	fstpl	2268(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC35
	fstpl	2276(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2320(%esp)
	movl	$0, 2372(%esp)
	movl	%eax, 208(%esp)
	flds	.LC19
	leal	2320(%esp), %eax
	fstpl	2324(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC36
	fstpl	2332(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2376(%esp)
	movl	$0, 2428(%esp)
	flds	64(%esp)
	fstpl	2380(%esp)
	movl	%eax, 212(%esp)
	leal	2376(%esp), %eax
	flds	.LC37
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	2388(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2432(%esp)
	movl	$0, 2484(%esp)
	flds	48(%esp)
	movl	%eax, 296(%esp)
	leal	2432(%esp), %eax
	fstpl	2436(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	2444(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$252, (%esp)
	movl	%eax, 300(%esp)
	call	_Znwj
	movl	28(%esp), %ecx
	movl	216(%esp), %ebp
	fldl	4(%ecx)
	movl	%eax, %edx
	fsubl	4(%ebp)
	movl	64(%ebx), %eax
	movl	$0, (%edx)
	movl	$1, 36(%edx)
	movl	$0, 248(%edx)
	fldl	12(%ecx)
	fsubl	12(%ebp)
	movl	%ebp, 4(%edx)
	movl	%ecx, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%esi, 28(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	$0, 32(%edx)
	movl	$0, 52(%edx)
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L177
	fstp	%st(1)
.L62:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	%ecx, 28(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	28(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	220(%esp), %edx
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	movl	%ecx, 4(%ebp)
	fldl	4(%edx)
	fsubl	4(%ecx)
	movl	%edx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%esi, 28(%ebp)
	movl	$0, 32(%ebp)
	fldl	12(%edx)
	fsubl	12(%ecx)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L178
	fstp	%st(1)
.L64:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	220(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	224(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%esi, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L179
	fstp	%st(1)
.L66:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	248(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	244(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	fsubl	4(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%esi, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L180
	fstp	%st(1)
.L68:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	248(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	216(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%esi, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L181
	fstp	%st(1)
.L70:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	132(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	224(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	fsubl	4(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%esi, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L182
	fstp	%st(1)
.L72:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	132(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	136(%esp), %ebp
	movl	%ecx, 4(%edx)
	movl	124(%esp), %ecx
	movl	$1, (%edx)
	movl	%eax, 48(%edx)
	movl	%eax, 52(%edx)
	fldl	4(%ebp)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	movl	%eax, 68(%edx)
	movl	132(%esp), %eax
	movl	$0, 36(%edx)
	movl	%ebp, 8(%edx)
	movl	%esi, 28(%edx)
	fsubl	4(%eax)
	movl	%ecx, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L183
	fstp	%st(1)
.L74:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	228(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	136(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	fsubl	4(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%esi, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L184
	fstp	%st(1)
.L76:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	228(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	160(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%esi, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L185
	fstp	%st(1)
.L78:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	164(%esp), %ecx
	movl	120(%esp), %edx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	fldl	4(%ecx)
	movl	%edx, 248(%ebp)
	movl	160(%esp), %edx
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	movl	160(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	124(%esp), %edx
	movl	$0, 36(%ebp)
	movl	%ecx, 8(%ebp)
	fsubl	4(%eax)
	movl	%esi, 28(%ebp)
	movl	%edx, 32(%ebp)
	fldl	12(%ecx)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L186
	fstp	%st(1)
.L80:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	164(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	232(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%esi, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L187
	fstp	%st(1)
.L82:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	168(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	232(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	fsubl	4(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%esi, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L188
	fstp	%st(1)
.L84:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	168(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	172(%esp), %ebp
	movl	%ecx, 4(%edx)
	movl	124(%esp), %ecx
	movl	$1, (%edx)
	movl	%eax, 48(%edx)
	movl	%eax, 52(%edx)
	fldl	4(%ebp)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	movl	%eax, 68(%edx)
	movl	168(%esp), %eax
	movl	$0, 36(%edx)
	movl	%ebp, 8(%edx)
	movl	%esi, 28(%edx)
	fsubl	4(%eax)
	movl	%ecx, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L189
	fstp	%st(1)
.L86:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	236(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	172(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	fsubl	4(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%esi, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L190
	fstp	%st(1)
.L88:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	252(%esp), %ecx
	movl	%eax, %edx
	movl	68(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	136(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	124(%esp), %eax
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%ebp, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L191
	fstp	%st(1)
.L90:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	252(%esp), %ecx
	movl	%eax, %ebp
	movl	68(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	160(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	124(%esp), %eax
	fsubl	4(%edx)
	movl	$1, 36(%ebp)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L192
	fstp	%st(1)
.L92:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	256(%esp), %ecx
	movl	%eax, %edx
	movl	68(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	164(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	124(%esp), %eax
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%ebp, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L193
	fstp	%st(1)
.L94:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	256(%esp), %ecx
	movl	%eax, %ebp
	movl	68(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	168(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	124(%esp), %eax
	fsubl	4(%edx)
	movl	$1, 36(%ebp)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L194
	fstp	%st(1)
.L96:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	132(%esp), %ecx
	movl	%eax, %edx
	movl	68(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	260(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	124(%esp), %eax
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%ebp, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L195
	fstp	%st(1)
.L98:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	268(%esp), %ecx
	movl	%eax, %ebp
	movl	68(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	260(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	124(%esp), %eax
	fsubl	4(%edx)
	movl	$1, 36(%ebp)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L196
	fstp	%st(1)
.L100:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	268(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	272(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	124(%esp), %eax
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%ebp, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L197
	fstp	%st(1)
.L102:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	264(%esp), %ecx
	movl	%eax, %ebp
	movl	68(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	272(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	124(%esp), %eax
	fsubl	4(%edx)
	movl	$1, 36(%ebp)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L198
	fstp	%st(1)
.L104:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	68(%ebx), %edx
	movl	264(%esp), %ecx
	movl	%ebp, 248(%eax)
	movl	172(%esp), %ebp
	movl	%edx, 48(%eax)
	movl	124(%esp), %edx
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ecx, 4(%eax)
	movl	%ebp, 8(%eax)
	movl	%edx, 28(%eax)
	movl	$0, 32(%eax)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L199
	fstp	%st(1)
.L106:
	fstpl	12(%eax)
	movl	64(%ebx), %edx
	movl	%esi, %ecx
	fld1
	fstpl	40(%eax)
	movl	%eax, 8(%esp)
	leal	2488(%esp), %eax
	flds	.LC38
	fstl	2492(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	flds	.LC39
	fstpl	2500(%esp)
	movb	$0, 2488(%esp)
	fstps	32(%esp)
	movl	$0, 2540(%esp)
	movl	$30, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%esi, %ecx
	movb	$0, 2544(%esp)
	movl	$0, 2596(%esp)
	movl	$30, 4(%esp)
	flds	32(%esp)
	fstpl	2548(%esp)
	movl	%eax, 8(%esp)
	leal	2544(%esp), %eax
	flds	.LC40
	fstl	2556(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	32(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%esi, %ecx
	movb	$0, 2600(%esp)
	movl	$0, 2652(%esp)
	movl	$30, 4(%esp)
	flds	.LC30
	fstpl	2604(%esp)
	movl	%eax, 8(%esp)
	leal	2600(%esp), %eax
	flds	32(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	2612(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%esi, %ecx
	movb	$0, 2656(%esp)
	movl	$0, 2708(%esp)
	movl	$30, 4(%esp)
	flds	.LC41
	fstpl	2660(%esp)
	movl	%eax, 8(%esp)
	leal	2656(%esp), %eax
	flds	32(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	2668(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	$252, (%esp)
	movl	%eax, %ebp
	call	_Znwj
	movl	276(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	176(%esp), %ebp
	movl	$1, (%edx)
	movl	$0, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%edi, 28(%edx)
	movl	%esi, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	%eax, 52(%edx)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 68(%edx)
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L200
	fstp	%st(1)
.L108:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	276(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	180(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	$0, 36(%ebp)
	fsubl	4(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%edi, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%esi, 32(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L201
	fstp	%st(1)
.L110:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	236(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	176(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%esi, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L202
	fstp	%st(1)
.L112:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	240(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	176(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	fsubl	4(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%edi, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L203
	fstp	%st(1)
.L114:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	180(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	244(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%esi, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 52(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L204
	fstp	%st(1)
.L116:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	280(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	240(%esp), %edx
	fldl	4(%ecx)
	movl	$0, 0(%ebp)
	movl	$1, 36(%ebp)
	fsubl	4(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%edi, 28(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L205
	fstp	%st(1)
.L118:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	280(%esp), %edx
	movl	%eax, %ecx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%ecx)
	movl	284(%esp), %ebp
	movl	$0, (%ecx)
	movl	$1, 36(%ecx)
	movl	%edx, 4(%ecx)
	fldl	4(%ebp)
	fsubl	4(%edx)
	movl	%ebp, 8(%ecx)
	movl	%eax, 48(%ecx)
	movl	%edi, 28(%ecx)
	movl	$0, 32(%ecx)
	fldl	12(%ebp)
	fsubl	12(%edx)
	movl	$0, 52(%ecx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ecx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L206
	fstp	%st(1)
.L120:
	fstpl	12(%ecx)
	fld1
	fstpl	40(%ecx)
	movl	%ecx, 28(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	28(%esp), %ecx
	movl	180(%esp), %ebp
	movl	64(%ebx), %edx
	movl	%ecx, 248(%eax)
	movl	288(%esp), %ecx
	fldl	4(%ebp)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	fsubl	4(%ecx)
	movl	%ecx, 4(%eax)
	movl	%ebp, 8(%eax)
	movl	%edx, 48(%eax)
	movl	%edi, 28(%eax)
	fldl	12(%ebp)
	fsubl	12(%ecx)
	movl	$0, 32(%eax)
	movl	$0, 52(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L207
	fstp	%st(1)
.L122:
	fstpl	12(%eax)
	movl	%edi, %ecx
	fld1
	fstpl	40(%eax)
	movl	%eax, 8(%esp)
	leal	2712(%esp), %eax
	flds	.LC42
	fstpl	2716(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	flds	.LC43
	fstl	2724(%esp)
	movb	$0, 2712(%esp)
	fstps	96(%esp)
	movl	$0, 2764(%esp)
	movl	$20, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 2768(%esp)
	movl	$0, 2820(%esp)
	movl	$20, 4(%esp)
	flds	.LC42
	fstpl	2772(%esp)
	movl	%eax, 8(%esp)
	leal	2768(%esp), %eax
	flds	.LC44
	fstl	2780(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	80(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 2824(%esp)
	movl	$0, 2876(%esp)
	movl	$20, 4(%esp)
	flds	.LC42
	fstpl	2828(%esp)
	movl	%eax, 8(%esp)
	leal	2824(%esp), %eax
	flds	.LC45
	fstl	2836(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	64(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 2880(%esp)
	movl	$0, 2932(%esp)
	movl	$20, 4(%esp)
	flds	.LC42
	fstpl	2884(%esp)
	movl	%eax, 8(%esp)
	leal	2880(%esp), %eax
	flds	.LC46
	fstl	2892(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	48(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 2936(%esp)
	movl	$0, 2988(%esp)
	movl	$20, 4(%esp)
	flds	.LC42
	fstpl	2940(%esp)
	movl	%eax, 8(%esp)
	leal	2936(%esp), %eax
	flds	.LC47
	fstl	2948(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	32(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 2992(%esp)
	movl	$0, 3044(%esp)
	movl	$20, 4(%esp)
	flds	.LC48
	fstpl	2996(%esp)
	movl	%eax, 8(%esp)
	leal	2992(%esp), %eax
	flds	.LC49
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3004(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 3048(%esp)
	movl	$0, 3100(%esp)
	movl	$20, 4(%esp)
	flds	.LC48
	fstpl	3052(%esp)
	movl	%eax, 8(%esp)
	leal	3048(%esp), %eax
	flds	96(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3060(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 3104(%esp)
	movl	$0, 3156(%esp)
	movl	$20, 4(%esp)
	flds	.LC48
	fstpl	3108(%esp)
	movl	%eax, 8(%esp)
	leal	3104(%esp), %eax
	flds	80(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3116(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 3160(%esp)
	movl	$0, 3212(%esp)
	movl	$20, 4(%esp)
	flds	.LC48
	fstpl	3164(%esp)
	movl	%eax, 8(%esp)
	leal	3160(%esp), %eax
	flds	64(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3172(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 3216(%esp)
	movl	$0, 3268(%esp)
	movl	$20, 4(%esp)
	flds	.LC48
	fstpl	3220(%esp)
	movl	%eax, 8(%esp)
	leal	3216(%esp), %eax
	flds	48(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3228(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movl	64(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 3272(%esp)
	movl	$0, 3324(%esp)
	movl	$20, 4(%esp)
	flds	.LC48
	fstpl	3276(%esp)
	movl	%eax, 8(%esp)
	leal	3272(%esp), %eax
	flds	32(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3284(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.7
	movb	$0, 3328(%esp)
	movl	$0, 3380(%esp)
	flds	.LC50
	movl	%eax, %ebp
	fstl	3332(%esp)
	leal	3328(%esp), %eax
	flds	.LC51
	fstl	3340(%esp)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstps	48(%esp)
	fstps	64(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3384(%esp)
	movl	$0, 3436(%esp)
	flds	.LC52
	fstl	3388(%esp)
	movl	%eax, 124(%esp)
	leal	3384(%esp), %eax
	flds	64(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	3396(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3440(%esp)
	movl	$0, 3492(%esp)
	flds	32(%esp)
	movl	%eax, %ecx
	fstpl	3444(%esp)
	leal	3440(%esp), %eax
	flds	.LC53
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	3452(%esp)
	movl	%ecx, 28(%esp)
	fstps	32(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3496(%esp)
	movl	$0, 3548(%esp)
	flds	48(%esp)
	movl	%eax, 132(%esp)
	leal	3496(%esp), %eax
	fstpl	3500(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	3508(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$252, (%esp)
	movl	%eax, 136(%esp)
	call	_Znwj
	movl	28(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%edx)
	movl	124(%esp), %ebp
	movl	$100, (%edx)
	movl	%eax, 48(%edx)
	movl	%eax, 52(%edx)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	movl	%eax, 68(%edx)
	movl	124(%esp), %eax
	movl	%ebp, 4(%edx)
	movl	128(%esp), %ebp
	movl	$0, 36(%edx)
	movl	%ecx, 8(%edx)
	fsubl	4(%eax)
	movl	%ebp, 28(%edx)
	movl	%esi, 32(%edx)
	fldl	12(%ecx)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L208
	fstp	%st(1)
.L124:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	%ecx, 28(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	28(%esp), %ecx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	132(%esp), %edx
	movl	$101, 0(%ebp)
	movl	$0, 36(%ebp)
	movl	%eax, 48(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	movl	132(%esp), %eax
	movl	%edx, 8(%ebp)
	movl	128(%esp), %edx
	movl	%ecx, 4(%ebp)
	movl	%esi, 32(%ebp)
	fldl	4(%eax)
	fsubl	4(%ecx)
	movl	%edx, 28(%ebp)
	fldl	12(%eax)
	fsubl	12(%ecx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L209
	fstp	%st(1)
.L126:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	132(%esp), %ecx
	movl	%eax, %edx
	movl	64(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	136(%esp), %ebp
	movl	%ecx, 4(%edx)
	movl	128(%esp), %ecx
	movl	$102, (%edx)
	movl	%eax, 48(%edx)
	movl	%eax, 52(%edx)
	fldl	4(%ebp)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	movl	%eax, 68(%edx)
	movl	132(%esp), %eax
	movl	$0, 36(%edx)
	movl	%ebp, 8(%edx)
	movl	%ecx, 28(%edx)
	fsubl	4(%eax)
	movl	%esi, 32(%edx)
	fldl	12(%ebp)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%edx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L210
	fstp	%st(1)
.L128:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 120(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	124(%esp), %ecx
	movl	120(%esp), %edx
	movl	%eax, %ebp
	movl	64(%ebx), %eax
	fldl	4(%ecx)
	movl	%edx, 248(%ebp)
	movl	136(%esp), %edx
	movl	$103, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	movl	136(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	128(%esp), %edx
	movl	$0, 36(%ebp)
	movl	%ecx, 8(%ebp)
	fsubl	4(%eax)
	movl	%edx, 28(%ebp)
	movl	%esi, 32(%ebp)
	fldl	12(%ecx)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L211
	fstp	%st(1)
.L130:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	leal	3552(%esp), %eax
	flds	.LC54
	fstl	3556(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	.LC55
	fstl	3564(%esp)
	fxch	%st(1)
	movb	$0, 3552(%esp)
	fstps	48(%esp)
	fstps	64(%esp)
	movl	$0, 3604(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3608(%esp)
	movl	$0, 3660(%esp)
	flds	.LC56
	fstl	3612(%esp)
	movl	%eax, 124(%esp)
	leal	3608(%esp), %eax
	flds	64(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstpl	3620(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3664(%esp)
	movl	$0, 3716(%esp)
	flds	32(%esp)
	movl	%eax, %edx
	fstpl	3668(%esp)
	leal	3664(%esp), %eax
	flds	.LC57
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	fstl	3676(%esp)
	movl	%edx, 120(%esp)
	fstps	32(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3720(%esp)
	movl	$0, 3772(%esp)
	movl	%eax, %ecx
	flds	48(%esp)
	leal	3720(%esp), %eax
	fstpl	3724(%esp)
	movl	%eax, 4(%esp)
	movl	128(%ebx), %eax
	flds	32(%esp)
	fstpl	3732(%esp)
	movl	%ecx, 28(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$252, (%esp)
	movl	%eax, 128(%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	28(%esp), %ecx
	movl	%eax, %esi
	movl	64(%ebx), %eax
	fldl	4(%edx)
	movl	%ebp, 248(%esi)
	movl	124(%esp), %ebp
	movl	$100, (%esi)
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	124(%esp), %eax
	movl	%ebp, 4(%esi)
	movl	156(%esp), %ebp
	movl	$0, 36(%esi)
	movl	%edx, 8(%esi)
	fsubl	4(%eax)
	movl	%ebp, 28(%esi)
	movl	%edi, 32(%esi)
	fldl	12(%edx)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L212
	fstp	%st(1)
.L132:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	%edx, 120(%esp)
	movl	%ecx, 28(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	28(%esp), %ecx
	movl	120(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	%esi, 248(%ebp)
	movl	156(%esp), %esi
	movl	$101, 0(%ebp)
	movl	$0, 36(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%esi, 28(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%edi, 32(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L213
	fstp	%st(1)
.L134:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	%ecx, 28(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	128(%esp), %edx
	movl	28(%esp), %ecx
	fldl	4(%edx)
	movl	%eax, %esi
	fsubl	4(%ecx)
	movl	64(%ebx), %eax
	movl	%ebp, 248(%esi)
	movl	156(%esp), %ebp
	movl	$102, (%esi)
	movl	$0, 36(%esi)
	fldl	12(%edx)
	fsubl	12(%ecx)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%eax, 48(%esi)
	movl	%ebp, 28(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%edi, 32(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L214
	fstp	%st(1)
.L136:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	124(%esp), %ecx
	movl	128(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	%esi, 248(%ebp)
	movl	156(%esp), %esi
	movl	$103, 0(%ebp)
	movl	$0, 36(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%esi, 28(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%edi, 32(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L215
	fstp	%st(1)
.L138:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	184(%esp), %ecx
	movl	284(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%ebp, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	%eax, 48(%esi)
	movl	%edi, 28(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	$0, 32(%esi)
	movl	$0, 52(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L216
	fstp	%st(1)
.L140:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	188(%esp), %ecx
	movl	184(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	%esi, 248(%ebp)
	movl	140(%esp), %esi
	movl	$1, 0(%ebp)
	movl	$0, 36(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%edi, 28(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%esi, 32(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L217
	fstp	%st(1)
.L142:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	292(%esp), %ecx
	movl	188(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%ebp, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	%eax, 48(%esi)
	movl	%edi, 28(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	$0, 32(%esi)
	movl	$0, 52(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L218
	fstp	%st(1)
.L144:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	288(%esp), %ecx
	movl	292(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	movl	%esi, 248(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%eax, 48(%ebp)
	movl	%edi, 28(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	$0, 32(%ebp)
	movl	$0, 52(%ebp)
	fstpl	20(%ebp)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L219
	fstp	%st(1)
.L146:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	192(%esp), %ecx
	movl	184(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%ebp, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%esi)
	movl	140(%esp), %eax
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	$0, 32(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%esi)
	movl	$0, 52(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L220
	fstp	%st(1)
.L148:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	196(%esp), %ecx
	movl	192(%esp), %edx
	movl	144(%esp), %ebp
	fldl	4(%ecx)
	movl	%eax, %edi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	%esi, 248(%edi)
	movl	140(%esp), %esi
	movl	$1, (%edi)
	movl	$0, 36(%edi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edx, 4(%edi)
	movl	%ecx, 8(%edi)
	movl	%eax, 48(%edi)
	movl	%esi, 28(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%ebp, 32(%edi)
	movl	%eax, 52(%edi)
	movl	%eax, 56(%edi)
	movl	%eax, 60(%edi)
	movl	%eax, 64(%edi)
	movl	%eax, 68(%edi)
	fstpl	20(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L221
	fstp	%st(1)
.L150:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	$252, (%esp)
	call	_Znwj
	movl	188(%esp), %ecx
	movl	196(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%edi, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%esi)
	movl	140(%esp), %eax
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	$0, 32(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%esi)
	movl	$0, 52(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L222
	fstp	%st(1)
.L152:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	200(%esp), %ecx
	movl	192(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %edi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%edi)
	movl	$1, 36(%edi)
	movl	%esi, 248(%edi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%edi)
	movl	144(%esp), %eax
	movl	%edx, 4(%edi)
	movl	%ecx, 8(%edi)
	movl	$0, 32(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%edi)
	movl	$0, 52(%edi)
	fstpl	20(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L223
	fstp	%st(1)
.L154:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	$252, (%esp)
	call	_Znwj
	movl	204(%esp), %ecx
	movl	200(%esp), %edx
	movl	144(%esp), %ebp
	movl	%eax, %esi
	movl	64(%ebx), %eax
	fldl	4(%ecx)
	movl	%edx, 4(%esi)
	movl	148(%esp), %edx
	movl	$1, (%esi)
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	200(%esp), %eax
	movl	$0, 36(%esi)
	movl	%edi, 248(%esi)
	movl	%ecx, 8(%esi)
	fsubl	4(%eax)
	movl	%ebp, 28(%esi)
	movl	%edx, 32(%esi)
	fldl	12(%ecx)
	fsubl	12(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L224
	fstp	%st(1)
.L156:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	196(%esp), %ecx
	movl	204(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %edi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%edi)
	movl	$1, 36(%edi)
	movl	%esi, 248(%edi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%edi)
	movl	144(%esp), %eax
	movl	%edx, 4(%edi)
	movl	%ecx, 8(%edi)
	movl	$0, 32(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%edi)
	movl	$0, 52(%edi)
	fstpl	20(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L225
	fstp	%st(1)
.L158:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	$252, (%esp)
	call	_Znwj
	movl	208(%esp), %ecx
	movl	200(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%edi, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%esi)
	movl	148(%esp), %eax
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	$0, 32(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%esi)
	movl	$0, 52(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L226
	fstp	%st(1)
.L160:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	212(%esp), %ecx
	movl	208(%esp), %edx
	movl	152(%esp), %ebp
	fldl	4(%ecx)
	movl	%eax, %edi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	%esi, 248(%edi)
	movl	148(%esp), %esi
	movl	$1, (%edi)
	movl	$0, 36(%edi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edx, 4(%edi)
	movl	%ecx, 8(%edi)
	movl	%eax, 48(%edi)
	movl	%esi, 28(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%ebp, 32(%edi)
	movl	%eax, 52(%edi)
	movl	%eax, 56(%edi)
	movl	%eax, 60(%edi)
	movl	%eax, 64(%edi)
	movl	%eax, 68(%edi)
	fstpl	20(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L227
	fstp	%st(1)
.L162:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	$252, (%esp)
	call	_Znwj
	movl	204(%esp), %ecx
	movl	212(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%edi, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%esi)
	movl	148(%esp), %eax
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	$0, 32(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%esi)
	movl	$0, 52(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L228
	fstp	%st(1)
.L164:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	296(%esp), %ecx
	movl	208(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %edi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%edi)
	movl	$1, 36(%edi)
	movl	%esi, 248(%edi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%edi)
	movl	152(%esp), %eax
	movl	%edx, 4(%edi)
	movl	%ecx, 8(%edi)
	movl	$0, 32(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%edi)
	movl	$0, 52(%edi)
	fstpl	20(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L229
	fstp	%st(1)
.L166:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	$252, (%esp)
	call	_Znwj
	movl	300(%esp), %ecx
	movl	296(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%edi, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%esi)
	movl	152(%esp), %eax
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	$0, 32(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%esi)
	movl	$0, 52(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L230
	fstp	%st(1)
.L168:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	212(%esp), %ecx
	movl	300(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %edi
	fsubl	4(%edx)
	movl	64(%ebx), %eax
	movl	$1, (%edi)
	movl	$1, 36(%edi)
	movl	%esi, 248(%edi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%edi)
	movl	152(%esp), %eax
	movl	%edx, 4(%edi)
	movl	%ecx, 8(%edi)
	movl	$0, 32(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%edi)
	movl	$0, 52(%edi)
	fstpl	20(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L231
	fstp	%st(1)
.L170:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	$20, (%esp)
	call	_Znwj
.LEHE15:
	movl	%eax, %esi
	movl	128(%ebx), %eax
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
.LEHB16:
	call	_ZN7BspTreeC1EP4WallP9VertexSet
.LEHE16:
	movl	%esi, 140(%ebx)
	addl	$3788, %esp
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
.L177:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	28(%esp), %ecx
	movl	120(%esp), %edx
	jmp	.L62
.L231:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L170
.L230:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L168
.L229:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L166
.L228:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L164
.L227:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L162
.L226:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L160
.L225:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L158
.L224:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L156
.L223:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L154
.L222:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L152
.L221:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L150
.L220:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L148
.L219:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L146
.L218:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L144
.L217:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L142
.L216:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L140
.L215:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L138
.L214:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L136
.L213:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	28(%esp), %ecx
	jmp	.L134
.L212:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	28(%esp), %ecx
	movl	120(%esp), %edx
	jmp	.L132
.L211:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L130
.L210:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L128
.L209:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L126
.L208:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	28(%esp), %ecx
	movl	120(%esp), %edx
	jmp	.L124
.L207:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 120(%esp)
	call	sqrt
	movl	64(%ebx), %edx
	movl	120(%esp), %eax
	jmp	.L122
.L206:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%ecx, 28(%esp)
	call	sqrt
	movl	28(%esp), %ecx
	jmp	.L120
.L205:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L118
.L204:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L116
.L203:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L114
.L202:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L112
.L201:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L110
.L200:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L108
.L199:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 120(%esp)
	call	sqrt
	movl	120(%esp), %eax
	jmp	.L106
.L198:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L104
.L197:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L102
.L196:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L100
.L195:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L98
.L194:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L96
.L193:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L94
.L192:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L92
.L191:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L90
.L190:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L88
.L189:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L86
.L188:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L84
.L187:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L82
.L186:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L80
.L185:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L78
.L184:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L76
.L183:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L74
.L182:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L72
.L181:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L70
.L180:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L68
.L179:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 120(%esp)
	call	sqrt
	movl	120(%esp), %edx
	jmp	.L66
.L178:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L64
.L174:
.L176:
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB17:
	call	_Unwind_Resume
.LEHE17:
.L175:
	jmp	.L176
	.cfi_endproc
.LFE1332:
	.section	.gcc_except_table
.LLSDA1332:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1332-.LLSDACSB1332
.LLSDACSB1332:
	.uleb128 .LEHB13-.LFB1332
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB1332
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L174-.LFB1332
	.uleb128 0
	.uleb128 .LEHB15-.LFB1332
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB1332
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L175-.LFB1332
	.uleb128 0
	.uleb128 .LEHB17-.LFB1332
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE1332:
	.text
	.size	_ZN7XEngine16setup_level_dataEv, .-_ZN7XEngine16setup_level_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine10setup_dataEv
	.type	_ZN7XEngine10setup_dataEv, @function
_ZN7XEngine10setup_dataEv:
.LFB1325:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	$0, (%esp)
	call	time
	movl	%eax, (%esp)
	call	srand
	movl	20(%ebx), %eax
	movl	$20, 28(%ebx)
	movl	$20, 36(%ebx)
	leal	-21(%eax), %edx
	movl	%edx, 32(%ebx)
	movl	24(%ebx), %edx
	leal	-21(%edx), %ecx
	movl	%ecx, 40(%ebx)
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 44(%ebx)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fdivl	.LC58
	fnstcw	26(%esp)
	movzwl	26(%esp), %eax
	movb	$12, %ah
	movw	%ax, 24(%esp)
	fldcw	24(%esp)
	fistpl	52(%ebx)
	fldcw	26(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine14setup_texturesEv
	movl	%ebx, (%esp)
	call	_ZN7XEngine17setup_screen_dataEv
	movl	%ebx, (%esp)
	call	_ZN7XEngine12setup_playerEv
	movl	%ebx, 48(%esp)
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	jmp	_ZN7XEngine16setup_level_dataEv
	.cfi_endproc
.LFE1325:
	.size	_ZN7XEngine10setup_dataEv, .-_ZN7XEngine10setup_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngineC2EiiP14XScreenRgbInfo
	.type	_ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1318:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1318
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
	movl	92(%esp), %edi
	movl	88(%esp), %edx
	movl	84(%esp), %ebp
	movl	$_ZTV7XEngine+8, (%ebx)
	movl	$60, 56(%ebx)
	movl	%edi, 4(%ebx)
	movl	%edx, 36(%esp)
	movl	$20, (%esp)
.LEHB18:
	call	_Znwj
.LEHE18:
	movl	36(%esp), %edx
	movl	%eax, %esi
	movsbl	4(%edi), %eax
	movl	%eax, 16(%esp)
	movl	(%edi), %eax
	movl	%edx, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 12(%esp)
.LEHB19:
	call	_ZN11XRasterizerC1EiiPhc
.LEHE19:
	movl	12(%esi), %eax
	movl	%esi, 8(%ebx)
	movl	%eax, 16(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 20(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 24(%ebx)
	movl	$40, (%esp)
.LEHB20:
	call	_Znwj
	movl	%edi, 4(%eax)
	movl	$0, 8(%eax)
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	movl	%eax, 12(%ebx)
	movl	$0, (%esp)
	call	time
	movl	%eax, (%esp)
	call	srand
	movl	20(%ebx), %eax
	movl	$20, 28(%ebx)
	movl	$20, 36(%ebx)
	leal	-21(%eax), %edx
	movl	%edx, 32(%ebx)
	movl	24(%ebx), %edx
	leal	-21(%edx), %ecx
	movl	%ecx, 40(%ebx)
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 44(%ebx)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 44(%esp)
	fildl	44(%esp)
	fdivl	.LC58
	fnstcw	42(%esp)
	movzwl	42(%esp), %eax
	movb	$12, %ah
	movw	%ax, 40(%esp)
	fldcw	40(%esp)
	fistpl	52(%ebx)
	fldcw	42(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine14setup_texturesEv
	movl	%ebx, (%esp)
	call	_ZN7XEngine17setup_screen_dataEv
	movl	%ebx, (%esp)
	call	_ZN7XEngine12setup_playerEv
	movl	%ebx, 80(%esp)
	addl	$60, %esp
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
	jmp	_ZN7XEngine16setup_level_dataEv
.L235:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE20:
	.cfi_endproc
.LFE1318:
	.section	.gcc_except_table
.LLSDA1318:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1318-.LLSDACSB1318
.LLSDACSB1318:
	.uleb128 .LEHB18-.LFB1318
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB1318
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L235-.LFB1318
	.uleb128 0
	.uleb128 .LEHB20-.LFB1318
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE1318:
	.text
	.size	_ZN7XEngineC2EiiP14XScreenRgbInfo, .-_ZN7XEngineC2EiiP14XScreenRgbInfo
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	.type	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_, @function
_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_:
.LFB1341:
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
	subl	$188, %esp
	.cfi_def_cfa_offset 208
	movl	212(%esp), %edx
	movl	208(%esp), %ecx
	movl	4(%edx), %esi
	cmpb	$0, (%esi)
	je	.L237
	fldl	36(%esi)
.L238:
	movl	8(%edx), %ebx
	fstl	56(%esp)
	cmpb	$0, (%ebx)
	je	.L241
	fldl	36(%ebx)
.L242:
	fstl	64(%esp)
	fxch	%st(1)
	fucomi	%st(1), %st
	fld	%st(1)
	fcmovnbe	%st(1), %st
	xorl	%eax, %eax
	flds	.LC59
	fucomip	%st(1), %st
	fstp	%st(0)
	jae	.L302
	fldl	44(%esi)
	xorl	%esi, %esi
	fstl	40(%esp)
	fldl	44(%ebx)
	movl	$1, %ebx
	fstl	48(%esp)
	fxch	%st(2)
	fstl	116(%edx)
	fxch	%st(1)
	fstl	124(%edx)
	fxch	%st(3)
	fstl	172(%edx)
	fxch	%st(2)
	fstl	180(%edx)
	fucomi	%st(3), %st
	jbe	.L248
	fxch	%st(3)
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
	movl	$1, %esi
	xorl	%ebx, %ebx
.L248:
	fldz
	fucomi	%st(3), %st
	jbe	.L296
	fstp	%st(0)
	fld1
	fld	%st(3)
	fsubr	%st(1), %st
	fxch	%st(5)
	fsub	%st(2), %st
	fxch	%st(4)
	fsubrp	%st, %st(3)
	fxch	%st(3)
	fdivp	%st, %st(2)
	fxch	%st(3)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstl	40(%esp,%ebx,8)
	fxch	%st(1)
	fstl	56(%esp,%ebx,8)
	fldl	40(%esp,%esi,8)
	fldl	56(%esp,%esi,8)
	jmp	.L252
	.p2align 4,,7
	.p2align 3
.L308:
	fxch	%st(3)
	fxch	%st(1)
.L252:
	movl	52(%ecx), %edi
	movl	%edi, 32(%esp)
	movl	20(%ecx), %eax
	fildl	32(%esp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fnstcw	38(%esp)
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	fdiv	%st(3), %st
	sarl	%ebp
	movl	%ebp, 8(%esp)
	movzwl	38(%esp), %ebp
	movl	%ebp, %eax
	movb	$12, %ah
	movw	%ax, 36(%esp)
	movl	8(%esp), %eax
	fldcw	36(%esp)
	fistpl	32(%esp)
	fldcw	38(%esp)
	movl	32(%esp), %ebp
	addl	8(%esp), %ebp
	movl	%ebp, 32(%esp)
	fildl	32(%esp)
	fstpl	168(%esp,%ebx,8)
	fxch	%st(1)
	fmulp	%st, %st(3)
	fdivr	%st, %st(2)
	fxch	%st(2)
	fldcw	36(%esp)
	fistpl	32(%esp)
	fldcw	38(%esp)
	movl	32(%esp), %ebp
	addl	%ebp, %eax
	movl	%eax, 32(%esp)
	movl	$0, %eax
	fildl	32(%esp)
	fstl	168(%esp,%esi,8)
	fldl	168(%esp,%ebx,8)
	fxch	%st(1)
	fucomi	%st(1), %st
	fildl	28(%ecx)
	jbe	.L297
	fucomip	%st(1), %st
	jae	.L303
	fildl	32(%ecx)
	fxch	%st(2)
	fucomi	%st(2), %st
	fstp	%st(2)
	jae	.L304
	movl	$1, 28(%esp)
	movl	$0, 24(%esp)
	jmp	.L256
	.p2align 4,,7
	.p2align 3
.L297:
	fucomip	%st(2), %st
	jae	.L305
	fildl	32(%ecx)
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jae	.L306
	movl	$0, 28(%esp)
	movl	$1, 24(%esp)
.L256:
	movl	216(%esp), %eax
	movl	28(%edx,%eax,4), %eax
	movl	12(%eax), %ebp
	movl	%ebp, 20(%esp)
	imull	%edi, %ebp
	movl	%ebp, 32(%esp)
	fildl	32(%esp)
	fld	%st(0)
	fdiv	%st(4), %st
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	.L257
	jne	.L257
	fstp	%st(0)
	fld1
.L257:
	movl	120(%ecx), %ebp
	imull	%edi, %ebp
	movl	%ebp, 32(%esp)
	fildl	32(%esp)
	fildl	44(%ecx)
	fstpl	8(%esp)
	fld	%st(0)
	fdiv	%st(6), %st
	faddl	8(%esp)
	fstl	120(%esp,%ebx,8)
	fsubp	%st, %st(2)
	fld1
	fadd	%st, %st(2)
	fxch	%st(2)
	fstpl	104(%esp,%ebx,8)
	fxch	%st(2)
	fdiv	%st(6), %st
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	.L307
	fcmove	%st(1), %st
	fstp	%st(1)
	fxch	%st(1)
	jmp	.L259
	.p2align 4,,7
	.p2align 3
.L307:
	fstp	%st(1)
	fxch	%st(1)
.L259:
	fdiv	%st(5), %st
	movl	36(%edx), %ebp
	testl	%ebp, %ebp
	faddl	8(%esp)
	fstl	120(%esp,%esi,8)
	fsub	%st, %st(1)
	fld1
	faddp	%st, %st(2)
	fxch	%st(1)
	fstl	104(%esp,%esi,8)
	je	.L261
	fldl	104(%esp,%ebx,8)
	fldl	120(%esp,%ebx,8)
	fxch	%st(5)
.L262:
	fldcw	36(%esp)
	fistpl	72(%edx)
	fldcw	38(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %ebp
	fldcw	36(%esp)
	fistpl	80(%edx)
	fldcw	38(%esp)
	fxch	%st(3)
	fldcw	36(%esp)
	fistpl	88(%edx)
	fldcw	38(%esp)
	fxch	%st(1)
	fldcw	36(%esp)
	fistpl	76(%edx)
	fldcw	38(%esp)
	fxch	%st(1)
	fldcw	36(%esp)
	fistpl	84(%edx)
	fldcw	38(%esp)
	fldcw	36(%esp)
	fistpl	92(%edx)
	fldcw	38(%esp)
	movl	%eax, 240(%edx)
	movl	$1, %eax
	movl	%ebp, 244(%edx)
	fld1
	fdiv	%st, %st(1)
	fxch	%st(1)
	fstpl	224(%edx)
	fdivp	%st, %st(1)
	fstpl	232(%edx)
	jmp	.L247
	.p2align 4,,7
	.p2align 3
.L302:
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L247
	.p2align 4,,7
	.p2align 3
.L303:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L247
	.p2align 4,,7
	.p2align 3
.L304:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L247
	.p2align 4,,7
	.p2align 3
.L305:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L247
	.p2align 4,,7
	.p2align 3
.L306:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L247:
	addl	$188, %esp
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
	.p2align 4,,7
	.p2align 3
.L241:
	.cfi_restore_state
	movl	100(%ecx), %eax
	fldl	4(%ebx)
	fsubl	4(%eax)
	fstl	20(%ebx)
	fldl	12(%ebx)
	fsubl	12(%eax)
	fstl	28(%ebx)
	fldl	104(%ecx)
	fldl	112(%ecx)
	fld	%st(3)
	fmul	%st(2), %st
	fld	%st(3)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstl	36(%ebx)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L298
	fxch	%st(4)
	jmp	.L243
	.p2align 4,,7
	.p2align 3
.L310:
	fxch	%st(4)
.L243:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	136(%ecx), %eax
	movb	$1, (%ebx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%ebx)
	movl	%ebx, (%eax)
	leal	52(%ebx), %eax
	movl	%eax, 136(%ecx)
	jmp	.L242
	.p2align 4,,7
	.p2align 3
.L237:
	movl	100(%ecx), %eax
	fldl	4(%esi)
	fsubl	4(%eax)
	fstl	20(%esi)
	fldl	12(%esi)
	fsubl	12(%eax)
	fstl	28(%esi)
	fldl	104(%ecx)
	fldl	112(%ecx)
	fld	%st(3)
	fmul	%st(2), %st
	fld	%st(3)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstl	36(%esi)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L299
	fxch	%st(4)
	jmp	.L239
	.p2align 4,,7
	.p2align 3
.L309:
	fxch	%st(4)
.L239:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	136(%ecx), %eax
	movb	$1, (%esi)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%esi)
	movl	%esi, (%eax)
	leal	52(%esi), %eax
	movl	%eax, 136(%ecx)
	jmp	.L238
	.p2align 4,,7
	.p2align 3
.L296:
	fucomip	%st(2), %st
	jbe	.L308
	fld1
	fld	%st(2)
	fsubr	%st(1), %st
	fxch	%st(2)
	fsubr	%st(5), %st
	fxch	%st(4)
	fsubrp	%st, %st(3)
	fxch	%st(3)
	fdivp	%st, %st(2)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstl	40(%esp,%esi,8)
	fxch	%st(1)
	fstl	56(%esp,%esi,8)
	fldl	40(%esp,%ebx,8)
	fldl	56(%esp,%ebx,8)
	fxch	%st(2)
	fxch	%st(1)
	fxch	%st(3)
	fxch	%st(1)
	jmp	.L252
	.p2align 4,,7
	.p2align 3
.L299:
	jne	.L309
	fstp	%st(0)
	fld1
	fstl	36(%esi)
	fxch	%st(4)
	jmp	.L239
	.p2align 4,,7
	.p2align 3
.L298:
	jne	.L310
	fstp	%st(0)
	fld1
	fstl	36(%ebx)
	fxch	%st(4)
	jmp	.L243
	.p2align 4,,7
	.p2align 3
.L261:
	fstp	%st(2)
	fxch	%st(1)
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	220(%esp), %eax
	movl	28(%edx,%eax,4), %ecx
	movl	4(%ecx), %eax
	cmpl	%eax, 8(%esp)
	jge	.L263
	movl	%eax, %ebp
	subl	8(%esp), %ebp
	imull	%edi, %ebp
	movl	%ebp, 32(%esp)
	fildl	32(%esp)
	fld	%st(0)
	fdiv	%st(5), %st
	fstl	72(%esp,%ebx,8)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L264
	jne	.L264
	fld1
	fstpl	72(%esp,%ebx,8)
.L264:
	fdiv	%st(5), %st
	fstl	72(%esp,%esi,8)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L300
.L266:
	fldl	120(%esp,%ebx,8)
	fldl	72(%esp,%ebx,8)
	fsubr	%st(1), %st
	fstpl	(%esp)
	fld1
	faddl	(%esp)
	fstpl	152(%esp,%ebx,8)
	fxch	%st(3)
	fsubp	%st, %st(1)
	fld1
	faddp	%st, %st(1)
	fstpl	152(%esp,%esi,8)
.L268:
	movl	20(%esp), %ebp
	addl	8(%esp), %ebp
	addl	12(%ecx), %eax
	cmpl	%eax, %ebp
	jle	.L269
	subl	%eax, %ebp
	imull	%ebp, %edi
	movl	%edi, 32(%esp)
	fildl	32(%esp)
	fld	%st(0)
	fdiv	%st(5), %st
	fstl	88(%esp,%ebx,8)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L270
	jne	.L270
	fld1
	fstpl	88(%esp,%ebx,8)
.L270:
	fdiv	%st(5), %st
	fstl	88(%esp,%esi,8)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L301
.L272:
	fldl	104(%esp,%ebx,8)
	fldl	88(%esp,%ebx,8)
	fadd	%st(1), %st
	fstpl	8(%esp)
	fld1
	fsubrl	8(%esp)
	fstpl	136(%esp,%ebx,8)
	fxch	%st(1)
	fadd	%st(2), %st
	fld1
	fsubrp	%st, %st(1)
	fstl	136(%esp,%esi,8)
.L274:
	fldl	152(%esp,%ebx,8)
	fldcw	36(%esp)
	fistpl	96(%edx)
	fldcw	38(%esp)
	fldl	136(%esp,%ebx,8)
	fldcw	36(%esp)
	fistpl	104(%edx)
	fldcw	38(%esp)
	fldl	152(%esp,%esi,8)
	fldcw	36(%esp)
	fistpl	100(%edx)
	fldcw	38(%esp)
	fldcw	36(%esp)
	fistpl	108(%edx)
	fldcw	38(%esp)
	fldl	168(%esp,%esi,8)
	fldl	120(%esp,%esi,8)
	fxch	%st(3)
	fxch	%st(2)
	fxch	%st(1)
	fxch	%st(4)
	fxch	%st(5)
	jmp	.L262
	.p2align 4,,7
	.p2align 3
.L269:
	fldl	104(%esp,%ebx,8)
	fstl	136(%esp,%ebx,8)
	fxch	%st(1)
	fstl	136(%esp,%esi,8)
	fld	%st(0)
	fxch	%st(2)
	fxch	%st(1)
	jmp	.L274
	.p2align 4,,7
	.p2align 3
.L263:
	fldl	120(%esp,%ebx,8)
	fstl	152(%esp,%ebx,8)
	fxch	%st(2)
	fstpl	152(%esp,%esi,8)
	jmp	.L268
	.p2align 4,,7
	.p2align 3
.L301:
	jne	.L272
	fstp	%st(0)
	fld1
	fstl	88(%esp,%esi,8)
	jmp	.L272
	.p2align 4,,7
	.p2align 3
.L300:
	jne	.L266
	fstp	%st(0)
	fld1
	fstl	72(%esp,%esi,8)
	jmp	.L266
	.cfi_endproc
.LFE1341:
	.size	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_, .-_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13visible_bwallER4Wall
	.type	_ZN7XEngine13visible_bwallER4Wall, @function
_ZN7XEngine13visible_bwallER4Wall:
.LFB1342:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$60, %esp
	.cfi_def_cfa_offset 72
	movl	76(%esp), %eax
	movl	72(%esp), %edx
	movl	4(%eax), %ebx
	cmpb	$0, (%ebx)
	je	.L312
	fldl	36(%ebx)
.L313:
	movl	8(%eax), %ecx
	fstl	32(%esp)
	cmpb	$0, (%ecx)
	je	.L316
	fldl	36(%ecx)
.L317:
	fstl	40(%esp)
	fxch	%st(1)
	fucomi	%st(1), %st
	fld	%st(1)
	fcmovnbe	%st(1), %st
	xorl	%eax, %eax
	flds	.LC59
	fucomip	%st(1), %st
	fstp	%st(0)
	jae	.L345
	fldl	44(%ebx)
	xorl	%esi, %esi
	fstl	16(%esp)
	fldl	44(%ecx)
	movl	$1, %ecx
	fstl	24(%esp)
	fucomi	%st(1), %st
	jbe	.L323
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(3)
	fxch	%st(2)
	movl	$1, %esi
	xorl	%ecx, %ecx
.L323:
	fldz
	fucomi	%st(4), %st
	jbe	.L342
	fstp	%st(0)
	fld1
	fld	%st(4)
	fsubr	%st(1), %st
	fxch	%st(3)
	fsub	%st(2), %st
	fxch	%st(5)
	fsubrp	%st, %st(4)
	fxch	%st(4)
	fdivp	%st, %st(3)
	fxch	%st(1)
	fmulp	%st, %st(2)
	faddp	%st, %st(1)
	fstl	16(%esp,%ecx,8)
	fxch	%st(1)
	fstl	32(%esp,%ecx,8)
	fldl	16(%esp,%esi,8)
	fldl	32(%esp,%esi,8)
	jmp	.L327
	.p2align 4,,7
	.p2align 3
.L346:
	fxch	%st(3)
	fxch	%st(2)
.L327:
	fildl	52(%edx)
	fmul	%st, %st(4)
	fxch	%st(4)
	movl	20(%edx), %eax
	fnstcw	6(%esp)
	movl	%eax, %ebx
	fdivp	%st, %st(3)
	fxch	%st(2)
	shrl	$31, %ebx
	addl	%ebx, %eax
	movzwl	6(%esp), %ebx
	sarl	%eax
	movb	$12, %bh
	movw	%bx, 4(%esp)
	fldcw	4(%esp)
	fistpl	(%esp)
	fldcw	6(%esp)
	movl	(%esp), %ebx
	fmulp	%st, %st(2)
	addl	%eax, %ebx
	movl	%ebx, 48(%esp,%ecx,4)
	fdivrp	%st, %st(1)
	fldcw	4(%esp)
	fistpl	(%esp)
	fldcw	6(%esp)
	movl	(%esp), %ebx
	addl	%eax, %ebx
	xorl	%eax, %eax
	movl	%ebx, 48(%esp,%esi,4)
	movl	48(%esp,%ecx,4), %ecx
	cmpl	%ecx, %ebx
	jle	.L329
	cmpl	28(%edx), %ebx
	jle	.L322
	cmpl	32(%edx), %ecx
	setl	%al
	jmp	.L322
	.p2align 4,,7
	.p2align 3
.L345:
	fstp	%st(0)
	fstp	%st(0)
.L322:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.p2align 4,,7
	.p2align 3
.L316:
	.cfi_restore_state
	movl	100(%edx), %eax
	fldl	4(%ecx)
	fsubl	4(%eax)
	fstl	20(%ecx)
	fldl	12(%ecx)
	fsubl	12(%eax)
	fstl	28(%ecx)
	fldl	104(%edx)
	fldl	112(%edx)
	fld	%st(3)
	fmul	%st(2), %st
	fld	%st(3)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstl	36(%ecx)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L343
	fxch	%st(4)
	jmp	.L318
	.p2align 4,,7
	.p2align 3
.L348:
	fxch	%st(4)
.L318:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	136(%edx), %eax
	movb	$1, (%ecx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%ecx)
	movl	%ecx, (%eax)
	leal	52(%ecx), %eax
	movl	%eax, 136(%edx)
	jmp	.L317
	.p2align 4,,7
	.p2align 3
.L312:
	movl	100(%edx), %ecx
	fldl	4(%ebx)
	fsubl	4(%ecx)
	fstl	20(%ebx)
	fldl	12(%ebx)
	fsubl	12(%ecx)
	fstl	28(%ebx)
	fldl	104(%edx)
	fldl	112(%edx)
	fld	%st(3)
	fmul	%st(2), %st
	fld	%st(3)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstl	36(%ebx)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L344
	fxch	%st(4)
	jmp	.L314
	.p2align 4,,7
	.p2align 3
.L347:
	fxch	%st(4)
.L314:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	136(%edx), %ecx
	movb	$1, (%ebx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%ebx)
	movl	%ebx, (%ecx)
	leal	52(%ebx), %ecx
	movl	%ecx, 136(%edx)
	jmp	.L313
	.p2align 4,,7
	.p2align 3
.L342:
	fucomip	%st(3), %st
	jbe	.L346
	fld1
	fld	%st(3)
	fsubr	%st(1), %st
	fxch	%st(2)
	fsubr	%st(3), %st
	fxch	%st(5)
	fsubrp	%st, %st(4)
	fxch	%st(4)
	fdivp	%st, %st(3)
	fmulp	%st, %st(2)
	faddp	%st, %st(1)
	fstl	16(%esp,%esi,8)
	fxch	%st(1)
	fstl	32(%esp,%esi,8)
	fldl	16(%esp,%ecx,8)
	fldl	32(%esp,%ecx,8)
	fxch	%st(2)
	fxch	%st(1)
	fxch	%st(3)
	fxch	%st(1)
	jmp	.L327
	.p2align 4,,7
	.p2align 3
.L344:
	jne	.L347
	fstp	%st(0)
	fld1
	fstl	36(%ebx)
	fxch	%st(4)
	jmp	.L314
	.p2align 4,,7
	.p2align 3
.L343:
	jne	.L348
	fstp	%st(0)
	fld1
	fstl	36(%ecx)
	fxch	%st(4)
	jmp	.L318
	.p2align 4,,7
	.p2align 3
.L329:
	cmpl	28(%edx), %ecx
	jle	.L322
	cmpl	32(%edx), %ebx
	setl	%al
	addl	$60, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1342:
	.size	_ZN7XEngine13visible_bwallER4Wall, .-_ZN7XEngine13visible_bwallER4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE
	.type	_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE, @function
_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE:
.LFB1340:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 16(%esp)
	movl	28(%esp), %esi
	.cfi_offset 6, -8
	movl	%ebx, 12(%esp)
	movl	24(%esp), %ebx
	.cfi_offset 3, -12
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L354
.L350:
	movl	$1, %eax
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	.cfi_restore 3
	ret
	.p2align 4,,7
	.p2align 3
.L354:
	.cfi_restore_state
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L350
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L350
	movl	16(%esi), %eax
	movl	%ebx, 24(%esp)
	movl	16(%esp), %esi
	movl	12(%esp), %ebx
	movl	%eax, 28(%esp)
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	.cfi_restore 3
	jmp	_ZN7XEngine13visible_bwallER4Wall
	.cfi_endproc
.LFE1340:
	.size	_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE, .-_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18process_solid_wallERK4Wall
	.type	_ZN7XEngine18process_solid_wallERK4Wall, @function
_ZN7XEngine18process_solid_wallERK4Wall:
.LFB1343:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1343
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
	movl	196(%esp), %edi
	movl	196(%esp), %ebp
	movl	192(%esp), %esi
	movl	240(%edi), %eax
	movl	244(%edi), %edx
	fldl	224(%edi,%eax,8)
	movl	72(%edi,%edx,4), %edi
	fstpl	40(%esp)
	movl	72(%ebp,%eax,4), %ebx
	movl	%edi, %ecx
	subl	%ebx, %ecx
	movl	%ecx, 152(%esp)
	fildl	152(%esp)
	fldl	40(%esp)
	fsubrl	224(%ebp,%edx,8)
	movl	%edi, 84(%esp)
	movl	28(%esi), %edi
	fdiv	%st(1), %st
	cmpl	%edi, %ebx
	fstpl	88(%esp)
	jge	.L356
	addl	$20, %eax
	addl	$20, %edx
	movl	%eax, 20(%esp)
	movl	0(%ebp,%eax,4), %eax
	movl	0(%ebp,%edx,4), %ecx
	movl	%eax, 28(%esp)
	movl	8(%ebp,%edx,4), %eax
	movl	20(%esp), %edx
	movl	8(%ebp,%edx,4), %edx
	fnstcw	158(%esp)
	movl	%edx, 32(%esp)
	movl	%edi, %edx
	subl	%ebx, %edx
	movl	%edi, %ebx
	movl	%edx, 152(%esp)
	movl	%ecx, %edx
	subl	28(%esp), %edx
	fildl	152(%esp)
	fildl	28(%esp)
	movl	%edx, 152(%esp)
	movzwl	158(%esp), %edx
	fildl	152(%esp)
	fdiv	%st(3), %st
	movb	$12, %dh
	movw	%dx, 156(%esp)
	movl	%eax, %edx
	subl	32(%esp), %edx
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldcw	156(%esp)
	fistpl	152(%esp)
	fldcw	158(%esp)
	movl	152(%esp), %ebp
	movl	%edx, 152(%esp)
	fildl	32(%esp)
	fildl	152(%esp)
	fdiv	%st(3), %st
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldcw	156(%esp)
	fistpl	24(%esp)
	fldcw	158(%esp)
	fmull	88(%esp)
	faddl	40(%esp)
	fstpl	40(%esp)
.L357:
	movl	32(%esi), %edi
	cmpl	%edi, 84(%esp)
	jle	.L400
	movl	84(%esp), %edx
	fnstcw	158(%esp)
	movl	%edi, 84(%esp)
	subl	%edi, %edx
	movl	%edx, 152(%esp)
	movzwl	158(%esp), %edx
	fildl	152(%esp)
	movl	%ecx, 152(%esp)
	subl	28(%esp), %ecx
	fildl	152(%esp)
	movb	$12, %dh
	movw	%dx, 156(%esp)
	movl	%ecx, 152(%esp)
	fildl	152(%esp)
	fdiv	%st(3), %st
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fldcw	156(%esp)
	fistpl	152(%esp)
	fldcw	158(%esp)
	movl	152(%esp), %ecx
	movl	%eax, 152(%esp)
	subl	32(%esp), %eax
	fildl	152(%esp)
	movl	%eax, 152(%esp)
	fildl	152(%esp)
	fdivp	%st, %st(3)
	fxch	%st(2)
	fmulp	%st, %st(1)
	fsubrp	%st, %st(1)
	fldcw	156(%esp)
	fistpl	152(%esp)
	fldcw	158(%esp)
	movl	152(%esp), %eax
	jmp	.L358
	.p2align 4,,7
	.p2align 3
.L400:
	fstp	%st(0)
.L358:
	movl	84(%esp), %edx
	subl	%ebp, %ecx
	addl	$1, %ecx
	movl	196(%esp), %edi
	subl	24(%esp), %eax
	subl	%ebx, %edx
	addl	$1, %edx
	addl	$1, %eax
	movl	%edx, 152(%esp)
	fildl	152(%esp)
	movl	%ecx, 152(%esp)
	fildl	152(%esp)
	fdiv	%st(1), %st
	movl	%eax, 152(%esp)
	movl	48(%edi), %eax
	cmpl	84(%esp), %ebx
	movl	20(%esi), %edx
	movl	52(%esi), %ecx
	fstpl	96(%esp)
	fildl	152(%esp)
	fdivp	%st, %st(1)
	fstpl	104(%esp)
	fldl	116(%edi)
	fstpl	112(%esp)
	fldl	124(%edi)
	fldl	172(%edi)
	fldl	180(%edi)
	movl	12(%eax), %edi
	movl	16(%eax), %eax
	movl	%edi, 144(%esp)
	movl	180(%esi), %edi
	movl	%eax, 148(%esp)
	jg	.L401
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	movl	%ebx, %eax
	movl	%ebp, 152(%esp)
	sarl	%edx
	movl	56(%esp), %ebp
	fildl	152(%esp)
	subl	%edx, %eax
	movl	%eax, 152(%esp)
	fildl	24(%esp)
	leal	(%ebx,%ebx,2), %eax
	fildl	152(%esp)
	leal	(%edi,%eax,8), %eax
	movl	%ecx, 152(%esp)
	leal	0(,%ebx,8), %edi
	fildl	152(%esp)
	fldl	112(%esp)
	fmul	%st(2), %st
	movl	%edi, 28(%esp)
	movl	%eax, 20(%esp)
	leal	0(,%ebx,4), %edi
	movb	$1, 134(%esp)
	movb	$1, 135(%esp)
	fstpl	48(%esp)
	fld	%st(0)
	fmul	%st(7), %st
	fsubrl	48(%esp)
	fstpl	48(%esp)
	fxch	%st(5)
	fsubl	112(%esp)
	fstl	120(%esp)
	fxch	%st(4)
	fsubp	%st, %st(6)
	fxch	%st(4)
	fmulp	%st, %st(5)
	fxch	%st(2)
	fmulp	%st, %st(3)
	fxch	%st(2)
	fsubrp	%st, %st(3)
	fxch	%st(2)
	fstpl	32(%esp)
	jmp	.L383
	.p2align 4,,7
	.p2align 3
.L398:
	fnstcw	158(%esp)
	movzwl	158(%esp), %edx
	movb	$12, %dh
	movw	%dx, 156(%esp)
	movl	144(%esi), %ecx
	fldcw	156(%esp)
	fistpl	24(%esp)
	fldcw	158(%esp)
	addl	%edi, %ecx
	movl	(%ecx), %edx
	cmpl	%edx, 24(%esp)
	movl	%ecx, 76(%esp)
	jle	.L361
	fstp	%st(0)
	movl	148(%esi), %ecx
	addl	$1, %edx
	movl	%edx, 24(%esp)
	movb	$1, (%eax)
	addl	%edi, %ecx
	movl	%ecx, 16(%esp)
.L362:
	movl	(%ecx), %eax
	cmpl	%eax, 24(%esp)
	jle	.L391
.L399:
	cmpb	$0, 134(%esp)
	jne	.L378
	movl	0(%ebp), %edx
.L379:
	movl	24(%esp), %ecx
	addl	28(%esp), %edx
	subl	$1, %ecx
	cmpl	%eax, 12(%ebp)
	movl	%eax, (%edx)
	jle	.L380
	movl	%eax, 12(%ebp)
.L380:
	cmpl	16(%ebp), %ecx
	movl	%ecx, 4(%edx)
	jle	.L381
	movl	%ecx, 16(%ebp)
.L381:
	cmpl	4(%ebp), %ebx
	jge	.L382
	movl	%ebx, 4(%ebp)
.L382:
	cmpl	8(%ebp), %ebx
	movb	$0, 134(%esp)
	jle	.L360
	movl	%ebx, 8(%ebp)
	.p2align 4,,7
	.p2align 3
.L360:
	fldl	40(%esp)
	addl	$1, %ebx
	addl	$4, %edi
	faddl	88(%esp)
	addl	$24, 20(%esp)
	addl	$8, 28(%esp)
	cmpl	%ebx, 84(%esp)
	fstpl	40(%esp)
	fldl	48(%esp)
	faddl	112(%esp)
	fstpl	48(%esp)
	fldl	32(%esp)
	fsubl	120(%esp)
	fstpl	32(%esp)
	jl	.L355
	fldl	64(%esp)
	fldl	56(%esp)
.L383:
	fldl	96(%esp)
	fadd	%st(1), %st
	movl	156(%esi), %eax
	fstpl	56(%esp)
	fldl	104(%esp)
	addl	%ebx, %eax
	fadd	%st(2), %st
	cmpb	$0, (%eax)
	fstpl	64(%esp)
	je	.L398
	fstp	%st(0)
	fstp	%st(0)
	movb	$1, 134(%esp)
	movb	$1, 135(%esp)
	jmp	.L360
	.p2align 4,,7
	.p2align 3
.L361:
	movl	148(%esi), %ecx
	fldcw	156(%esp)
	fistpl	72(%esp)
	fldcw	158(%esp)
	addl	%edi, %ecx
	movl	%ecx, 16(%esp)
	movl	(%ecx), %ecx
	cmpl	%ecx, 72(%esp)
	movl	%ecx, 80(%esp)
	jge	.L363
	subl	$1, %ecx
	movl	%ecx, 72(%esp)
	movb	$1, (%eax)
.L364:
	cmpl	%edx, 72(%esp)
	jge	.L390
	cmpb	$0, 135(%esp)
	jne	.L372
	movl	128(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 76(%esp)
.L373:
	movl	72(%esp), %ecx
	addl	28(%esp), %eax
	addl	$1, %ecx
	movl	%eax, 72(%esp)
	movl	%ecx, (%eax)
	movl	128(%esp), %eax
	cmpl	12(%eax), %ecx
	jge	.L374
	movl	%ecx, 12(%eax)
	movl	128(%esp), %eax
.L374:
	movl	72(%esp), %ecx
	cmpl	%edx, 16(%eax)
	movl	%edx, 4(%ecx)
	jge	.L375
	movl	%edx, 16(%eax)
	movl	128(%esp), %eax
.L375:
	cmpl	%ebx, 4(%eax)
	jle	.L376
	movl	%ebx, 4(%eax)
	movl	128(%esp), %eax
.L376:
	cmpl	%ebx, 8(%eax)
	jge	.L397
	movl	%ebx, 8(%eax)
.L397:
	movl	148(%esi), %ecx
	movb	$0, 135(%esp)
	addl	%edi, %ecx
	movl	(%ecx), %eax
	cmpl	%eax, 24(%esp)
	movl	%ecx, 16(%esp)
	jg	.L399
.L391:
	movb	$1, 134(%esp)
	jmp	.L360
	.p2align 4,,7
	.p2align 3
.L390:
	movb	$1, 135(%esp)
	movl	16(%esp), %ecx
	jmp	.L362
	.p2align 4,,7
	.p2align 3
.L363:
	movl	196(%esp), %ecx
	movl	28(%ecx), %ecx
	fildl	12(%ecx)
	movl	%ecx, 140(%esp)
	movl	72(%esp), %ecx
	subl	24(%esp), %ecx
	addl	$1, %ecx
	movl	%ecx, 136(%esp)
	movl	80(%esp), %ecx
	cmpl	%ecx, 24(%esp)
	fildl	136(%esp)
	fdivrp	%st, %st(1)
	movl	$0, 136(%esp)
	jge	.L365
	subl	24(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	80(%esp), %ecx
	fildl	24(%esp)
	fmul	%st(1), %st
	movl	%ecx, 24(%esp)
	fadds	.LC4
	fmuls	.LC60
	fldcw	156(%esp)
	fistpl	136(%esp)
	fldcw	158(%esp)
.L365:
	fld1
	fldl	40(%esp)
	fdivr	%st(1), %st
	cmpl	72(%esp), %edx
	cmovg	72(%esp), %edx
	movb	$1, (%eax)
	movl	196(%esp), %eax
	subl	$1, 160(%esi)
	movl	%edx, 72(%esp)
	movl	140(%esp), %edx
	movl	$0, 80(%esp)
	fldl	40(%eax)
	fmull	16(%edx)
	fdivrp	%st, %st(1)
	fdivs	.LC61
	fsubrp	%st, %st(1)
	fmuls	.LC62
	fldcw	156(%esp)
	fistpl	152(%esp)
	fldcw	158(%esp)
	movl	152(%esp), %eax
	testl	%eax, %eax
	js	.L367
	leal	0(,%eax,4), %edx
	cmpl	$255, %eax
	movl	$1020, %ecx
	cmovle	%edx, %ecx
	movl	%ecx, 80(%esp)
.L367:
	fldl	48(%esp)
	fdivl	32(%esp)
	movl	196(%esp), %edx
	movl	80(%esp), %ecx
	movl	48(%edx), %eax
	movl	8(%eax), %eax
	movl	%eax, 140(%esp)
	fabs
	fmull	12(%edx)
	fldcw	156(%esp)
	fistpl	152(%esp)
	fldcw	158(%esp)
	movl	152(%esp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	144(%esp)
	fmuls	.LC60
	imull	144(%esp), %edx
	leal	0(,%edx,4), %eax
	movl	140(%esp), %edx
	addl	(%edx,%ecx), %eax
	movl	20(%esp), %ecx
	movl	24(%esp), %edx
	movl	%eax, 8(%ecx)
	movl	136(%esp), %eax
	movl	%edx, (%ecx)
	movl	72(%esp), %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 4(%ecx)
	movl	148(%esp), %edx
	fldcw	156(%esp)
	fistpl	16(%ecx)
	fldcw	158(%esp)
	movl	%edx, 20(%ecx)
	movl	24(%esp), %ecx
	cmpl	164(%esi), %ecx
	jge	.L368
	movl	%ecx, 164(%esi)
.L368:
	movl	72(%esp), %eax
	cmpl	168(%esi), %eax
	jle	.L369
	movl	%eax, 168(%esi)
.L369:
	cmpl	%ebx, 172(%esi)
	jle	.L370
	movl	%ebx, 172(%esi)
.L370:
	cmpl	%ebx, 176(%esi)
	jge	.L396
	movl	%ebx, 176(%esi)
.L396:
	movl	76(%esp), %ecx
	movl	(%ecx), %edx
	jmp	.L364
	.p2align 4,,7
	.p2align 3
.L378:
	movl	$28, (%esp)
.LEHB21:
	call	_Znwj
.LEHE21:
	movl	196(%esp), %ecx
	movl	196(%esi), %edx
	movl	%eax, %ebp
	movl	28(%ecx), %eax
	movl	%edx, 24(%ebp)
	movl	$100000, 4(%ebp)
	movl	$-1, 8(%ebp)
	movl	%eax, 20(%ebp)
	movl	20(%esi), %eax
	movl	$100000, 12(%ebp)
	movl	$-1, 16(%ebp)
	sall	$3, %eax
	movl	%eax, (%esp)
.LEHB22:
	call	_Znaj
.LEHE22:
	movl	%eax, 0(%ebp)
	movl	%eax, %edx
	movl	148(%esi), %eax
	movl	%ebp, 196(%esi)
	movl	(%eax,%edi), %eax
	jmp	.L379
	.p2align 4,,7
	.p2align 3
.L372:
	movl	$28, (%esp)
.LEHB23:
	call	_Znwj
.LEHE23:
	movl	196(%esp), %ecx
	movl	192(%esi), %edx
	movl	%eax, 128(%esp)
	movl	28(%ecx), %eax
	movl	128(%esp), %ecx
	movl	%eax, 20(%ecx)
	movl	20(%esi), %eax
	movl	%edx, 24(%ecx)
	movl	$100000, 4(%ecx)
	movl	$-1, 8(%ecx)
	movl	$100000, 12(%ecx)
	sall	$3, %eax
	movl	$-1, 16(%ecx)
	movl	%eax, (%esp)
.LEHB24:
	call	_Znaj
.LEHE24:
	movl	128(%esp), %edx
	movl	%eax, 76(%esp)
	movl	%eax, (%edx)
	movl	144(%esi), %eax
	movl	%edx, 192(%esi)
	movl	(%eax,%edi), %edx
	movl	76(%esp), %eax
	jmp	.L373
.L401:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L355:
	addl	$172, %esp
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
	.p2align 4,,7
	.p2align 3
.L356:
	.cfi_restore_state
	movl	%ebp, %edi
	addl	$20, %eax
	movl	0(%ebp,%eax,4), %ebp
	addl	$20, %edx
	movl	8(%edi,%eax,4), %eax
	movl	(%edi,%edx,4), %ecx
	movl	%ebp, 28(%esp)
	movl	%eax, 24(%esp)
	movl	8(%edi,%edx,4), %eax
	movl	24(%esp), %edx
	movl	%edx, 32(%esp)
	jmp	.L357
.L395:
	movl	%eax, %ebx
	movl	%ebp, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB25:
	call	_Unwind_Resume
.L394:
	movl	%eax, %ebx
	movl	128(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE25:
	.cfi_endproc
.LFE1343:
	.section	.gcc_except_table
.LLSDA1343:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1343-.LLSDACSB1343
.LLSDACSB1343:
	.uleb128 .LEHB21-.LFB1343
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB1343
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L395-.LFB1343
	.uleb128 0
	.uleb128 .LEHB23-.LFB1343
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB1343
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L394-.LFB1343
	.uleb128 0
	.uleb128 .LEHB25-.LFB1343
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE1343:
	.text
	.size	_ZN7XEngine18process_solid_wallERK4Wall, .-_ZN7XEngine18process_solid_wallERK4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18render_solid_wallsEv
	.type	_ZN7XEngine18render_solid_wallsEv, @function
_ZN7XEngine18render_solid_wallsEv:
.LFB1344:
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
	movl	64(%esp), %eax
	movl	164(%eax), %ecx
	movl	168(%eax), %esi
	cmpl	%esi, %ecx
	jg	.L403
	movl	180(%eax), %ebp
	movl	16(%eax), %ebx
	movl	%esi, 20(%esp)
	movl	%ebp, 24(%esp)
	movl	%eax, %ebp
	movl	%ebx, 28(%esp)
.L407:
	movl	172(%ebp), %edx
	movl	176(%ebp), %ebx
	movl	24(%esp), %esi
	movl	20(%ebp), %edi
	leal	(%edx,%edx,2), %eax
	leal	3(%ebx,%ebx,2), %ebx
	leal	(%esi,%eax,8), %eax
	leal	(%esi,%ebx,8), %ebx
	cmpl	%ebx, %eax
	je	.L404
	imull	%ecx, %edi
	addl	%edi, %edx
	movl	28(%esp), %edi
	leal	(%edi,%edx,4), %edx
	.p2align 4,,7
	.p2align 3
.L406:
	cmpl	%ecx, (%eax)
	jg	.L405
	cmpl	%ecx, 4(%eax)
	jl	.L405
	movswl	14(%eax), %esi
	movl	8(%eax), %edi
	andl	$127, %esi
	movl	(%edi,%esi,4), %esi
	movl	%esi, (%edx)
	movl	16(%eax), %esi
	addl	%esi, 12(%eax)
.L405:
	addl	$24, %eax
	addl	$4, %edx
	cmpl	%eax, %ebx
	jne	.L406
	movl	168(%ebp), %eax
	movl	%eax, 20(%esp)
.L404:
	addl	$1, %ecx
	cmpl	20(%esp), %ecx
	jle	.L407
.L403:
	movl	64(%esp), %esi
	movl	188(%esi), %ebx
	testl	%ebx, %ebx
	je	.L408
.L434:
	movl	8(%ebx), %edi
	movl	4(%ebx), %edx
	movl	%edi, 24(%esp)
	cmpl	%edx, %edi
	movl	(%ebx), %edi
	jl	.L410
	movl	64(%esp), %eax
	movl	16(%eax), %eax
	movl	%eax, 28(%esp)
	.p2align 4,,7
	.p2align 3
.L414:
	movl	64(%esp), %esi
	movl	16(%ebx), %ecx
	movl	20(%esi), %ebp
	movl	12(%ebx), %esi
	leal	3(%ecx,%ecx,2), %ecx
	leal	(%edi,%ecx,8), %ecx
	leal	(%esi,%esi,2), %eax
	leal	(%edi,%eax,8), %eax
	cmpl	%ecx, %eax
	je	.L411
	imull	%edx, %ebp
	movl	28(%esp), %edi
	addl	%esi, %ebp
	leal	(%edi,%ebp,4), %esi
	.p2align 4,,7
	.p2align 3
.L413:
	cmpl	(%eax), %edx
	jl	.L412
	cmpl	4(%eax), %edx
	jg	.L412
	movswl	14(%eax), %edi
	movl	8(%eax), %ebp
	andl	$127, %edi
	movl	0(%ebp,%edi,4), %edi
	movl	%edi, (%esi)
	movl	16(%eax), %edi
	addl	%edi, 12(%eax)
.L412:
	addl	$24, %eax
	addl	$4, %esi
	cmpl	%eax, %ecx
	jne	.L413
	movl	8(%ebx), %eax
	movl	(%ebx), %edi
	movl	%eax, 24(%esp)
.L411:
	addl	$1, %edx
	cmpl	24(%esp), %edx
	jle	.L414
.L410:
	testl	%edi, %edi
	movl	20(%ebx), %esi
	je	.L415
	movl	%edi, (%esp)
	call	_ZdaPv
.L415:
	movl	%ebx, (%esp)
	call	_ZdlPv
	testl	%esi, %esi
	je	.L408
	movl	%esi, %ebx
	jmp	.L434
.L408:
	movl	64(%esp), %esi
	movl	184(%esi), %ebx
	testl	%ebx, %ebx
	je	.L402
.L435:
	movl	4(%ebx), %edi
	movl	8(%ebx), %edx
	movl	%edi, 24(%esp)
	cmpl	%edx, %edi
	movl	(%ebx), %edi
	jg	.L419
	movl	64(%esp), %eax
	movl	16(%eax), %eax
	movl	%eax, 28(%esp)
	.p2align 4,,7
	.p2align 3
.L423:
	movl	64(%esp), %esi
	movl	16(%ebx), %ecx
	movl	20(%esi), %ebp
	movl	12(%ebx), %esi
	leal	3(%ecx,%ecx,2), %ecx
	leal	(%edi,%ecx,8), %ecx
	leal	(%esi,%esi,2), %eax
	leal	(%edi,%eax,8), %eax
	cmpl	%ecx, %eax
	je	.L420
	imull	%edx, %ebp
	movl	28(%esp), %edi
	addl	%esi, %ebp
	leal	(%edi,%ebp,4), %esi
	.p2align 4,,7
	.p2align 3
.L422:
	cmpl	%edx, (%eax)
	jg	.L421
	cmpl	%edx, 4(%eax)
	jl	.L421
	movswl	14(%eax), %edi
	movl	8(%eax), %ebp
	andl	$127, %edi
	movl	0(%ebp,%edi,4), %edi
	movl	%edi, (%esi)
	movl	16(%eax), %edi
	subl	%edi, 12(%eax)
.L421:
	addl	$24, %eax
	addl	$4, %esi
	cmpl	%eax, %ecx
	jne	.L422
	movl	4(%ebx), %eax
	movl	(%ebx), %edi
	movl	%eax, 24(%esp)
.L420:
	subl	$1, %edx
	cmpl	24(%esp), %edx
	jge	.L423
.L419:
	testl	%edi, %edi
	movl	20(%ebx), %esi
	je	.L424
	movl	%edi, (%esp)
	call	_ZdaPv
.L424:
	movl	%ebx, (%esp)
	call	_ZdlPv
	testl	%esi, %esi
	je	.L402
	movl	%esi, %ebx
	jmp	.L435
.L402:
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
.LFE1344:
	.size	_ZN7XEngine18render_solid_wallsEv, .-_ZN7XEngine18render_solid_wallsEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	.type	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE, @function
_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE:
.LFB1345:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1345
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
	movl	308(%esp), %edi
	movl	308(%esp), %ebp
	movl	304(%esp), %ebx
	movl	240(%edi), %edx
	movl	244(%edi), %ecx
	fldl	224(%edi,%edx,8)
	movl	72(%edi,%ecx,4), %edi
	fstpl	80(%esp)
	movl	72(%ebp,%edx,4), %esi
	movl	%edi, %eax
	subl	%esi, %eax
	movl	%eax, 264(%esp)
	movl	28(%ebx), %eax
	fildl	264(%esp)
	fldl	80(%esp)
	fsubrl	224(%ebp,%ecx,8)
	cmpl	%eax, %esi
	movl	%edi, 200(%esp)
	movl	%eax, 56(%esp)
	fdiv	%st(1), %st
	fstpl	152(%esp)
	jge	.L439
	leal	20(%ecx), %edi
	movl	%ebp, %eax
	movl	%edi, 128(%esp)
	movl	0(%ebp,%edi,4), %ebp
	leal	20(%edx), %edi
	movl	(%eax,%edi,4), %eax
	addl	$24, %edx
	movl	%edi, 48(%esp)
	movl	128(%esp), %edi
	movl	%eax, 88(%esp)
	movl	308(%esp), %eax
	movl	8(%eax,%edi,4), %edi
	movl	%edi, 120(%esp)
	movl	48(%esp), %edi
	movl	%edx, 48(%esp)
	movl	8(%eax,%edi,4), %edi
	leal	24(%ecx), %eax
	movl	%edi, 96(%esp)
	movl	308(%esp), %edi
	movl	(%edi,%edx,4), %edx
	movl	(%edi,%eax,4), %ecx
	movl	%edx, 104(%esp)
	movl	8(%edi,%eax,4), %edx
	movl	48(%esp), %eax
	movl	8(%edi,%eax,4), %eax
	fnstcw	270(%esp)
	movl	%eax, 112(%esp)
	movl	56(%esp), %eax
	subl	%esi, %eax
	movl	%eax, 264(%esp)
	movl	%ebp, %eax
	subl	88(%esp), %eax
	fildl	264(%esp)
	fildl	88(%esp)
	movl	%eax, 264(%esp)
	movzwl	270(%esp), %eax
	fildl	264(%esp)
	fdiv	%st(3), %st
	movb	$12, %ah
	movw	%ax, 268(%esp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	48(%esp)
	fldcw	270(%esp)
	movl	120(%esp), %eax
	subl	96(%esp), %eax
	movl	56(%esp), %esi
	movl	%eax, 264(%esp)
	movl	%ecx, %eax
	fildl	96(%esp)
	fildl	264(%esp)
	fdiv	%st(3), %st
	subl	104(%esp), %eax
	movl	%eax, 264(%esp)
	movl	%edx, %eax
	subl	112(%esp), %eax
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	128(%esp)
	fldcw	270(%esp)
	fildl	104(%esp)
	fildl	264(%esp)
	fdiv	%st(3), %st
	movl	%eax, 264(%esp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	64(%esp)
	fldcw	270(%esp)
	fildl	112(%esp)
	fildl	264(%esp)
	fdiv	%st(3), %st
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	72(%esp)
	fldcw	270(%esp)
	fmull	152(%esp)
	faddl	80(%esp)
	fstpl	80(%esp)
.L440:
	movl	32(%ebx), %eax
	cmpl	%eax, 200(%esp)
	movl	%eax, 56(%esp)
	jle	.L499
	movl	200(%esp), %eax
	subl	56(%esp), %eax
	fnstcw	270(%esp)
	movl	120(%esp), %edi
	subl	96(%esp), %edi
	movl	%eax, 264(%esp)
	fildl	264(%esp)
	movl	%ebp, 264(%esp)
	movzwl	270(%esp), %eax
	subl	88(%esp), %ebp
	fildl	264(%esp)
	movl	%ebp, 264(%esp)
	movb	$12, %ah
	fildl	264(%esp)
	fdiv	%st(3), %st
	movw	%ax, 268(%esp)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	264(%esp)
	fldcw	270(%esp)
	movl	264(%esp), %ebp
	movl	%edi, 264(%esp)
	fildl	120(%esp)
	fildl	264(%esp)
	fdiv	%st(3), %st
	movl	%ecx, 264(%esp)
	subl	104(%esp), %ecx
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	120(%esp)
	fldcw	270(%esp)
	fildl	264(%esp)
	movl	%ecx, 264(%esp)
	fildl	264(%esp)
	fdiv	%st(3), %st
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	264(%esp)
	fldcw	270(%esp)
	movl	264(%esp), %ecx
	movl	%edx, 264(%esp)
	movl	56(%esp), %edi
	subl	112(%esp), %edx
	fildl	264(%esp)
	movl	%edx, 264(%esp)
	fildl	264(%esp)
	fdivp	%st, %st(3)
	fxch	%st(2)
	movl	%edi, 200(%esp)
	fmulp	%st, %st(1)
	fsubrp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	264(%esp)
	fldcw	270(%esp)
	movl	264(%esp), %edx
	jmp	.L441
	.p2align 4,,7
	.p2align 3
.L499:
	fstp	%st(0)
.L441:
	movl	200(%esp), %eax
	subl	48(%esp), %ebp
	movl	120(%esp), %edi
	subl	128(%esp), %edi
	subl	%esi, %eax
	addl	$1, %ebp
	addl	$1, %eax
	movl	%eax, 264(%esp)
	addl	$1, %edi
	fildl	264(%esp)
	movl	%ebp, 264(%esp)
	movl	312(%esp), %ebp
	fildl	264(%esp)
	fdiv	%st(1), %st
	movl	%edi, 264(%esp)
	movl	308(%esp), %edi
	subl	64(%esp), %ecx
	subl	72(%esp), %edx
	addl	$1, %ecx
	addl	$1, %edx
	fstpl	160(%esp)
	fildl	264(%esp)
	fdiv	%st(1), %st
	movl	%ecx, 264(%esp)
	fstpl	168(%esp)
	fildl	264(%esp)
	fdiv	%st(1), %st
	movl	%edx, 264(%esp)
	movl	60(%edi,%ebp,8), %eax
	movl	20(%ebx), %edx
	movl	52(%ebx), %ecx
	movl	12(%eax), %eax
	fstpl	176(%esp)
	fildl	264(%esp)
	fdivp	%st, %st(1)
	fstpl	184(%esp)
	fldl	116(%edi)
	fstpl	192(%esp)
	fldl	124(%edi)
	fldl	172(%edi)
	fstpl	56(%esp)
	fldl	180(%edi)
	fstpl	88(%esp)
	movl	%eax, 240(%esp)
	cmpl	200(%esp), %esi
	jg	.L500
	movl	%edx, %eax
	fildl	48(%esp)
	shrl	$31, %eax
	fildl	128(%esp)
	addl	%edx, %eax
	movl	%esi, %edx
	fildl	64(%esp)
	sarl	%eax
	fildl	72(%esp)
	subl	%eax, %edx
	movl	%edx, 264(%esp)
	leal	(%esi,%esi,2), %eax
	fildl	264(%esp)
	leal	0(,%esi,8), %ebp
	movl	%ecx, 264(%esp)
	sall	$3, %eax
	fildl	264(%esp)
	leal	0(,%esi,4), %edi
	fldl	192(%esp)
	fmul	%st(2), %st
	movl	%ebp, 48(%esp)
	movb	$1, 140(%esp)
	movb	$1, 219(%esp)
	movb	$1, 218(%esp)
	fstpl	72(%esp)
	fld	%st(0)
	fmul	%st(7), %st
	movb	$1, 144(%esp)
	fsubrl	72(%esp)
	fstpl	72(%esp)
	fldl	56(%esp)
	fsubl	192(%esp)
	movl	%eax, 56(%esp)
	fstl	208(%esp)
	fxch	%st(7)
	fsubrl	88(%esp)
	fmulp	%st, %st(1)
	fxch	%st(6)
	fmulp	%st, %st(1)
	fsubrp	%st, %st(5)
	fxch	%st(4)
	fstpl	64(%esp)
	jmp	.L476
	.p2align 4,,7
	.p2align 3
.L497:
	fxch	%st(2)
	fnstcw	270(%esp)
	movzwl	270(%esp), %edx
	movb	$12, %dh
	movw	%dx, 268(%esp)
	fldcw	268(%esp)
	fistpl	264(%esp)
	fldcw	270(%esp)
	fxch	%st(1)
	movl	144(%ebx), %edx
	movl	264(%esp), %ebp
	fldcw	268(%esp)
	fistpl	132(%esp)
	fldcw	270(%esp)
	fxch	%st(1)
	movl	(%edx,%edi), %edx
	cmpl	%edx, %ebp
	fldcw	268(%esp)
	fistpl	136(%esp)
	fldcw	270(%esp)
	jle	.L444
	fstp	%st(0)
	leal	1(%edx), %ebp
	movb	$1, (%eax)
	movb	$0, 120(%esp)
.L445:
	movl	148(%ebx), %edx
	addl	%edi, %edx
	movl	(%edx), %eax
	cmpl	%eax, %ebp
	jle	.L489
.L498:
	cmpb	$0, 218(%esp)
	jne	.L471
	movl	52(%esp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, 128(%esp)
.L472:
	addl	48(%esp), %ecx
	subl	$1, %ebp
	movl	%ecx, 128(%esp)
	movl	%eax, (%ecx)
	movl	52(%esp), %ecx
	cmpl	12(%ecx), %eax
	jge	.L473
	movl	%eax, 12(%ecx)
.L473:
	movl	128(%esp), %eax
	movl	%ebp, 4(%eax)
	movl	52(%esp), %eax
	cmpl	16(%eax), %ebp
	jle	.L474
	movl	%ebp, 16(%eax)
	movl	52(%esp), %eax
.L474:
	cmpl	4(%eax), %esi
	jge	.L475
	movl	%esi, 4(%eax)
	movl	52(%esp), %eax
.L475:
	cmpl	8(%eax), %esi
	movb	$0, 218(%esp)
	jle	.L470
	movl	%esi, 8(%eax)
.L470:
	cmpb	$0, 120(%esp)
	je	.L443
	movl	136(%esp), %ebp
	movl	144(%ebx), %eax
	movl	%ebp, (%edx)
	movl	132(%esp), %ebp
	movl	%ebp, (%eax,%edi)
	movl	156(%ebx), %eax
	cmpl	(%edx), %ebp
	setle	(%eax,%esi)
.L443:
	fldl	80(%esp)
	addl	$1, %esi
	addl	$4, %edi
	faddl	152(%esp)
	addl	$8, 48(%esp)
	addl	$24, 56(%esp)
	cmpl	%esi, 200(%esp)
	fstpl	80(%esp)
	fldl	72(%esp)
	faddl	192(%esp)
	fstpl	72(%esp)
	fldl	64(%esp)
	fsubl	208(%esp)
	fstpl	64(%esp)
	jl	.L438
	fldl	112(%esp)
	fldl	104(%esp)
	fldl	96(%esp)
	fldl	88(%esp)
	fxch	%st(2)
.L476:
	fldl	160(%esp)
	fadd	%st(3), %st
	movl	156(%ebx), %eax
	fstpl	88(%esp)
	fldl	168(%esp)
	addl	%esi, %eax
	fadd	%st(2), %st
	cmpb	$0, (%eax)
	fstpl	96(%esp)
	fldl	176(%esp)
	fadd	%st(1), %st
	fstpl	104(%esp)
	fldl	184(%esp)
	fadd	%st(4), %st
	fstpl	112(%esp)
	je	.L497
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	movb	$1, 140(%esp)
	movb	$1, 219(%esp)
	movb	$1, 218(%esp)
	movb	$1, 144(%esp)
	jmp	.L443
	.p2align 4,,7
	.p2align 3
.L444:
	movl	148(%ebx), %ecx
	fldcw	268(%esp)
	fistpl	128(%esp)
	fldcw	270(%esp)
	movl	(%ecx,%edi), %ecx
	cmpl	%ecx, 128(%esp)
	movl	%ecx, 220(%esp)
	jge	.L446
	subl	$1, %ecx
	movl	%ecx, 128(%esp)
	movb	$1, (%eax)
	movb	$0, 120(%esp)
.L447:
	cmpl	%edx, 128(%esp)
	jge	.L487
	cmpb	$0, 144(%esp)
	jne	.L465
	movl	148(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 144(%esp)
.L466:
	movl	128(%esp), %ecx
	addl	48(%esp), %eax
	addl	$1, %ecx
	movl	%eax, 128(%esp)
	movl	%ecx, (%eax)
	movl	148(%esp), %eax
	cmpl	12(%eax), %ecx
	jge	.L467
	movl	%ecx, 12(%eax)
	movl	148(%esp), %eax
.L467:
	movl	128(%esp), %ecx
	cmpl	%edx, 16(%eax)
	movl	%edx, 4(%ecx)
	jge	.L468
	movl	%edx, 16(%eax)
	movl	148(%esp), %eax
.L468:
	cmpl	4(%eax), %esi
	jge	.L469
	movl	%esi, 4(%eax)
	movl	148(%esp), %eax
.L469:
	cmpl	8(%eax), %esi
	movb	$0, 144(%esp)
	jle	.L445
	movl	148(%ebx), %edx
	movl	%esi, 8(%eax)
	addl	%edi, %edx
	movl	(%edx), %eax
	cmpl	%eax, %ebp
	jg	.L498
	.p2align 4,,7
	.p2align 3
.L489:
	movb	$1, 218(%esp)
	jmp	.L470
	.p2align 4,,7
	.p2align 3
.L487:
	movb	$1, 144(%esp)
	jmp	.L445
	.p2align 4,,7
	.p2align 3
.L446:
	movl	128(%esp), %eax
	movl	308(%esp), %ecx
	subl	%ebp, %eax
	addl	$1, %eax
	movl	%eax, 264(%esp)
	movl	312(%esp), %eax
	fildl	264(%esp)
	cmpl	220(%esp), %ebp
	movl	28(%ecx,%eax,4), %eax
	fildl	12(%eax)
	fdiv	%st(1), %st
	movl	%eax, 204(%esp)
	fstl	120(%esp)
	fxch	%st(1)
	fsubs	.LC0
	fmul	%st(1), %st
	fstpl	224(%esp)
	jge	.L482
	movl	220(%esp), %eax
	subl	%ebp, %eax
	movl	220(%esp), %ebp
	movl	%eax, 264(%esp)
	fildl	264(%esp)
	fmulp	%st, %st(1)
	fadds	.LC4
	fstpl	232(%esp)
.L448:
	cmpl	%edx, 128(%esp)
	jle	.L449
	movl	128(%esp), %eax
	movl	%edx, 128(%esp)
	subl	%edx, %eax
	movl	%eax, 264(%esp)
	fildl	264(%esp)
	fmull	120(%esp)
	fsubrl	224(%esp)
	fstpl	224(%esp)
.L449:
	fld1
	movl	136(%esp), %eax
	fldl	80(%esp)
	fdivr	%st(1), %st
	movl	204(%esp), %edx
	cmpl	136(%esp), %ebp
	cmovge	%ebp, %eax
	cmpl	%eax, 128(%esp)
	cmovle	128(%esp), %eax
	movl	%eax, 136(%esp)
	movl	308(%esp), %eax
	fldl	40(%eax)
	fmull	16(%edx)
	fdivrp	%st, %st(1)
	fdivs	.LC61
	fsubrp	%st, %st(1)
	fmuls	.LC62
	fldcw	268(%esp)
	fistpl	204(%esp)
	fldcw	270(%esp)
	movl	204(%esp), %eax
	testl	%eax, %eax
	js	.L483
	cmpl	$256, 204(%esp)
	movl	$255, %ecx
	cmovl	204(%esp), %ecx
	movl	%ecx, 204(%esp)
.L451:
	fldl	72(%esp)
	fdivl	64(%esp)
	movl	308(%esp), %eax
	fabs
	fmull	12(%eax)
	fldcw	268(%esp)
	fistpl	264(%esp)
	fldcw	270(%esp)
	movl	264(%esp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	240(%esp)
	cmpl	136(%esp), %ebp
	movl	%edx, 244(%esp)
	jge	.L485
	cmpb	$0, 219(%esp)
	jne	.L453
	movl	188(%ebx), %eax
	movl	%eax, 220(%esp)
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	8(%eax), %eax
	movl	%ecx, 248(%esp)
	movl	%eax, 252(%esp)
	movl	220(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, 256(%esp)
	movl	220(%esp), %eax
	movl	16(%eax), %eax
	movl	%eax, 260(%esp)
.L454:
	movl	136(%esp), %ecx
	addl	56(%esp), %edx
	movl	312(%esp), %eax
	flds	.LC60
	movl	%ecx, 4(%edx)
	addl	$1, %ecx
	fldl	232(%esp)
	movl	%ecx, 136(%esp)
	movl	308(%esp), %ecx
	fmul	%st(1), %st
	movl	%ebp, (%edx)
	movl	60(%ecx,%eax,8), %eax
	movl	8(%eax), %ecx
	movl	%eax, 40(%esp)
	movl	244(%esp), %eax
	imull	240(%esp), %eax
	movl	%ecx, 32(%esp)
	sall	$2, %eax
	movl	%eax, 44(%esp)
	movl	204(%esp), %eax
	movl	(%ecx,%eax,4), %eax
	addl	%eax, 44(%esp)
	movl	44(%esp), %ecx
	cmpl	248(%esp), %ebp
	movl	%ecx, 8(%edx)
	movl	40(%esp), %ecx
	fldcw	268(%esp)
	fistpl	12(%edx)
	fldcw	270(%esp)
	movl	16(%ecx), %eax
	fldl	120(%esp)
	fmulp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	16(%edx)
	fldcw	270(%esp)
	movl	%eax, 20(%edx)
	jge	.L455
	movl	220(%esp), %eax
	movl	%ebp, 4(%eax)
.L455:
	movl	252(%esp), %edx
	cmpl	%edx, 128(%esp)
	jle	.L456
	movl	128(%esp), %edx
	movl	220(%esp), %eax
	movl	%edx, 8(%eax)
.L456:
	cmpl	256(%esp), %esi
	jge	.L457
	movl	220(%esp), %eax
	movl	%esi, 12(%eax)
.L457:
	cmpl	260(%esp), %esi
	movb	$0, 219(%esp)
	jle	.L452
	movl	220(%esp), %eax
	movl	%esi, 16(%eax)
.L452:
	movl	132(%esp), %edx
	cmpl	%edx, 128(%esp)
	movl	%edx, %eax
	cmovle	128(%esp), %eax
	cmpl	%ebp, %eax
	cmovl	%ebp, %eax
	cmpl	%eax, 128(%esp)
	movl	%eax, 132(%esp)
	jg	.L458
	movl	144(%ebx), %eax
	movb	$1, 140(%esp)
	movb	$1, 120(%esp)
	movl	(%eax,%edi), %edx
	jmp	.L447
	.p2align 4,,7
	.p2align 3
.L471:
	movl	$28, (%esp)
.LEHB26:
	call	_Znwj
.LEHE26:
	movl	312(%esp), %edx
	movl	308(%esp), %ecx
	movl	%eax, 52(%esp)
	movl	28(%ecx,%edx,4), %eax
	movl	52(%esp), %edx
	movl	196(%ebx), %ecx
	movl	%eax, 20(%edx)
	movl	20(%ebx), %eax
	movl	%ecx, 24(%edx)
	movl	$100000, 4(%edx)
	movl	$-1, 8(%edx)
	movl	$100000, 12(%edx)
	sall	$3, %eax
	movl	$-1, 16(%edx)
	movl	%eax, (%esp)
.LEHB27:
	call	_Znaj
.LEHE27:
	movl	52(%esp), %edx
	movl	%eax, 128(%esp)
	movl	128(%esp), %ecx
	movl	%eax, (%edx)
	movl	%edx, 196(%ebx)
	movl	148(%ebx), %edx
	addl	%edi, %edx
	movl	(%edx), %eax
	jmp	.L472
	.p2align 4,,7
	.p2align 3
.L485:
	movb	$1, 219(%esp)
	jmp	.L452
	.p2align 4,,7
	.p2align 3
.L482:
	fstp	%st(0)
	fldz
	fstpl	232(%esp)
	jmp	.L448
	.p2align 4,,7
	.p2align 3
.L458:
	cmpb	$0, 140(%esp)
	jne	.L459
	movl	184(%ebx), %eax
	movl	%eax, 140(%esp)
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	8(%eax), %eax
	movl	%ecx, 232(%esp)
	movl	%eax, 248(%esp)
	movl	140(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, 252(%esp)
	movl	140(%esp), %eax
	movl	16(%eax), %eax
	movl	%eax, 256(%esp)
.L460:
	movl	132(%esp), %ecx
	addl	56(%esp), %edx
	movl	128(%esp), %eax
	flds	.LC60
	movl	%ecx, (%edx)
	subl	$1, %ecx
	fldl	224(%esp)
	movl	%ecx, 132(%esp)
	movl	312(%esp), %ecx
	movl	%eax, 4(%edx)
	movl	308(%esp), %eax
	fmul	%st(1), %st
	movl	56(%eax,%ecx,8), %ecx
	movl	8(%ecx), %eax
	movl	%ecx, 36(%esp)
	movl	%eax, 28(%esp)
	movl	244(%esp), %eax
	imull	240(%esp), %eax
	movl	28(%esp), %ecx
	sall	$2, %eax
	movl	%eax, 220(%esp)
	movl	204(%esp), %eax
	movl	(%ecx,%eax,4), %eax
	addl	%eax, 220(%esp)
	movl	220(%esp), %ecx
	movl	%ecx, 8(%edx)
	movl	36(%esp), %ecx
	fldcw	268(%esp)
	fistpl	12(%edx)
	fldcw	270(%esp)
	movl	16(%ecx), %eax
	fldl	120(%esp)
	fmulp	%st, %st(1)
	fldcw	268(%esp)
	fistpl	16(%edx)
	fldcw	270(%esp)
	movl	%eax, 20(%edx)
	cmpl	232(%esp), %ebp
	jge	.L461
	movl	140(%esp), %eax
	movl	%ebp, 4(%eax)
.L461:
	movl	248(%esp), %edx
	cmpl	%edx, 128(%esp)
	jle	.L462
	movl	128(%esp), %edx
	movl	140(%esp), %eax
	movl	%edx, 8(%eax)
.L462:
	cmpl	252(%esp), %esi
	jge	.L463
	movl	140(%esp), %eax
	movl	%esi, 12(%eax)
.L463:
	cmpl	256(%esp), %esi
	jle	.L496
	movl	140(%esp), %eax
	movl	%esi, 16(%eax)
.L496:
	movl	144(%ebx), %eax
	movl	(%eax,%edi), %edx
	movb	$0, 140(%esp)
	movb	$1, 120(%esp)
	jmp	.L447
	.p2align 4,,7
	.p2align 3
.L465:
	movl	$28, (%esp)
.LEHB28:
	call	_Znwj
.LEHE28:
	movl	312(%esp), %edx
	movl	308(%esp), %ecx
	movl	%eax, 148(%esp)
	movl	28(%ecx,%edx,4), %eax
	movl	148(%esp), %edx
	movl	192(%ebx), %ecx
	movl	%eax, 20(%edx)
	movl	20(%ebx), %eax
	movl	%ecx, 24(%edx)
	movl	$100000, 4(%edx)
	movl	$-1, 8(%edx)
	movl	$100000, 12(%edx)
	sall	$3, %eax
	movl	$-1, 16(%edx)
	movl	%eax, (%esp)
.LEHB29:
	call	_Znaj
.LEHE29:
	movl	148(%esp), %edx
	movl	%eax, 144(%esp)
	movl	%eax, (%edx)
	movl	144(%ebx), %eax
	movl	%edx, 192(%ebx)
	movl	(%eax,%edi), %edx
	movl	144(%esp), %eax
	jmp	.L466
	.p2align 4,,7
	.p2align 3
.L483:
	movl	$0, 204(%esp)
	jmp	.L451
.L500:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L438:
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
	.p2align 4,,7
	.p2align 3
.L459:
	.cfi_restore_state
	movl	$24, (%esp)
.LEHB30:
	call	_Znwj
.LEHE30:
	movl	184(%ebx), %edx
	movl	%eax, 140(%esp)
	movl	20(%ebx), %eax
	movl	140(%esp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	%edx, 20(%ecx)
	sall	$3, %eax
	movl	%eax, (%esp)
.LEHB31:
	call	_Znaj
.LEHE31:
	movl	%eax, %edx
	movl	140(%esp), %eax
	movl	$-1, 256(%esp)
	movl	$10000, 252(%esp)
	movl	$-1, 248(%esp)
	movl	%edx, (%eax)
	movl	$10000, 4(%eax)
	movl	$-1, 8(%eax)
	movl	$10000, 12(%eax)
	movl	$-1, 16(%eax)
	movl	%eax, 184(%ebx)
	fnstcw	270(%esp)
	movl	$10000, 232(%esp)
	movzwl	270(%esp), %eax
	movb	$12, %ah
	movw	%ax, 268(%esp)
	jmp	.L460
	.p2align 4,,7
	.p2align 3
.L453:
	movl	$24, (%esp)
.LEHB32:
	call	_Znwj
.LEHE32:
	movl	188(%ebx), %edx
	movl	%eax, 220(%esp)
	movl	20(%ebx), %eax
	movl	220(%esp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	%edx, 20(%ecx)
	sall	$3, %eax
	movl	%eax, (%esp)
.LEHB33:
	call	_Znaj
.LEHE33:
	movl	%eax, %edx
	movl	220(%esp), %eax
	movl	$-1, 260(%esp)
	movl	$10000, 256(%esp)
	movl	$-1, 252(%esp)
	movl	%edx, (%eax)
	movl	$10000, 4(%eax)
	movl	$-1, 8(%eax)
	movl	$10000, 12(%eax)
	movl	$-1, 16(%eax)
	movl	%eax, 188(%ebx)
	fnstcw	270(%esp)
	movl	$10000, 248(%esp)
	movzwl	270(%esp), %eax
	movb	$12, %ah
	movw	%ax, 268(%esp)
	jmp	.L454
	.p2align 4,,7
	.p2align 3
.L439:
	leal	20(%edx), %eax
	addl	$24, %edx
	movl	0(%ebp,%eax,4), %edi
	movl	308(%esp), %ebp
	movl	%edi, 48(%esp)
	movl	8(%ebp,%eax,4), %eax
	movl	%ebp, %edi
	movl	%eax, 128(%esp)
	movl	0(%ebp,%edx,4), %eax
	movl	8(%ebp,%edx,4), %edx
	movl	%eax, 64(%esp)
	leal	20(%ecx), %eax
	movl	0(%ebp,%eax,4), %ebp
	movl	8(%edi,%eax,4), %eax
	movl	%edx, 72(%esp)
	movl	%eax, 120(%esp)
	leal	24(%ecx), %eax
	movl	(%edi,%eax,4), %ecx
	movl	8(%edi,%eax,4), %edx
	movl	72(%esp), %eax
	movl	64(%esp), %edi
	movl	%eax, 112(%esp)
	movl	128(%esp), %eax
	movl	%edi, 104(%esp)
	movl	48(%esp), %edi
	movl	%eax, 96(%esp)
	movl	%edi, 88(%esp)
	jmp	.L440
.L495:
	movl	%eax, %ebx
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB34:
	call	_Unwind_Resume
.L492:
	movl	%eax, %ebx
	movl	220(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.L493:
	movl	%eax, %ebx
	movl	140(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.L494:
	movl	%eax, %ebx
	movl	148(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE34:
	.cfi_endproc
.LFE1345:
	.section	.gcc_except_table
.LLSDA1345:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1345-.LLSDACSB1345
.LLSDACSB1345:
	.uleb128 .LEHB26-.LFB1345
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB1345
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L495-.LFB1345
	.uleb128 0
	.uleb128 .LEHB28-.LFB1345
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB1345
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L494-.LFB1345
	.uleb128 0
	.uleb128 .LEHB30-.LFB1345
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB1345
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L493-.LFB1345
	.uleb128 0
	.uleb128 .LEHB32-.LFB1345
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB1345
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L492-.LFB1345
	.uleb128 0
	.uleb128 .LEHB34-.LFB1345
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
.LLSDACSE1345:
	.text
	.size	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE, .-_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	.type	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d, @function
_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d:
.LFB1339:
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
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
.L550:
	movl	140(%ebx), %eax
	addl	$1, 12(%eax)
	movl	%ebp, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_ZN5Plane17evaluate_positionERK8Vector2d
	cmpl	$1, %eax
	je	.L505
	cmpl	$2, %eax
	je	.L506
	testl	%eax, %eax
	.p2align 4,,3
	jne	.L501
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L546
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L545
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L545
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L560
.L545:
	movl	%ebp, 8(%esp)
	movl	28(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	cmpb	$0, 152(%ebx)
	jne	.L501
	.p2align 4,,7
	.p2align 3
.L546:
	movl	24(%edi), %esi
	testl	%esi, %esi
	je	.L501
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L561
.L547:
	movl	24(%edi), %edi
	jmp	.L550
	.p2align 4,,7
	.p2align 3
.L561:
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L547
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L547
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L547
	.p2align 4,,7
	.p2align 3
.L501:
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
	.p2align 4,,7
	.p2align 3
.L506:
	.cfi_restore_state
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L543
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L542
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L542
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L562
.L542:
	movl	%ebp, 8(%esp)
	movl	28(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	cmpb	$0, 152(%ebx)
	jne	.L501
	.p2align 4,,7
	.p2align 3
.L543:
	movl	20(%edi), %esi
	jmp	.L533
	.p2align 4,,7
	.p2align 3
.L566:
	cmpl	$1, %eax
	movl	120(%ebx), %edx
	je	.L563
.L529:
	movl	32(%esi), %eax
	movl	%edx, %ecx
	subl	4(%eax), %ecx
	movl	$1, %eax
.L530:
	movl	%ecx, 120(%ebx)
	movl	%edx, 24(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	movl	24(%esp), %edx
	testb	%al, %al
	je	.L531
	cmpl	$1, 36(%esi)
	je	.L564
	movl	%edx, 24(%esp)
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	movl	24(%esp), %edx
.L531:
	movl	%edx, 120(%ebx)
.L552:
	movl	248(%esi), %esi
	testl	%esi, %esi
	je	.L565
.L533:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L552
	cmpb	$0, 124(%ebx)
	movl	36(%esi), %eax
	jne	.L566
	testl	%eax, %eax
	movl	100(%ebx), %edx
	jne	.L527
	movl	32(%esi), %ecx
	movl	56(%edx), %edx
	addl	4(%ecx), %edx
.L528:
	cmpl	$1, %eax
	movb	$1, 124(%ebx)
	jne	.L529
.L563:
	movl	28(%esi), %eax
	movl	%edx, %ecx
	subl	4(%eax), %ecx
	xorl	%eax, %eax
	jmp	.L530
	.p2align 4,,7
	.p2align 3
.L505:
	movl	24(%edi), %esi
	testl	%esi, %esi
	je	.L540
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L539
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L539
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L567
.L539:
	movl	%ebp, 8(%esp)
	movl	24(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	cmpb	$0, 152(%ebx)
	jne	.L501
	.p2align 4,,7
	.p2align 3
.L540:
	movl	20(%edi), %esi
	jmp	.L517
	.p2align 4,,7
	.p2align 3
.L570:
	movl	120(%ebx), %edx
	movl	%edx, 28(%esp)
.L512:
	subl	%eax, %edx
	movl	%edx, 120(%ebx)
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	testb	%al, %al
	je	.L515
	cmpl	$1, 36(%esi)
	je	.L568
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
.L515:
	movl	28(%esp), %edx
	movl	%edx, 120(%ebx)
.L551:
	movl	248(%esi), %esi
	testl	%esi, %esi
	je	.L569
.L517:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L551
	movl	28(%esi), %eax
	cmpb	$0, 124(%ebx)
	movl	4(%eax), %eax
	jne	.L570
	movl	100(%ebx), %edx
	movl	56(%edx), %edx
	movb	$1, 124(%ebx)
	addl	%eax, %edx
	movl	%edx, 28(%esp)
	jmp	.L512
	.p2align 4,,7
	.p2align 3
.L565:
	movl	160(%ebx), %eax
	testl	%eax, %eax
	jne	.L546
.L558:
	movb	$1, 152(%ebx)
	jmp	.L501
	.p2align 4,,7
	.p2align 3
.L569:
	movl	160(%ebx), %eax
	testl	%eax, %eax
	je	.L558
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L501
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L541
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L541
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L571
.L541:
	movl	28(%edi), %edi
	jmp	.L550
	.p2align 4,,7
	.p2align 3
.L527:
	movl	28(%esi), %ecx
	movl	56(%edx), %edx
	addl	4(%ecx), %edx
	jmp	.L528
	.p2align 4,,7
	.p2align 3
.L568:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine18process_solid_wallERK4Wall
	jmp	.L515
	.p2align 4,,7
	.p2align 3
.L564:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine18process_solid_wallERK4Wall
	movl	24(%esp), %edx
	jmp	.L531
.L560:
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L546
	jmp	.L545
	.p2align 4,,7
	.p2align 3
.L567:
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L540
	jmp	.L539
	.p2align 4,,7
	.p2align 3
.L562:
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L543
	jmp	.L542
	.p2align 4,,7
	.p2align 3
.L571:
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L501
	jmp	.L541
	.cfi_endproc
.LFE1339:
	.size	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d, .-_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine21compute_visible_wallsEv
	.type	_ZN7XEngine21compute_visible_wallsEv, @function
_ZN7XEngine21compute_visible_wallsEv:
.LFB1338:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	100(%eax), %edx
	movl	%edx, 8(%esp)
	movl	140(%eax), %edx
	movl	(%edx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1338:
	.size	_ZN7XEngine21compute_visible_wallsEv, .-_ZN7XEngine21compute_visible_wallsEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine14render_ceilingEv
	.type	_ZN7XEngine14render_ceilingEv, @function
_ZN7XEngine14render_ceilingEv:
.LFB1346:
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
	movl	144(%esp), %eax
	movl	196(%eax), %eax
	testl	%eax, %eax
	movl	%eax, 28(%esp)
	je	.L573
.L623:
	movl	28(%esp), %edx
	movl	(%edx), %ecx
	movl	4(%edx), %eax
	movl	16(%edx), %esi
	movl	%ecx, 20(%esp)
	cmpl	%esi, 4(%ecx,%eax,8)
	je	.L575
	movl	%ecx, %edx
	.p2align 4,,7
	.p2align 3
.L615:
	addl	$1, %eax
	cmpl	%esi, 4(%edx,%eax,8)
	jne	.L615
.L575:
	movl	28(%esp), %ebp
	movl	%eax, %edi
	movl	20(%esp), %edx
	movl	8(%ebp), %ebx
	leal	(%edx,%eax,8), %ecx
	cmpl	%eax, %ebx
	jle	.L578
	cmpl	4(%ecx), %esi
	leal	8(%edx,%eax,8), %edx
	je	.L579
	.p2align 4,,7
	.p2align 3
.L578:
	xorl	%edx, %edx
	movl	144(%esp), %ebp
	cmpl	%esi, (%ecx)
	movl	144(%esp), %ecx
	movl	%eax, 36(%esp)
	setne	%dl
	movl	16(%ebp), %ebp
	subl	%edx, %edi
	movl	144(%esp), %edx
	fldl	104(%ecx)
	leal	1(%edi), %ebx
	fstpl	56(%esp)
	fldl	112(%ecx)
	movl	60(%edx), %edx
	fstpl	40(%esp)
	movl	%ebp, 52(%esp)
	movl	%ebx, 48(%esp)
	movl	%edx, 96(%esp)
	movl	28(%esp), %edx
	movl	20(%edx), %edx
	movl	%edx, 84(%esp)
	movl	100(%ecx), %edx
	movl	%ebp, %ecx
	fldl	4(%edx)
	fstpl	64(%esp)
	fldl	12(%edx)
	movl	84(%esp), %edx
	fstpl	72(%esp)
	fldl	16(%edx)
	movl	28(%edx), %edx
	fstpl	88(%esp)
	fldl	40(%esp)
	fchs
	fstpl	40(%esp)
	movl	8(%edx), %edx
	fnstcw	106(%esp)
	movzwl	106(%esp), %eax
	movl	%edx, 100(%esp)
	movb	$12, %ah
	movw	%ax, 104(%esp)
	.p2align 4,,7
	.p2align 3
.L582:
	movl	144(%esp), %eax
	movl	%esi, %edx
	movl	144(%esp), %ebp
	imull	20(%eax), %edx
	movl	36(%esp), %eax
	movl	28(%ebp), %ebx
	addl	%edx, %eax
	addl	48(%esp), %edx
	leal	(%ecx,%eax,4), %eax
	leal	(%ecx,%edx,4), %edx
	movl	96(%esp), %ecx
	movl	%edx, 24(%esp)
	leal	(%ebx,%ebx,2), %edx
	leal	(%ecx,%edx,8), %edx
	movl	84(%esp), %ecx
	fldl	8(%edx)
	fldl	16(%edx)
	fldl	56(%esp)
	fmul	%st(2), %st
	movl	32(%ebp), %edx
	subl	%ebx, %edx
	fldl	40(%esp)
	addl	$1, %edx
	fmul	%st(2), %st
	movl	%edx, 108(%esp)
	movl	8(%ecx), %edx
	xorl	%ecx, %ecx
	subl	120(%ebp), %edx
	fldl	40(%esp)
	fmul	%st(4), %st
	fxch	%st(3)
	fmull	56(%esp)
	fildl	108(%esp)
	fld1
	fdivp	%st, %st(1)
	movl	%edx, 108(%esp)
	movl	44(%ebp), %edx
	subl	%esi, %edx
	fildl	108(%esp)
	movl	%edx, 108(%esp)
	fildl	108(%esp)
	fdivrp	%st, %st(1)
	fildl	52(%ebp)
	fmulp	%st, %st(1)
	fdivp	%st, %st(6)
	fld	%st(3)
	fsub	%st(3), %st
	fmul	%st(6), %st
	faddl	64(%esp)
	fld	%st(5)
	fadd	%st(3), %st
	fmul	%st(7), %st
	faddl	72(%esp)
	fxch	%st(4)
	faddp	%st, %st(5)
	fxch	%st(4)
	fmul	%st(6), %st
	faddl	64(%esp)
	fsub	%st(4), %st
	fmul	%st(1), %st
	fxch	%st(2)
	fsubrp	%st, %st(5)
	fxch	%st(4)
	fmul	%st(5), %st
	faddl	72(%esp)
	fsub	%st(2), %st
	fmulp	%st, %st(4)
	fxch	%st(4)
	fdivl	88(%esp)
	fdivl	.LC63
	fld1
	fsubp	%st, %st(1)
	fmuls	.LC62
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	movl	108(%esp), %edx
	testl	%edx, %edx
	js	.L584
	leal	0(,%edx,4), %ecx
	cmpl	$255, %edx
	movl	$1020, %edx
	cmovg	%edx, %ecx
.L584:
	flds	.LC60
	fld	%st(4)
	movl	100(%esp), %edx
	fmul	%st(1), %st
	cmpl	24(%esp), %eax
	movl	(%edx,%ecx), %ebp
	fldcw	104(%esp)
	fistpl	32(%esp)
	fldcw	106(%esp)
	fld	%st(3)
	fmul	%st(1), %st
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	movl	108(%esp), %ecx
	je	.L630
	movl	36(%esp), %edx
	movl	%edi, 80(%esp)
	movl	%ecx, %edi
	subl	%ebx, %edx
	movl	%edx, 108(%esp)
	fildl	108(%esp)
	fmul	%st, %st(5)
	fxch	%st(5)
	faddp	%st, %st(3)
	fmul	%st, %st(2)
	fxch	%st(2)
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	fxch	%st(2)
	movl	108(%esp), %esi
	fmulp	%st, %st(3)
	fxch	%st(2)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	fldcw	104(%esp)
	fistpl	108(%esp)
	fldcw	106(%esp)
	movl	108(%esp), %ebx
	.p2align 4,,7
	.p2align 3
.L586:
	movl	%ebx, %ecx
	movl	%esi, %edx
	shrl	$10, %ecx
	addl	%edi, %ebx
	sarl	$16, %edx
	andl	$4032, %ecx
	andl	$63, %edx
	addl	%ecx, %edx
	movl	0(%ebp,%edx,4), %edx
	addl	32(%esp), %esi
	movl	%edx, (%eax)
	addl	$4, %eax
	cmpl	%eax, 24(%esp)
	jne	.L586
	movl	28(%esp), %ecx
	movl	80(%esp), %edi
	movl	16(%ecx), %esi
	jmp	.L585
.L630:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L585:
	movl	28(%esp), %ebx
	leal	-1(%esi), %eax
	movl	12(%ebx), %esi
	movl	%eax, 16(%ebx)
	cmpl	%esi, %eax
	jl	.L587
	movl	36(%esp), %ebp
	movl	20(%esp), %ecx
	leal	(%ecx,%ebp,8), %edx
	cmpl	(%edx), %eax
	jl	.L588
	cmpl	4(%edx), %eax
	jg	.L588
	movl	4(%ebx), %ebx
	movl	%ecx, %esi
	movl	36(%esp), %edx
	jmp	.L589
	.p2align 4,,7
	.p2align 3
.L627:
	movl	%ecx, %edx
.L589:
	cmpl	%ebx, %edx
	je	.L611
	leal	-1(%edx), %ecx
	cmpl	(%esi,%ecx,8), %eax
	jl	.L611
	cmpl	4(%esi,%ecx,8), %eax
	jle	.L627
	.p2align 4,,7
	.p2align 3
.L611:
	movl	20(%esp), %ebx
	movl	%eax, %esi
	leal	(%ebx,%edi,8), %ecx
	cmpl	(%ecx), %eax
	jl	.L596
	cmpl	4(%ecx), %eax
	jg	.L596
	movl	28(%esp), %ebx
	movl	20(%esp), %ebp
	movl	8(%ebx), %ecx
	movl	48(%esp), %ebx
	jmp	.L599
	.p2align 4,,7
	.p2align 3
.L628:
	movl	%ebx, %edi
	addl	$1, %ebx
.L599:
	cmpl	%ecx, %edi
	je	.L626
	cmpl	0(%ebp,%ebx,8), %eax
	jl	.L626
	cmpl	4(%ebp,%ebx,8), %eax
	jle	.L628
.L626:
	movl	%ebx, 48(%esp)
	.p2align 4,,7
	.p2align 3
.L600:
	movl	%edx, 36(%esp)
	movl	52(%esp), %ecx
	jmp	.L582
.L580:
	movl	%edx, %ecx
	addl	$8, %edx
	cmpl	%esi, -4(%edx)
	jne	.L578
.L579:
	addl	$1, %edi
	cmpl	%ebx, %edi
	jne	.L580
	movl	20(%esp), %ebx
	leal	(%ebx,%edi,8), %ecx
	jmp	.L578
	.p2align 4,,7
	.p2align 3
.L588:
	movl	28(%esp), %edx
	movl	8(%edx), %ebx
	movl	36(%esp), %edx
	.p2align 4,,7
	.p2align 3
.L620:
	addl	$1, %edx
	cmpl	%ebx, %edx
	jle	.L593
	movl	28(%esp), %ecx
	movl	4(%ecx), %edx
.L593:
	cmpl	%edx, 36(%esp)
	je	.L629
.L594:
	movl	20(%esp), %ebp
	leal	0(%ebp,%edx,8), %ecx
	cmpl	%eax, (%ecx)
	jg	.L620
	cmpl	%eax, 4(%ecx)
	jl	.L620
	cmpl	%eax, %esi
	jle	.L611
	.p2align 4,,7
	.p2align 3
.L587:
	movl	28(%esp), %edx
	movl	(%edx), %eax
	movl	24(%edx), %ebx
	testl	%eax, %eax
	je	.L604
	movl	%eax, (%esp)
	call	_ZdaPv
.L604:
	movl	28(%esp), %ecx
	movl	%ecx, (%esp)
	call	_ZdlPv
	testl	%ebx, %ebx
	je	.L573
	movl	%ebx, 28(%esp)
	jmp	.L623
	.p2align 4,,7
	.p2align 3
.L629:
	movl	28(%esp), %ebp
	subl	$1, %eax
	cmpl	%eax, %esi
	movl	%eax, 16(%ebp)
	jle	.L594
	jmp	.L587
	.p2align 4,,7
	.p2align 3
.L596:
	movl	28(%esp), %ebp
	movl	4(%ebp), %ebx
	.p2align 4,,7
	.p2align 3
.L621:
	subl	$1, %edi
	cmpl	%ebx, %edi
	jge	.L602
	movl	28(%esp), %ebp
	movl	8(%ebp), %edi
.L602:
	movl	20(%esp), %ebp
	leal	0(%ebp,%edi,8), %ecx
	cmpl	(%ecx), %eax
	jl	.L621
	cmpl	4(%ecx), %eax
	jg	.L621
	leal	1(%edi), %eax
	movl	%eax, 48(%esp)
	jmp	.L600
.L573:
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
.LFE1346:
	.size	_ZN7XEngine14render_ceilingEv, .-_ZN7XEngine14render_ceilingEv
	.section	.rodata.str1.1
.LC64:
	.string	"ciao"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12render_floorEv
	.type	_ZN7XEngine12render_floorEv, @function
_ZN7XEngine12render_floorEv:
.LFB1347:
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
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %edx
	movl	192(%edx), %edx
	testl	%edx, %edx
	movl	%edx, 36(%esp)
	je	.L631
.L684:
	movl	36(%esp), %ecx
	movl	4(%ecx), %eax
	movl	(%ecx), %edx
	movl	12(%ecx), %edi
	cmpl	%edi, (%edx,%eax,8)
	je	.L633
	.p2align 4,,7
	.p2align 3
.L675:
	addl	$1, %eax
	cmpl	%edi, (%edx,%eax,8)
	jne	.L675
.L633:
	movl	36(%esp), %ebx
	movl	%eax, %ebp
	movl	8(%ebx), %ecx
	cmpl	%eax, %ecx
	jg	.L688
.L635:
	cmpl	%edi, (%edx,%ebp,8)
	jne	.L665
.L640:
	leal	1(%ebp), %esi
	movl	%eax, 44(%esp)
	movl	%esi, 48(%esp)
	.p2align 4,,7
	.p2align 3
.L641:
	movl	96(%esp), %edx
	movl	96(%esp), %ecx
	movl	16(%edx), %eax
	movl	%edi, %edx
	imull	20(%ecx), %edx
	movl	44(%esp), %ecx
	addl	%edx, %ecx
	addl	48(%esp), %edx
	leal	(%eax,%ecx,4), %ebx
	leal	(%eax,%edx,4), %edx
	movl	%edx, 40(%esp)
	movl	96(%esp), %edx
	movl	28(%edx), %esi
	movl	60(%edx), %ecx
	leal	(%esi,%esi,2), %eax
	leal	(%ecx,%eax,8), %eax
	movl	96(%esp), %ecx
	fldl	8(%eax)
	fldl	16(%eax)
	fldl	104(%edx)
	fldl	112(%edx)
	fchs
	movl	32(%edx), %eax
	fld	%st(1)
	movl	36(%esp), %edx
	fmul	%st(4), %st
	subl	%esi, %eax
	addl	$1, %eax
	movl	%eax, 60(%esp)
	movl	20(%edx), %eax
	fld	%st(1)
	movl	120(%ecx), %edx
	fmul	%st(4), %st
	fxch	%st(2)
	subl	4(%eax), %edx
	fmul	%st(5), %st
	fxch	%st(3)
	fmulp	%st, %st(4)
	fildl	60(%esp)
	fld1
	fdivp	%st, %st(1)
	movl	%edx, 60(%esp)
	movl	%edi, %edx
	subl	44(%ecx), %edx
	fstpl	16(%esp)
	fildl	60(%esp)
	movl	%edx, 60(%esp)
	movl	100(%ecx), %edx
	fildl	60(%esp)
	fdivrp	%st, %st(1)
	fildl	52(%ecx)
	xorl	%ecx, %ecx
	fmulp	%st, %st(1)
	fdivp	%st, %st(5)
	fldl	4(%edx)
	fld	%st(1)
	fsub	%st(3), %st
	fmul	%st(6), %st
	fadd	%st(1), %st
	fldl	12(%edx)
	fstpl	24(%esp)
	fld	%st(4)
	fadd	%st(6), %st
	fmul	%st(7), %st
	faddl	24(%esp)
	fxch	%st(4)
	faddp	%st, %st(3)
	fxch	%st(2)
	fmul	%st(6), %st
	faddp	%st, %st(1)
	fsub	%st(1), %st
	fmull	16(%esp)
	fxch	%st(4)
	fsubrp	%st, %st(3)
	fxch	%st(2)
	fmul	%st(4), %st
	faddl	24(%esp)
	fsub	%st(1), %st
	fmull	16(%esp)
	fxch	%st(4)
	fdivl	16(%eax)
	fdivs	.LC61
	fld1
	fsubp	%st, %st(1)
	fmuls	.LC62
	fnstcw	58(%esp)
	movzwl	58(%esp), %edx
	movb	$12, %dh
	movw	%dx, 56(%esp)
	fldcw	56(%esp)
	fistpl	60(%esp)
	fldcw	58(%esp)
	movl	60(%esp), %edx
	testl	%edx, %edx
	js	.L643
	leal	0(,%edx,4), %ecx
	cmpl	$255, %edx
	movl	$1020, %edx
	cmovg	%edx, %ecx
.L643:
	flds	.LC60
	fld	%st(3)
	movl	24(%eax), %eax
	fmul	%st(1), %st
	cmpl	40(%esp), %ebx
	movl	8(%eax), %eax
	fldcw	56(%esp)
	fistpl	16(%esp)
	fldcw	58(%esp)
	movl	(%eax,%ecx), %edx
	fld	%st(4)
	fmul	%st(1), %st
	fldcw	56(%esp)
	fistpl	24(%esp)
	fldcw	58(%esp)
	je	.L692
	movl	44(%esp), %eax
	movl	%ebp, 52(%esp)
	movl	%edx, %ebp
	subl	%esi, %eax
	movl	%eax, 60(%esp)
	fildl	60(%esp)
	fmul	%st, %st(4)
	fxch	%st(4)
	faddp	%st, %st(3)
	fmul	%st, %st(2)
	fxch	%st(2)
	fldcw	56(%esp)
	fistpl	60(%esp)
	fldcw	58(%esp)
	fxch	%st(3)
	movl	60(%esp), %edi
	fmulp	%st, %st(2)
	fxch	%st(1)
	faddp	%st, %st(2)
	fmulp	%st, %st(1)
	fldcw	56(%esp)
	fistpl	60(%esp)
	fldcw	58(%esp)
	movl	60(%esp), %esi
	.p2align 4,,7
	.p2align 3


.L645:
	movl	%esi, %edx
	movl	%edi, %eax
	shrl	$10, %edx
	sarl	$16, %eax
	andl	$4032, %edx
	andl	$63, %eax
	addl	%edx, %eax
	movl	0(%ebp,%eax,4), %eax
	addl	16(%esp), %edi
	addl	24(%esp), %esi
	movl	%eax, (%ebx)
	addl	$4, %ebx
	cmpl	%ebx, 40(%esp)
	jne	.L645


	movl	36(%esp), %ecx
	movl	52(%esp), %ebp
	movl	12(%ecx), %edi
	jmp	.L644
.L692:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L644:
	movl	36(%esp), %ebx
	leal	1(%edi), %eax
	movl	16(%ebx), %edi
	movl	%eax, 12(%ebx)
	cmpl	%edi, %eax
	jg	.L646
	movl	(%ebx), %ecx
	movl	44(%esp), %esi
	leal	(%ecx,%esi,8), %edx
	cmpl	(%edx), %eax
	jl	.L647
	cmpl	4(%edx), %eax
	jg	.L647
	movl	4(%ebx), %esi
	movl	44(%esp), %edx
	jmp	.L648
	.p2align 4,,7
	.p2align 3
.L689:
	movl	%ebx, %edx
.L648:
	cmpl	%esi, %edx
	je	.L671
	leal	-1(%edx), %ebx
	cmpl	(%ecx,%ebx,8), %eax
	jl	.L671
	cmpl	4(%ecx,%ebx,8), %eax
	jle	.L689
	.p2align 4,,7
	.p2align 3
.L671:
	leal	(%ecx,%ebp,8), %ebx
	movl	%eax, %edi
	cmpl	(%ebx), %eax
	jl	.L655
	cmpl	4(%ebx), %eax
	jg	.L655
	movl	36(%esp), %esi
	movl	8(%esi), %ebx
	movl	48(%esp), %esi
	jmp	.L658
	.p2align 4,,7
	.p2align 3
.L690:
	movl	%esi, %ebp
	addl	$1, %esi
.L658:
	cmpl	%ebx, %ebp
	je	.L687
	cmpl	(%ecx,%esi,8), %eax
	jl	.L687
	cmpl	4(%ecx,%esi,8), %eax
	jle	.L690
.L687:
	movl	%esi, 48(%esp)
	.p2align 4,,7
	.p2align 3
.L659:
	movl	%edx, 44(%esp)
	jmp	.L641
	.p2align 4,,7
	.p2align 3
.L647:
	movl	36(%esp), %edx
	movl	8(%edx), %esi
	movl	44(%esp), %edx
	.p2align 4,,7
	.p2align 3
.L681:
	addl	$1, %edx
	cmpl	%esi, %edx
	jle	.L652
	movl	36(%esp), %ebx
	movl	4(%ebx), %edx
.L652:
	cmpl	%edx, 44(%esp)
	je	.L691
.L653:
	leal	(%ecx,%edx,8), %ebx
	cmpl	%eax, (%ebx)
	jg	.L681
	cmpl	%eax, 4(%ebx)
	jl	.L681
	cmpl	%eax, %edi
	jge	.L671
	.p2align 4,,7
	.p2align 3
.L646:
	movl	36(%esp), %edx
	movl	(%edx), %eax
	movl	24(%edx), %ebx
	testl	%eax, %eax
	je	.L663
	movl	%eax, (%esp)
	call	_ZdaPv
.L663:
	movl	36(%esp), %ecx
	movl	%ecx, (%esp)
	call	_ZdlPv
	testl	%ebx, %ebx
	je	.L631
	movl	%ebx, 36(%esp)
	jmp	.L684
	.p2align 4,,7
	.p2align 3
.L691:
	movl	36(%esp), %ebx
	addl	$1, %eax
	cmpl	%eax, %edi
	movl	%eax, 12(%ebx)
	jge	.L653
	jmp	.L646
	.p2align 4,,7
	.p2align 3
.L655:
	movl	36(%esp), %ebx
	movl	4(%ebx), %esi
	.p2align 4,,7
	.p2align 3
.L682:
	subl	$1, %ebp
	cmpl	%esi, %ebp
	jge	.L661
	movl	36(%esp), %ebx
	movl	8(%ebx), %ebp
.L661:
	leal	(%ecx,%ebp,8), %ebx
	cmpl	(%ebx), %eax
	jl	.L682
	cmpl	4(%ebx), %eax
	jg	.L682
	leal	1(%ebp), %esi
	movl	%esi, 48(%esp)
	jmp	.L659
.L688:
	cmpl	(%edx,%eax,8), %edi
	jne	.L665
	movl	%eax, %ebp
	.p2align 4,,7
	.p2align 3
.L638:
	addl	$1, %ebp
	cmpl	%ecx, %ebp
	je	.L635
	cmpl	%edi, (%edx,%ebp,8)
	je	.L638
.L665:
	subl	$1, %ebp
	jmp	.L640
.L631:
	addl	$76, %esp
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
.LFE1347:
	.size	_ZN7XEngine12render_floorEv, .-_ZN7XEngine12render_floorEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine6renderEv
	.type	_ZN7XEngine6renderEv, @function
_ZN7XEngine6renderEv:
.LFB1333:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	leal	16(%esp), %edx
	leal	24(%esp), %eax
	fldl	.LC65
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	100(%ebx), %eax
	fsubl	60(%eax)
	fstpl	(%esp)
	call	sincos
	movl	140(%ebx), %eax
	movl	20(%ebx), %edx
	testl	%edx, %edx
	fldl	16(%esp)
	fstpl	104(%ebx)
	fldl	24(%esp)
	fstpl	112(%ebx)
	movb	$0, 124(%ebx)
	movl	$0, 12(%eax)
	leal	132(%ebx), %eax
	movl	$0, 132(%ebx)
	movl	%eax, 136(%ebx)
	je	.L694
	movl	148(%ebx), %esi
	xorl	%eax, %eax
	movl	144(%ebx), %ecx
	.p2align 4,,7
	.p2align 3
.L695:
	movl	36(%ebx), %edx
	movl	%edx, (%esi,%eax,4)
	movl	40(%ebx), %edx
	movl	%edx, (%ecx,%eax,4)
	movl	20(%ebx), %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L695
.L694:
	movl	48(%ebx), %eax
	movb	$0, 152(%ebx)
	movl	%eax, 160(%ebx)
	movl	156(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset
	movl	20(%ebx), %eax
	movl	$255, 4(%esp)
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	movl	180(%ebx), %eax
	movl	%eax, (%esp)
	call	memset
	movl	24(%ebx), %eax
	movl	$-1, 168(%ebx)
	movl	$-1, 176(%ebx)
	movl	$0, 184(%ebx)
	addl	$1, %eax
	movl	%eax, 164(%ebx)
	movl	20(%ebx), %eax
	movl	$0, 188(%ebx)
	movl	$0, 192(%ebx)
	movl	$0, 196(%ebx)
	addl	$1, %eax
	movl	%eax, 172(%ebx)
	movl	100(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	140(%ebx), %eax
	movl	(%eax), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	movl	%ebx, (%esp)
	call	_ZN7XEngine12render_floorEv
	movl	%ebx, (%esp)
	call	_ZN7XEngine14render_ceilingEv
	movl	%ebx, (%esp)
	call	_ZN7XEngine18render_solid_wallsEv
	movl	136(%ebx), %eax
	movl	$0, (%eax)
	movl	132(%ebx), %eax
	testl	%eax, %eax
	je	.L693
	.p2align 4,,7
	.p2align 3
.L698:
	movb	$0, (%eax)
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L698
.L693:
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE1333:
	.size	_ZN7XEngine6renderEv, .-_ZN7XEngine6renderEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine11process_keyEc
	.type	_ZN7XEngine11process_keyEc, @function
_ZN7XEngine11process_keyEc:
.LFB1348:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movzbl	52(%esp), %edx
	movl	48(%esp), %eax
	subl	$97, %edx
	cmpb	$23, %dl
	ja	.L701
	movzbl	%dl, %edx
	jmp	*.L712(,%edx,4)
	.section	.rodata
	.align 4
	.align 4
.L712:
	.long	.L703
	.long	.L704
	.long	.L705
	.long	.L706
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L701
	.long	.L707
	.long	.L701
	.long	.L708
	.long	.L701
	.long	.L701
	.long	.L709
	.long	.L710
	.long	.L711
	.text
	.p2align 4,,7
	.p2align 3
.L704:
	movl	44(%eax), %edx
	movl	36(%eax), %ecx
	subl	$2, %edx
	cmpl	%ecx, %edx
	movl	%edx, 44(%eax)
	jge	.L720
.L731:
	movl	%ecx, 44(%eax)
	movl	%ecx, %edx
.L720:
	movl	40(%eax), %ecx
	cmpl	%edx, %ecx
	jge	.L701
	movl	%ecx, 44(%eax)
	jmp	.L701
	.p2align 4,,7
	.p2align 3
.L733:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L701:
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.p2align 4,,7
	.p2align 3
.L711:
	.cfi_restore_state
	movl	100(%eax), %eax
	addl	$2, 56(%eax)
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L703:
	.cfi_restore_state
	movl	100(%eax), %eax
	fldl	.LC2
	fsubrl	60(%eax)
	fstl	60(%eax)
	fldl	.LC3
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L732
.L730:
	fsubp	%st, %st(1)
	fstl	60(%eax)
	jmp	.L716
	.p2align 4,,7
	.p2align 3
.L732:
	fstp	%st(1)
	jmp	.L716
	.p2align 4,,7
	.p2align 3
.L734:
	fstp	%st(1)
.L716:
	fldz
	fucomip	%st(1), %st
	jbe	.L733
	faddl	.LC3
	fstpl	60(%eax)
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L705:
	.cfi_restore_state
	movl	100(%eax), %eax
	subl	$2, 56(%eax)
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L706:
	.cfi_restore_state
	movl	100(%eax), %eax
	fldl	.LC2
	faddl	60(%eax)
	fstl	60(%eax)
	fldl	.LC3
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L734
	jmp	.L730
	.p2align 4,,7
	.p2align 3
.L707:
	movl	$0, (%esp)
	call	exit
	.p2align 4,,7
	.p2align 3
.L708:
	movl	100(%eax), %ebx
	leal	16(%esp), %edx
	leal	24(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	fldl	60(%ebx)
	fstpl	(%esp)
	call	sincos
	fldl	24(%esp)
	flds	.LC67
.L727:
	fldl	16(%esp)
	fmul	%st(1), %st
	faddl	4(%ebx)
	fstpl	4(%ebx)
	fmulp	%st, %st(1)
	faddl	12(%ebx)
	fstpl	12(%ebx)
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L709:
	.cfi_restore_state
	movl	44(%eax), %edx
	movl	36(%eax), %ecx
	addl	$2, %edx
	cmpl	%ecx, %edx
	movl	%edx, 44(%eax)
	jge	.L720
	jmp	.L731
	.p2align 4,,7
	.p2align 3
.L710:
	movl	100(%eax), %ebx
	leal	16(%esp), %edx
	leal	24(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	fldl	60(%ebx)
	fstpl	(%esp)
	call	sincos
	fldl	24(%esp)
	flds	.LC66
	jmp	.L727
	.cfi_endproc
.LFE1348:
	.size	_ZN7XEngine11process_keyEc, .-_ZN7XEngine11process_keyEc
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall
	.type	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall, @function
_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall:
.LFB1349:
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
	movl	320(%esp), %eax
	movl	316(%esp), %ebx
	movl	304(%esp), %edi
	movb	$0, 48(%esp)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 44(%esp)
	leal	48(%esp), %eax
	fildl	44(%esp)
	fldl	12(%ebx)
	fsub	%st(1), %st
	movl	$0, 100(%esp)
	fldl	4(%ebx)
	fsub	%st(2), %st
	movl	%eax, 4(%esp)
	movl	128(%edi), %eax
	fstpl	52(%esp)
	fstpl	60(%esp)
	fstpl	16(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 104(%esp)
	movl	$0, 156(%esp)
	fldl	16(%esp)
	movl	%eax, %ebp
	fldl	12(%ebx)
	leal	104(%esp), %eax
	fsub	%st(1), %st
	fldl	4(%ebx)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	128(%edi), %eax
	fstpl	108(%esp)
	fstpl	116(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 160(%esp)
	movl	$0, 212(%esp)
	fldl	16(%esp)
	movl	%eax, %esi
	fldl	12(%ebx)
	leal	160(%esp), %eax
	fadd	%st(1), %st
	fldl	4(%ebx)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	128(%edi), %eax
	fstpl	164(%esp)
	fstpl	172(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 216(%esp)
	movl	$0, 268(%esp)
	fldl	16(%esp)
	movl	%eax, %edx
	fldl	12(%ebx)
	leal	216(%esp), %eax
	fadd	%st(1), %st
	fxch	%st(1)
	fsubrl	4(%ebx)
	movl	%eax, 4(%esp)
	movl	128(%edi), %eax
	movl	%edx, 36(%esp)
	fstpl	220(%esp)
	fstpl	228(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$252, (%esp)
	movl	%eax, 40(%esp)
	call	_Znwj
	movl	36(%esp), %edx
	fldl	4(%esi)
	movl	%eax, %ebx
	fsubl	4(%ebp)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	$0, 248(%eax)
	movl	%ebp, 4(%eax)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	%esi, 8(%eax)
	movl	308(%esp), %eax
	movl	$0, 32(%ebx)
	movl	$0, 52(%ebx)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 48(%ebx)
	movl	312(%esp), %eax
	movl	%eax, 28(%ebx)
	fstpl	20(%ebx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L744
	fstp	%st(1)
.L736:
	fstpl	12(%ebx)
	fld1
	fstpl	40(%ebx)
	movl	%edx, 36(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	36(%esp), %edx
	fldl	4(%edx)
	movl	%eax, %edi
	fsubl	4(%esi)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	$0, 248(%eax)
	movl	%esi, 4(%eax)
	fldl	12(%edx)
	fsubl	12(%esi)
	movl	%edx, 8(%eax)
	movl	308(%esp), %eax
	movl	$0, 32(%edi)
	movl	$0, 52(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 48(%edi)
	movl	312(%esp), %eax
	movl	%eax, 28(%edi)
	fstpl	20(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L745
	fstp	%st(1)
.L738:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	%edx, 36(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	36(%esp), %edx
	movl	%eax, %esi
	movl	%edx, 4(%eax)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	$0, 248(%eax)
	movl	40(%esp), %eax
	movl	$0, 32(%esi)
	movl	$0, 52(%esi)
	movl	%eax, 8(%esi)
	movl	308(%esp), %eax
	movl	%eax, 48(%esi)
	movl	312(%esp), %eax
	movl	%eax, 28(%esi)
	movl	40(%esp), %eax
	fldl	4(%eax)
	fsubl	4(%edx)
	fldl	12(%eax)
	fsubl	12(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L746
	fstp	%st(1)
.L740:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	40(%esp), %edx
	movl	%edx, 4(%eax)
	movl	308(%esp), %edx
	fldl	4(%ebp)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%edx, 48(%eax)
	movl	312(%esp), %edx
	movl	$0, 248(%eax)
	movl	%ebp, 8(%eax)
	movl	$0, 32(%eax)
	movl	%edx, 28(%eax)
	movl	40(%esp), %edx
	movl	$0, 52(%eax)
	fsubl	4(%edx)
	fldl	12(%ebp)
	fsubl	12(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L747
	fstp	%st(1)
.L742:
	movl	324(%esp), %edx
	fstpl	12(%eax)
	fld1
	movl	%edi, 248(%ebx)
	fstpl	40(%eax)
	movl	%esi, 248(%edi)
	movl	%eax, 248(%esi)
	movl	%edx, 248(%eax)
	addl	$284, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
.L744:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L736
.L747:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 36(%esp)
	call	sqrt
	movl	36(%esp), %eax
	jmp	.L742
.L746:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L740
.L745:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L738
	.cfi_endproc
.LFE1349:
	.size	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall, .-_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall
	.type	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall, @function
_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall:
.LFB1350:
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
	movl	320(%esp), %eax
	movl	316(%esp), %ebx
	movl	304(%esp), %esi
	movb	$0, 48(%esp)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 44(%esp)
	leal	48(%esp), %eax
	fildl	44(%esp)
	fldl	12(%ebx)
	fsub	%st(1), %st
	movl	$0, 100(%esp)
	fldl	4(%ebx)
	fsub	%st(2), %st
	movl	%eax, 4(%esp)
	movl	128(%esi), %eax
	fstpl	52(%esp)
	fstpl	60(%esp)
	fstpl	16(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 104(%esp)
	movl	$0, 156(%esp)
	fldl	16(%esp)
	movl	%eax, %edi
	fldl	12(%ebx)
	leal	104(%esp), %eax
	fsub	%st(1), %st
	fldl	4(%ebx)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	128(%esi), %eax
	fstpl	108(%esp)
	fstpl	116(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 160(%esp)
	movl	$0, 212(%esp)
	fldl	16(%esp)
	movl	%eax, %edx
	fldl	12(%ebx)
	leal	160(%esp), %eax
	fadd	%st(1), %st
	fldl	4(%ebx)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	128(%esi), %eax
	movl	%edx, 36(%esp)
	fstpl	164(%esp)
	fstpl	172(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 216(%esp)
	movl	$0, 268(%esp)
	fldl	16(%esp)
	movl	%eax, %ebp
	fldl	12(%ebx)
	leal	216(%esp), %eax
	fadd	%st(1), %st
	fxch	%st(1)
	fsubrl	4(%ebx)
	movl	%eax, 4(%esp)
	movl	128(%esi), %eax
	fstpl	220(%esp)
	fstpl	228(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$252, (%esp)
	movl	%eax, 40(%esp)
	call	_Znwj
	movl	36(%esp), %edx
	fldl	4(%edx)
	movl	%eax, %esi
	fsubl	4(%edi)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	324(%esp), %eax
	movl	%edi, 4(%esi)
	movl	%edx, 8(%esi)
	fldl	12(%edx)
	fsubl	12(%edi)
	movl	%eax, 248(%esi)
	movl	308(%esp), %eax
	movl	$0, 32(%esi)
	movl	$0, 52(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 48(%esi)
	movl	312(%esp), %eax
	movl	%eax, 28(%esi)
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L757
	fstp	%st(1)
.L749:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	%edx, 36(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	36(%esp), %edx
	fldl	4(%ebp)
	movl	%eax, %ebx
	fsubl	4(%edx)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%esi, 248(%eax)
	movl	%edx, 4(%eax)
	fldl	12(%ebp)
	fsubl	12(%edx)
	movl	%ebp, 8(%eax)
	movl	308(%esp), %eax
	movl	$0, 32(%ebx)
	movl	$0, 52(%ebx)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 48(%ebx)
	movl	312(%esp), %eax
	movl	%eax, 28(%ebx)
	fstpl	20(%ebx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L758
	fstp	%st(1)
.L751:
	fstpl	12(%ebx)
	fld1
	fstpl	40(%ebx)
	movl	$252, (%esp)
	call	_Znwj
	movl	308(%esp), %edx
	movl	%eax, %esi
	movl	%ebp, 4(%eax)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%ebx, 248(%eax)
	movl	40(%esp), %eax
	movl	%edx, 48(%esi)
	movl	312(%esp), %edx
	movl	$0, 32(%esi)
	movl	$0, 52(%esi)
	fldl	4(%eax)
	fsubl	4(%ebp)
	movl	%eax, 8(%esi)
	movl	%edx, 28(%esi)
	fldl	12(%eax)
	fsubl	12(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L759
	fstp	%st(1)
.L753:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	40(%esp), %edx
	movl	%edx, 4(%eax)
	movl	308(%esp), %edx
	fldl	4(%edi)
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%edx, 48(%eax)
	movl	312(%esp), %edx
	movl	%esi, 248(%eax)
	movl	%edi, 8(%eax)
	movl	$0, 32(%eax)
	movl	%edx, 28(%eax)
	movl	40(%esp), %edx
	movl	$0, 52(%eax)
	fsubl	4(%edx)
	fldl	12(%edi)
	fsubl	12(%edx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	20(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L760
	fstp	%st(1)
.L755:
	fstpl	12(%eax)
	fld1
	fstpl	40(%eax)
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
.L757:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L749
.L760:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 36(%esp)
	call	sqrt
	movl	36(%esp), %eax
	jmp	.L755
.L759:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L753
.L758:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L751
	.cfi_endproc
.LFE1350:
	.size	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall, .-_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1352:
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
.LFE1352:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	-2061584302
	.long	1069044203
	.align 8
.LC3:
	.long	1413754136
	.long	1075388923
	.section	.rodata.cst4
	.align 4
.LC4:
	.long	0
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	-1571644103
	.long	1066524486
	.section	.rodata.cst4
	.align 4
.LC12:
	.long	1128792064
	.section	.rodata.cst8
	.align 8
.LC13:
	.long	2134057426
	.long	1074977148
	.section	.rodata.cst4
	.align 4
.LC14:
	.long	1133903872
	.align 4
.LC15:
	.long	1143930880
	.align 4
.LC16:
	.long	1140457472
	.align 4
.LC17:
	.long	1135542272
	.align 4
.LC18:
	.long	1148846080
	.align 4
.LC19:
	.long	1153138688
	.align 4
.LC20:
	.long	1143275520
	.align 4
.LC21:
	.long	1136852992
	.align 4
.LC22:
	.long	1141309440
	.align 4
.LC23:
	.long	1148190720
	.align 4
.LC24:
	.long	1151909888
	.align 4
.LC25:
	.long	1157234688
	.align 4
.LC26:
	.long	1144750080
	.align 4
.LC27:
	.long	1157627904
	.align 4
.LC28:
	.long	1149239296
	.align 4
.LC29:
	.long	1158479872
	.align 4
.LC30:
	.long	1141473280
	.align 4
.LC31:
	.long	1150844928
	.align 4
.LC32:
	.long	1157840896
	.align 4
.LC33:
	.long	1149403136
	.align 4
.LC34:
	.long	1160298496
	.align 4
.LC35:
	.long	1161117696
	.align 4
.LC36:
	.long	1161936896
	.align 4
.LC37:
	.long	1159479296
	.align 4
.LC38:
	.long	1138819072
	.align 4
.LC39:
	.long	1152319488
	.align 4
.LC40:
	.long	1151090688
	.align 4
.LC41:
	.long	1143111680
	.align 4
.LC42:
	.long	1140785152
	.align 4
.LC43:
	.long	1153630208
	.align 4
.LC44:
	.long	1154449408
	.align 4
.LC45:
	.long	1155268608
	.align 4
.LC46:
	.long	1156087808
	.align 4
.LC47:
	.long	1156907008
	.align 4
.LC48:
	.long	1143767040
	.align 4
.LC49:
	.long	1152811008
	.align 4
.LC50:
	.long	1136033792
	.align 4
.LC51:
	.long	1129775104
	.align 4
.LC52:
	.long	1138327552
	.align 4
.LC53:
	.long	1133412352
	.align 4
.LC54:
	.long	1141719040
	.align 4
.LC55:
	.long	1158066176
	.align 4
.LC56:
	.long	1142865920
	.align 4
.LC57:
	.long	1158352896
	.section	.rodata.cst8
	.align 8
.LC58:
	.long	1167078172
	.long	1071806887
	.section	.rodata.cst4
	.align 4
.LC59:
	.long	1084227584
	.align 4
.LC60:
	.long	1199570944
	.align 4
.LC61:
	.long	1153433600
	.align 4
.LC62:
	.long	1132396544
	.section	.rodata.cst8
	.align 8
.LC63:
	.long	0
	.long	1083703296
	.align 8
.LC65:
	.long	1285274117
	.long	1060467073
	.section	.rodata.cst4
	.align 4
.LC66:
	.long	1092616192
	.align 4
.LC67:
	.long	-1054867456
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
