	.file	"XEngine.cc"
	.section	.text._ZN14XTextureLoaderD2Ev,"axG",@progbits,_ZN14XTextureLoaderD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN14XTextureLoaderD2Ev
	.type	_ZN14XTextureLoaderD2Ev, @function
_ZN14XTextureLoaderD2Ev:
.LFB51:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV14XTextureLoader+8, (%eax)
	ret
	.cfi_endproc
.LFE51:
	.size	_ZN14XTextureLoaderD2Ev, .-_ZN14XTextureLoaderD2Ev
	.section	.text._ZN7XEngineD2Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7XEngineD2Ev
	.type	_ZN7XEngineD2Ev, @function
_ZN7XEngineD2Ev:
.LFB1277:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	ret
	.cfi_endproc
.LFE1277:
	.size	_ZN7XEngineD2Ev, .-_ZN7XEngineD2Ev
	.section	.text._ZN7XEngineD0Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7XEngineD0Ev
	.type	_ZN7XEngineD0Ev, @function
_ZN7XEngineD0Ev:
.LFB1279:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	jmp	_ZdlPv
	.cfi_endproc
.LFE1279:
	.size	_ZN7XEngineD0Ev, .-_ZN7XEngineD0Ev
	.section	.text._ZN14XTextureLoaderD0Ev,"axG",@progbits,_ZN14XTextureLoaderD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN14XTextureLoaderD0Ev
	.type	_ZN14XTextureLoaderD0Ev, @function
_ZN14XTextureLoaderD0Ev:
.LFB53:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV14XTextureLoader+8, (%eax)
	jmp	_ZdlPv
	.cfi_endproc
.LFE53:
	.size	_ZN14XTextureLoaderD0Ev, .-_ZN14XTextureLoaderD0Ev
	.section	.text._ZN14XTextureLoader18release_tex_memoryEv,"axG",@progbits,_ZN14XTextureLoader18release_tex_memoryEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN14XTextureLoader18release_tex_memoryEv
	.type	_ZN14XTextureLoader18release_tex_memoryEv, @function
_ZN14XTextureLoader18release_tex_memoryEv:
.LFB54:
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
.LFE54:
	.size	_ZN14XTextureLoader18release_tex_memoryEv, .-_ZN14XTextureLoader18release_tex_memoryEv
	.section	.text._ZN4WallC2EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_,"axG",@progbits,_ZN4WallC5EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN4WallC2EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	.type	_ZN4WallC2EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_, @function
_ZN4WallC2EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_:
.LFB1252:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	48(%esp), %ecx
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	%esi, (%ebx)
	movl	84(%esp), %esi
	cmpl	$3, %ecx
	movl	%ecx, 60(%ebx)
	movl	%eax, 4(%ebx)
	movl	%esi, 320(%ebx)
	movl	60(%esp), %esi
	movl	%edx, 8(%ebx)
	movl	%esi, 76(%ebx)
	movl	52(%esp), %esi
	movl	%esi, 52(%ebx)
	je	.L15
	cmpl	$1, %ecx
	jne	.L20
.L15:
	movl	$0, 56(%ebx)
	movl	$0, 80(%ebx)
.L16:
	fldl	4(%edx)
	fsubl	4(%eax)
	fstl	12(%ebx)
	fldl	12(%edx)
	fsubl	12(%eax)
	fstl	20(%ebx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%ebx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%ebx)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L21
	fstp	%st(1)
.L17:
	cmpl	$-1, (%ebx)
	fstpl	28(%ebx)
	fld1
	fstpl	68(%ebx)
	je	.L14
	movl	52(%ebx), %eax
	movl	52(%eax), %edx
	movl	%edx, 324(%ebx)
	addl	$1, 56(%eax)
	movl	%ebx, 52(%eax)
	movl	60(%ebx), %eax
	cmpl	$3, %eax
	je	.L14
	cmpl	$1, %eax
	je	.L14
	movl	56(%ebx), %ecx
	movl	52(%ecx), %esi
	movl	%esi, 328(%ebx)
	addl	$1, 56(%ecx)
	movl	%ebx, 52(%ecx)
.L14:
	addl	$20, %esp
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
.L20:
	.cfi_restore_state
	movl	56(%esp), %esi
	movl	64(%esp), %ecx
	movl	%esi, 56(%ebx)
	movl	68(%esp), %esi
	movl	%ecx, 80(%ebx)
	movl	72(%esp), %ecx
	movl	%esi, 92(%ebx)
	movl	76(%esp), %esi
	movl	%ecx, 96(%ebx)
	movl	80(%esp), %ecx
	movl	%esi, 100(%ebx)
	movl	%ecx, 104(%ebx)
	jmp	.L16
.L21:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L17
	.cfi_endproc
.LFE1252:
	.size	_ZN4WallC2EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_, .-_ZN4WallC2EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	.text
	.align 2
	.p2align 4,,15
	.type	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12, @function
_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12:
.LFB1406:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
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
	subl	$332, %esp
	.cfi_def_cfa_offset 352
	movl	356(%esp), %edi
	leal	264(%esp), %ecx
	movl	352(%esp), %esi
	movl	%edx, 84(%esp)
	movb	$0, 264(%esp)
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%eax, %edi
	sarl	%edi
	movl	%edi, 92(%esp)
	fildl	92(%esp)
	fldl	12(%esi)
	fsub	%st(1), %st
	movl	$0, 316(%esp)
	fldl	4(%esi)
	fsub	%st(2), %st
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %edx
	fstpl	268(%esp)
	fstpl	276(%esp)
	movl	%edx, (%esp)
	fstpl	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 208(%esp)
	movl	$0, 260(%esp)
	fldl	64(%esp)
	fldl	12(%esi)
	fsub	%st(1), %st
	movl	%eax, 88(%esp)
	leal	208(%esp), %eax
	fldl	4(%esi)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	fstpl	212(%esp)
	fstpl	220(%esp)
	movl	%edi, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	152(%esp), %ecx
	movb	$0, 152(%esp)
	movl	$0, 204(%esp)
	fldl	64(%esp)
	movl	%eax, %edi
	fldl	12(%esi)
	fadd	%st(1), %st
	fldl	4(%esi)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %edx
	fstpl	156(%esp)
	fstpl	164(%esp)
	movl	%edx, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 96(%esp)
	movl	$0, 148(%esp)
	fldl	64(%esp)
	movl	%eax, %ecx
	fldl	12(%esi)
	leal	96(%esp), %eax
	fadd	%st(1), %st
	fxch	%st(1)
	fsubrl	4(%esi)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %esi
	movl	%ecx, 64(%esp)
	fstpl	100(%esp)
	fstpl	108(%esp)
	movl	%esi, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$336, (%esp)
	movl	%eax, %esi
	call	_Znwj
	movl	84(%esp), %ecx
	movl	360(%esp), %edx
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 52(%esp)
	movl	%eax, %ebx
	movl	88(%esp), %eax
	movl	%ebx, (%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 32(%esp)
	movl	$0, 24(%esp)
	movl	%ebp, 20(%esp)
	movl	$1, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	84(%esp), %edx
	movl	%ebx, 52(%esp)
	movl	64(%esp), %ebx
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	%edx, 28(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%eax, 80(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 24(%esp)
	movl	%ebp, 20(%esp)
	movl	$1, 16(%esp)
	movl	%esi, 8(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%esp), %edx
	movl	80(%esp), %ecx
	fldl	4(%edi)
	movl	%eax, %ebx
	fsubl	4(%edx)
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	%ecx, 320(%eax)
	movl	%edx, 4(%eax)
	fstl	12(%ebx)
	fldl	12(%edi)
	fsubl	12(%edx)
	movl	%edi, 8(%eax)
	movl	84(%esp), %eax
	movl	%ebp, 52(%ebx)
	movl	$0, 56(%ebx)
	movl	$0, 80(%ebx)
	fstl	20(%ebx)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 76(%ebx)
	fstpl	44(%ebx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%ebx)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L26
	fstp	%st(1)
.L23:
	cmpl	$-1, (%ebx)
	fstpl	28(%ebx)
	fld1
	fstpl	68(%ebx)
	je	.L25
	movl	52(%ebx), %esi
	movl	60(%ebx), %eax
	movl	52(%esi), %edx
	movl	%edx, 324(%ebx)
	addl	$1, 56(%esi)
	cmpl	$3, %eax
	movl	%ebx, 52(%esi)
	je	.L25
	cmpl	$1, %eax
	je	.L25
	movl	56(%ebx), %ecx
	movl	52(%ecx), %eax
	movl	%eax, 328(%ebx)
	addl	$1, 56(%ecx)
	movl	%ebx, 52(%ecx)
.L25:
	movl	$336, (%esp)
	call	_Znwj
	movl	%ebx, 52(%esp)
	movl	84(%esp), %ebx
	movl	%ebp, 20(%esp)
	movl	88(%esp), %ebp
	movl	%edi, 8(%esp)
	movl	$0, 48(%esp)
	movl	%ebx, 28(%esp)
	movl	%eax, %esi
	movl	%ebp, 12(%esp)
	movl	%eax, (%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 24(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	addl	$332, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
.L26:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L23
	.cfi_endproc
.LFE1406:
	.size	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12, .-_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"wall0.ppm"
.LC3:
	.string	"floor0.ppm"
.LC4:
	.string	"floor1.ppm"
.LC5:
	.string	"ceiling0.ppm"
.LC6:
	.string	"ceiling1.ppm"
.LC7:
	.string	"ceiling2.ppm"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine14setup_texturesEv
	.type	_ZN7XEngine14setup_texturesEv, @function
_ZN7XEngine14setup_texturesEv:
.LFB1351:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1351
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
	movl	16(%ebx), %edx
	movl	(%edx), %esi
	movl	%edx, (%esp)
	movl	$.LC2, 4(%esp)
.LEHB0:
	call	*8(%esi)
	movl	$24, (%esp)
	call	_Znwj
.LEHE0:
	movl	8(%ebx), %edx
	movl	%eax, %esi
	movl	16(%ebx), %eax
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
	movl	16(%ebx), %edx
	movl	%esi, 24(%ebx)
	movl	(%edx), %esi
	movl	%edx, (%esp)
	movl	$.LC3, 4(%esp)
.LEHB2:
	call	*8(%esi)
	movl	$24, (%esp)
	call	_Znwj
.LEHE2:
	movl	8(%ebx), %edx
	movl	%eax, %esi
	movl	16(%ebx), %eax
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
	movl	16(%ebx), %edx
	movl	%esi, 28(%ebx)
	movl	(%edx), %esi
	movl	%edx, (%esp)
	movl	$.LC3, 4(%esp)
.LEHB4:
	call	*8(%esi)
	movl	$24, (%esp)
	call	_Znwj
.LEHE4:
	movl	8(%ebx), %edx
	movl	%eax, %esi
	movl	16(%ebx), %eax
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
	movl	16(%ebx), %edx
	movl	%esi, 36(%ebx)
	movl	(%edx), %esi
	movl	%edx, (%esp)
	movl	$.LC4, 4(%esp)
.LEHB6:
	call	*8(%esi)
	movl	$24, (%esp)
	call	_Znwj
.LEHE6:
	movl	8(%ebx), %edx
	movl	%eax, %esi
	movl	16(%ebx), %eax
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
	movl	16(%ebx), %edx
	movl	%esi, 40(%ebx)
	movl	(%edx), %esi
	movl	%edx, (%esp)
	movl	$.LC5, 4(%esp)
.LEHB8:
	call	*8(%esi)
	movl	$24, (%esp)
	call	_Znwj
.LEHE8:
	movl	8(%ebx), %edx
	movl	%eax, %esi
	movl	16(%ebx), %eax
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
	movl	16(%ebx), %edx
	movl	%esi, 48(%ebx)
	movl	(%edx), %esi
	movl	%edx, (%esp)
	movl	$.LC6, 4(%esp)
.LEHB10:
	call	*8(%esi)
	movl	$24, (%esp)
	call	_Znwj
.LEHE10:
	movl	8(%ebx), %edx
	movl	%eax, %esi
	movl	16(%ebx), %eax
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
	movl	16(%ebx), %edx
	movl	%esi, 52(%ebx)
	movl	(%edx), %esi
	movl	%edx, (%esp)
	movl	$.LC7, 4(%esp)
.LEHB12:
	call	*8(%esi)
	movl	$24, (%esp)
	call	_Znwj
.LEHE12:
	movl	8(%ebx), %edx
	movl	%eax, %esi
	movl	16(%ebx), %eax
	movl	16(%eax), %ecx
	movl	12(%eax), %edi
	movl	8(%eax), %eax
	movl	$255, 4(%esi)
	movl	%ecx, 16(%esi)
	movl	%edi, 12(%esi)
	movl	%eax, (%esi)
	movl	%edx, 20(%esi)
	movl	%esi, (%esp)
.LEHB13:
	call	_ZN7Texture23generate_light_texturesEv
.LEHE13:
	movl	%esi, 56(%ebx)
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
.L35:
.L42:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB14:
	call	_Unwind_Resume
.LEHE14:
.L41:
	jmp	.L42
.L40:
	.p2align 4,,5
	jmp	.L42
.L39:
	.p2align 4,,11
	jmp	.L42
.L38:
	.p2align 4,,11
	jmp	.L42
.L37:
	.p2align 4,,11
	jmp	.L42
.L36:
	.p2align 4,,11
	jmp	.L42
	.cfi_endproc
.LFE1351:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1351:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1351-.LLSDACSB1351
.LLSDACSB1351:
	.uleb128 .LEHB0-.LFB1351
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1351
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L35-.LFB1351
	.uleb128 0
	.uleb128 .LEHB2-.LFB1351
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1351
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L36-.LFB1351
	.uleb128 0
	.uleb128 .LEHB4-.LFB1351
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1351
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L37-.LFB1351
	.uleb128 0
	.uleb128 .LEHB6-.LFB1351
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB1351
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L38-.LFB1351
	.uleb128 0
	.uleb128 .LEHB8-.LFB1351
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB1351
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L39-.LFB1351
	.uleb128 0
	.uleb128 .LEHB10-.LFB1351
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1351
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L40-.LFB1351
	.uleb128 0
	.uleb128 .LEHB12-.LFB1351
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB1351
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L41-.LFB1351
	.uleb128 0
	.uleb128 .LEHB14-.LFB1351
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE1351:
	.text
	.size	_ZN7XEngine14setup_texturesEv, .-_ZN7XEngine14setup_texturesEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12setup_playerEv
	.type	_ZN7XEngine12setup_playerEv, @function
_ZN7XEngine12setup_playerEv:
.LFB1352:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$92, (%esp)
	call	_Znwj
	movl	32(%esp), %edx
	flds	.LC8
	fstpl	4(%eax)
	movl	$40, 56(%eax)
	flds	.LC9
	fstpl	12(%eax)
	fldl	.LC10
	fstpl	60(%eax)
	movl	%eax, 60(%edx)
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1352:
	.size	_ZN7XEngine12setup_playerEv, .-_ZN7XEngine12setup_playerEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine11setup_listsEv
	.type	_ZN7XEngine11setup_listsEv, @function
_ZN7XEngine11setup_listsEv:
.LFB1353:
	.cfi_startproc
	movl	4(%esp), %eax
	leal	480(%eax), %edx
	movl	$0, 472(%eax)
	movl	$0, 480(%eax)
	movl	%edx, 484(%eax)
	ret
	.cfi_endproc
.LFE1353:
	.size	_ZN7XEngine11setup_listsEv, .-_ZN7XEngine11setup_listsEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine19init_elevators_dataEv
	.type	_ZN7XEngine19init_elevators_dataEv, @function
_ZN7XEngine19init_elevators_dataEv:
.LFB1355:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$0, 500(%eax)
	movl	$0, 496(%eax)
	ret
	.cfi_endproc
.LFE1355:
	.size	_ZN7XEngine19init_elevators_dataEv, .-_ZN7XEngine19init_elevators_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18build_sec_adj_listEP6Sector
	.type	_ZN7XEngine18build_sec_adj_listEP6Sector, @function
_ZN7XEngine18build_sec_adj_listEP6Sector:
.LFB1357:
	.cfi_startproc
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
	movl	36(%esp), %edi
	movl	52(%edi), %esi
	.p2align 4,,7
	.p2align 3
.L63:
	testl	%esi, %esi
	je	.L47
.L65:
	movl	60(%esi), %eax
	cmpl	$2, %eax
	je	.L58
	testl	%eax, %eax
	jne	.L48
.L58:
	movl	52(%esi), %ebx
	cmpl	%edi, %ebx
	je	.L64
	movl	328(%esi), %esi
.L51:
	movl	60(%edi), %eax
	testl	%eax, %eax
	je	.L52
	.p2align 4,,7
	.p2align 3
.L56:
	cmpl	%ebx, (%eax)
	je	.L63
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L56
.L52:
	movl	$8, (%esp)
	call	_Znwj
	movl	60(%edi), %edx
	testl	%esi, %esi
	movl	%ebx, (%eax)
	movl	%edx, 4(%eax)
	movl	%eax, 60(%edi)
	jne	.L65
.L47:
	movl	$8, (%esp)
	call	_Znwj
	movl	60(%edi), %ecx
	movl	%edi, (%eax)
	movl	%ecx, 4(%eax)
	movl	%eax, 60(%edi)
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
	.p2align 4,,7
	.p2align 3
.L48:
	.cfi_restore_state
	movl	324(%esi), %esi
	jmp	.L63
	.p2align 4,,7
	.p2align 3
.L64:
	movl	56(%esi), %ebx
	movl	324(%esi), %esi
	jmp	.L51
	.cfi_endproc
.LFE1357:
	.size	_ZN7XEngine18build_sec_adj_listEP6Sector, .-_ZN7XEngine18build_sec_adj_listEP6Sector
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine17init_sectors_dataEv
	.type	_ZN7XEngine17init_sectors_dataEv, @function
_ZN7XEngine17init_sectors_dataEv:
.LFB1356:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	464(%esi), %eax
	testl	%eax, %eax
	je	.L66
	xorl	%ebx, %ebx
	.p2align 4,,7
	.p2align 3
.L68:
	movl	64(%esi,%ebx,4), %edx
	addl	$1, %ebx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine18build_sec_adj_listEP6Sector
	cmpl	%ebx, 464(%esi)
	jne	.L68
.L66:
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE1356:
	.size	_ZN7XEngine17init_sectors_dataEv, .-_ZN7XEngine17init_sectors_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine16setup_level_dataEv
	.type	_ZN7XEngine16setup_level_dataEv, @function
_ZN7XEngine16setup_level_dataEv:
.LFB1354:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1354
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
	subl	$8092, %esp
	.cfi_def_cfa_offset 8112
	movl	8112(%esp), %ebx
	movl	$16, (%esp)
.LEHB15:
	call	_Znwj
.LEHE15:
	movl	%eax, %esi
	movl	%eax, (%esp)
.LEHB16:
	call	_ZN9VertexSetC1Ev
.LEHE16:
	movl	%esi, 468(%ebx)
	movl	$25, 464(%ebx)
	movl	$64, (%esp)
.LEHB17:
	call	_Znwj
	movl	40(%ebx), %ecx
	movl	52(%ebx), %edx
	movl	%ecx, 36(%eax)
	movl	%edx, 40(%eax)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$20, 8(%eax)
	movl	$110, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$90, 24(%eax)
	movl	%eax, 64(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	56(%ebx), %edi
	movl	36(%ebx), %esi
	movl	%edi, 40(%eax)
	movl	%esi, 36(%eax)
	movl	$1, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$128, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$128, 24(%eax)
	movl	%eax, 68(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	52(%ebx), %edx
	movl	36(%ebx), %ebp
	movl	%edx, 40(%eax)
	movl	%ebp, 36(%eax)
	movl	$2, (%eax)
	movl	$0, 4(%eax)
	movl	$32, 8(%eax)
	movl	$150, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$118, 24(%eax)
	movl	%eax, 72(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	40(%ebx), %ecx
	movl	48(%ebx), %esi
	movl	%ecx, 36(%eax)
	movl	%esi, 40(%eax)
	movl	$3, (%eax)
	movl	$0, 4(%eax)
	movl	$42, 8(%eax)
	movl	$140, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$98, 24(%eax)
	movl	%eax, 76(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	48(%ebx), %ebp
	movl	40(%ebx), %edi
	movl	%ebp, 40(%eax)
	movl	%edi, 36(%eax)
	movl	$4, (%eax)
	movl	$0, 4(%eax)
	movl	$52, 8(%eax)
	movl	$130, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$78, 24(%eax)
	movl	%eax, 80(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	36(%ebx), %edx
	movl	52(%ebx), %esi
	movl	%edx, 36(%eax)
	movl	%esi, 40(%eax)
	movl	$5, (%eax)
	movl	$0, 4(%eax)
	movl	$62, 8(%eax)
	movl	$150, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$88, 24(%eax)
	movl	%eax, 84(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	40(%ebx), %ecx
	movl	52(%ebx), %edi
	movl	%ecx, 36(%eax)
	movl	%edi, 40(%eax)
	movl	$6, (%eax)
	movl	$0, 4(%eax)
	movl	$72, 8(%eax)
	movl	$170, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$98, 24(%eax)
	movl	%eax, 88(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	48(%ebx), %edx
	movl	36(%ebx), %ebp
	movl	%edx, 40(%eax)
	movl	%ebp, 36(%eax)
	movl	$7, (%eax)
	movl	$0, 4(%eax)
	movl	$30, 8(%eax)
	movl	$100, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$70, 24(%eax)
	movl	%eax, 92(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	52(%ebx), %edi
	movl	40(%ebx), %esi
	movl	%edi, 40(%eax)
	movl	%esi, 36(%eax)
	movl	$8, (%eax)
	movl	$0, 4(%eax)
	movl	$10, 8(%eax)
	movl	$150, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$140, 24(%eax)
	movl	%eax, 96(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	40(%ebx), %ecx
	movl	52(%ebx), %ebp
	fldl	.LC12
	fstpl	28(%eax)
	movl	%ecx, 36(%eax)
	movl	%ebp, 40(%eax)
	movl	$9, (%eax)
	movl	$0, 4(%eax)
	movl	$72, 8(%eax)
	movl	$256, 12(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$184, 24(%eax)
	movl	%eax, 100(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	36(%ebx), %edx
	movl	52(%ebx), %esi
	movl	%edx, 36(%eax)
	movl	%esi, 40(%eax)
	movl	$10, (%eax)
	movl	$0, 4(%eax)
	movl	$72, 8(%eax)
	movl	$170, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$98, 24(%eax)
	movl	%eax, 104(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	52(%ebx), %ebp
	movl	40(%ebx), %edi
	movl	%ebp, 40(%eax)
	movl	%edi, 36(%eax)
	movl	$11, (%eax)
	movl	$0, 4(%eax)
	movl	$20, 8(%eax)
	movl	$96, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$76, 24(%eax)
	movl	%eax, 108(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	36(%ebx), %ecx
	movl	52(%ebx), %edx
	movl	%ecx, 36(%eax)
	movl	%edx, 40(%eax)
	movl	$12, (%eax)
	movl	$0, 4(%eax)
	movl	$40, 8(%eax)
	movl	$170, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$130, 24(%eax)
	movl	%eax, 112(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	48(%ebx), %edi
	movl	40(%ebx), %esi
	movl	%edi, 40(%eax)
	movl	%esi, 36(%eax)
	movl	$13, (%eax)
	movl	$0, 4(%eax)
	movl	$82, 8(%eax)
	movl	$170, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$88, 24(%eax)
	movl	%eax, 116(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	52(%ebx), %edx
	movl	36(%ebx), %ebp
	movl	%edx, 40(%eax)
	movl	%ebp, 36(%eax)
	movl	$14, (%eax)
	movl	$0, 4(%eax)
	movl	$92, 8(%eax)
	movl	$256, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$164, 24(%eax)
	movl	%eax, 120(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	40(%ebx), %ecx
	movl	48(%ebx), %esi
	movl	%ecx, 36(%eax)
	movl	%esi, 40(%eax)
	movl	$15, (%eax)
	movl	$0, 4(%eax)
	movl	$110, 8(%eax)
	movl	$210, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$100, 24(%eax)
	movl	%eax, 124(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	52(%ebx), %ebp
	movl	36(%ebx), %edi
	movl	%ebp, 40(%eax)
	movl	%edi, 36(%eax)
	movl	$16, (%eax)
	movl	$0, 4(%eax)
	movl	$110, 8(%eax)
	movl	$190, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$80, 24(%eax)
	movl	%eax, 128(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	36(%ebx), %edx
	movl	48(%ebx), %esi
	movl	%edx, 36(%eax)
	movl	%esi, 40(%eax)
	movl	$17, (%eax)
	movl	$0, 4(%eax)
	movl	$120, 8(%eax)
	movl	$230, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$110, 24(%eax)
	movl	%eax, 132(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	36(%ebx), %ecx
	movl	48(%ebx), %edi
	movl	%ecx, 36(%eax)
	movl	%edi, 40(%eax)
	movl	$18, (%eax)
	movl	$0, 4(%eax)
	movl	$130, 8(%eax)
	movl	$230, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$100, 24(%eax)
	movl	%eax, 136(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	48(%ebx), %edx
	movl	36(%ebx), %ebp
	movl	%edx, 40(%eax)
	movl	%ebp, 36(%eax)
	movl	$19, (%eax)
	movl	$0, 4(%eax)
	movl	$140, 8(%eax)
	movl	$230, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$90, 24(%eax)
	movl	%eax, 140(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	52(%ebx), %edi
	movl	40(%ebx), %esi
	movl	%edi, 40(%eax)
	movl	%esi, 36(%eax)
	movl	$20, (%eax)
	movl	$2, 4(%eax)
	movl	$110, 8(%eax)
	movl	$210, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$100, 24(%eax)
	movl	$160, 20(%eax)
	movl	%eax, 144(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	36(%ebx), %ecx
	movl	52(%ebx), %ebp
	movl	%ecx, 36(%eax)
	movl	%ebp, 40(%eax)
	movl	$21, (%eax)
	movl	$1, 4(%eax)
	movl	$140, 8(%eax)
	movl	$140, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$0, 24(%eax)
	movl	%eax, 148(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	36(%ebx), %edx
	movl	52(%ebx), %esi
	movl	%edx, 36(%eax)
	movl	%esi, 40(%eax)
	leal	520(%esp), %esi
	movl	$22, (%eax)
	movl	$0, 4(%eax)
	movl	$140, 8(%eax)
	movl	$220, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$80, 24(%eax)
	movl	%eax, 152(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	52(%ebx), %ebp
	movl	36(%ebx), %edi
	movl	%ebp, 40(%eax)
	movl	%edi, 36(%eax)
	leal	576(%esp), %edi
	movl	$23, (%eax)
	movl	$1, 4(%eax)
	movl	$140, 8(%eax)
	movl	$140, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$0, 24(%eax)
	movl	%eax, 156(%ebx)
	movl	$64, (%esp)
	call	_Znwj
	movl	52(%ebx), %edx
	movl	36(%ebx), %ecx
	fldz
	movl	$24, (%eax)
	movl	$0, 4(%eax)
	movl	$140, 8(%eax)
	fstl	524(%esp)
	movl	%ecx, 36(%eax)
	flds	.LC14
	movl	%edx, 40(%eax)
	movl	$220, 12(%eax)
	movl	$-1717986918, 28(%eax)
	movl	$1072798105, 32(%eax)
	movb	$0, 44(%eax)
	movl	$0, 52(%eax)
	movl	$80, 24(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	fstl	532(%esp)
	fxch	%st(1)
	movl	%eax, 160(%ebx)
	movl	%esi, 4(%esp)
	movl	468(%ebx), %eax
	fstps	64(%esp)
	fstps	80(%esp)
	movb	$0, 520(%esp)
	leal	800(%esp), %esi
	movl	$0, 572(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %ebp
	movb	$0, 576(%esp)
	movl	$0, 628(%esp)
	movl	%ebp, (%esp)
	flds	80(%esp)
	fstpl	580(%esp)
	movl	%eax, 240(%esp)
	flds	64(%esp)
	fstpl	588(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	632(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 632(%esp)
	movl	$0, 684(%esp)
	flds	.LC15
	fstpl	636(%esp)
	movl	%ecx, (%esp)
	flds	64(%esp)
	fstpl	644(%esp)
	movl	%eax, 144(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 688(%esp)
	movl	$0, 740(%esp)
	flds	.LC15
	movl	%eax, %ebp
	leal	688(%esp), %eax
	fstpl	692(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	.LC16
	fstpl	700(%esp)
	movl	%edi, (%esp)
	leal	856(%esp), %edi
	movl	%ebp, 168(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	744(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 744(%esp)
	movl	$0, 796(%esp)
	movl	%ecx, (%esp)
	flds	.LC17
	fstpl	748(%esp)
	movl	%eax, 244(%esp)
	flds	.LC16
	fstpl	756(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	leal	968(%esp), %esi
	movb	$0, 800(%esp)
	movl	$0, 852(%esp)
	flds	.LC17
	fstpl	804(%esp)
	movl	%eax, 248(%esp)
	movl	468(%ebx), %eax
	flds	.LC18
	fstpl	812(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %ebp
	leal	1024(%esp), %edi
	movb	$0, 856(%esp)
	movl	$0, 908(%esp)
	movl	%ebp, (%esp)
	flds	.LC15
	fstpl	860(%esp)
	movl	%eax, 252(%esp)
	flds	.LC18
	fstpl	868(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	912(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 912(%esp)
	movl	$0, 964(%esp)
	flds	.LC15
	fstpl	916(%esp)
	movl	%ecx, (%esp)
	flds	.LC19
	fstpl	924(%esp)
	movl	%eax, 256(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	leal	1136(%esp), %esi
	movb	$0, 968(%esp)
	movl	$0, 1020(%esp)
	flds	.LC17
	fstpl	972(%esp)
	movl	%eax, 260(%esp)
	movl	468(%ebx), %eax
	flds	.LC19
	fstpl	980(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %ebp
	leal	1192(%esp), %edi
	movb	$0, 1024(%esp)
	movl	$0, 1076(%esp)
	movl	%ebp, (%esp)
	flds	64(%esp)
	fstpl	1028(%esp)
	movl	%eax, 264(%esp)
	flds	.LC18
	fstpl	1036(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	1080(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 1080(%esp)
	movl	$0, 1132(%esp)
	flds	.LC20
	fstl	1084(%esp)
	movl	%ecx, (%esp)
	flds	.LC16
	fstpl	1092(%esp)
	movl	%eax, 268(%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	leal	1304(%esp), %esi
	movb	$0, 1136(%esp)
	movl	$0, 1188(%esp)
	flds	.LC21
	fstl	1140(%esp)
	movl	%eax, 172(%esp)
	movl	468(%ebx), %eax
	flds	.LC16
	fstpl	1148(%esp)
	movl	%eax, (%esp)
	fstps	96(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %ebp
	leal	1360(%esp), %edi
	movb	$0, 1192(%esp)
	movl	$0, 1244(%esp)
	movl	%ebp, (%esp)
	flds	.LC17
	fstpl	1196(%esp)
	movl	%eax, 176(%esp)
	flds	.LC22
	fstl	1204(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	1248(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 1248(%esp)
	movl	$0, 1300(%esp)
	movl	%ecx, (%esp)
	flds	.LC17
	movl	%eax, %ebp
	fstpl	1252(%esp)
	flds	.LC23
	fstl	1260(%esp)
	fstps	112(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 1304(%esp)
	movl	$0, 1356(%esp)
	flds	96(%esp)
	fstpl	1308(%esp)
	movl	%eax, 180(%esp)
	movl	468(%ebx), %eax
	flds	.LC18
	fstpl	1316(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 1360(%esp)
	movl	$0, 1412(%esp)
	movl	%edx, (%esp)
	flds	80(%esp)
	fstpl	1364(%esp)
	movl	%eax, 184(%esp)
	flds	.LC18
	fstpl	1372(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	1416(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 1416(%esp)
	movl	$0, 1468(%esp)
	flds	96(%esp)
	fstpl	1420(%esp)
	movl	%esi, (%esp)
	leal	1584(%esp), %esi
	flds	64(%esp)
	fstpl	1428(%esp)
	movl	%eax, 188(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1472(%esp)
	movl	$0, 1524(%esp)
	flds	96(%esp)
	movl	%eax, 272(%esp)
	leal	1472(%esp), %eax
	fstpl	1476(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	112(%esp)
	fstpl	1484(%esp)
	movl	%edi, (%esp)
	leal	1640(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	1528(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 1528(%esp)
	movl	$0, 1580(%esp)
	movl	%ecx, (%esp)
	flds	80(%esp)
	fstpl	1532(%esp)
	movl	%eax, 276(%esp)
	flds	64(%esp)
	fstpl	1540(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 1584(%esp)
	movl	$0, 1636(%esp)
	flds	80(%esp)
	fstpl	1588(%esp)
	movl	%eax, 280(%esp)
	movl	468(%ebx), %eax
	flds	112(%esp)
	fstpl	1596(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 1640(%esp)
	movl	$0, 1692(%esp)
	movl	%edx, (%esp)
	flds	.LC15
	fstpl	1644(%esp)
	movl	%eax, 284(%esp)
	flds	64(%esp)
	fstpl	1652(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	1696(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 1696(%esp)
	movl	$0, 1748(%esp)
	flds	.LC15
	fstpl	1700(%esp)
	movl	%esi, (%esp)
	leal	1864(%esp), %esi
	flds	112(%esp)
	fstpl	1708(%esp)
	movl	%eax, 288(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1752(%esp)
	movl	$0, 1804(%esp)
	flds	.LC15
	fstpl	1756(%esp)
	movl	%eax, 292(%esp)
	leal	1752(%esp), %eax
	flds	.LC24
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	fstl	1764(%esp)
	movl	%edi, (%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	1808(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	leal	1920(%esp), %edi
	movb	$0, 1808(%esp)
	movl	$0, 1860(%esp)
	movl	%ecx, (%esp)
	flds	.LC15
	fstpl	1812(%esp)
	movl	%eax, 192(%esp)
	flds	.LC25
	fstl	1820(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 1864(%esp)
	movl	$0, 1916(%esp)
	flds	.LC18
	fstpl	1868(%esp)
	movl	%eax, 196(%esp)
	movl	468(%ebx), %eax
	flds	80(%esp)
	fstpl	1876(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 1920(%esp)
	movl	$0, 1972(%esp)
	movl	%edx, (%esp)
	flds	.LC18
	fstpl	1924(%esp)
	movl	%eax, 224(%esp)
	flds	64(%esp)
	fstpl	1932(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	1976(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 1976(%esp)
	movl	$0, 2028(%esp)
	flds	.LC16
	fstpl	1980(%esp)
	movl	%esi, (%esp)
	leal	2144(%esp), %esi
	flds	.LC26
	fstl	1988(%esp)
	movl	%eax, 228(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2032(%esp)
	movl	$0, 2084(%esp)
	flds	.LC15
	movl	%eax, 296(%esp)
	leal	2032(%esp), %eax
	fstpl	2036(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	64(%esp)
	fstpl	2044(%esp)
	movl	%edi, (%esp)
	leal	2200(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	2088(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 2088(%esp)
	movl	$0, 2140(%esp)
	movl	%ecx, (%esp)
	flds	.LC16
	fstpl	2092(%esp)
	movl	%eax, 200(%esp)
	flds	.LC19
	fstpl	2100(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 2144(%esp)
	movl	$0, 2196(%esp)
	flds	.LC15
	fstpl	2148(%esp)
	movl	%eax, 204(%esp)
	movl	468(%ebx), %eax
	flds	.LC27
	fstpl	2156(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 2200(%esp)
	movl	$0, 2252(%esp)
	movl	%edx, (%esp)
	flds	.LC28
	fstpl	2204(%esp)
	movl	%eax, 300(%esp)
	flds	.LC29
	fstl	2212(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	2256(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 2256(%esp)
	movl	$0, 2308(%esp)
	movl	%esi, (%esp)
	leal	2424(%esp), %esi
	flds	.LC16
	fstpl	2260(%esp)
	movl	%eax, 304(%esp)
	flds	64(%esp)
	fstpl	2268(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2312(%esp)
	movl	$0, 2364(%esp)
	flds	.LC30
	fstl	2316(%esp)
	movl	%eax, 308(%esp)
	leal	2312(%esp), %eax
	flds	64(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	fstpl	2324(%esp)
	movl	%edi, (%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	2368(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	leal	2480(%esp), %edi
	movb	$0, 2368(%esp)
	movl	$0, 2420(%esp)
	movl	%ecx, (%esp)
	flds	80(%esp)
	fstpl	2372(%esp)
	movl	%eax, 208(%esp)
	flds	.LC31
	fstl	2380(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 2424(%esp)
	movl	$0, 2476(%esp)
	flds	.LC32
	fstpl	2428(%esp)
	movl	%eax, 212(%esp)
	movl	468(%ebx), %eax
	flds	64(%esp)
	fstpl	2436(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 2480(%esp)
	movl	$0, 2532(%esp)
	movl	%edx, (%esp)
	flds	.LC33
	fstl	2484(%esp)
	movl	%eax, 312(%esp)
	flds	.LC34
	fstpl	2492(%esp)
	fstps	96(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	2536(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 2536(%esp)
	movl	$0, 2588(%esp)
	movl	%esi, (%esp)
	leal	2704(%esp), %esi
	flds	.LC35
	fstl	2540(%esp)
	movl	%eax, 216(%esp)
	flds	64(%esp)
	fstpl	2548(%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2592(%esp)
	movl	$0, 2644(%esp)
	flds	96(%esp)
	movl	%eax, 220(%esp)
	leal	2592(%esp), %eax
	fstpl	2596(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	.LC36
	fstpl	2604(%esp)
	movl	%edi, (%esp)
	leal	2760(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	2648(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 2648(%esp)
	movl	$0, 2700(%esp)
	movl	%ecx, (%esp)
	flds	80(%esp)
	fstpl	2652(%esp)
	movl	%eax, 232(%esp)
	flds	.LC36
	fstpl	2660(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 2704(%esp)
	movl	$0, 2756(%esp)
	flds	.LC19
	movl	%eax, 236(%esp)
	movl	468(%ebx), %eax
	fstpl	2708(%esp)
	flds	.LC37
	fstpl	2716(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 2760(%esp)
	movl	$0, 2812(%esp)
	movl	%edx, (%esp)
	flds	.LC19
	fstpl	2764(%esp)
	movl	%eax, 320(%esp)
	flds	.LC38
	fstpl	2772(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	2816(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 2816(%esp)
	movl	$0, 2868(%esp)
	flds	.LC27
	fstpl	2820(%esp)
	movl	%esi, (%esp)
	leal	2984(%esp), %esi
	flds	.LC39
	fstl	2828(%esp)
	movl	%eax, 324(%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2872(%esp)
	movl	$0, 2924(%esp)
	flds	.LC40
	movl	%eax, 328(%esp)
	leal	2872(%esp), %eax
	fstpl	2876(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	80(%esp)
	fstpl	2884(%esp)
	movl	%edi, (%esp)
	leal	3040(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	2928(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 2928(%esp)
	movl	$0, 2980(%esp)
	movl	%ecx, (%esp)
	flds	.LC41
	fstpl	2932(%esp)
	movl	%eax, 332(%esp)
	flds	.LC42
	fstpl	2940(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 2984(%esp)
	movl	$0, 3036(%esp)
	flds	.LC43
	fstpl	2988(%esp)
	movl	%eax, 432(%esp)
	movl	468(%ebx), %eax
	flds	.LC9
	fstl	2996(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 3040(%esp)
	movl	$0, 3092(%esp)
	movl	%edx, (%esp)
	flds	.LC27
	fstpl	3044(%esp)
	movl	%eax, 436(%esp)
	flds	64(%esp)
	fstpl	3052(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	3096(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 3096(%esp)
	movl	$0, 3148(%esp)
	flds	.LC44
	fstl	3100(%esp)
	movl	%esi, (%esp)
	leal	3264(%esp), %esi
	flds	64(%esp)
	fstpl	3108(%esp)
	movl	%eax, 336(%esp)
	fstps	112(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3152(%esp)
	movl	$0, 3204(%esp)
	flds	.LC42
	movl	%eax, 340(%esp)
	leal	3152(%esp), %eax
	fstpl	3156(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	64(%esp)
	fstpl	3164(%esp)
	movl	%edi, (%esp)
	leal	3320(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	3208(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 3208(%esp)
	movl	$0, 3260(%esp)
	movl	%ecx, (%esp)
	flds	80(%esp)
	fstpl	3212(%esp)
	movl	%eax, 440(%esp)
	flds	.LC42
	fstpl	3220(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 3264(%esp)
	movl	$0, 3316(%esp)
	flds	.LC45
	fstpl	3268(%esp)
	movl	%eax, 444(%esp)
	movl	468(%ebx), %eax
	flds	.LC46
	fstl	3276(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 3320(%esp)
	movl	$0, 3372(%esp)
	movl	%edx, (%esp)
	flds	.LC47
	fstpl	3324(%esp)
	movl	%eax, 448(%esp)
	flds	64(%esp)
	fstpl	3332(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	3376(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 3376(%esp)
	movl	$0, 3428(%esp)
	flds	.LC48
	fstpl	3380(%esp)
	movl	%esi, (%esp)
	leal	3544(%esp), %esi
	flds	.LC49
	fstl	3388(%esp)
	movl	%eax, 452(%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3432(%esp)
	movl	$0, 3484(%esp)
	flds	.LC50
	fstpl	3436(%esp)
	movl	%eax, 344(%esp)
	leal	3432(%esp), %eax
	flds	.LC51
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	fstl	3444(%esp)
	movl	%edi, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	3488(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	leal	3600(%esp), %edi
	movb	$0, 3488(%esp)
	movl	$0, 3540(%esp)
	movl	%ecx, (%esp)
	flds	.LC27
	fstpl	3492(%esp)
	movl	%eax, 348(%esp)
	flds	.LC52
	fstl	3500(%esp)
	fstps	96(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 3544(%esp)
	movl	$0, 3596(%esp)
	flds	112(%esp)
	fstpl	3548(%esp)
	movl	%eax, 352(%esp)
	movl	468(%ebx), %eax
	flds	96(%esp)
	fstpl	3556(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 3600(%esp)
	movl	$0, 3652(%esp)
	movl	%edx, (%esp)
	flds	.LC53
	fstl	3604(%esp)
	movl	%eax, 356(%esp)
	flds	80(%esp)
	fstpl	3612(%esp)
	fstps	96(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	3656(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 3656(%esp)
	movl	$0, 3708(%esp)
	movl	%esi, (%esp)
	leal	3824(%esp), %esi
	flds	96(%esp)
	fstpl	3660(%esp)
	movl	%eax, 360(%esp)
	flds	64(%esp)
	fstpl	3668(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3712(%esp)
	movl	$0, 3764(%esp)
	flds	96(%esp)
	movl	%eax, 364(%esp)
	leal	3712(%esp), %eax
	fstpl	3716(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	.LC19
	fstpl	3724(%esp)
	movl	%edi, (%esp)
	leal	3880(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	3768(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 3768(%esp)
	movl	$0, 3820(%esp)
	movl	%ecx, (%esp)
	flds	.LC54
	fstl	3772(%esp)
	movl	%eax, 456(%esp)
	flds	.LC19
	fstpl	3780(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 3824(%esp)
	movl	$0, 3876(%esp)
	flds	64(%esp)
	movl	%eax, 368(%esp)
	movl	468(%ebx), %eax
	fstpl	3828(%esp)
	flds	.LC36
	fstpl	3836(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 3880(%esp)
	movl	$0, 3932(%esp)
	movl	%edx, (%esp)
	flds	96(%esp)
	fstpl	3884(%esp)
	movl	%eax, 316(%esp)
	flds	.LC36
	fstpl	3892(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	3936(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 3936(%esp)
	movl	$0, 3988(%esp)
	flds	.LC55
	fstl	3940(%esp)
	movl	%esi, (%esp)
	leal	4104(%esp), %esi
	flds	.LC19
	fstpl	3948(%esp)
	movl	%eax, 460(%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3992(%esp)
	movl	$0, 4044(%esp)
	flds	80(%esp)
	movl	%eax, 464(%esp)
	leal	3992(%esp), %eax
	fstpl	3996(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	.LC36
	fstpl	4004(%esp)
	movl	%edi, (%esp)
	leal	4160(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	4048(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 4048(%esp)
	movl	$0, 4100(%esp)
	movl	%ecx, (%esp)
	flds	80(%esp)
	fstpl	4052(%esp)
	movl	%eax, 372(%esp)
	flds	.LC56
	fstl	4060(%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 4104(%esp)
	movl	$0, 4156(%esp)
	flds	64(%esp)
	movl	%eax, 468(%esp)
	movl	468(%ebx), %eax
	fstpl	4108(%esp)
	flds	.LC57
	fstpl	4116(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 4160(%esp)
	movl	$0, 4212(%esp)
	movl	%edx, (%esp)
	flds	64(%esp)
	fstpl	4164(%esp)
	movl	%eax, 472(%esp)
	flds	.LC58
	fstl	4172(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	4216(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 4216(%esp)
	movl	$0, 4268(%esp)
	movl	%esi, (%esp)
	leal	4384(%esp), %esi
	flds	.LC59
	fstpl	4220(%esp)
	movl	%eax, 476(%esp)
	flds	80(%esp)
	fstpl	4228(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 4272(%esp)
	movl	$0, 4324(%esp)
	flds	.LC59
	movl	%eax, 376(%esp)
	leal	4272(%esp), %eax
	fstpl	4276(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	64(%esp)
	fstpl	4284(%esp)
	movl	%edi, (%esp)
	leal	4440(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	4328(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 4328(%esp)
	movl	$0, 4380(%esp)
	movl	%ecx, (%esp)
	flds	.LC60
	fstpl	4332(%esp)
	movl	%eax, 480(%esp)
	flds	80(%esp)
	fstpl	4340(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 4384(%esp)
	movl	$0, 4436(%esp)
	flds	.LC60
	fstpl	4388(%esp)
	movl	%eax, 380(%esp)
	movl	468(%ebx), %eax
	flds	64(%esp)
	fstpl	4396(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 4440(%esp)
	movl	$0, 4492(%esp)
	movl	%edx, (%esp)
	flds	.LC59
	fstpl	4444(%esp)
	movl	%eax, 484(%esp)
	flds	.LC61
	fstl	4452(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	4496(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 4496(%esp)
	movl	$0, 4548(%esp)
	movl	%esi, (%esp)
	leal	4664(%esp), %esi
	flds	.LC60
	fstpl	4500(%esp)
	movl	%eax, 384(%esp)
	flds	64(%esp)
	fstpl	4508(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 4552(%esp)
	movl	$0, 4604(%esp)
	flds	.LC59
	fstpl	4556(%esp)
	movl	%eax, 388(%esp)
	leal	4552(%esp), %eax
	flds	.LC62
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	fstl	4564(%esp)
	movl	%edi, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	4608(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	leal	4720(%esp), %edi
	movb	$0, 4608(%esp)
	movl	$0, 4660(%esp)
	movl	%ecx, (%esp)
	flds	.LC60
	fstpl	4612(%esp)
	movl	%eax, 392(%esp)
	flds	64(%esp)
	fstpl	4620(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 4664(%esp)
	movl	$0, 4716(%esp)
	flds	.LC59
	fstpl	4668(%esp)
	movl	%eax, 396(%esp)
	movl	468(%ebx), %eax
	flds	.LC27
	fstpl	4676(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 4720(%esp)
	movl	$0, 4772(%esp)
	movl	%edx, (%esp)
	flds	.LC60
	fstpl	4724(%esp)
	movl	%eax, 400(%esp)
	flds	.LC27
	fstpl	4732(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	4776(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 4776(%esp)
	movl	$0, 4828(%esp)
	flds	.LC63
	fstl	4780(%esp)
	movl	%esi, (%esp)
	leal	4944(%esp), %esi
	flds	.LC42
	fstpl	4788(%esp)
	movl	%eax, 404(%esp)
	fstps	80(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 4832(%esp)
	movl	$0, 4884(%esp)
	flds	.LC64
	fstl	4836(%esp)
	movl	%eax, 488(%esp)
	leal	4832(%esp), %eax
	flds	.LC42
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	fstpl	4844(%esp)
	movl	%edi, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	4888(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	leal	5000(%esp), %edi
	movb	$0, 4888(%esp)
	movl	$0, 4940(%esp)
	movl	%ecx, (%esp)
	flds	64(%esp)
	fstpl	4892(%esp)
	movl	%eax, 492(%esp)
	flds	.LC65
	fstl	4900(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 4944(%esp)
	movl	$0, 4996(%esp)
	flds	80(%esp)
	fstpl	4948(%esp)
	movl	%eax, 496(%esp)
	movl	468(%ebx), %eax
	flds	64(%esp)
	fstpl	4956(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 5000(%esp)
	movl	$0, 5052(%esp)
	movl	%edx, (%esp)
	flds	.LC59
	fstpl	5004(%esp)
	movl	%eax, 500(%esp)
	flds	.LC66
	fstl	5012(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	5056(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 5056(%esp)
	movl	$0, 5108(%esp)
	movl	%esi, (%esp)
	leal	5224(%esp), %esi
	flds	.LC60
	fstpl	5060(%esp)
	movl	%eax, 408(%esp)
	flds	64(%esp)
	fstpl	5068(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 5112(%esp)
	movl	$0, 5164(%esp)
	movl	%eax, 412(%esp)
	flds	.LC59
	leal	5112(%esp), %eax
	fstpl	5116(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	.LC19
	fstpl	5124(%esp)
	movl	%edi, (%esp)
	leal	5280(%esp), %edi
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	5168(%esp), %edx
	movl	%edx, 4(%esp)
	movl	468(%ebx), %ecx
	movb	$0, 5168(%esp)
	movl	$0, 5220(%esp)
	movl	%ecx, (%esp)
	flds	.LC60
	fstpl	5172(%esp)
	movl	%eax, 416(%esp)
	flds	.LC19
	fstpl	5180(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%esi, 4(%esp)
	movb	$0, 5224(%esp)
	movl	$0, 5276(%esp)
	flds	.LC59
	fstpl	5228(%esp)
	movl	%eax, 420(%esp)
	movl	468(%ebx), %eax
	flds	.LC67
	fstl	5236(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 5280(%esp)
	movl	$0, 5332(%esp)
	movl	%edx, (%esp)
	flds	.LC60
	fstpl	5284(%esp)
	movl	%eax, 424(%esp)
	flds	64(%esp)
	fstpl	5292(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	5336(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	468(%ebx), %esi
	movb	$0, 5336(%esp)
	movl	$0, 5388(%esp)
	flds	.LC59
	fstpl	5340(%esp)
	movl	%esi, (%esp)
	flds	.LC18
	fstpl	5348(%esp)
	movl	%eax, 428(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 5392(%esp)
	movl	$0, 5444(%esp)
	flds	.LC60
	movl	%eax, 504(%esp)
	leal	5392(%esp), %eax
	fstpl	5396(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %edi
	flds	.LC18
	fstpl	5404(%esp)
	movl	%edi, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$336, (%esp)
	movl	%eax, 508(%esp)
	call	_Znwj
	movl	240(%esp), %edx
	movl	64(%ebx), %esi
	movl	24(%ebx), %ecx
	movl	%edx, 4(%eax)
	movl	144(%esp), %edx
	movl	%eax, %edi
	movl	%ecx, 76(%eax)
	movl	168(%esp), %ecx
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	%edx, 8(%eax)
	fldl	4(%edx)
	movl	$0, 320(%eax)
	movl	%esi, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 80(%eax)
	movl	240(%esp), %eax
	fsubl	4(%eax)
	fstl	12(%edi)
	fldl	12(%edx)
	fsubl	12(%eax)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L250
	fstp	%st(1)
.L71:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L73
	movl	52(%edi), %eax
	movl	52(%eax), %esi
	movl	%esi, 324(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
	movl	60(%edi), %eax
	cmpl	$3, %eax
	je	.L73
	cmpl	$1, %eax
	je	.L73
	movl	56(%edi), %eax
	movl	52(%eax), %esi
	movl	%esi, 328(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
.L73:
	movl	%edx, 144(%esp)
	movl	%ecx, 168(%esp)
	movl	$336, (%esp)
	call	_Znwj
	movl	168(%esp), %ecx
	movl	144(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	%edi, 320(%eax)
	movl	64(%ebx), %edi
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	%edx, 4(%eax)
	movl	%ecx, 8(%eax)
	movl	24(%ebx), %eax
	fstl	12(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%edi, 52(%esi)
	movl	%eax, 76(%esi)
	movl	$0, 56(%esi)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L251
	fstp	%st(1)
.L74:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L76
	movl	52(%esi), %edi
	movl	60(%esi), %eax
	movl	52(%edi), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%edi)
	cmpl	$3, %eax
	movl	%esi, 52(%edi)
	je	.L76
	cmpl	$1, %eax
	je	.L76
	movl	56(%esi), %eax
	movl	52(%eax), %edi
	movl	%edi, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L76:
	movl	%ecx, 168(%esp)
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %edx
	movl	168(%esp), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	244(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L252
	fstp	%st(1)
.L77:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L79
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %esi
	movl	%esi, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L79
	cmpl	$1, %eax
	je	.L79
	movl	56(%edi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
.L79:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %edx
	movl	264(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	268(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ecx, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L253
	fstp	%st(1)
.L80:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L82
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %edi
	movl	%edi, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L82
	cmpl	$1, %eax
	je	.L82
	movl	56(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L82:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %edx
	movl	268(%esp), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	240(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L254
	fstp	%st(1)
.L83:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L85
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %esi
	movl	%esi, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L85
	cmpl	$1, %eax
	je	.L85
	movl	56(%edi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
.L85:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %edx
	movl	244(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	172(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ecx, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L255
	fstp	%st(1)
.L86:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L88
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %edi
	movl	%edi, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L88
	cmpl	$1, %eax
	je	.L88
	movl	56(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L88:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %ecx
	movl	64(%ebx), %edx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	172(%esp), %esi
	movl	%ecx, 56(%edi)
	movl	172(%esp), %ecx
	movl	$1, (%edi)
	movl	$0, 60(%edi)
	movl	%esi, 4(%edi)
	movl	176(%esp), %esi
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	%eax, 80(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 92(%edi)
	movl	%eax, 96(%edi)
	movl	%eax, 100(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	%eax, 104(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L256
	fstp	%st(1)
.L89:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L91
	movl	52(%edi), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 324(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
	movl	60(%edi), %eax
	cmpl	$3, %eax
	je	.L91
	cmpl	$1, %eax
	je	.L91
	movl	56(%edi), %esi
	movl	52(%esi), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L91:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %edx
	movl	176(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	248(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ecx, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L257
	fstp	%st(1)
.L92:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L94
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %edi
	movl	%edi, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L94
	cmpl	$1, %eax
	je	.L94
	movl	56(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L94:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	248(%esp), %esi
	fldl	4(%ebp)
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	fsubl	4(%esi)
	movl	%esi, 4(%edi)
	movl	%ebp, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%ecx, 52(%edi)
	fstl	12(%edi)
	fldl	12(%ebp)
	fsubl	12(%esi)
	movl	$0, 56(%edi)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L258
	fstp	%st(1)
.L95:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L97
	movl	52(%edi), %esi
	movl	60(%edi), %eax
	movl	52(%esi), %edx
	movl	%edx, 324(%edi)
	addl	$1, 56(%esi)
	cmpl	$3, %eax
	movl	%edi, 52(%esi)
	je	.L97
	cmpl	$1, %eax
	je	.L97
	movl	56(%edi), %ecx
	movl	52(%ecx), %eax
	movl	%eax, 328(%edi)
	addl	$1, 56(%ecx)
	movl	%edi, 52(%ecx)
.L97:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %ecx
	movl	64(%ebx), %edx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	180(%esp), %edi
	movl	$1, (%esi)
	movl	$0, 60(%esi)
	movl	%ebp, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ebp)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	%ecx, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	%eax, 80(%esi)
	movl	%eax, 92(%esi)
	movl	%eax, 96(%esi)
	movl	%eax, 100(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 104(%esi)
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L259
	fstp	%st(1)
.L98:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L100
	movl	52(%esi), %edi
	movl	52(%edi), %eax
	movl	%eax, 324(%esi)
	movl	60(%esi), %eax
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
	cmpl	$3, %eax
	je	.L100
	cmpl	$1, %eax
	je	.L100
	movl	56(%esi), %ecx
	movl	52(%ecx), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%ecx)
	movl	%esi, 52(%ecx)
.L100:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %edx
	movl	180(%esp), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	252(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L260
	fstp	%st(1)
.L101:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L103
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %esi
	movl	%esi, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L103
	cmpl	$1, %eax
	je	.L103
	movl	56(%edi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
.L103:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %edx
	movl	252(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	184(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ecx, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L261
	fstp	%st(1)
.L104:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L106
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %edi
	movl	%edi, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L106
	cmpl	$1, %eax
	je	.L106
	movl	56(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L106:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %ecx
	movl	64(%ebx), %edx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	184(%esp), %esi
	movl	%ecx, 56(%edi)
	movl	184(%esp), %ecx
	movl	$1, (%edi)
	movl	$0, 60(%edi)
	movl	%esi, 4(%edi)
	movl	188(%esp), %esi
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	%eax, 80(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 92(%edi)
	movl	%eax, 96(%edi)
	movl	%eax, 100(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	%eax, 104(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L262
	fstp	%st(1)
.L107:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L109
	movl	52(%edi), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 324(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
	movl	60(%edi), %eax
	cmpl	$3, %eax
	je	.L109
	cmpl	$1, %eax
	je	.L109
	movl	56(%edi), %esi
	movl	52(%esi), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L109:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %edx
	movl	188(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	256(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ecx, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L263
	fstp	%st(1)
.L110:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L112
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %edi
	movl	%edi, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L112
	cmpl	$1, %eax
	je	.L112
	movl	56(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L112:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %edx
	movl	272(%esp), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	176(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L264
	fstp	%st(1)
.L113:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L115
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %esi
	movl	%esi, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L115
	cmpl	$1, %eax
	je	.L115
	movl	56(%edi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
.L115:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	272(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ebp, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ebp)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%ecx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L265
	fstp	%st(1)
.L116:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L118
	movl	52(%esi), %ebp
	movl	60(%esi), %eax
	movl	52(%ebp), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%esi, 52(%ebp)
	je	.L118
	cmpl	$1, %eax
	je	.L118
	movl	56(%esi), %edi
	movl	52(%edi), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L118:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %edx
	movl	276(%esp), %ebp
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	180(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ebp, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ebp)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L266
	fstp	%st(1)
.L119:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L121
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %ebp
	movl	%ebp, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L121
	cmpl	$1, %eax
	je	.L121
	movl	56(%edi), %esi
	movl	52(%esi), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L121:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %ebp
	movl	184(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	276(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ecx, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%ebp, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L267
	fstp	%st(1)
.L122:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L124
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L124
	cmpl	$1, %eax
	je	.L124
	movl	56(%esi), %edi
	movl	52(%edi), %ebp
	movl	%ebp, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L124:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %edx
	movl	172(%esp), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	280(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L268
	fstp	%st(1)
.L125:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L127
	movl	52(%edi), %ebp
	movl	60(%edi), %eax
	movl	52(%ebp), %ecx
	movl	%ecx, 324(%edi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%edi, 52(%ebp)
	je	.L127
	cmpl	$1, %eax
	je	.L127
	movl	56(%edi), %esi
	movl	52(%esi), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L127:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %ecx
	movl	280(%esp), %ebp
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	288(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ebp, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ebp)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%ecx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L269
	fstp	%st(1)
.L128:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L130
	movl	52(%esi), %ebp
	movl	60(%esi), %eax
	movl	52(%ebp), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%esi, 52(%ebp)
	je	.L130
	cmpl	$1, %eax
	je	.L130
	movl	56(%esi), %edi
	movl	52(%edi), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L130:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %edx
	movl	288(%esp), %ebp
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	192(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ebp, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ebp)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L270
	fstp	%st(1)
.L131:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L133
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %ebp
	movl	%ebp, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L133
	cmpl	$1, %eax
	je	.L133
	movl	56(%edi), %esi
	movl	52(%esi), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L133:
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ebp
	movl	108(%ebx), %ecx
	movl	68(%ebx), %edx
	movl	%eax, %esi
	movl	%edi, 320(%eax)
	movl	196(%esp), %edi
	movl	$1, (%eax)
	movl	$0, 60(%eax)
	movl	192(%esp), %eax
	movl	%ebp, 76(%esi)
	fldl	4(%edi)
	movl	%edi, 8(%esi)
	movl	%eax, 4(%esi)
	movl	192(%esp), %eax
	movl	%edx, 52(%esi)
	movl	%ecx, 56(%esi)
	movl	%ebp, 80(%esi)
	fsubl	4(%eax)
	movl	%ebp, 92(%esi)
	movl	%ebp, 96(%esi)
	movl	%ebp, 100(%esi)
	movl	%ebp, 104(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%eax)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L271
	fstp	%st(1)
.L134:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L136
	movl	52(%esi), %edi
	movl	60(%esi), %eax
	movl	52(%edi), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%edi)
	cmpl	$3, %eax
	movl	%esi, 52(%edi)
	je	.L136
	cmpl	$1, %eax
	je	.L136
	movl	56(%esi), %ecx
	movl	52(%ecx), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%ecx)
	movl	%esi, 52(%ecx)
.L136:
	movl	$336, (%esp)
	call	_Znwj
	movl	292(%esp), %edi
	movl	24(%ebx), %edx
	movl	68(%ebx), %ebp
	movl	%esi, 320(%eax)
	movl	196(%esp), %esi
	fldl	4(%edi)
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	fsubl	4(%esi)
	movl	%esi, 4(%eax)
	movl	%edi, 8(%eax)
	movl	%edx, 76(%eax)
	movl	%ebp, 52(%eax)
	fstl	12(%eax)
	fldl	12(%edi)
	fsubl	12(%esi)
	movl	$0, 56(%eax)
	movl	$0, 80(%eax)
	fstl	20(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%eax)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L272
	fstp	%st(1)
.L137:
	cmpl	$-1, (%eax)
	fstpl	28(%eax)
	fld1
	fstpl	68(%eax)
	je	.L139
	movl	52(%eax), %ecx
	movl	52(%ecx), %esi
	movl	%esi, 324(%eax)
	addl	$1, 56(%ecx)
	movl	%eax, 52(%ecx)
	movl	60(%eax), %ecx
	cmpl	$3, %ecx
	je	.L139
	cmpl	$1, %ecx
	je	.L139
	movl	56(%eax), %edi
	movl	52(%edi), %ebp
	movl	%ebp, 328(%eax)
	addl	$1, 56(%edi)
	movl	%eax, 52(%edi)
.L139:
	flds	.LC25
	leal	5448(%esp), %edi
	fstl	5452(%esp)
	movl	108(%ebx), %ecx
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC15
	leal	5504(%esp), %esi
	fstpl	5460(%esp)
	movl	%edi, (%esp)
	fstps	64(%esp)
	movb	$0, 5448(%esp)
	movl	$0, 5500(%esp)
	movl	$30, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	108(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 5504(%esp)
	movl	%esi, (%esp)
	movl	$0, 5556(%esp)
	movl	$30, 4(%esp)
	flds	64(%esp)
	fstpl	5508(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC68
	fstpl	5516(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	$336, (%esp)
	movl	%eax, %ebp
	call	_Znwj
	movl	224(%esp), %edi
	movl	192(%esp), %ecx
	movl	108(%ebx), %edx
	fldl	4(%edi)
	movl	%eax, %esi
	fsubl	4(%ecx)
	movl	24(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ebp, 320(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	%ecx, 4(%esi)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	$0, 56(%esi)
	movl	$0, 80(%esi)
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L273
	fstp	%st(1)
.L140:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L142
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L142
	cmpl	$1, %eax
	je	.L142
	movl	56(%esi), %eax
	movl	52(%eax), %ebp
	movl	%ebp, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L142:
	movl	$336, (%esp)
	call	_Znwj
	movl	224(%esp), %ecx
	movl	112(%ebx), %ebp
	movl	108(%ebx), %edx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	228(%esp), %esi
	movl	%ecx, 4(%edi)
	movl	224(%esp), %ecx
	movl	$1, (%edi)
	movl	$0, 60(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	%ebp, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	%eax, 80(%edi)
	movl	%eax, 92(%edi)
	movl	%eax, 96(%edi)
	movl	%eax, 100(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 104(%edi)
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L274
	fstp	%st(1)
.L143:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L145
	movl	52(%edi), %esi
	movl	52(%esi), %eax
	movl	%eax, 324(%edi)
	movl	60(%edi), %eax
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
	cmpl	$3, %eax
	je	.L145
	cmpl	$1, %eax
	je	.L145
	movl	56(%edi), %ebp
	movl	52(%ebp), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%ebp)
	movl	%edi, 52(%ebp)
.L145:
	movl	$336, (%esp)
	call	_Znwj
	movl	108(%ebx), %ebp
	movl	228(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	196(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ecx, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%ebp, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L275
	fstp	%st(1)
.L146:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L148
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L148
	cmpl	$1, %eax
	je	.L148
	movl	56(%esi), %edi
	movl	52(%edi), %ebp
	movl	%ebp, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L148:
	movl	$336, (%esp)
	call	_Znwj
	movl	68(%ebx), %edx
	movl	292(%esp), %ecx
	movl	%eax, %edi
	movl	28(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	284(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L276
	fstp	%st(1)
.L149:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L151
	movl	52(%edi), %ebp
	movl	60(%edi), %eax
	movl	52(%ebp), %ecx
	movl	%ecx, 324(%edi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%edi, 52(%ebp)
	je	.L151
	cmpl	$1, %eax
	je	.L151
	movl	56(%edi), %esi
	movl	52(%esi), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L151:
	movl	$336, (%esp)
	call	_Znwj
	movl	28(%ebx), %esi
	movl	68(%ebx), %ecx
	movl	284(%esp), %ebp
	movl	%edi, 320(%eax)
	movl	188(%esp), %edi
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	%ebp, 4(%eax)
	fldl	4(%edi)
	fsubl	4(%ebp)
	movl	%edi, 8(%eax)
	movl	%esi, 76(%eax)
	movl	%ecx, 52(%eax)
	movl	$0, 56(%eax)
	fstl	12(%eax)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	$0, 80(%eax)
	fstl	20(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%eax)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L277
	fstp	%st(1)
.L152:
	cmpl	$-1, (%eax)
	fstpl	28(%eax)
	fld1
	fstpl	68(%eax)
	je	.L154
	movl	52(%eax), %edx
	movl	52(%edx), %ebp
	movl	%ebp, 324(%eax)
	addl	$1, 56(%edx)
	movl	%eax, 52(%edx)
	movl	60(%eax), %edx
	cmpl	$3, %edx
	je	.L154
	cmpl	$1, %edx
	je	.L154
	movl	56(%eax), %edi
	movl	52(%edi), %ecx
	movl	%ecx, 328(%eax)
	addl	$1, 56(%edi)
	movl	%eax, 52(%edi)
.L154:
	flds	.LC69
	leal	5560(%esp), %esi
	fstl	5564(%esp)
	movl	64(%ebx), %ecx
	movl	24(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC70
	leal	5672(%esp), %ebp
	fstpl	5572(%esp)
	movl	%esi, (%esp)
	leal	5728(%esp), %edi
	fstps	64(%esp)
	movb	$0, 5560(%esp)
	movl	$0, 5612(%esp)
	movl	$40, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	64(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 5616(%esp)
	movl	$0, 5668(%esp)
	movl	$40, 4(%esp)
	flds	64(%esp)
	fstpl	5620(%esp)
	movl	%eax, 8(%esp)
	leal	5616(%esp), %eax
	flds	.LC71
	fstl	5628(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	64(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	64(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 5672(%esp)
	movl	%ebp, (%esp)
	movl	$0, 5724(%esp)
	movl	$40, 4(%esp)
	flds	.LC32
	fstpl	5676(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	64(%esp)
	fstpl	5684(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	64(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 5728(%esp)
	movl	%edi, (%esp)
	movl	$0, 5780(%esp)
	movl	$40, 4(%esp)
	flds	.LC24
	fstpl	5732(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	64(%esp)
	fstpl	5740(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	$336, (%esp)
	movl	%eax, %esi
	call	_Znwj
	movl	24(%ebx), %ebp
	movl	64(%ebx), %ecx
	movl	72(%ebx), %edx
	movl	%eax, %edi
	movl	%esi, 320(%eax)
	movl	200(%esp), %esi
	movl	$1, (%eax)
	movl	$0, 60(%eax)
	movl	296(%esp), %eax
	movl	%ebp, 76(%edi)
	fldl	4(%esi)
	movl	%esi, 8(%edi)
	movl	%eax, 4(%edi)
	movl	296(%esp), %eax
	movl	%edx, 52(%edi)
	movl	%ecx, 56(%edi)
	movl	%ebp, 80(%edi)
	fsubl	4(%eax)
	movl	%ebp, 92(%edi)
	movl	%ebp, 96(%edi)
	movl	%ebp, 100(%edi)
	movl	%ebp, 104(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%eax)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L278
	fstp	%st(1)
.L155:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L157
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %edx
	movl	%edx, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L157
	cmpl	$1, %eax
	je	.L157
	movl	56(%edi), %ebp
	movl	52(%ebp), %eax
	movl	%eax, 328(%edi)
	addl	$1, 56(%ebp)
	movl	%edi, 52(%ebp)
.L157:
	movl	$336, (%esp)
	call	_Znwj
	movl	204(%esp), %ecx
	movl	24(%ebx), %ebp
	movl	72(%ebx), %edx
	movl	%eax, %esi
	movl	64(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	296(%esp), %edi
	movl	%ecx, 4(%esi)
	movl	204(%esp), %ecx
	movl	$1, (%esi)
	movl	$0, 60(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%ebp, 76(%esi)
	movl	%edx, 52(%esi)
	movl	%eax, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	%ebp, 80(%esi)
	movl	%ebp, 92(%esi)
	movl	%ebp, 96(%esi)
	movl	%ebp, 100(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%ebp, 104(%esi)
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L279
	fstp	%st(1)
.L158:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L160
	movl	52(%esi), %edi
	movl	60(%esi), %eax
	movl	52(%edi), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%edi)
	cmpl	$3, %eax
	movl	%esi, 52(%edi)
	je	.L160
	cmpl	$1, %eax
	je	.L160
	movl	56(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L160:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %ebp
	movl	256(%esp), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	200(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%ebp, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L280
	fstp	%st(1)
.L161:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L163
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %edx
	movl	%edx, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L163
	cmpl	$1, %eax
	je	.L163
	movl	56(%edi), %esi
	movl	52(%esi), %ebp
	movl	%ebp, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L163:
	movl	$336, (%esp)
	call	_Znwj
	movl	72(%ebx), %edx
	movl	200(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	260(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ecx, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ecx)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ecx)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L281
	fstp	%st(1)
.L164:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L166
	movl	52(%esi), %ebp
	movl	60(%esi), %eax
	movl	52(%ebp), %ecx
	movl	%ecx, 324(%esi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%esi, 52(%ebp)
	je	.L166
	cmpl	$1, %eax
	je	.L166
	movl	56(%esi), %edi
	movl	52(%edi), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L166:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %ecx
	movl	204(%esp), %ebp
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	264(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ebp, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ebp)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%ecx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L282
	fstp	%st(1)
.L167:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L169
	movl	52(%edi), %ebp
	movl	60(%edi), %eax
	movl	52(%ebp), %edx
	movl	%edx, 324(%edi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%edi, 52(%ebp)
	je	.L169
	cmpl	$1, %eax
	je	.L169
	movl	56(%edi), %esi
	movl	52(%esi), %ecx
	movl	%ecx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L169:
	movl	$336, (%esp)
	call	_Znwj
	movl	72(%ebx), %edx
	movl	260(%esp), %ebp
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	300(%esp), %edi
	movl	$0, (%esi)
	movl	$1, 60(%esi)
	movl	%ebp, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ebp)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L283
	fstp	%st(1)
.L170:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L172
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L172
	cmpl	$1, %eax
	je	.L172
	movl	56(%esi), %edi
	movl	52(%edi), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L172:
	movl	$336, (%esp)
	call	_Znwj
	movl	72(%ebx), %ebp
	movl	300(%esp), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	304(%esp), %esi
	movl	$0, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%ebp, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L284
	fstp	%st(1)
.L173:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L175
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %edx
	movl	%edx, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L175
	cmpl	$1, %eax
	je	.L175
	movl	56(%edi), %esi
	movl	52(%esi), %ebp
	movl	%ebp, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L175:
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %edx
	movl	72(%ebx), %ecx
	movl	308(%esp), %esi
	movl	%edi, 320(%eax)
	movl	204(%esp), %edi
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	%esi, 4(%eax)
	fldl	4(%edi)
	fsubl	4(%esi)
	movl	%edi, 8(%eax)
	movl	%edx, 76(%eax)
	movl	%ecx, 52(%eax)
	movl	$0, 56(%eax)
	fstl	12(%eax)
	fldl	12(%edi)
	fsubl	12(%esi)
	movl	$0, 80(%eax)
	fstl	20(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%eax)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L285
	fstp	%st(1)
.L176:
	cmpl	$-1, (%eax)
	fstpl	28(%eax)
	fld1
	fstpl	68(%eax)
	je	.L178
	movl	52(%eax), %ebp
	movl	52(%ebp), %esi
	movl	%esi, 324(%eax)
	movl	60(%eax), %esi
	addl	$1, 56(%ebp)
	movl	%eax, 52(%ebp)
	cmpl	$3, %esi
	je	.L178
	cmpl	$1, %esi
	je	.L178
	movl	56(%eax), %ebp
	movl	52(%ebp), %edi
	movl	%edi, 328(%eax)
	addl	$1, 56(%ebp)
	movl	%eax, 52(%ebp)
.L178:
	flds	.LC72
	leal	5784(%esp), %ebp
	fstpl	5788(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC73
	leal	5840(%esp), %edi
	fstl	5796(%esp)
	movl	%ebp, (%esp)
	leal	5896(%esp), %esi
	fstps	128(%esp)
	movb	$0, 5784(%esp)
	leal	6008(%esp), %ebp
	movl	$0, 5836(%esp)
	movl	$30, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 5840(%esp)
	movl	%edi, (%esp)
	leal	6064(%esp), %edi
	movl	$0, 5892(%esp)
	movl	$30, 4(%esp)
	flds	.LC72
	fstpl	5844(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC74
	fstl	5852(%esp)
	fstps	112(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 5896(%esp)
	movl	%esi, (%esp)
	leal	6120(%esp), %esi
	movl	$0, 5948(%esp)
	movl	$30, 4(%esp)
	flds	.LC72
	fstpl	5900(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC75
	fstl	5908(%esp)
	fstps	96(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 5952(%esp)
	movl	$0, 6004(%esp)
	movl	$30, 4(%esp)
	flds	.LC72
	fstpl	5956(%esp)
	movl	%eax, 8(%esp)
	leal	5952(%esp), %eax
	flds	.LC76
	fstl	5964(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	80(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6008(%esp)
	movl	%ebp, (%esp)
	leal	6232(%esp), %ebp
	movl	$0, 6060(%esp)
	movl	$30, 4(%esp)
	flds	.LC72
	fstpl	6012(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC77
	fstl	6020(%esp)
	fstps	64(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6064(%esp)
	movl	%edi, (%esp)
	leal	6288(%esp), %edi
	movl	$0, 6116(%esp)
	movl	$30, 4(%esp)
	flds	.LC78
	fstpl	6068(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC79
	fstpl	6076(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6120(%esp)
	movl	%esi, (%esp)
	leal	6344(%esp), %esi
	movl	$0, 6172(%esp)
	movl	$30, 4(%esp)
	flds	.LC78
	fstpl	6124(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	128(%esp)
	fstpl	6132(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6176(%esp)
	movl	$0, 6228(%esp)
	movl	$30, 4(%esp)
	flds	.LC78
	fstpl	6180(%esp)
	movl	%eax, 8(%esp)
	leal	6176(%esp), %eax
	flds	112(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	6188(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6232(%esp)
	movl	%ebp, (%esp)
	movl	$0, 6284(%esp)
	movl	$30, 4(%esp)
	flds	.LC78
	fstpl	6236(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	96(%esp)
	fstpl	6244(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6288(%esp)
	movl	%edi, (%esp)
	leal	6456(%esp), %edi
	movl	$0, 6340(%esp)
	movl	$30, 4(%esp)
	flds	.LC78
	fstpl	6292(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	80(%esp)
	fstpl	6300(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6344(%esp)
	movl	%esi, (%esp)
	movl	$0, 6396(%esp)
	movl	$30, 4(%esp)
	flds	.LC78
	fstpl	6348(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	64(%esp)
	fstpl	6356(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movb	$0, 6400(%esp)
	movl	$0, 6452(%esp)
	flds	.LC80
	movl	%eax, %esi
	fstl	6404(%esp)
	leal	6400(%esp), %eax
	flds	.LC81
	fstl	6412(%esp)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %ebp
	fstps	80(%esp)
	fstps	96(%esp)
	movl	%ebp, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	leal	6568(%esp), %edi
	movb	$0, 6456(%esp)
	movl	$0, 6508(%esp)
	movl	%edx, (%esp)
	flds	.LC82
	fstl	6460(%esp)
	movl	%eax, 172(%esp)
	flds	96(%esp)
	fstpl	6468(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	6512(%esp), %ecx
	movl	%ecx, 4(%esp)
	movb	$0, 6512(%esp)
	movl	$0, 6564(%esp)
	flds	64(%esp)
	movl	%eax, %ebp
	fstpl	6516(%esp)
	movl	468(%ebx), %eax
	movl	%ebp, 144(%esp)
	flds	.LC83
	fstl	6524(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 6568(%esp)
	movl	$0, 6620(%esp)
	movl	%edx, (%esp)
	flds	80(%esp)
	movl	%eax, %ebp
	fstpl	6572(%esp)
	flds	64(%esp)
	fstpl	6580(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$336, (%esp)
	movl	%eax, 176(%esp)
	call	_Znwj
	movl	144(%esp), %edx
	movl	92(%ebx), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	172(%esp), %esi
	fldl	4(%edx)
	movl	%ecx, 52(%edi)
	movl	64(%ebx), %ecx
	movl	$100, (%edi)
	fsubl	4(%esi)
	movl	$0, 60(%edi)
	movl	%esi, 4(%edi)
	movl	%edx, 8(%edi)
	movl	%eax, 76(%edi)
	fstl	12(%edi)
	fldl	12(%edx)
	fsubl	12(%esi)
	movl	%ecx, 56(%edi)
	movl	%eax, 80(%edi)
	movl	%eax, 92(%edi)
	movl	%eax, 96(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 100(%edi)
	movl	%eax, 104(%edi)
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L286
	fstp	%st(1)
.L179:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L181
	movl	52(%edi), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 324(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
	movl	60(%edi), %eax
	cmpl	$3, %eax
	je	.L181
	cmpl	$1, %eax
	je	.L181
	movl	56(%edi), %esi
	movl	52(%esi), %eax
	movl	%eax, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L181:
	movl	%edx, 144(%esp)
	movl	$336, (%esp)
	call	_Znwj
	movl	144(%esp), %edx
	movl	92(%ebx), %ecx
	fldl	4(%ebp)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	64(%ebx), %edi
	movl	$101, (%esi)
	movl	$0, 60(%esi)
	fstl	12(%esi)
	fldl	12(%ebp)
	fsubl	12(%edx)
	movl	%edx, 4(%esi)
	movl	%ebp, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%ecx, 52(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%edi, 56(%esi)
	movl	%eax, 80(%esi)
	movl	%eax, 92(%esi)
	movl	%eax, 96(%esi)
	movl	%eax, 100(%esi)
	movl	%eax, 104(%esi)
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L287
	fstp	%st(1)
.L182:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L184
	movl	52(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
	movl	60(%esi), %eax
	cmpl	$3, %eax
	je	.L184
	cmpl	$1, %eax
	je	.L184
	movl	56(%esi), %edi
	movl	52(%edi), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L184:
	movl	$336, (%esp)
	call	_Znwj
	movl	64(%ebx), %ecx
	movl	92(%ebx), %edx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	176(%esp), %esi
	movl	$102, (%edi)
	movl	$0, 60(%edi)
	movl	%ebp, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ebp)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	%ecx, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	%eax, 80(%edi)
	movl	%eax, 92(%edi)
	movl	%eax, 96(%edi)
	movl	%eax, 100(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 104(%edi)
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L288
	fstp	%st(1)
.L185:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L187
	movl	52(%edi), %ebp
	movl	60(%edi), %eax
	movl	52(%ebp), %esi
	movl	%esi, 324(%edi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%edi, 52(%ebp)
	je	.L187
	cmpl	$1, %eax
	je	.L187
	movl	56(%edi), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 328(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
.L187:
	movl	$336, (%esp)
	call	_Znwj
	movl	176(%esp), %edx
	movl	24(%ebx), %ebp
	movl	92(%ebx), %ecx
	movl	%eax, %esi
	movl	64(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	172(%esp), %edi
	movl	%edx, 4(%esi)
	movl	176(%esp), %edx
	movl	$103, (%esi)
	movl	$0, 60(%esi)
	fldl	4(%edi)
	fsubl	4(%edx)
	movl	%edi, 8(%esi)
	movl	%ebp, 76(%esi)
	movl	%ecx, 52(%esi)
	movl	%eax, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%edx)
	movl	%ebp, 80(%esi)
	movl	%ebp, 92(%esi)
	movl	%ebp, 96(%esi)
	movl	%ebp, 100(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%ebp, 104(%esi)
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L289
	fstp	%st(1)
.L188:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L190
	movl	52(%esi), %edi
	movl	60(%esi), %eax
	movl	52(%edi), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%edi)
	cmpl	$3, %eax
	movl	%esi, 52(%edi)
	je	.L190
	cmpl	$1, %eax
	je	.L190
	movl	56(%esi), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L190:
	flds	.LC84
	leal	6624(%esp), %eax
	fstl	6628(%esp)
	movl	%eax, 4(%esp)
	movl	468(%ebx), %ebp
	leal	6680(%esp), %edi
	flds	.LC85
	fstl	6636(%esp)
	fxch	%st(1)
	movl	%ebp, (%esp)
	fstps	80(%esp)
	fstps	96(%esp)
	movb	$0, 6624(%esp)
	movl	$0, 6676(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	leal	6792(%esp), %edi
	movb	$0, 6680(%esp)
	movl	$0, 6732(%esp)
	movl	%edx, (%esp)
	flds	.LC86
	fstl	6684(%esp)
	movl	%eax, 172(%esp)
	flds	96(%esp)
	fstpl	6692(%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	6736(%esp), %ecx
	movl	%ecx, 4(%esp)
	movb	$0, 6736(%esp)
	movl	$0, 6788(%esp)
	flds	64(%esp)
	movl	%eax, %ebp
	fstpl	6740(%esp)
	movl	468(%ebx), %eax
	movl	%ebp, 144(%esp)
	flds	.LC87
	fstl	6748(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	%edi, 4(%esp)
	movl	468(%ebx), %edx
	movb	$0, 6792(%esp)
	movl	$0, 6844(%esp)
	movl	%edx, (%esp)
	flds	80(%esp)
	movl	%eax, %ebp
	fstpl	6796(%esp)
	flds	64(%esp)
	fstpl	6804(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$336, (%esp)
	movl	%eax, 176(%esp)
	call	_Znwj
	movl	144(%esp), %edx
	movl	96(%ebx), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	172(%esp), %esi
	fldl	4(%edx)
	movl	%ecx, 52(%edi)
	movl	72(%ebx), %ecx
	movl	$100, (%edi)
	fsubl	4(%esi)
	movl	$0, 60(%edi)
	movl	%esi, 4(%edi)
	movl	%edx, 8(%edi)
	movl	%eax, 76(%edi)
	fstl	12(%edi)
	fldl	12(%edx)
	fsubl	12(%esi)
	movl	%ecx, 56(%edi)
	movl	%eax, 80(%edi)
	movl	%eax, 92(%edi)
	movl	%eax, 96(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 100(%edi)
	movl	%eax, 104(%edi)
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L290
	fstp	%st(1)
.L191:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L193
	movl	52(%edi), %esi
	movl	60(%edi), %eax
	movl	52(%esi), %ecx
	movl	%ecx, 324(%edi)
	addl	$1, 56(%esi)
	cmpl	$3, %eax
	movl	%edi, 52(%esi)
	je	.L193
	cmpl	$1, %eax
	je	.L193
	movl	56(%edi), %eax
	movl	52(%eax), %esi
	movl	%esi, 328(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
.L193:
	movl	%edx, 144(%esp)
	movl	$336, (%esp)
	call	_Znwj
	movl	144(%esp), %edx
	movl	96(%ebx), %ecx
	fldl	4(%ebp)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	72(%ebx), %edi
	movl	$101, (%esi)
	movl	$0, 60(%esi)
	fstl	12(%esi)
	fldl	12(%ebp)
	fsubl	12(%edx)
	movl	%edx, 4(%esi)
	movl	%ebp, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%ecx, 52(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%edi, 56(%esi)
	movl	%eax, 80(%esi)
	movl	%eax, 92(%esi)
	movl	%eax, 96(%esi)
	movl	%eax, 100(%esi)
	movl	%eax, 104(%esi)
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L291
	fstp	%st(1)
.L194:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L196
	movl	52(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
	movl	60(%esi), %eax
	cmpl	$3, %eax
	je	.L196
	cmpl	$1, %eax
	je	.L196
	movl	56(%esi), %edi
	movl	52(%edi), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L196:
	movl	$336, (%esp)
	call	_Znwj
	movl	72(%ebx), %ecx
	movl	96(%ebx), %edx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	176(%esp), %esi
	movl	$102, (%edi)
	movl	$0, 60(%edi)
	movl	%ebp, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ebp)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	%ecx, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	%eax, 80(%edi)
	movl	%eax, 92(%edi)
	movl	%eax, 96(%edi)
	movl	%eax, 100(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 104(%edi)
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L292
	fstp	%st(1)
.L197:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L199
	movl	52(%edi), %ebp
	movl	60(%edi), %eax
	movl	52(%ebp), %esi
	movl	%esi, 324(%edi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%edi, 52(%ebp)
	je	.L199
	cmpl	$1, %eax
	je	.L199
	movl	56(%edi), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 328(%edi)
	addl	$1, 56(%eax)
	movl	%edi, 52(%eax)
.L199:
	movl	$336, (%esp)
	call	_Znwj
	movl	176(%esp), %edx
	movl	24(%ebx), %ebp
	movl	96(%ebx), %ecx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	172(%esp), %edi
	movl	%edx, 4(%esi)
	movl	176(%esp), %edx
	movl	$103, (%esi)
	movl	$0, 60(%esi)
	fldl	4(%edi)
	fsubl	4(%edx)
	movl	%edi, 8(%esi)
	movl	%ebp, 76(%esi)
	movl	%ecx, 52(%esi)
	movl	%eax, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%edx)
	movl	%ebp, 80(%esi)
	movl	%ebp, 92(%esi)
	movl	%ebp, 96(%esi)
	movl	%ebp, 100(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%ebp, 104(%esi)
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L293
	fstp	%st(1)
.L200:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L202
	movl	52(%esi), %edi
	movl	60(%esi), %eax
	movl	52(%edi), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%edi)
	cmpl	$3, %eax
	movl	%esi, 52(%edi)
	je	.L202
	cmpl	$1, %eax
	je	.L202
	movl	56(%esi), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
.L202:
	movl	$336, (%esp)
	call	_Znwj
	movl	72(%ebx), %edx
	movl	304(%esp), %ebp
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	208(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ebp, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ebp)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%edx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L294
	fstp	%st(1)
.L203:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L205
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %ebp
	movl	%ebp, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L205
	cmpl	$1, %eax
	je	.L205
	movl	56(%edi), %esi
	movl	52(%esi), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L205:
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ebp
	movl	76(%ebx), %ecx
	movl	72(%ebx), %edx
	movl	%eax, %esi
	movl	%edi, 320(%eax)
	movl	212(%esp), %edi
	movl	$1, (%eax)
	movl	$0, 60(%eax)
	movl	208(%esp), %eax
	movl	%ebp, 76(%esi)
	fldl	4(%edi)
	movl	%edi, 8(%esi)
	movl	%eax, 4(%esi)
	movl	208(%esp), %eax
	movl	%edx, 52(%esi)
	movl	%ecx, 56(%esi)
	movl	%ebp, 80(%esi)
	fsubl	4(%eax)
	movl	%ebp, 92(%esi)
	movl	%ebp, 96(%esi)
	movl	%ebp, 100(%esi)
	movl	%ebp, 104(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%eax)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L295
	fstp	%st(1)
.L206:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L208
	movl	52(%esi), %edi
	movl	60(%esi), %eax
	movl	52(%edi), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%edi)
	cmpl	$3, %eax
	movl	%esi, 52(%edi)
	je	.L208
	cmpl	$1, %eax
	je	.L208
	movl	56(%esi), %ecx
	movl	52(%ecx), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%ecx)
	movl	%esi, 52(%ecx)
.L208:
	movl	$336, (%esp)
	call	_Znwj
	movl	72(%ebx), %ecx
	movl	212(%esp), %ebp
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	312(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ebp, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ebp)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%ecx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L296
	fstp	%st(1)
.L209:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L211
	movl	52(%edi), %ebp
	movl	60(%edi), %eax
	movl	52(%ebp), %edx
	movl	%edx, 324(%edi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%edi, 52(%ebp)
	je	.L211
	cmpl	$1, %eax
	je	.L211
	movl	56(%edi), %esi
	movl	52(%esi), %ecx
	movl	%ecx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L211:
	movl	$336, (%esp)
	call	_Znwj
	movl	72(%ebx), %edx
	movl	312(%esp), %ebp
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	308(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ebp, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ebp)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L297
	fstp	%st(1)
.L212:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L214
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L214
	cmpl	$1, %eax
	je	.L214
	movl	56(%esi), %edi
	movl	52(%edi), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L214:
	movl	$336, (%esp)
	call	_Znwj
	movl	76(%ebx), %ebp
	movl	208(%esp), %ecx
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	216(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ecx, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%ebp, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L298
	fstp	%st(1)
.L215:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L217
	movl	52(%edi), %ecx
	movl	60(%edi), %eax
	movl	52(%ecx), %edx
	movl	%edx, 324(%edi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%edi, 52(%ecx)
	je	.L217
	cmpl	$1, %eax
	je	.L217
	movl	56(%edi), %esi
	movl	52(%esi), %ebp
	movl	%ebp, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L217:
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ebp
	movl	80(%ebx), %ecx
	movl	76(%ebx), %edx
	movl	%eax, %esi
	movl	%edi, 320(%eax)
	movl	220(%esp), %edi
	movl	$1, (%eax)
	movl	$0, 60(%eax)
	movl	216(%esp), %eax
	movl	%ebp, 76(%esi)
	fldl	4(%edi)
	movl	%edi, 8(%esi)
	movl	%eax, 4(%esi)
	movl	216(%esp), %eax
	movl	%edx, 52(%esi)
	movl	%ecx, 56(%esi)
	movl	%ebp, 80(%esi)
	fsubl	4(%eax)
	movl	%ebp, 92(%esi)
	movl	%ebp, 96(%esi)
	movl	%ebp, 100(%esi)
	movl	%ebp, 104(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%eax)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L299
	fstp	%st(1)
.L218:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L220
	movl	52(%esi), %edi
	movl	60(%esi), %eax
	movl	52(%edi), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%edi)
	cmpl	$3, %eax
	movl	%esi, 52(%edi)
	je	.L220
	cmpl	$1, %eax
	je	.L220
	movl	56(%esi), %ecx
	movl	52(%ecx), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%ecx)
	movl	%esi, 52(%ecx)
.L220:
	movl	$336, (%esp)
	call	_Znwj
	movl	76(%ebx), %ecx
	movl	220(%esp), %ebp
	movl	%eax, %edi
	movl	24(%ebx), %eax
	movl	%esi, 320(%edi)
	movl	212(%esp), %esi
	movl	$1, (%edi)
	movl	$1, 60(%edi)
	movl	%ebp, 4(%edi)
	fldl	4(%esi)
	fsubl	4(%ebp)
	movl	%esi, 8(%edi)
	movl	%eax, 76(%edi)
	movl	%ecx, 52(%edi)
	movl	$0, 56(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L300
	fstp	%st(1)
.L221:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L223
	movl	52(%edi), %ebp
	movl	60(%edi), %eax
	movl	52(%ebp), %edx
	movl	%edx, 324(%edi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%edi, 52(%ebp)
	je	.L223
	cmpl	$1, %eax
	je	.L223
	movl	56(%edi), %esi
	movl	52(%esi), %ecx
	movl	%ecx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L223:
	movl	$336, (%esp)
	call	_Znwj
	movl	80(%ebx), %edx
	movl	216(%esp), %ebp
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	232(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ebp, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ebp)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%edx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L301
	fstp	%st(1)
.L224:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L226
	movl	52(%esi), %ecx
	movl	60(%esi), %eax
	movl	52(%ecx), %ebp
	movl	%ebp, 324(%esi)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%esi, 52(%ecx)
	je	.L226
	cmpl	$1, %eax
	je	.L226
	movl	56(%esi), %edi
	movl	52(%edi), %edx
	movl	%edx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L226:
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ebp
	movl	84(%ebx), %ecx
	movl	80(%ebx), %edx
	movl	%eax, %edi
	movl	%esi, 320(%eax)
	movl	236(%esp), %esi
	movl	$1, (%eax)
	movl	$0, 60(%eax)
	movl	232(%esp), %eax
	movl	%ebp, 76(%edi)
	fldl	4(%esi)
	movl	%esi, 8(%edi)
	movl	%eax, 4(%edi)
	movl	232(%esp), %eax
	movl	%edx, 52(%edi)
	movl	%ecx, 56(%edi)
	movl	%ebp, 80(%edi)
	fsubl	4(%eax)
	movl	%ebp, 92(%edi)
	movl	%ebp, 96(%edi)
	movl	%ebp, 100(%edi)
	movl	%ebp, 104(%edi)
	fstl	12(%edi)
	fldl	12(%esi)
	fsubl	12(%eax)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L302
	fstp	%st(1)
.L227:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L229
	movl	52(%edi), %esi
	movl	60(%edi), %eax
	movl	52(%esi), %ebp
	movl	%ebp, 324(%edi)
	addl	$1, 56(%esi)
	cmpl	$3, %eax
	movl	%edi, 52(%esi)
	je	.L229
	cmpl	$1, %eax
	je	.L229
	movl	56(%edi), %ecx
	movl	52(%ecx), %edx
	movl	%edx, 328(%edi)
	addl	$1, 56(%ecx)
	movl	%edi, 52(%ecx)
.L229:
	movl	$336, (%esp)
	call	_Znwj
	movl	80(%ebx), %ecx
	movl	236(%esp), %ebp
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 320(%esi)
	movl	220(%esp), %edi
	movl	$1, (%esi)
	movl	$1, 60(%esi)
	movl	%ebp, 4(%esi)
	fldl	4(%edi)
	fsubl	4(%ebp)
	movl	%edi, 8(%esi)
	movl	%eax, 76(%esi)
	movl	%ecx, 52(%esi)
	movl	$0, 56(%esi)
	fstl	12(%esi)
	fldl	12(%edi)
	fsubl	12(%ebp)
	movl	$0, 80(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L303
	fstp	%st(1)
.L230:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L232
	movl	52(%esi), %ebp
	movl	60(%esi), %eax
	movl	52(%ebp), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%esi, 52(%ebp)
	je	.L232
	cmpl	$1, %eax
	je	.L232
	movl	56(%esi), %edi
	movl	52(%edi), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%edi)
	movl	%esi, 52(%edi)
.L232:
	movl	$336, (%esp)
	call	_Znwj
	movl	320(%esp), %ecx
	movl	%esi, 52(%esp)
	movl	232(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%edx, 28(%esp)
	movl	84(%ebx), %ebp
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, (%esp)
	movl	%ebp, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	324(%esp), %ecx
	movl	%eax, %esi
	movl	24(%ebx), %eax
	movl	%edi, 52(%esp)
	movl	320(%esp), %edi
	movl	%eax, 48(%esp)
	movl	%eax, 44(%esp)
	movl	%eax, 40(%esp)
	movl	%eax, 36(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, 28(%esp)
	movl	88(%ebx), %edx
	movl	%edx, 24(%esp)
	movl	84(%ebx), %ebp
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	324(%esp), %ecx
	movl	%esi, 52(%esp)
	movl	236(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %edi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	84(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	328(%esp), %edx
	movl	%edi, 52(%esp)
	movl	320(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %esi
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	movl	%esi, 28(%esp)
	movl	88(%ebx), %eax
	movl	%edx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ecx
	movl	%ebp, 52(%esp)
	movl	328(%esp), %edx
	movl	332(%esp), %ebp
	movl	%ecx, 48(%esp)
	movl	%ecx, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, %edi
	movl	%ecx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	100(%ebx), %esi
	movl	%esi, 24(%esp)
	movl	88(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%edi, 52(%esp)
	movl	332(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	movl	324(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	88(%ebx), %esi
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, (%esp)
	movl	%esi, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	432(%esp), %esi
	movl	%ebp, 52(%esp)
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	328(%esp), %eax
	movl	%edx, 28(%esp)
	movl	100(%ebx), %ecx
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	432(%esp), %ecx
	movl	%edi, 52(%esp)
	movl	436(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ebp
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	%ebp, 28(%esp)
	movl	100(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	336(%esp), %edx
	movl	%esi, 52(%esp)
	movl	436(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %edi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	100(%ebx), %ebp
	movl	%edx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ecx
	movl	%edi, 52(%esp)
	movl	336(%esp), %edx
	movl	340(%esp), %edi
	movl	%ecx, 48(%esp)
	movl	%ecx, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, %esi
	movl	%ecx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	104(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	100(%ebx), %ebp
	movl	%edx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	440(%esp), %ebp
	movl	%esi, 52(%esp)
	movl	340(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	100(%ebx), %eax
	movl	%ebp, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	440(%esp), %ebp
	movl	%edi, 52(%esp)
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	344(%esp), %eax
	movl	%edx, 28(%esp)
	movl	100(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %edi
	movl	%esi, 52(%esp)
	movl	348(%esp), %esi
	movl	%edi, 48(%esp)
	movl	%edi, 44(%esp)
	movl	%edi, 40(%esp)
	movl	%eax, %ebp
	movl	344(%esp), %eax
	movl	%edi, 36(%esp)
	movl	%edi, 32(%esp)
	movl	%edi, 28(%esp)
	movl	116(%ebx), %edx
	movl	%edx, 24(%esp)
	movl	100(%ebx), %ecx
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 20(%esp)
	movl	$0, 16(%esp)
	movl	$101, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	444(%esp), %ecx
	movl	%ebp, 52(%esp)
	movl	348(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edi
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	%edi, 28(%esp)
	movl	100(%ebx), %edx
	movl	%ecx, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	332(%esp), %edx
	movl	%esi, 52(%esp)
	movl	444(%esp), %ecx
	leal	6848(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %ebp
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	100(%ebx), %edi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebp, (%esp)
	movl	%edi, 20(%esp)
	leal	6960(%esp), %edi
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	100(%ebx), %ecx
	movl	%ebx, %eax
	movl	24(%ebx), %edx
	movb	$0, 6848(%esp)
	movl	%ebp, 8(%esp)
	leal	7016(%esp), %ebp
	movl	%esi, (%esp)
	movl	$0, 6900(%esp)
	flds	.LC88
	fstl	6852(%esp)
	movl	$50, 4(%esp)
	flds	.LC40
	fstl	6860(%esp)
	fstps	64(%esp)
	fstps	96(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	100(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6904(%esp)
	movl	$0, 6956(%esp)
	movl	$50, 4(%esp)
	flds	.LC44
	fstl	6908(%esp)
	movl	%eax, 8(%esp)
	leal	6904(%esp), %eax
	flds	64(%esp)
	fstpl	6916(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	80(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	100(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 6960(%esp)
	movl	%edi, (%esp)
	movl	$0, 7012(%esp)
	movl	$50, 4(%esp)
	flds	96(%esp)
	fstpl	6964(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC34
	fstl	6972(%esp)
	fstps	96(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	100(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7016(%esp)
	movl	%ebp, (%esp)
	movl	$0, 7068(%esp)
	movl	$50, 4(%esp)
	flds	80(%esp)
	fstpl	7020(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	96(%esp)
	fstpl	7028(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	$336, (%esp)
	movl	%eax, %esi
	call	_Znwj
	movl	356(%esp), %ecx
	movl	%eax, %ebp
	movl	24(%ebx), %eax
	movl	%esi, 52(%esp)
	movl	352(%esp), %esi
	movl	%eax, 48(%esp)
	movl	%eax, 44(%esp)
	movl	%eax, 40(%esp)
	movl	%eax, 36(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, 28(%esp)
	movl	112(%ebx), %edx
	movl	%edx, 24(%esp)
	movl	104(%ebx), %edi
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebp, (%esp)
	movl	%edi, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	336(%esp), %ecx
	movl	%ebp, 52(%esp)
	movl	448(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %esi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	104(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	448(%esp), %edx
	movl	%esi, 52(%esp)
	movl	352(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ebp
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%ebp, 28(%esp)
	movl	104(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%edi, 52(%esp)
	movl	356(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	452(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	104(%ebx), %ebp
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	340(%esp), %ebp
	movl	%esi, 52(%esp)
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	452(%esp), %eax
	movl	%edx, 28(%esp)
	movl	104(%ebx), %ecx
	movl	%ebp, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	356(%esp), %ecx
	movl	%edi, 52(%esp)
	movl	224(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %esi
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	movl	%esi, 28(%esp)
	movl	112(%ebx), %edx
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	228(%esp), %edx
	movl	%ebp, 52(%esp)
	movl	352(%esp), %ecx
	leal	7072(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %edi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	112(%ebx), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edi, (%esp)
	movl	%esi, 20(%esp)
	leal	7240(%esp), %esi
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	72(%ebx), %ecx
	movl	%ebx, %eax
	movl	24(%ebx), %edx
	movb	$0, 7072(%esp)
	movl	%edi, 8(%esp)
	leal	7128(%esp), %edi
	movl	%ebp, (%esp)
	movl	$0, 7124(%esp)
	flds	.LC25
	fstl	7076(%esp)
	movl	$30, 4(%esp)
	flds	96(%esp)
	fstpl	7084(%esp)
	fstps	112(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	72(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7128(%esp)
	movl	%edi, (%esp)
	movl	$0, 7180(%esp)
	movl	$30, 4(%esp)
	flds	112(%esp)
	fstpl	7132(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	80(%esp)
	fstpl	7140(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	80(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7184(%esp)
	movl	$0, 7236(%esp)
	movl	$30, 4(%esp)
	flds	.LC89
	fstl	7188(%esp)
	movl	%eax, 8(%esp)
	leal	7184(%esp), %eax
	flds	.LC90
	fstpl	7196(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	80(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	80(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7240(%esp)
	movl	%esi, (%esp)
	movl	$0, 7292(%esp)
	movl	$30, 4(%esp)
	flds	80(%esp)
	fstpl	7244(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC65
	fstpl	7252(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	$336, (%esp)
	movl	%eax, %ebp
	call	_Znwj
	movl	360(%esp), %edx
	movl	%ebp, 52(%esp)
	movl	344(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edi
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	%edi, 28(%esp)
	movl	116(%ebx), %eax
	movl	%edx, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ecx
	movl	%esi, 52(%esp)
	movl	360(%esp), %edx
	movl	364(%esp), %esi
	movl	%ecx, 48(%esp)
	movl	%ecx, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, %ebp
	movl	%ecx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	120(%ebx), %edi
	movl	%edi, 24(%esp)
	movl	116(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$100, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%ebp, 52(%esp)
	movl	348(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	364(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	116(%ebx), %edi
	movl	%ebp, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	movl	%edi, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	456(%esp), %edi
	movl	%esi, 52(%esp)
	movl	360(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	movl	%edx, 28(%esp)
	movl	120(%ebx), %ecx
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	368(%esp), %ecx
	movl	%ebp, 52(%esp)
	movl	456(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %esi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	120(%ebx), %edx
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ebp
	movl	%esi, 52(%esp)
	movl	368(%esp), %ecx
	movl	316(%esp), %esi
	movl	%ebp, 48(%esp)
	movl	%ebp, 44(%esp)
	movl	%eax, %edi
	movl	%ebp, 40(%esp)
	movl	%ebp, 36(%esp)
	movl	%ebp, 32(%esp)
	movl	%ebp, 28(%esp)
	movl	124(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	120(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, (%esp)
	movl	%edx, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	316(%esp), %edx
	movl	%edi, 52(%esp)
	movl	460(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ebp
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	%ebp, 28(%esp)
	movl	120(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%esi, 52(%esp)
	movl	364(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	460(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	120(%ebx), %ebp
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	464(%esp), %ebp
	movl	%edi, 52(%esp)
	movl	368(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	%edx, 28(%esp)
	movl	124(%ebx), %ecx
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	372(%esp), %ecx
	movl	%esi, 52(%esp)
	movl	464(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %edi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	124(%ebx), %edx
	movl	%ecx, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%edi, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %esi
	movl	%edi, 52(%esp)
	movl	372(%esp), %ecx
	movl	316(%esp), %edi
	movl	%esi, 48(%esp)
	movl	%esi, 44(%esp)
	movl	%eax, %ebp
	movl	%esi, 40(%esp)
	movl	%esi, 36(%esp)
	movl	%esi, 32(%esp)
	movl	%esi, 28(%esp)
	movl	128(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	124(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, (%esp)
	movl	%edx, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	372(%esp), %edx
	movl	%ebp, 52(%esp)
	movl	468(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %esi
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%esi, 28(%esp)
	movl	128(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%edi, 52(%esp)
	movl	468(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	movl	376(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	128(%ebx), %esi
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, (%esp)
	movl	%esi, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	476(%esp), %esi
	movl	%ebp, 52(%esp)
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	480(%esp), %eax
	movl	%edx, 28(%esp)
	movl	128(%ebx), %ecx
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	472(%esp), %ecx
	movl	%edi, 52(%esp)
	movl	476(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ebp
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	%ebp, 28(%esp)
	movl	128(%ebx), %edx
	movl	%ecx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	316(%esp), %edx
	movl	%esi, 52(%esp)
	movl	472(%esp), %ecx
	leal	7296(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %edi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	128(%ebx), %ebp
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 20(%esp)
	leal	7408(%esp), %ebp
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	128(%ebx), %ecx
	movl	%ebx, %eax
	movl	24(%ebx), %edx
	movb	$0, 7296(%esp)
	movl	%edi, 8(%esp)
	leal	7464(%esp), %edi
	movl	%esi, (%esp)
	leal	7520(%esp), %esi
	movl	$0, 7348(%esp)
	flds	.LC91
	fstl	7300(%esp)
	movl	$20, 4(%esp)
	flds	.LC92
	fstl	7308(%esp)
	fstps	80(%esp)
	fstps	144(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	128(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7352(%esp)
	movl	$0, 7404(%esp)
	movl	$20, 4(%esp)
	flds	.LC93
	fstl	7356(%esp)
	movl	%eax, 8(%esp)
	leal	7352(%esp), %eax
	flds	80(%esp)
	fstpl	7364(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	128(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	128(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7408(%esp)
	movl	%ebp, (%esp)
	leal	7632(%esp), %ebp
	movl	$0, 7460(%esp)
	movl	$20, 4(%esp)
	flds	.LC94
	fstl	7412(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	80(%esp)
	fstpl	7420(%esp)
	fstps	112(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	128(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7464(%esp)
	movl	%edi, (%esp)
	leal	7688(%esp), %edi
	movl	$0, 7516(%esp)
	movl	$20, 4(%esp)
	flds	.LC95
	fstl	7468(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	80(%esp)
	fstpl	7476(%esp)
	fstps	96(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	128(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7520(%esp)
	movl	%esi, (%esp)
	movl	$0, 7572(%esp)
	movl	$20, 4(%esp)
	flds	144(%esp)
	fstpl	7524(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC96
	fstl	7532(%esp)
	fstps	80(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	128(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7576(%esp)
	movl	$0, 7628(%esp)
	movl	$20, 4(%esp)
	flds	128(%esp)
	fstpl	7580(%esp)
	movl	%eax, 8(%esp)
	leal	7576(%esp), %eax
	flds	80(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	7588(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	128(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7632(%esp)
	movl	%ebp, (%esp)
	movl	$0, 7684(%esp)
	movl	$20, 4(%esp)
	flds	112(%esp)
	fstpl	7636(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	80(%esp)
	fstpl	7644(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	128(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7688(%esp)
	movl	%edi, (%esp)
	movl	$0, 7740(%esp)
	movl	$20, 4(%esp)
	flds	96(%esp)
	fstpl	7692(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	80(%esp)
	fstpl	7700(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	$336, (%esp)
	movl	%eax, %esi
	call	_Znwj
	movl	24(%ebx), %edx
	movl	%esi, 52(%esp)
	movl	380(%esp), %ecx
	movl	376(%esp), %esi
	movl	%edx, 48(%esp)
	movl	%edx, 44(%esp)
	movl	%edx, 40(%esp)
	movl	%eax, %edi
	movl	%edx, 36(%esp)
	movl	%edx, 32(%esp)
	movl	%edx, 28(%esp)
	movl	132(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	128(%ebx), %ebp
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	380(%esp), %ecx
	movl	%edi, 52(%esp)
	movl	484(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	%edx, 28(%esp)
	movl	128(%ebx), %eax
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%esi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%esi, 52(%esp)
	movl	480(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edi
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	movl	484(%esp), %eax
	movl	%edi, 28(%esp)
	movl	128(%ebx), %edx
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	384(%esp), %edx
	movl	%ebp, 52(%esp)
	movl	376(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	132(%ebx), %edi
	movl	%edx, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	%edi, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	388(%esp), %edx
	movl	%eax, %ebp
	movl	24(%ebx), %eax
	movl	%esi, 52(%esp)
	movl	384(%esp), %esi
	movl	%eax, 48(%esp)
	movl	%eax, 44(%esp)
	movl	%eax, 40(%esp)
	movl	%eax, 36(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, 28(%esp)
	movl	136(%ebx), %ecx
	movl	%ecx, 24(%esp)
	movl	132(%ebx), %edi
	movl	%edx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebp, (%esp)
	movl	%edi, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	388(%esp), %edx
	movl	%ebp, 52(%esp)
	movl	380(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %esi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	132(%ebx), %ecx
	movl	%edx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	392(%esp), %ecx
	movl	%esi, 52(%esp)
	movl	384(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ebp
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%ebp, 28(%esp)
	movl	136(%ebx), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %edx
	movl	%edi, 52(%esp)
	movl	392(%esp), %ecx
	movl	396(%esp), %edi
	movl	%edx, 48(%esp)
	movl	%edx, 44(%esp)
	movl	%edx, 40(%esp)
	movl	%eax, %esi
	movl	%edx, 36(%esp)
	movl	%edx, 32(%esp)
	movl	%edx, 28(%esp)
	movl	140(%ebx), %ebp
	movl	%ebp, 24(%esp)
	movl	136(%ebx), %eax
	movl	%ecx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, (%esp)
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%esi, 52(%esp)
	movl	396(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	388(%esp), %eax
	movl	%edx, 28(%esp)
	movl	136(%ebx), %ebp
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	400(%esp), %ebp
	movl	%edi, 52(%esp)
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	392(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	140(%ebx), %edx
	movl	%ebp, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	396(%esp), %ecx
	movl	%esi, 52(%esp)
	movl	404(%esp), %edx
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edi
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	movl	%edi, 28(%esp)
	movl	140(%ebx), %esi
	leal	7800(%esp), %edi
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movl	%esi, 20(%esp)
	leal	7856(%esp), %esi
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	120(%ebx), %ecx
	leal	7744(%esp), %eax
	movl	24(%ebx), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%ebp, 8(%esp)
	leal	7912(%esp), %ebp
	movb	$0, 7744(%esp)
	movl	$0, 7796(%esp)
	flds	.LC63
	fstl	7748(%esp)
	movl	$50, 4(%esp)
	flds	64(%esp)
	fstpl	7756(%esp)
	fstps	96(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	120(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7800(%esp)
	movl	%edi, (%esp)
	leal	8024(%esp), %edi
	movl	$0, 7852(%esp)
	movl	$50, 4(%esp)
	flds	.LC64
	fstl	7804(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	64(%esp)
	fstpl	7812(%esp)
	fstps	80(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	120(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7856(%esp)
	movl	%esi, (%esp)
	movl	$0, 7908(%esp)
	movl	$50, 4(%esp)
	flds	96(%esp)
	fstpl	7860(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	.LC9
	fstl	7868(%esp)
	fstps	64(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	120(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7912(%esp)
	movl	%ebp, (%esp)
	movl	$0, 7964(%esp)
	movl	$50, 4(%esp)
	flds	80(%esp)
	fstpl	7916(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	64(%esp)
	fstpl	7924(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	120(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 7968(%esp)
	movl	$0, 8020(%esp)
	movl	$50, 4(%esp)
	flds	96(%esp)
	fstpl	7972(%esp)
	movl	%eax, 8(%esp)
	leal	7968(%esp), %eax
	flds	.LC43
	fstl	7980(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	64(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	120(%ebx), %ecx
	movl	24(%ebx), %edx
	movb	$0, 8024(%esp)
	movl	%edi, (%esp)
	movl	$0, 8076(%esp)
	movl	$50, 4(%esp)
	flds	80(%esp)
	fstpl	8028(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, %eax
	flds	64(%esp)
	fstpl	8036(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.12
	movl	$336, (%esp)
	movl	%eax, %esi
	call	_Znwj
	movl	24(%ebx), %ecx
	movl	%esi, 52(%esp)
	movl	488(%esp), %esi
	movl	%ecx, 48(%esp)
	movl	%ecx, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, %edi
	movl	492(%esp), %eax
	movl	%ecx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	120(%ebx), %edx
	movl	%edx, 24(%esp)
	movl	144(%ebx), %ebp
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ecx
	movl	%edi, 52(%esp)
	movl	492(%esp), %edi
	movl	%ecx, 48(%esp)
	movl	%ecx, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, %esi
	movl	496(%esp), %eax
	movl	%ecx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	120(%ebx), %edx
	movl	%edx, 24(%esp)
	movl	144(%ebx), %ebp
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ecx
	movl	%esi, 52(%esp)
	movl	496(%esp), %esi
	movl	%ecx, 48(%esp)
	movl	%ecx, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, %edi
	movl	500(%esp), %eax
	movl	%ecx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	120(%ebx), %edx
	movl	%edx, 24(%esp)
	movl	144(%ebx), %ebp
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	24(%ebx), %ecx
	movl	%edi, 52(%esp)
	movl	488(%esp), %edi
	movl	%ecx, 48(%esp)
	movl	%ecx, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, %esi
	movl	500(%esp), %eax
	movl	%ecx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	120(%ebx), %edx
	movl	%edx, 24(%esp)
	movl	144(%ebx), %ebp
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$0, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	408(%esp), %ebp
	movl	%esi, 52(%esp)
	movl	400(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	148(%ebx), %edx
	movl	%ebp, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	$3, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	412(%esp), %ebp
	movl	%eax, %esi
	movl	28(%ebx), %eax
	movl	%edi, 52(%esp)
	movl	408(%esp), %edi
	movl	%eax, 48(%esp)
	movl	%eax, 44(%esp)
	movl	%eax, 40(%esp)
	movl	%eax, 36(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, 28(%esp)
	movl	152(%ebx), %ecx
	movl	%ecx, 24(%esp)
	movl	148(%ebx), %edx
	movl	%ebp, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, (%esp)
	movl	%edx, 20(%esp)
	movl	$2, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	404(%esp), %edx
	movl	%esi, 52(%esp)
	movl	412(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %edi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	148(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 20(%esp)
	movl	$3, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	28(%ebx), %esi
	movl	%edi, 52(%esp)
	movl	404(%esp), %edx
	movl	400(%esp), %edi
	movl	%esi, 48(%esp)
	movl	%esi, 44(%esp)
	movl	%eax, %ebp
	movl	%esi, 40(%esp)
	movl	%esi, 36(%esp)
	movl	%esi, 32(%esp)
	movl	%esi, 28(%esp)
	movl	140(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	148(%ebx), %ecx
	movl	%edx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 20(%esp)
	movl	$2, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	408(%esp), %ecx
	movl	%ebp, 52(%esp)
	movl	416(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %esi
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%esi, 28(%esp)
	movl	152(%ebx), %eax
	movl	%ecx, 8(%esp)
	movl	%ebp, 12(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%edi, 52(%esp)
	movl	412(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %ebp
	movl	$0, 24(%esp)
	movl	420(%esp), %eax
	movl	%edx, 28(%esp)
	movl	152(%ebx), %esi
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, (%esp)
	movl	%esi, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	424(%esp), %esi
	movl	%ebp, 52(%esp)
	movl	416(%esp), %ebp
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	156(%ebx), %edx
	movl	%esi, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	$3, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	428(%esp), %esi
	movl	%eax, %ebp
	movl	28(%ebx), %eax
	movl	%edi, 52(%esp)
	movl	424(%esp), %edi
	movl	%eax, 48(%esp)
	movl	%eax, 44(%esp)
	movl	%eax, 40(%esp)
	movl	%eax, 36(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, 28(%esp)
	movl	160(%ebx), %ecx
	movl	%ecx, 24(%esp)
	movl	156(%ebx), %edx
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, (%esp)
	movl	%edx, 20(%esp)
	movl	$2, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	420(%esp), %edx
	movl	%ebp, 52(%esp)
	movl	428(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, %edi
	movl	$0, 32(%esp)
	movl	24(%ebx), %eax
	movl	$0, 24(%esp)
	movl	%eax, 28(%esp)
	movl	156(%ebx), %ecx
	movl	%edx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 20(%esp)
	movl	$3, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	28(%ebx), %ebp
	movl	%edi, 52(%esp)
	movl	420(%esp), %edx
	movl	416(%esp), %edi
	movl	%ebp, 48(%esp)
	movl	%ebp, 44(%esp)
	movl	%eax, %esi
	movl	%ebp, 40(%esp)
	movl	%ebp, 36(%esp)
	movl	%ebp, 32(%esp)
	movl	%ebp, 28(%esp)
	movl	152(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	156(%ebx), %ecx
	movl	%edx, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 20(%esp)
	movl	$2, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	424(%esp), %ecx
	movl	%esi, 52(%esp)
	movl	504(%esp), %esi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ebp
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	%ebp, 28(%esp)
	movl	160(%ebx), %eax
	movl	%ecx, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	%edi, 52(%esp)
	movl	504(%esp), %edi
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %edx
	movl	%eax, %esi
	movl	$0, 24(%esp)
	movl	508(%esp), %eax
	movl	%edx, 28(%esp)
	movl	160(%ebx), %ebp
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, (%esp)
	movl	%ebp, 20(%esp)
	movl	$1, 16(%esp)
	movl	$1, 4(%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	$336, (%esp)
	call	_Znwj
	movl	428(%esp), %ebp
	movl	%esi, 52(%esp)
	movl	$0, 48(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	24(%ebx), %ecx
	movl	%eax, %edi
	movl	$0, 24(%esp)
	movl	508(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	160(%ebx), %edx
	movl	$1, 16(%esp)
	movl	%ebp, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 20(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	movl	464(%ebx), %esi
	testl	%esi, %esi
	je	.L233
	xorl	%esi, %esi
	.p2align 4,,7
	.p2align 3
.L234:
	movl	64(%ebx,%esi,4), %eax
	addl	$1, %esi
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine18build_sec_adj_listEP6Sector
	movl	464(%ebx), %ecx
	cmpl	%ecx, %esi
	jne	.L234
	movl	$0, 488(%ebx)
	xorl	%edx, %edx
	movl	$0, 492(%ebx)
	jmp	.L239
	.p2align 4,,7
	.p2align 3
.L235:
	addl	$1, %edx
	cmpl	%edx, %ecx
	je	.L242
.L239:
	movl	64(%ebx,%edx,4), %esi
	cmpl	$1, 4(%esi)
	jne	.L235
	movl	52(%esi), %eax
	movl	$100000, 16(%esi)
	testl	%eax, %eax
	jne	.L245
	jmp	.L235
	.p2align 4,,7
	.p2align 3
.L237:
	movl	324(%eax), %eax
	testl	%eax, %eax
	je	.L235
.L245:
	cmpl	$2, 60(%eax)
	jne	.L237
	movl	56(%eax), %ebp
	movl	12(%ebp), %ebp
	cmpl	16(%esi), %ebp
	jge	.L237
	movl	%ebp, 16(%esi)
	jmp	.L237
.L233:
	movl	$0, 488(%ebx)
	movl	$0, 492(%ebx)
.L242:
	movl	$24, (%esp)
	call	_Znwj
.LEHE17:
	movl	468(%ebx), %ecx
	movl	%edi, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, %esi
	movl	%eax, (%esp)
.LEHB18:
	call	_ZN7BspTreeC1EP4WallP9VertexSet
.LEHE18:
	movl	%esi, 476(%ebx)
	addl	$8092, %esp
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
.L271:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L134
.L270:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L131
.L269:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L128
.L268:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L125
.L267:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L122
.L266:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L119
.L265:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L116
.L264:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L113
.L251:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	168(%esp), %ecx
	jmp	.L74
.L244:
.L249:
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB19:
	call	_Unwind_Resume
.LEHE19:
.L250:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	168(%esp), %ecx
	movl	144(%esp), %edx
	jmp	.L71
.L243:
	jmp	.L249
.L255:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L86
.L254:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L83
.L253:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L80
.L252:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L77
.L263:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L110
.L262:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L107
.L261:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L104
.L260:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L101
.L259:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L98
.L258:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L95
.L257:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L92
.L256:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L89
.L287:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L182
.L286:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	144(%esp), %edx
	jmp	.L179
.L285:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 168(%esp)
	call	sqrt
	movl	24(%ebx), %edx
	movl	72(%ebx), %ecx
	movl	168(%esp), %eax
	jmp	.L176
.L284:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L173
.L283:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L170
.L282:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L167
.L281:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L164
.L280:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L161
.L279:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L158
.L278:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L155
.L277:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 168(%esp)
	call	sqrt
	movl	168(%esp), %eax
	jmp	.L152
.L276:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L149
.L275:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L146
.L274:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L143
.L273:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L140
.L272:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 168(%esp)
	call	sqrt
	movl	24(%ebx), %edx
	movl	168(%esp), %eax
	jmp	.L137
.L303:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L230
.L302:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L227
.L301:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L224
.L300:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L221
.L299:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L218
.L298:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L215
.L297:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L212
.L296:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L209
.L295:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L206
.L294:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L203
.L293:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L200
.L292:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L197
.L291:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L194
.L290:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	144(%esp), %edx
	jmp	.L191
.L289:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L188
.L288:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L185
	.cfi_endproc
.LFE1354:
	.section	.gcc_except_table
.LLSDA1354:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1354-.LLSDACSB1354
.LLSDACSB1354:
	.uleb128 .LEHB15-.LFB1354
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB1354
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L243-.LFB1354
	.uleb128 0
	.uleb128 .LEHB17-.LFB1354
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB1354
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L244-.LFB1354
	.uleb128 0
	.uleb128 .LEHB19-.LFB1354
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE1354:
	.text
	.size	_ZN7XEngine16setup_level_dataEv, .-_ZN7XEngine16setup_level_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine10setup_dataEv
	.type	_ZN7XEngine10setup_dataEv, @function
_ZN7XEngine10setup_dataEv:
.LFB1350:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	%ebx, (%esp)
	call	_ZN7XEngine14setup_texturesEv
	leal	480(%ebx), %eax
	movl	$0, 472(%ebx)
	movl	$0, 480(%ebx)
	movl	%eax, 484(%ebx)
	movl	$92, (%esp)
	call	_Znwj
	flds	.LC8
	fstpl	4(%eax)
	movl	$40, 56(%eax)
	flds	.LC9
	fstpl	12(%eax)
	fldl	.LC10
	fstpl	60(%eax)
	movl	%eax, 60(%ebx)
	movl	%ebx, 32(%esp)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	jmp	_ZN7XEngine16setup_level_dataEv
	.cfi_endproc
.LFE1350:
	.size	_ZN7XEngine10setup_dataEv, .-_ZN7XEngine10setup_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngineC2EiiP14XScreenRgbInfo
	.type	_ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1348:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1348
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%esi, 64(%esp)
	movl	84(%esp), %esi
	.cfi_offset 6, -16
	movl	%ebx, 60(%esp)
	movl	80(%esp), %ebx
	.cfi_offset 3, -20
	movl	%edi, 68(%esp)
	movl	%ebp, 72(%esp)
	movl	88(%esp), %ebp
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%esi, 44(%esp)
	movl	92(%esp), %esi
	movl	$_ZTV7XEngine+8, (%ebx)
	movb	$0, 7(%ebx)
	movb	$0, 6(%ebx)
	movb	$0, 4(%ebx)
	movb	$0, 5(%ebx)
	movl	%esi, 8(%ebx)
	movl	$20, (%esp)
.LEHB20:
	call	_Znwj
.LEHE20:
	movsbl	4(%esi), %ecx
	movl	%ecx, 16(%esp)
	movl	(%esi), %edx
	movl	%ebp, 8(%esp)
	movl	%eax, %edi
	movl	44(%esp), %eax
	movl	%edi, (%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 4(%esp)
.LEHB21:
	call	_ZN11XRasterizerC1EiiPhc
.LEHE21:
	movl	%edi, 12(%ebx)
	movl	$236, (%esp)
.LEHB22:
	call	_Znwj
.LEHE22:
	movl	%ebp, 12(%esp)
	movl	%eax, %edi
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %ebp
	movl	%edi, (%esp)
	movl	%ebp, 4(%esp)
.LEHB23:
	call	_ZN12ScreenRenderC1EPhii
.LEHE23:
	movl	%edi, 20(%ebx)
	leal	480(%ebx), %edi
	movl	$40, (%esp)
.LEHB24:
	call	_Znwj
	movl	8(%ebx), %edx
	movl	$0, 8(%eax)
	movl	%edx, 4(%eax)
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	movl	%eax, 16(%ebx)
	movl	%ebx, (%esp)
	call	_ZN7XEngine14setup_texturesEv
	movl	%edi, 484(%ebx)
	movl	$0, 472(%ebx)
	movl	$0, 480(%ebx)
	movl	$92, (%esp)
	call	_Znwj
	movl	64(%esp), %esi
	movl	68(%esp), %edi
	movl	72(%esp), %ebp
	flds	.LC8
	fstpl	4(%eax)
	movl	$40, 56(%eax)
	flds	.LC9
	fstpl	12(%eax)
	fldl	.LC10
	fstpl	60(%eax)
	movl	%eax, 60(%ebx)
	movl	%ebx, 80(%esp)
	movl	60(%esp), %ebx
	addl	$76, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 3
	jmp	_ZN7XEngine16setup_level_dataEv
.L308:
.L310:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%edi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE24:
.L309:
	jmp	.L310
	.cfi_endproc
.LFE1348:
	.section	.gcc_except_table
.LLSDA1348:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1348-.LLSDACSB1348
.LLSDACSB1348:
	.uleb128 .LEHB20-.LFB1348
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB1348
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L308-.LFB1348
	.uleb128 0
	.uleb128 .LEHB22-.LFB1348
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB1348
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L309-.LFB1348
	.uleb128 0
	.uleb128 .LEHB24-.LFB1348
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE1348:
	.text
	.size	_ZN7XEngineC2EiiP14XScreenRgbInfo, .-_ZN7XEngineC2EiiP14XScreenRgbInfo
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine15init_doors_dataEv
	.type	_ZN7XEngine15init_doors_dataEv, @function
_ZN7XEngine15init_doors_dataEv:
.LFB1358:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ebx
	movl	464(%ebx), %esi
	movl	$0, 488(%ebx)
	movl	$0, 492(%ebx)
	testl	%esi, %esi
	je	.L311
	xorl	%edx, %edx
	jmp	.L317
	.p2align 4,,7
	.p2align 3
.L313:
	addl	$1, %edx
	cmpl	%esi, %edx
	je	.L311
.L317:
	movl	64(%ebx,%edx,4), %ecx
	cmpl	$1, 4(%ecx)
	jne	.L313
	movl	52(%ecx), %eax
	movl	$100000, 16(%ecx)
	testl	%eax, %eax
	jne	.L318
	jmp	.L313
	.p2align 4,,7
	.p2align 3
.L315:
	movl	324(%eax), %eax
	testl	%eax, %eax
	je	.L313
.L318:
	cmpl	$2, 60(%eax)
	jne	.L315
	movl	56(%eax), %edi
	movl	12(%edi), %edi
	cmpl	16(%ecx), %edi
	jge	.L315
	movl	%edi, 16(%ecx)
	jmp	.L315
.L311:
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
	.cfi_endproc
.LFE1358:
	.size	_ZN7XEngine15init_doors_dataEv, .-_ZN7XEngine15init_doors_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine26compute_max_ceiling_heightEP6Sector
	.type	_ZN7XEngine26compute_max_ceiling_heightEP6Sector, @function
_ZN7XEngine26compute_max_ceiling_heightEP6Sector:
.LFB1359:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	52(%edx), %eax
	movl	$100000, 16(%edx)
	testl	%eax, %eax
	jne	.L325
	jmp	.L321
	.p2align 4,,7
	.p2align 3
.L323:
	movl	324(%eax), %eax
	testl	%eax, %eax
	je	.L321
.L325:
	cmpl	$2, 60(%eax)
	jne	.L323
	movl	56(%eax), %ecx
	movl	12(%ecx), %ecx
	cmpl	16(%edx), %ecx
	jge	.L323
	movl	324(%eax), %eax
	movl	%ecx, 16(%edx)
	testl	%eax, %eax
	jne	.L325
	.p2align 4,,7
	.p2align 3
.L321:
	rep
	ret
	.cfi_endproc
.LFE1359:
	.size	_ZN7XEngine26compute_max_ceiling_heightEP6Sector, .-_ZN7XEngine26compute_max_ceiling_heightEP6Sector
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine17update_elevs_listEv
	.type	_ZN7XEngine17update_elevs_listEv, @function
_ZN7XEngine17update_elevs_listEv:
.LFB1366:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	500(%esi), %ebx
	jmp	.L339
	.p2align 4,,7
	.p2align 3
.L340:
	movl	28(%ebx), %ebx
.L339:
	testl	%ebx, %ebx
	je	.L327
.L341:
	movl	20(%ebx), %eax
	leal	-1(%eax), %edx
	testl	%eax, %eax
	movl	%edx, 20(%ebx)
	jg	.L340
	movl	%ebx, (%esp)
	call	_ZN8Elevator6updateEv
	cmpl	$4, (%ebx)
	je	.L331
	movl	$2, 20(%ebx)
	movl	28(%ebx), %ebx
	testl	%ebx, %ebx
	jne	.L341
	.p2align 4,,7
	.p2align 3
.L327:
	addl	$20, %esp
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
.L331:
	.cfi_restore_state
	movl	500(%esi), %edx
	cmpl	%edx, %ebx
	jne	.L338
	jmp	.L343
	.p2align 4,,7
	.p2align 3
.L335:
	movl	%eax, %edx
.L338:
	movl	28(%edx), %eax
	cmpl	%eax, %ebx
	jne	.L335
	movl	28(%ebx), %ecx
	movl	%ecx, 28(%edx)
	jmp	.L340
.L343:
	movl	28(%ebx), %ebx
	movl	%ebx, 500(%esi)
	jmp	.L339
	.cfi_endproc
.LFE1366:
	.size	_ZN7XEngine17update_elevs_listEv, .-_ZN7XEngine17update_elevs_listEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	.type	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_, @function
_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_:
.LFB1372:
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
	je	.L345
	fldl	36(%esi)
.L346:
	movl	8(%edx), %ebx
	fstl	56(%esp)
	cmpb	$0, (%ebx)
	je	.L349
	fldl	36(%ebx)
.L350:
	fstl	64(%esp)
	fxch	%st(1)
	fucomi	%st(1), %st
	fld	%st(1)
	fcmovnbe	%st(1), %st
	xorl	%eax, %eax
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jae	.L410
	fldl	44(%esi)
	xorl	%esi, %esi
	fstl	40(%esp)
	fldl	44(%ebx)
	movl	$1, %ebx
	fstl	48(%esp)
	fxch	%st(2)
	fstl	188(%edx)
	fxch	%st(1)
	fstl	196(%edx)
	fxch	%st(3)
	fstl	244(%edx)
	fxch	%st(2)
	fstl	252(%edx)
	fucomi	%st(3), %st
	jbe	.L356
	fxch	%st(3)
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
	movl	$1, %esi
	xorl	%ebx, %ebx
.L356:
	fldz
	fucomi	%st(3), %st
	jbe	.L404
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
	jmp	.L360
	.p2align 4,,7
	.p2align 3
.L418:
	fxch	%st(3)
	fxch	%st(1)
.L360:
	movl	20(%ecx), %edi
	movl	52(%edi), %ebp
	movl	%ebp, 32(%esp)
	movl	8(%edi), %eax
	fildl	32(%esp)
	fmul	%st, %st(4)
	fxch	%st(4)
	fnstcw	38(%esp)
	movl	%eax, 8(%esp)
	movzwl	38(%esp), %eax
	fdiv	%st(3), %st
	movb	$12, %ah
	movw	%ax, 36(%esp)
	fldcw	36(%esp)
	fistpl	32(%esp)
	fldcw	38(%esp)
	movl	32(%esp), %eax
	addl	8(%esp), %eax
	movl	%eax, 32(%esp)
	fildl	32(%esp)
	fstpl	168(%esp,%ebx,8)
	fxch	%st(1)
	fmulp	%st, %st(3)
	fdivr	%st, %st(2)
	fxch	%st(2)
	fldcw	36(%esp)
	fistpl	32(%esp)
	fldcw	38(%esp)
	movl	32(%esp), %eax
	addl	8(%esp), %eax
	movl	%eax, 32(%esp)
	movl	$0, %eax
	fildl	32(%esp)
	fstl	168(%esp,%esi,8)
	fldl	168(%esp,%ebx,8)
	fxch	%st(1)
	fucomi	%st(1), %st
	fildl	24(%edi)
	jbe	.L405
	fucomip	%st(1), %st
	jae	.L411
	fildl	28(%edi)
	fxch	%st(2)
	fucomi	%st(2), %st
	fstp	%st(2)
	jae	.L412
	movl	$1, 28(%esp)
	movl	$0, 24(%esp)
	jmp	.L364
	.p2align 4,,7
	.p2align 3
.L405:
	fucomip	%st(2), %st
	jae	.L413
	fildl	28(%edi)
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jae	.L414
	movl	$0, 28(%esp)
	movl	$1, 24(%esp)
.L364:
	movl	216(%esp), %eax
	movl	52(%edx,%eax,4), %eax
	movl	%eax, 16(%esp)
	movl	24(%eax), %eax
	movl	%eax, 20(%esp)
	imull	%ebp, %eax
	movl	%eax, 32(%esp)
	fildl	32(%esp)
	fld	%st(0)
	fdiv	%st(4), %st
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	.L365
	jne	.L365
	fstp	%st(0)
	fld1
.L365:
	movl	60(%ecx), %eax
	movl	84(%eax), %ecx
	imull	%ebp, %ecx
	movl	%ecx, 32(%esp)
	fildl	32(%esp)
	fildl	40(%edi)
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
	jp	.L415
	fcmove	%st(1), %st
	fstp	%st(1)
	fxch	%st(1)
	jmp	.L367
	.p2align 4,,7
	.p2align 3
.L415:
	fstp	%st(1)
	fxch	%st(1)
.L367:
	fdiv	%st(5), %st
	movl	60(%edx), %eax
	cmpl	$2, %eax
	faddl	8(%esp)
	fstl	120(%esp,%esi,8)
	fsub	%st, %st(1)
	fxch	%st(1)
	fadds	.LC0
	fstl	104(%esp,%esi,8)
	je	.L416
	testl	%eax, %eax
	je	.L417
	fldl	104(%esp,%ebx,8)
	fldl	120(%esp,%ebx,8)
	fxch	%st(5)
.L370:
	fldcw	36(%esp)
	fistpl	144(%edx)
	fldcw	38(%esp)
	movl	24(%esp), %ebx
	movl	$1, %eax
	movl	28(%esp), %esi
	fldcw	36(%esp)
	fistpl	152(%edx)
	fldcw	38(%esp)
	fxch	%st(3)
	fldcw	36(%esp)
	fistpl	160(%edx)
	fldcw	38(%esp)
	fxch	%st(1)
	fldcw	36(%esp)
	fistpl	148(%edx)
	fldcw	38(%esp)
	fxch	%st(1)
	fldcw	36(%esp)
	fistpl	156(%edx)
	fldcw	38(%esp)
	fldcw	36(%esp)
	fistpl	164(%edx)
	fldcw	38(%esp)
	movl	%ebx, 312(%edx)
	movl	%esi, 316(%edx)
	fld1
	fdiv	%st, %st(1)
	fxch	%st(1)
	fstpl	296(%edx)
	fdivp	%st, %st(1)
	fstpl	304(%edx)
	jmp	.L355
	.p2align 4,,7
	.p2align 3
.L410:
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L355
	.p2align 4,,7
	.p2align 3
.L411:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L355
	.p2align 4,,7
	.p2align 3
.L412:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L355
	.p2align 4,,7
	.p2align 3
.L413:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L355
	.p2align 4,,7
	.p2align 3
.L414:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L355:
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
.L349:
	.cfi_restore_state
	movl	60(%ecx), %edi
	fldl	4(%ebx)
	fsubl	4(%edi)
	fstl	20(%ebx)
	fldl	12(%ebx)
	fsubl	12(%edi)
	fstl	28(%ebx)
	fldl	68(%edi)
	fldl	76(%edi)
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
	jnp	.L406
	fxch	%st(4)
	jmp	.L351
	.p2align 4,,7
	.p2align 3
.L420:
	fxch	%st(4)
.L351:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	472(%ecx), %ebp
	movb	$1, (%ebx)
	movl	%ebp, 52(%ebx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%ebx)
	movl	%ebx, 472(%ecx)
	jmp	.L350
	.p2align 4,,7
	.p2align 3
.L345:
	movl	60(%ecx), %eax
	fldl	4(%esi)
	fsubl	4(%eax)
	fstl	20(%esi)
	fldl	12(%esi)
	fsubl	12(%eax)
	fstl	28(%esi)
	fldl	68(%eax)
	fldl	76(%eax)
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
	jnp	.L407
	fxch	%st(4)
	jmp	.L347
	.p2align 4,,7
	.p2align 3
.L419:
	fxch	%st(4)
.L347:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	472(%ecx), %ebx
	movb	$1, (%esi)
	movl	%ebx, 52(%esi)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%esi)
	movl	%esi, 472(%ecx)
	jmp	.L346
	.p2align 4,,7
	.p2align 3
.L404:
	fucomip	%st(2), %st
	jbe	.L418
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
	jmp	.L360
	.p2align 4,,7
	.p2align 3
.L407:
	jne	.L419
	fstp	%st(0)
	fld1
	fstl	36(%esi)
	fxch	%st(4)
	jmp	.L347
	.p2align 4,,7
	.p2align 3
.L406:
	jne	.L420
	fstp	%st(0)
	fld1
	fstl	36(%ebx)
	fxch	%st(4)
	jmp	.L351
	.p2align 4,,7
	.p2align 3
.L416:
	fstp	%st(2)
	fxch	%st(1)
	jmp	.L369
	.p2align 4,,7
	.p2align 3
.L417:
	fstp	%st(2)
	fxch	%st(1)
.L369:
	movl	16(%esp), %eax
	movl	220(%esp), %edi
	movl	8(%eax), %ecx
	movl	%ecx, 8(%esp)
	movl	52(%edx,%edi,4), %ecx
	movl	8(%ecx), %eax
	cmpl	%eax, 8(%esp)
	jge	.L371
	movl	%eax, %edi
	subl	8(%esp), %edi
	imull	%ebp, %edi
	movl	%edi, 32(%esp)
	fildl	32(%esp)
	fld	%st(0)
	fdiv	%st(5), %st
	fstl	72(%esp,%ebx,8)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L372
	jne	.L372
	fld1
	fstpl	72(%esp,%ebx,8)
.L372:
	fdiv	%st(5), %st
	fstl	72(%esp,%esi,8)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L408
.L374:
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
.L376:
	movl	20(%esp), %edi
	addl	8(%esp), %edi
	addl	24(%ecx), %eax
	cmpl	%eax, %edi
	jle	.L377
	subl	%eax, %edi
	imull	%edi, %ebp
	movl	%ebp, 32(%esp)
	fildl	32(%esp)
	fld	%st(0)
	fdiv	%st(5), %st
	fstl	88(%esp,%ebx,8)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L378
	jne	.L378
	fld1
	fstpl	88(%esp,%ebx,8)
.L378:
	fdiv	%st(5), %st
	fstl	88(%esp,%esi,8)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L409
.L380:
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
.L382:
	fldl	152(%esp,%ebx,8)
	fldcw	36(%esp)
	fistpl	168(%edx)
	fldcw	38(%esp)
	fldl	136(%esp,%ebx,8)
	fldcw	36(%esp)
	fistpl	176(%edx)
	fldcw	38(%esp)
	fldl	152(%esp,%esi,8)
	fldcw	36(%esp)
	fistpl	172(%edx)
	fldcw	38(%esp)
	fldcw	36(%esp)
	fistpl	180(%edx)
	fldcw	38(%esp)
	fldl	168(%esp,%esi,8)
	fldl	120(%esp,%esi,8)
	fxch	%st(3)
	fxch	%st(2)
	fxch	%st(1)
	fxch	%st(4)
	fxch	%st(5)
	jmp	.L370
	.p2align 4,,7
	.p2align 3
.L377:
	fldl	104(%esp,%ebx,8)
	fstl	136(%esp,%ebx,8)
	fxch	%st(1)
	fstl	136(%esp,%esi,8)
	fld	%st(0)
	fxch	%st(2)
	fxch	%st(1)
	jmp	.L382
	.p2align 4,,7
	.p2align 3
.L371:
	fldl	120(%esp,%ebx,8)
	fstl	152(%esp,%ebx,8)
	fxch	%st(2)
	fstpl	152(%esp,%esi,8)
	jmp	.L376
	.p2align 4,,7
	.p2align 3
.L409:
	jne	.L380
	fstp	%st(0)
	fld1
	fstl	88(%esp,%esi,8)
	jmp	.L380
	.p2align 4,,7
	.p2align 3
.L408:
	jne	.L374
	fstp	%st(0)
	fld1
	fstl	72(%esp,%esi,8)
	jmp	.L374
	.cfi_endproc
.LFE1372:
	.size	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_, .-_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13visible_bwallER4Wall
	.type	_ZN7XEngine13visible_bwallER4Wall, @function
_ZN7XEngine13visible_bwallER4Wall:
.LFB1373:
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
	movl	72(%esp), %ebx
	movl	4(%eax), %ecx
	cmpb	$0, (%ecx)
	je	.L422
	fldl	36(%ecx)
.L423:
	movl	8(%eax), %edx
	fstl	32(%esp)
	cmpb	$0, (%edx)
	je	.L426
	fldl	36(%edx)
.L427:
	fstl	40(%esp)
	fxch	%st(1)
	fucomi	%st(1), %st
	fld	%st(1)
	fcmovnbe	%st(1), %st
	xorl	%eax, %eax
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jae	.L455
	fldl	44(%ecx)
	xorl	%esi, %esi
	movl	$1, %eax
	fstl	16(%esp)
	fldl	44(%edx)
	fstl	24(%esp)
	fucomi	%st(1), %st
	jbe	.L433
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(3)
	fxch	%st(2)
	movl	$1, %esi
	xorl	%eax, %eax
.L433:
	fldz
	fucomi	%st(4), %st
	jbe	.L452
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
	fstl	16(%esp,%eax,8)
	fxch	%st(1)
	fstl	32(%esp,%eax,8)
	fldl	16(%esp,%esi,8)
	fldl	32(%esp,%esi,8)
	jmp	.L437
	.p2align 4,,7
	.p2align 3
.L456:
	fxch	%st(3)
	fxch	%st(2)
.L437:
	movl	20(%ebx), %edx
	fildl	52(%edx)
	fmul	%st, %st(4)
	fxch	%st(4)
	movl	8(%edx), %ecx
	fnstcw	6(%esp)
	movzwl	6(%esp), %ebx
	fdivp	%st, %st(3)
	fxch	%st(2)
	movb	$12, %bh
	movw	%bx, 4(%esp)
	fldcw	4(%esp)
	fistpl	(%esp)
	fldcw	6(%esp)
	movl	(%esp), %ebx
	fmulp	%st, %st(2)
	addl	%ecx, %ebx
	movl	%ebx, 48(%esp,%eax,4)
	fdivrp	%st, %st(1)
	fldcw	4(%esp)
	fistpl	(%esp)
	fldcw	6(%esp)
	movl	(%esp), %ebx
	addl	%ebx, %ecx
	movl	%ecx, 48(%esp,%esi,4)
	movl	48(%esp,%eax,4), %ebx
	xorl	%eax, %eax
	cmpl	%ebx, %ecx
	jle	.L439
	cmpl	24(%edx), %ecx
	jle	.L432
	cmpl	28(%edx), %ebx
	setl	%al
	jmp	.L432
	.p2align 4,,7
	.p2align 3
.L455:
	fstp	%st(0)
	fstp	%st(0)
.L432:
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
.L426:
	.cfi_restore_state
	movl	60(%ebx), %eax
	fldl	4(%edx)
	fsubl	4(%eax)
	fstl	20(%edx)
	fldl	12(%edx)
	fsubl	12(%eax)
	fstl	28(%edx)
	fldl	68(%eax)
	fldl	76(%eax)
	fld	%st(3)
	fmul	%st(2), %st
	fld	%st(3)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fstl	36(%edx)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L453
	fxch	%st(4)
	jmp	.L428
	.p2align 4,,7
	.p2align 3
.L458:
	fxch	%st(4)
.L428:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	472(%ebx), %esi
	movb	$1, (%edx)
	movl	%esi, 52(%edx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%edx)
	movl	%edx, 472(%ebx)
	jmp	.L427
	.p2align 4,,7
	.p2align 3
.L422:
	movl	60(%ebx), %edx
	fldl	4(%ecx)
	fsubl	4(%edx)
	fstl	20(%ecx)
	fldl	12(%ecx)
	fsubl	12(%edx)
	fstl	28(%ecx)
	fldl	68(%edx)
	fldl	76(%edx)
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
	jnp	.L454
	fxch	%st(4)
	jmp	.L424
	.p2align 4,,7
	.p2align 3
.L457:
	fxch	%st(4)
.L424:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	472(%ebx), %esi
	movb	$1, (%ecx)
	movl	%esi, 52(%ecx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%ecx)
	movl	%ecx, 472(%ebx)
	jmp	.L423
	.p2align 4,,7
	.p2align 3
.L452:
	fucomip	%st(3), %st
	jbe	.L456
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
	fldl	16(%esp,%eax,8)
	fldl	32(%esp,%eax,8)
	fxch	%st(2)
	fxch	%st(1)
	fxch	%st(3)
	fxch	%st(1)
	jmp	.L437
	.p2align 4,,7
	.p2align 3
.L454:
	jne	.L457
	fstp	%st(0)
	fld1
	fstl	36(%ecx)
	fxch	%st(4)
	jmp	.L424
	.p2align 4,,7
	.p2align 3
.L453:
	jne	.L458
	fstp	%st(0)
	fld1
	fstl	36(%edx)
	fxch	%st(4)
	jmp	.L428
	.p2align 4,,7
	.p2align 3
.L439:
	cmpl	24(%edx), %ebx
	jle	.L432
	cmpl	28(%edx), %ecx
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
.LFE1373:
	.size	_ZN7XEngine13visible_bwallER4Wall, .-_ZN7XEngine13visible_bwallER4Wall
	.section	.rodata.str1.1
.LC97:
	.string	"ciao"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18process_solid_wallERK4Wall
	.type	_ZN7XEngine18process_solid_wallERK4Wall, @function
_ZN7XEngine18process_solid_wallERK4Wall:
.LFB1374:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1374
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
	subl	$252, %esp
	.cfi_def_cfa_offset 272
	movl	276(%esp), %ebx
	movl	272(%esp), %ebp
	movl	312(%ebx), %edx
	movl	316(%ebx), %esi
	movl	%edx, 56(%esp)
	addl	$36, %edx
	movl	(%ebx,%edx,4), %edi
	movl	%esi, 48(%esp)
	addl	$36, %esi
	movl	(%ebx,%esi,4), %ecx
	fldl	8(%ebx,%esi,8)
	movl	%edi, 40(%esp)
	movl	20(%ebp), %edi
	fstpl	80(%esp)
	movl	%esi, 160(%esp)
	fldl	8(%ebx,%edx,8)
	movl	%ecx, 32(%esp)
	fstpl	88(%esp)
	movl	28(%edi), %eax
	movl	24(%edi), %esi
	cmpl	%esi, 40(%esp)
	cmovge	40(%esp), %esi
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	%eax, 100(%esp)
	movl	104(%edi), %eax
	movl	(%eax,%esi,4), %ecx
	movl	%eax, 104(%esp)
	testl	%ecx, %ecx
	movl	%ecx, 68(%esp)
	je	.L461
	movl	100(%esp), %ebp
	cmpl	(%eax,%ebp,4), %ecx
	je	.L459
.L461:
	movl	100(%esp), %ebp
	movl	104(%esp), %eax
	addl	$1, %ebp
	leal	(%eax,%ebp,4), %eax
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ebp, 72(%esp)
	movl	%edx, 28(%esp)
	movl	%ecx, 68(%esp)
	movl	$.LC97, 4(%esp)
	movl	$1, (%esp)
.LEHB25:
	call	__printf_chk
	movl	104(%edi), %ecx
	movl	%esi, 104(%esp)
	movl	(%ecx,%esi,4), %edx
	testl	%edx, %edx
	movl	28(%esp), %edx
	je	.L463
	movl	160(%esp), %ebp
	movl	%esi, %eax
	.p2align 4,,7
	.p2align 3
.L464:
	addl	$1, %eax
	movl	(%ecx,%eax,4), %edi
	testl	%edi, %edi
	jne	.L464
	movl	%eax, 104(%esp)
	movl	%ebp, 160(%esp)
.L463:
	movl	68(%esp), %ebp
	movl	72(%esp), %eax
	movl	%ebp, (%ecx,%eax,4)
	movl	100(%esp), %ecx
	cmpl	%ecx, 104(%esp)
	jg	.L459
	fldl	80(%esp)
	fsubl	88(%esp)
	movl	32(%esp), %ecx
	subl	40(%esp), %ecx
	movl	56(%esp), %edi
	movl	%ecx, 232(%esp)
	fstpl	104(%esp)
	movl	8(%ebx,%edx,4), %eax
	fildl	232(%esp)
	fdivrl	104(%esp)
	movl	160(%ebx,%edi,4), %ebp
	movl	272(%esp), %edi
	movl	%eax, 40(%esp)
	movl	160(%esp), %ecx
	movl	48(%esp), %eax
	movl	%ebp, 56(%esp)
	movl	20(%edi), %edi
	movl	8(%ebx,%ecx,4), %ecx
	movl	160(%ebx,%eax,4), %eax
	movl	24(%edi), %ebp
	movl	%edi, 164(%esp)
	movl	%ebp, 48(%esp)
	fstpl	104(%esp)
	fldl	8(%ebx,%edx,8)
	movl	(%ebx,%edx,4), %edx
	fstpl	72(%esp)
	movl	%edx, 32(%esp)
	cmpl	%ebp, %edx
	movl	160(%esp), %edx
	movl	(%ebx,%edx,4), %edx
	movl	%edx, 80(%esp)
	jl	.L465
	movl	56(%esp), %ebp
	movl	40(%esp), %edx
	movl	%ebp, 68(%esp)
	movl	%edx, 48(%esp)
.L466:
	movl	164(%esp), %ebp
	movl	28(%ebp), %ebp
	cmpl	%ebp, 80(%esp)
	jle	.L467
	movl	80(%esp), %edx
	subl	32(%esp), %edx
	fnstcw	238(%esp)
	movl	%edx, 32(%esp)
	movl	80(%esp), %edx
	fildl	32(%esp)
	fdivrs	.LC0
	subl	%ebp, %edx
	movl	%edx, 232(%esp)
	fildl	232(%esp)
	movl	%ecx, 232(%esp)
	subl	40(%esp), %ecx
	fildl	232(%esp)
	movl	%ecx, 232(%esp)
	movzwl	238(%esp), %ecx
	fildl	232(%esp)
	fmul	%st(3), %st
	movb	$12, %ch
	movw	%cx, 236(%esp)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fldcw	236(%esp)
	fistpl	232(%esp)
	fldcw	238(%esp)
	movl	232(%esp), %ecx
	movl	%eax, 232(%esp)
	subl	56(%esp), %eax
	fildl	232(%esp)
	movl	%eax, 232(%esp)
	fildl	232(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	fmulp	%st, %st(1)
	fsubrp	%st, %st(1)
	fldcw	236(%esp)
	fistpl	232(%esp)
	fldcw	238(%esp)
	movl	232(%esp), %eax
.L467:
	movl	52(%ebx), %edx
	cmpb	$0, 44(%edx)
	jne	.L468
	movl	272(%esp), %ebp
	movl	484(%ebp), %edi
	movl	%edx, (%edi)
	leal	48(%edx), %edi
	movl	%edi, 484(%ebp)
	movl	20(%ebp), %edi
	movb	$1, 44(%edx)
	movl	%edi, 164(%esp)
.L468:
	movl	100(%esp), %ebp
	subl	48(%esp), %ecx
	subl	68(%esp), %eax
	movl	164(%esp), %edx
	subl	%esi, %ebp
	addl	$1, %ecx
	addl	$1, %ebp
	addl	$1, %eax
	movl	%ebp, 232(%esp)
	fildl	232(%esp)
	movl	%ecx, 232(%esp)
	fildl	232(%esp)
	fdiv	%st(1), %st
	movl	%eax, 232(%esp)
	movl	76(%ebx), %eax
	cmpl	$3, 60(%ebx)
	movl	8(%edx), %ecx
	movl	52(%edx), %edx
	movl	12(%eax), %ebp
	movl	16(%eax), %eax
	movl	%ebp, 196(%esp)
	movl	%eax, 224(%esp)
	fstpl	112(%esp)
	fildl	232(%esp)
	fdivp	%st, %st(1)
	fstpl	120(%esp)
	fldl	188(%ebx)
	fstpl	128(%esp)
	fldl	196(%ebx)
	fldl	244(%ebx)
	fldl	252(%ebx)
	je	.L532
.L469:
	movl	164(%esp), %ebp
	cmpl	100(%esp), %esi
	movl	120(%ebp), %eax
	jg	.L545
	fildl	48(%esp)
	movl	%esi, %ebp
	fstpl	40(%esp)
	subl	%ecx, %ebp
	movl	100(%esp), %ecx
	fildl	68(%esp)
	movl	%ebp, 232(%esp)
	fstpl	48(%esp)
	fildl	232(%esp)
	leal	(%esi,%esi,4), %ebp
	movl	%edx, 232(%esp)
	sall	$2, %ecx
	fildl	232(%esp)
	leal	(%eax,%ebp,4), %edx
	movl	%ebx, %ebp
	fldl	128(%esp)
	fmul	%st(2), %st
	movl	%edx, 68(%esp)
	movl	%ecx, 192(%esp)
	movb	$1, 144(%esp)
	movb	$1, 175(%esp)
	fstpl	56(%esp)
	fld	%st(0)
	fmul	%st(5), %st
	movb	$1, 184(%esp)
	fsubrl	56(%esp)
	fstpl	56(%esp)
	fxch	%st(3)
	fsubl	128(%esp)
	fstl	136(%esp)
	fxch	%st(2)
	fsubp	%st, %st(4)
	fxch	%st(2)
	fmulp	%st, %st(3)
	fmulp	%st, %st(1)
	fsubrp	%st, %st(1)
	fstpl	32(%esp)
	.p2align 4,,7
	.p2align 3
.L517:
	movl	104(%edi), %eax
	leal	0(,%esi,4), %ebx
	leal	(%eax,%ebx), %edx
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L470
	movzbl	144(%esp), %ebx
	movl	$1, %edx
	cmpl	$3, 60(%ebp)
	cmove	%edx, %ebx
	movb	%bl, 144(%esp)
	movl	192(%esp), %ebx
	cmpl	(%eax,%ebx), %ecx
	je	.L459
	movl	%esi, %edx
	.p2align 4,,7
	.p2align 3
.L472:
	addl	$1, %edx
	cmpl	(%eax,%edx,4), %ecx
	je	.L472
	leal	1(%esi), %eax
	cmpl	%edx, %eax
	je	.L520
	movl	%edx, %eax
	movl	68(%esp), %ecx
	subl	%esi, %eax
	subl	$1, %eax
	movl	%eax, 232(%esp)
	leal	(%eax,%eax,4), %ebx
	fildl	232(%esp)
	leal	(%ecx,%ebx,4), %esi
	fldl	112(%esp)
	fmul	%st(1), %st
	movl	%esi, 68(%esp)
	movl	%edx, %esi
	movb	$1, 175(%esp)
	movb	$1, 184(%esp)
	faddl	40(%esp)
	fstpl	40(%esp)
	fldl	120(%esp)
	fmul	%st(1), %st
	faddl	48(%esp)
	fstpl	48(%esp)
	fldl	104(%esp)
	fmul	%st(1), %st
	faddl	72(%esp)
	fstpl	72(%esp)
	fldl	128(%esp)
	fmul	%st(1), %st
	faddl	56(%esp)
	fstpl	56(%esp)
	fmull	136(%esp)
	fsubrl	32(%esp)
	fstpl	32(%esp)
.L473:
	cmpl	%esi, 100(%esp)
	jl	.L459
	fldl	40(%esp)
	faddl	112(%esp)
	addl	$20, 68(%esp)
	fstpl	40(%esp)
	fldl	48(%esp)
	faddl	120(%esp)
	fstpl	48(%esp)
	fldl	72(%esp)
	faddl	104(%esp)
	fstpl	72(%esp)
	fldl	56(%esp)
	faddl	128(%esp)
	fstpl	56(%esp)
	fldl	32(%esp)
	fsubl	136(%esp)
	fstpl	32(%esp)
	jmp	.L517
.L545:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L459:
	addl	$252, %esp
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
.L465:
	.cfi_restore_state
	subl	32(%esp), %edx
	movl	48(%esp), %ebp
	subl	32(%esp), %ebp
	movl	%edx, 232(%esp)
	movl	%ecx, %edx
	fildl	232(%esp)
	fdivrs	.LC0
	subl	40(%esp), %edx
	movl	%ebp, 232(%esp)
	fnstcw	238(%esp)
	movzwl	238(%esp), %ebp
	fildl	232(%esp)
	fildl	40(%esp)
	movl	%edx, 232(%esp)
	movl	%ebp, %edx
	fildl	232(%esp)
	movb	$12, %dh
	fmul	%st(3), %st
	movw	%dx, 236(%esp)
	movl	%eax, %edx
	subl	56(%esp), %edx
	fmul	%st(2), %st
	movl	%edx, 232(%esp)
	faddp	%st, %st(1)
	fldcw	236(%esp)
	fistpl	48(%esp)
	fldcw	238(%esp)
	fildl	56(%esp)
	fildl	232(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	fmul	%st(1), %st
	faddp	%st, %st(2)
	fxch	%st(1)
	fldcw	236(%esp)
	fistpl	68(%esp)
	fldcw	238(%esp)
	fmull	104(%esp)
	faddl	72(%esp)
	fstpl	72(%esp)
	jmp	.L466
	.p2align 4,,7
	.p2align 3
.L470:
	fnstcw	238(%esp)
	fldl	40(%esp)
	movzwl	238(%esp), %ecx
	movb	$12, %ch
	movw	%cx, 236(%esp)
	movl	76(%edi), %eax
	fldcw	236(%esp)
	fistpl	80(%esp)
	fldcw	238(%esp)
	addl	%ebx, %eax
	movl	(%eax), %ecx
	cmpl	%ecx, 80(%esp)
	movl	%eax, 160(%esp)
	jle	.L474
	movl	0(%ebp), %eax
	addl	$1, %ecx
	movl	%ecx, 80(%esp)
	movl	%eax, (%edx)
.L475:
	movl	80(%edi), %edx
	movl	(%edx,%ebx), %eax
	cmpl	%eax, 80(%esp)
	jg	.L507
.L534:
	addl	$1, %esi
	movb	$1, 175(%esp)
	jmp	.L473
	.p2align 4,,7
	.p2align 3
.L474:
	movl	80(%edi), %eax
	fldl	48(%esp)
	fldcw	236(%esp)
	fistpl	88(%esp)
	fldcw	238(%esp)
	movl	(%eax,%ebx), %eax
	cmpl	%eax, 88(%esp)
	movl	%eax, 208(%esp)
	jge	.L476
	movl	0(%ebp), %ecx
	subl	$1, %eax
	movl	%eax, 88(%esp)
	movl	%ecx, (%edx)
.L477:
	movl	160(%esp), %eax
	movl	(%eax), %ecx
	cmpl	%ecx, 88(%esp)
	jge	.L523
	cmpb	$0, 184(%esp)
	jne	.L533
.L499:
	movl	88(%esp), %edx
	movl	168(%esp), %eax
	addl	$1, %edx
	movl	%edx, 88(%esp)
	movl	(%eax), %edx
	movzwl	88(%esp), %eax
	addl	%ebx, %edx
	movw	%ax, (%edx)
	movl	%edx, 160(%esp)
	movl	168(%esp), %edx
	movswl	8(%edx), %eax
	cmpl	%eax, 88(%esp)
	jge	.L504
	movzwl	88(%esp), %eax
	movw	%ax, 8(%edx)
.L504:
	movl	160(%esp), %edx
	movw	%cx, 2(%edx)
	movl	168(%esp), %edx
	movswl	10(%edx), %eax
	cmpl	%ecx, %eax
	jge	.L505
	movw	%cx, 10(%edx)
.L505:
	movl	168(%esp), %ecx
	movswl	4(%ecx), %eax
	cmpl	%eax, %esi
	jge	.L506
	movw	%si, 4(%ecx)
.L506:
	movl	168(%esp), %edx
	movb	$0, 184(%esp)
	movswl	6(%edx), %ecx
	cmpl	%ecx, %esi
	jle	.L475
	movw	%si, 6(%edx)
	movl	80(%edi), %edx
	movl	(%edx,%ebx), %eax
	cmpl	%eax, 80(%esp)
	jle	.L534
	.p2align 4,,7
	.p2align 3
.L507:
	cmpb	$0, 175(%esp)
	jne	.L535
.L508:
	movl	96(%esp), %edx
	movl	80(%esp), %ecx
	addl	(%edx), %ebx
	movswl	8(%edx), %edx
	subl	$1, %ecx
	movw	%ax, (%ebx)
	cmpl	%eax, %edx
	jle	.L513
	movl	96(%esp), %edx
	movw	%ax, 8(%edx)
.L513:
	movw	%cx, 2(%ebx)
	movl	96(%esp), %ebx
	movswl	10(%ebx), %eax
	cmpl	%eax, %ecx
	jle	.L514
	movw	%cx, 10(%ebx)
.L514:
	movl	96(%esp), %edx
	movswl	4(%edx), %ebx
	cmpl	%ebx, %esi
	jge	.L515
	movw	%si, 4(%edx)
.L515:
	movl	96(%esp), %ecx
	movswl	6(%ecx), %edx
	cmpl	%edx, %esi
	jle	.L531
	movw	%si, 6(%ecx)
.L531:
	addl	$1, %esi
	movb	$0, 175(%esp)
	jmp	.L473
	.p2align 4,,7
	.p2align 3
.L523:
	movb	$1, 184(%esp)
	jmp	.L475
	.p2align 4,,7
	.p2align 3
.L476:
	movl	88(%esp), %eax
	subl	80(%esp), %eax
	addl	$1, %eax
	movl	%eax, 176(%esp)
	movl	60(%ebp), %eax
	fildl	176(%esp)
	cmpl	$1, %eax
	movl	%eax, 212(%esp)
	je	.L536
	fmull	216(%esp)
	fildl	196(%esp)
	fdiv	%st(1), %st
	fstl	176(%esp)
	fxch	%st(1)
	fsubs	.LC0
	fmulp	%st, %st(1)
	fstpl	200(%esp)
.L479:
	movl	208(%esp), %eax
	cmpl	%eax, 80(%esp)
	jge	.L480
	cmpl	$1, 212(%esp)
	je	.L537
.L481:
	movl	208(%esp), %eax
	movl	%eax, 80(%esp)
.L480:
	cmpl	%ecx, 88(%esp)
	jle	.L482
	cmpl	$3, 212(%esp)
	je	.L538
.L483:
	movl	%ecx, 88(%esp)
.L482:
	movl	0(%ebp), %ecx
	fldl	68(%ebp)
	movl	%ecx, (%edx)
	movl	52(%ebp), %edx
	movl	$80, %ecx
	subw	$1, 108(%edi)
	fmull	28(%edx)
	fld1
	fldl	72(%esp)
	fdivr	%st(1), %st
	fmuls	.LC98
	fsubrp	%st, %st(1)
	fmulp	%st, %st(1)
	fmuls	.LC99
	fldcw	236(%esp)
	fistpl	232(%esp)
	fldcw	238(%esp)
	movl	232(%esp), %eax
	cmpl	$19, %eax
	jle	.L485
	cmpl	$255, %eax
	jle	.L539
	movl	$1020, %ecx
.L485:
	fldl	56(%esp)
	fdivl	32(%esp)
	movl	76(%ebp), %eax
	movl	8(%eax), %edx
	movl	%edx, 228(%esp)
	fabs
	fmull	28(%ebp)
	fldcw	236(%esp)
	fistpl	232(%esp)
	fldcw	238(%esp)
	movl	232(%esp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	224(%esp)
	movl	228(%esp), %eax
	movl	(%eax,%ecx), %eax
	imull	196(%esp), %edx
	sall	$2, %edx
	addl	%eax, %edx
	cmpl	$1, 212(%esp)
	movl	%edx, 208(%esp)
	je	.L540
	cmpb	$0, 144(%esp)
	jne	.L541
.L490:
	movl	188(%esp), %edi
	leal	(%esi,%esi,4), %eax
	movzwl	80(%esp), %edx
	sall	$2, %eax
	flds	.LC100
	fldl	200(%esp)
	addl	(%edi), %eax
	fmul	%st(1), %st
	movl	208(%esp), %edi
	movl	196(%esp), %ecx
	movw	%dx, (%eax)
	movzwl	88(%esp), %edx
	movl	%edi, 4(%eax)
	movw	%dx, 2(%eax)
	fldcw	236(%esp)
	fistpl	8(%eax)
	fldcw	238(%esp)
	fldl	176(%esp)
	fmulp	%st, %st(1)
	fldcw	236(%esp)
	fistpl	12(%eax)
	fldcw	238(%esp)
	movl	%ecx, 16(%eax)
	movl	188(%esp), %ecx
	movswl	4(%ecx), %eax
	cmpl	%eax, 80(%esp)
	jge	.L495
	movzwl	80(%esp), %eax
	movw	%ax, 4(%ecx)
	movl	188(%esp), %ecx
.L495:
	movswl	6(%ecx), %edi
	cmpl	%edi, 88(%esp)
	jle	.L496
	movw	%dx, 6(%ecx)
.L496:
	movl	188(%esp), %edi
	movswl	8(%edi), %ecx
	cmpl	%ecx, %esi
	jge	.L497
	movw	%si, 8(%edi)
.L497:
	movl	188(%esp), %edx
	movswl	10(%edx), %eax
	cmpl	%eax, %esi
	jle	.L530
	movw	%si, 10(%edx)
.L530:
	movl	164(%esp), %edi
	movl	76(%edi), %ecx
	movb	$0, 144(%esp)
	addl	%ebx, %ecx
	movl	%ecx, 160(%esp)
	jmp	.L477
	.p2align 4,,7
	.p2align 3
.L520:
	movl	%edx, %esi
	movb	$1, 175(%esp)
	movb	$1, 184(%esp)
	jmp	.L473
	.p2align 4,,7
	.p2align 3
.L535:
	movl	52(%ebp), %eax
	movl	156(%edi), %ecx
	movl	%eax, 160(%esp)
	movl	160(%edi), %eax
	movl	%ecx, 88(%esp)
	testl	%eax, %eax
	movl	%eax, 96(%esp)
	je	.L509
	movl	%eax, %edx
	movl	16(%eax), %eax
	movl	160(%esp), %ecx
	movl	%eax, 160(%edi)
	movl	88(%esp), %eax
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%ecx, 12(%edx)
	movl	%eax, 20(%edx)
	movl	%edi, %edx
.L510:
	movl	164(%edi), %eax
	movl	96(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, 16(%ecx)
	je	.L542
.L511:
	movl	96(%esp), %ecx
	movl	%ecx, 164(%edi)
	movl	80(%edx), %edi
	movl	%ecx, 156(%edx)
	movl	(%edi,%ebx), %eax
	movl	%edx, %edi
	jmp	.L508
.L538:
	movl	88(%esp), %eax
	subl	%ecx, %eax
	movl	%eax, 232(%esp)
	fildl	232(%esp)
	fmull	176(%esp)
	fsubrl	200(%esp)
	fstpl	200(%esp)
	jmp	.L483
.L537:
	subl	80(%esp), %eax
	movl	%eax, 80(%esp)
	fildl	80(%esp)
	fmull	176(%esp)
	faddl	200(%esp)
	fstpl	200(%esp)
	jmp	.L481
	.p2align 4,,7
	.p2align 3
.L532:
	movl	52(%ebx), %eax
	fildl	16(%eax)
	fstpl	216(%esp)
	fildl	8(%eax)
	fsubrl	216(%esp)
	fstpl	216(%esp)
	fildl	24(%eax)
	fdivrl	216(%esp)
	fstpl	216(%esp)
	jmp	.L469
	.p2align 4,,7
	.p2align 3
.L533:
	movl	160(%edi), %eax
	movl	152(%edi), %edx
	movl	52(%ebp), %ecx
	testl	%eax, %eax
	movl	%edx, 160(%esp)
	movl	%ecx, 184(%esp)
	movl	%eax, 168(%esp)
	je	.L500
	movl	%eax, %edx
	movl	16(%eax), %eax
	movl	%eax, 160(%edi)
	movl	%ecx, 12(%edx)
	movl	160(%esp), %ecx
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%ecx, 20(%edx)
	movl	%edi, %edx
.L501:
	movl	164(%edi), %eax
	movl	168(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, 16(%ecx)
	je	.L543
.L502:
	movl	168(%esp), %ecx
	movl	%ecx, 164(%edi)
	movl	76(%edx), %edi
	movl	%ecx, 152(%edx)
	movl	(%edi,%ebx), %ecx
	movl	%edx, %edi
	jmp	.L499
	.p2align 4,,7
	.p2align 3
.L536:
	fildl	196(%esp)
	fdivp	%st, %st(1)
	fstpl	176(%esp)
	fldz
	fstpl	200(%esp)
	jmp	.L479
	.p2align 4,,7
	.p2align 3
.L540:
	movzwl	80(%esp), %eax
	movl	68(%esp), %edx
	flds	.LC100
	fldl	200(%esp)
	movl	208(%esp), %ecx
	movw	%ax, (%edx)
	movl	68(%esp), %eax
	movzwl	88(%esp), %edx
	fmul	%st(1), %st
	movl	%ecx, 4(%eax)
	movl	196(%esp), %ecx
	movw	%dx, 2(%eax)
	fldcw	236(%esp)
	fistpl	8(%eax)
	fldcw	238(%esp)
	fldl	176(%esp)
	fmulp	%st, %st(1)
	fldcw	236(%esp)
	fistpl	12(%eax)
	fldcw	238(%esp)
	movl	%ecx, 16(%eax)
	movswl	110(%edi), %ecx
	cmpl	%ecx, 80(%esp)
	jge	.L487
	movzwl	80(%esp), %ecx
	movw	%cx, 110(%edi)
.L487:
	movswl	112(%edi), %eax
	cmpl	%eax, 88(%esp)
	jle	.L488
	movw	%dx, 112(%edi)
.L488:
	movswl	114(%edi), %edx
	cmpl	%edx, %esi
	jge	.L489
	movw	%si, 114(%edi)
.L489:
	movswl	116(%edi), %ecx
	cmpl	%ecx, %esi
	jle	.L477
	movw	%si, 116(%edi)
	jmp	.L477
.L541:
	movl	140(%edi), %eax
	movl	124(%edi), %edx
	testl	%eax, %eax
	movl	%edx, 160(%esp)
	movl	%eax, 188(%esp)
	je	.L491
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	12(%eax), %eax
	movl	%eax, 140(%edi)
	movl	%ecx, 16(%edx)
	movl	188(%esp), %ecx
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%edi, %edx
.L492:
	movl	144(%edi), %eax
	testl	%eax, %eax
	movl	%eax, 12(%ecx)
	je	.L544
.L493:
	movl	188(%esp), %ecx
	movl	%ecx, 144(%edi)
	movl	%ecx, 124(%edx)
	jmp	.L490
.L542:
	movl	%ecx, 168(%edi)
	jmp	.L511
.L543:
	movl	%ecx, 168(%edi)
	jmp	.L502
.L544:
	movl	%ecx, 148(%edi)
	jmp	.L493
.L509:
	movl	$24, (%esp)
	call	_Znwj
.LEHE25:
	movl	(%edi), %edx
	sall	$2, %edx
	movl	%edx, (%esp)
	movl	%eax, 96(%esp)
.LEHB26:
	call	_Znaj
.LEHE26:
	movl	96(%esp), %edx
	movl	160(%esp), %ecx
	movl	%eax, (%edx)
	movl	88(%esp), %eax
	movl	%ecx, 12(%edx)
	movl	272(%esp), %ecx
	movl	$0, 16(%edx)
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%eax, 20(%edx)
	movl	20(%ecx), %edx
	movl	%edx, 164(%esp)
	jmp	.L510
.L500:
	movl	$24, (%esp)
.LEHB27:
	call	_Znwj
.LEHE27:
	movl	(%edi), %edx
	sall	$2, %edx
	movl	%edx, (%esp)
	movl	%eax, 168(%esp)
.LEHB28:
	call	_Znaj
.LEHE28:
	movl	168(%esp), %edx
	movl	184(%esp), %ecx
	movl	%eax, (%edx)
	movl	160(%esp), %eax
	movl	%ecx, 12(%edx)
	movl	272(%esp), %ecx
	movl	$0, 16(%edx)
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%eax, 20(%edx)
	movl	20(%ecx), %edx
	movl	%edx, 164(%esp)
	jmp	.L501
.L491:
	movl	$20, (%esp)
.LEHB29:
	call	_Znwj
.LEHE29:
	movl	(%edi), %ecx
	leal	(%ecx,%ecx,4), %edx
	sall	$2, %edx
	movl	%eax, 188(%esp)
	movl	188(%esp), %eax
	movl	$0, 12(%eax)
	movl	%edx, (%esp)
.LEHB30:
	call	_Znaj
.LEHE30:
	movl	188(%esp), %ecx
	movl	272(%esp), %edx
	movl	%eax, (%ecx)
	movl	160(%esp), %eax
	movw	$10000, 4(%ecx)
	movl	20(%edx), %edx
	movw	$-1, 6(%ecx)
	movw	$10000, 8(%ecx)
	movw	$-1, 10(%ecx)
	movl	%eax, 16(%ecx)
	fnstcw	238(%esp)
	movl	%edx, 164(%esp)
	movzwl	238(%esp), %eax
	movb	$12, %ah
	movw	%ax, 236(%esp)
	jmp	.L492
.L539:
	leal	0(,%eax,4), %ecx
	jmp	.L485
.L525:
	movl	188(%esp), %ebp
	movl	%eax, %edi
	movl	%ebp, (%esp)
	call	_ZdlPv
	movl	%edi, (%esp)
.LEHB31:
	call	_Unwind_Resume
.L527:
	movl	96(%esp), %esi
	movl	%eax, %ebp
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebp, (%esp)
	call	_Unwind_Resume
.L526:
	movl	168(%esp), %ebx
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, (%esp)
	call	_Unwind_Resume
.LEHE31:
	.cfi_endproc
.LFE1374:
	.section	.gcc_except_table
.LLSDA1374:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1374-.LLSDACSB1374
.LLSDACSB1374:
	.uleb128 .LEHB25-.LFB1374
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB1374
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L527-.LFB1374
	.uleb128 0
	.uleb128 .LEHB27-.LFB1374
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB1374
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L526-.LFB1374
	.uleb128 0
	.uleb128 .LEHB29-.LFB1374
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB1374
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L525-.LFB1374
	.uleb128 0
	.uleb128 .LEHB31-.LFB1374
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE1374:
	.text
	.size	_ZN7XEngine18process_solid_wallERK4Wall, .-_ZN7XEngine18process_solid_wallERK4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	.type	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE, @function
_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE:
.LFB1375:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1375
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
	subl	$300, %esp
	.cfi_def_cfa_offset 320
	movl	324(%esp), %ebx
	movl	320(%esp), %ebp
	movl	312(%ebx), %edx
	movl	316(%ebx), %esi
	movl	%edx, 104(%esp)
	addl	$36, %edx
	movl	(%ebx,%edx,4), %edi
	movl	%esi, 64(%esp)
	addl	$36, %esi
	movl	(%ebx,%esi,4), %ecx
	fldl	8(%ebx,%esi,8)
	movl	%edi, 56(%esp)
	movl	20(%ebp), %edi
	fstpl	96(%esp)
	movl	%esi, 116(%esp)
	fldl	8(%ebx,%edx,8)
	movl	%ecx, 48(%esp)
	fstpl	88(%esp)
	movl	28(%edi), %eax
	movl	24(%edi), %esi
	cmpl	%esi, 56(%esp)
	cmovge	56(%esp), %esi
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	%eax, 176(%esp)
	movl	104(%edi), %eax
	movl	(%eax,%esi,4), %ecx
	movl	%eax, 76(%esp)
	testl	%ecx, %ecx
	movl	%ecx, 40(%esp)
	je	.L548
	movl	176(%esp), %ebp
	cmpl	(%eax,%ebp,4), %ecx
	je	.L546
.L548:
	movl	176(%esp), %ebp
	movl	76(%esp), %eax
	addl	$1, %ebp
	leal	(%eax,%ebp,4), %eax
	movl	(%eax), %ecx
	movl	$0, (%eax)
	movl	%ebp, 40(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 80(%esp)
	movl	$.LC97, 4(%esp)
	movl	$1, (%esp)
.LEHB32:
	call	__printf_chk
	movl	104(%edi), %edi
	movl	%esi, 76(%esp)
	movl	(%edi,%esi,4), %edx
	testl	%edx, %edx
	movl	36(%esp), %edx
	je	.L550
	movl	104(%esp), %ecx
	movl	%esi, %eax
	movl	116(%esp), %ebp
	.p2align 4,,7
	.p2align 3
.L551:
	addl	$1, %eax
	cmpl	$0, (%edi,%eax,4)
	jne	.L551
	movl	%ecx, 104(%esp)
	movl	%eax, 76(%esp)
	movl	%ebp, 116(%esp)
.L550:
	movl	80(%esp), %eax
	movl	40(%esp), %ecx
	movl	%eax, (%edi,%ecx,4)
	movl	176(%esp), %edi
	cmpl	%edi, 76(%esp)
	jg	.L546
	fldl	96(%esp)
	fsubl	88(%esp)
	movl	48(%esp), %eax
	subl	56(%esp), %eax
	movl	104(%esp), %ebp
	movl	%eax, 280(%esp)
	fstpl	128(%esp)
	movl	8(%ebx,%edx,4), %edi
	fildl	280(%esp)
	fdivrl	128(%esp)
	addl	$40, %ebp
	movl	(%ebx,%ebp,4), %ecx
	movl	%edi, 80(%esp)
	movl	104(%esp), %edi
	movl	8(%ebx,%ebp,4), %eax
	movl	%ecx, 88(%esp)
	movl	116(%esp), %ecx
	movl	176(%ebx,%edi,4), %ebp
	movl	%eax, 76(%esp)
	movl	8(%ebx,%ecx,4), %eax
	movl	%ebp, 112(%esp)
	movl	64(%esp), %ebp
	movl	%eax, 48(%esp)
	movl	64(%esp), %eax
	addl	$40, %ebp
	movl	(%ebx,%ebp,4), %edi
	movl	8(%ebx,%ebp,4), %ecx
	movl	176(%ebx,%eax,4), %eax
	movl	%edi, 56(%esp)
	movl	320(%esp), %edi
	movl	%ecx, 40(%esp)
	movl	20(%edi), %edi
	fstpl	128(%esp)
	fldl	8(%ebx,%edx,8)
	fstpl	96(%esp)
	movl	(%ebx,%edx,4), %edx
	movl	%edi, 180(%esp)
	movl	24(%edi), %ebp
	movl	116(%esp), %ecx
	cmpl	%ebp, %edx
	movl	%ebp, 104(%esp)
	movl	(%ebx,%ecx,4), %ebp
	jl	.L552
	movl	112(%esp), %ecx
	movl	%ecx, 120(%esp)
	movl	76(%esp), %ecx
	movl	%ecx, 104(%esp)
	movl	88(%esp), %ecx
	movl	%ecx, 116(%esp)
	movl	80(%esp), %ecx
	movl	%ecx, 64(%esp)
.L553:
	movl	180(%esp), %ecx
	movl	28(%ecx), %ecx
	cmpl	%ebp, %ecx
	movl	%ecx, 136(%esp)
	jge	.L554
	movl	%ebp, %ecx
	subl	%edx, %ecx
	movl	48(%esp), %edx
	movl	%ecx, 280(%esp)
	fildl	280(%esp)
	fdivrs	.LC0
	subl	136(%esp), %ebp
	subl	80(%esp), %edx
	fnstcw	286(%esp)
	movl	%ebp, 280(%esp)
	movl	56(%esp), %ebp
	subl	88(%esp), %ebp
	movzwl	286(%esp), %ecx
	movb	$12, %ch
	movw	%cx, 284(%esp)
	fildl	280(%esp)
	fildl	48(%esp)
	movl	%edx, 280(%esp)
	movl	40(%esp), %edx
	fildl	280(%esp)
	fmul	%st(3), %st
	movl	%ebp, 280(%esp)
	subl	76(%esp), %edx
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fldcw	284(%esp)
	fistpl	48(%esp)
	fldcw	286(%esp)
	fildl	56(%esp)
	fildl	280(%esp)
	fmul	%st(3), %st
	movl	%edx, 280(%esp)
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fldcw	284(%esp)
	fistpl	56(%esp)
	fldcw	286(%esp)
	fildl	40(%esp)
	fildl	280(%esp)
	fmul	%st(3), %st
	fmul	%st(2), %st
	fsubrp	%st, %st(1)
	fldcw	284(%esp)
	fistpl	40(%esp)
	fldcw	286(%esp)
	movl	%eax, 280(%esp)
	subl	112(%esp), %eax
	fildl	280(%esp)
	movl	%eax, 280(%esp)
	fildl	280(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	fmulp	%st, %st(1)
	fsubrp	%st, %st(1)
	fldcw	284(%esp)
	fistpl	280(%esp)
	fldcw	286(%esp)
	movl	280(%esp), %eax
.L554:
	movl	328(%esp), %ebp
	addl	$12, %ebp
	movl	4(%ebx,%ebp,4), %edx
	movl	%ebp, 220(%esp)
	cmpb	$0, 44(%edx)
	jne	.L555
	movl	320(%esp), %edi
	movl	484(%edi), %ecx
	movl	%edx, (%ecx)
	leal	48(%edx), %ecx
	movl	%ecx, 484(%edi)
	movl	20(%edi), %edi
	movb	$1, 44(%edx)
	movl	4(%ebx,%ebp,4), %edx
	movl	%edi, 180(%esp)
.L555:
	movl	176(%esp), %ecx
	movl	48(%esp), %ebp
	subl	64(%esp), %ebp
	subl	120(%esp), %eax
	subl	%esi, %ecx
	addl	$1, %ecx
	addl	$1, %ebp
	movl	%ecx, 280(%esp)
	movl	56(%esp), %ecx
	addl	$1, %eax
	fildl	280(%esp)
	movl	%ebp, 280(%esp)
	movl	40(%esp), %ebp
	fildl	280(%esp)
	fdiv	%st(1), %st
	subl	116(%esp), %ecx
	subl	104(%esp), %ebp
	movb	$1, 277(%esp)
	addl	$1, %ecx
	movl	%ecx, 280(%esp)
	addl	$1, %ebp
	fstpl	136(%esp)
	fildl	280(%esp)
	fdiv	%st(1), %st
	movl	%ebp, 280(%esp)
	fstpl	144(%esp)
	fildl	280(%esp)
	fdiv	%st(1), %st
	movl	%eax, 280(%esp)
	cmpl	$2, 4(%edx)
	fstpl	152(%esp)
	fildl	280(%esp)
	fdivp	%st, %st(1)
	fstpl	160(%esp)
	je	.L556
	movl	328(%esp), %edx
	xorl	$1, %edx
	movl	52(%ebx,%edx,4), %eax
	cmpl	$2, 4(%eax)
	sete	277(%esp)
.L556:
	movl	328(%esp), %eax
	movl	180(%esp), %edx
	fldl	188(%ebx)
	fstpl	168(%esp)
	movl	96(%ebx,%eax,8), %eax
	cmpl	176(%esp), %esi
	fldl	196(%ebx)
	fldl	244(%ebx)
	movl	12(%eax), %ebp
	movl	8(%edx), %ecx
	fldl	252(%ebx)
	movl	52(%edx), %edx
	movl	%ebp, 232(%esp)
	movl	16(%eax), %ebp
	movl	%ebp, 236(%esp)
	jg	.L663
	fildl	64(%esp)
	movl	%esi, %ebp
	fstpl	56(%esp)
	subl	%ecx, %ebp
	movl	176(%esp), %ecx
	fildl	116(%esp)
	fstpl	88(%esp)
	fildl	104(%esp)
	fstpl	40(%esp)
	fildl	120(%esp)
	sall	$2, %ecx
	movl	%ebp, 280(%esp)
	fstpl	64(%esp)
	fildl	280(%esp)
	movl	%edx, 280(%esp)
	fildl	280(%esp)
	fldl	168(%esp)
	fmul	%st(2), %st
	movl	%ecx, 216(%esp)
	movb	$1, 204(%esp)
	movb	$1, 196(%esp)
	movb	$1, 184(%esp)
	fstpl	80(%esp)
	fld	%st(0)
	fmul	%st(5), %st
	movb	$1, 200(%esp)
	movl	%ebx, 188(%esp)
	fsubrl	80(%esp)
	fstpl	80(%esp)
	fxch	%st(3)
	fsubl	168(%esp)
	fstl	120(%esp)
	fxch	%st(2)
	fsubp	%st, %st(4)
	fxch	%st(2)
	fmulp	%st, %st(3)
	fmulp	%st, %st(1)
	fsubrp	%st, %st(1)
	fstpl	48(%esp)
	.p2align 4,,7
	.p2align 3
.L623:
	movl	104(%edi), %edx
	leal	0(,%esi,4), %ebx
	leal	(%edx,%ebx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L557
	movl	216(%esp), %ebx
	cmpl	(%edx,%ebx), %ecx
	je	.L546
	movl	%esi, %eax
	.p2align 4,,7
	.p2align 3
.L558:
	addl	$1, %eax
	cmpl	(%edx,%eax,4), %ecx
	je	.L558
	leal	1(%esi), %edx
	cmpl	%edx, %eax
	je	.L626
	movl	%eax, %ecx
	subl	%esi, %ecx
	subl	$1, %ecx
	movl	%ecx, 280(%esp)
	fildl	280(%esp)
	fldl	136(%esp)
	fmul	%st(1), %st
	faddl	56(%esp)
	fstpl	56(%esp)
	fldl	144(%esp)
	fmul	%st(1), %st
	faddl	88(%esp)
	fstpl	88(%esp)
	fldl	152(%esp)
	fmul	%st(1), %st
	faddl	40(%esp)
	fstpl	40(%esp)
	fldl	160(%esp)
	fmul	%st(1), %st
	faddl	64(%esp)
	fstpl	64(%esp)
	fldl	128(%esp)
	fmul	%st(1), %st
	faddl	96(%esp)
	fstpl	96(%esp)
	fldl	168(%esp)
	fmul	%st(1), %st
	faddl	80(%esp)
	fstpl	80(%esp)
	fmull	120(%esp)
	fsubrl	48(%esp)
	fstpl	48(%esp)
.L626:
	movl	%eax, %esi
	movb	$1, 204(%esp)
	movb	$1, 196(%esp)
	movb	$1, 184(%esp)
	movb	$1, 200(%esp)
.L559:
	cmpl	176(%esp), %esi
	jg	.L546
	fldl	56(%esp)
	faddl	136(%esp)
	fstpl	56(%esp)
	fldl	88(%esp)
	faddl	144(%esp)
	fstpl	88(%esp)
	fldl	40(%esp)
	faddl	152(%esp)
	fstpl	40(%esp)
	fldl	64(%esp)
	faddl	160(%esp)
	fstpl	64(%esp)
	fldl	96(%esp)
	faddl	128(%esp)
	fstpl	96(%esp)
	fldl	80(%esp)
	faddl	168(%esp)
	fstpl	80(%esp)
	fldl	48(%esp)
	fsubl	120(%esp)
	fstpl	48(%esp)
	jmp	.L623
.L663:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L546:
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
	.p2align 4,,7
	.p2align 3
.L552:
	.cfi_restore_state
	movl	%ebp, %ecx
	subl	%edx, %ecx
	movl	%ecx, 64(%esp)
	movl	104(%esp), %ecx
	fildl	64(%esp)
	fdivrs	.LC0
	fnstcw	286(%esp)
	subl	%edx, %ecx
	movl	%ecx, 280(%esp)
	movl	48(%esp), %ecx
	subl	80(%esp), %ecx
	fildl	280(%esp)
	fildl	80(%esp)
	movl	%ecx, 280(%esp)
	movzwl	286(%esp), %ecx
	fildl	280(%esp)
	fmul	%st(3), %st
	movb	$12, %ch
	movw	%cx, 284(%esp)
	movl	56(%esp), %ecx
	subl	88(%esp), %ecx
	fmul	%st(2), %st
	movl	%ecx, 280(%esp)
	movl	40(%esp), %ecx
	subl	76(%esp), %ecx
	faddp	%st, %st(1)
	fldcw	284(%esp)
	fistpl	64(%esp)
	fldcw	286(%esp)
	fildl	88(%esp)
	fildl	280(%esp)
	fmul	%st(3), %st
	movl	%ecx, 280(%esp)
	movl	%eax, %ecx
	subl	112(%esp), %ecx
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldcw	284(%esp)
	fistpl	116(%esp)
	fldcw	286(%esp)
	fildl	76(%esp)
	fildl	280(%esp)
	fmul	%st(3), %st
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldcw	284(%esp)
	fistpl	104(%esp)
	fldcw	286(%esp)
	fildl	112(%esp)
	movl	%ecx, 280(%esp)
	fildl	280(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	fmul	%st(1), %st
	faddp	%st, %st(2)
	fxch	%st(1)
	fldcw	284(%esp)
	fistpl	120(%esp)
	fldcw	286(%esp)
	fmull	128(%esp)
	faddl	96(%esp)
	fstpl	96(%esp)
	jmp	.L553
	.p2align 4,,7
	.p2align 3
.L557:
	fnstcw	286(%esp)
	fldl	56(%esp)
	movzwl	286(%esp), %edx
	movb	$12, %dh
	movw	%dx, 284(%esp)
	fldcw	284(%esp)
	fistpl	280(%esp)
	fldcw	286(%esp)
	movl	76(%edi), %edx
	movl	280(%esp), %ebp
	fldl	40(%esp)
	addl	%ebx, %edx
	fldcw	284(%esp)
	fistpl	112(%esp)
	fldcw	286(%esp)
	movl	(%edx), %ecx
	cmpl	%ecx, %ebp
	fldl	64(%esp)
	fldcw	284(%esp)
	fistpl	116(%esp)
	fldcw	286(%esp)
	movl	%ecx, 104(%esp)
	jle	.L560
	movl	188(%esp), %edx
	movl	%ecx, %ebp
	addl	$1, %ebp
	movb	$0, 104(%esp)
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
.L561:
	movl	80(%edi), %edx
	addl	%ebx, %edx
	movl	(%edx), %eax
	cmpl	%eax, %ebp
	jle	.L638
	cmpb	$0, 184(%esp)
	jne	.L651
.L613:
	subl	$1, %ebp
	movl	%ebx, %ecx
	movl	%ebp, 76(%esp)
	movl	108(%esp), %ebp
	addl	0(%ebp), %ecx
	movswl	8(%ebp), %ebp
	movw	%ax, (%ecx)
	cmpl	%eax, %ebp
	jle	.L618
	movl	108(%esp), %ebp
	movw	%ax, 8(%ebp)
.L618:
	movzwl	76(%esp), %ebp
	movw	%bp, 2(%ecx)
	movl	108(%esp), %ecx
	movswl	10(%ecx), %eax
	cmpl	%eax, 76(%esp)
	jle	.L619
	movzwl	76(%esp), %eax
	movw	%ax, 10(%ecx)
	movl	108(%esp), %ecx
.L619:
	movswl	4(%ecx), %ebp
	cmpl	%ebp, %esi
	jge	.L620
	movw	%si, 4(%ecx)
.L620:
	movl	108(%esp), %ebp
	movb	$0, 184(%esp)
	movswl	6(%ebp), %ecx
	cmpl	%ecx, %esi
	jle	.L612
	movw	%si, 6(%ebp)
.L612:
	cmpb	$0, 104(%esp)
	je	.L648
	movl	112(%esp), %ebp
	movl	116(%esp), %ecx
	movl	76(%edi), %eax
	movl	%ecx, (%edx)
	movl	%ebp, (%eax,%ebx)
	cmpl	(%edx), %ebp
	jg	.L648
	movl	188(%esp), %eax
	movl	104(%edi), %ebp
	movl	(%eax), %edx
	movl	%edx, 0(%ebp,%ebx)
	subw	$1, 108(%edi)
.L648:
	addl	$1, %esi
	jmp	.L559
	.p2align 4,,7
	.p2align 3
.L638:
	movb	$1, 184(%esp)
	jmp	.L612
	.p2align 4,,7
	.p2align 3
.L560:
	movl	80(%edi), %ecx
	fldl	88(%esp)
	fldcw	284(%esp)
	fistpl	76(%esp)
	fldcw	286(%esp)
	movl	(%ecx,%ebx), %ecx
	cmpl	%ecx, 76(%esp)
	jge	.L562
	subl	$1, %ecx
	movl	%ecx, 76(%esp)
	movl	188(%esp), %ecx
	movb	$0, 104(%esp)
	movl	(%ecx), %ecx
	movl	%ecx, (%eax)
.L563:
	movl	(%edx), %ecx
	cmpl	%ecx, 76(%esp)
	jge	.L636
	cmpb	$0, 200(%esp)
	jne	.L652
.L604:
	movl	76(%esp), %edx
	movl	192(%esp), %eax
	addl	$1, %edx
	movl	%edx, 76(%esp)
	movl	(%eax), %edx
	movzwl	76(%esp), %eax
	addl	%ebx, %edx
	movw	%ax, (%edx)
	movl	%edx, 200(%esp)
	movl	192(%esp), %edx
	movswl	8(%edx), %eax
	cmpl	%eax, 76(%esp)
	jge	.L609
	movzwl	76(%esp), %eax
	movw	%ax, 8(%edx)
.L609:
	movl	200(%esp), %edx
	movw	%cx, 2(%edx)
	movl	192(%esp), %edx
	movswl	10(%edx), %eax
	cmpl	%ecx, %eax
	jge	.L610
	movw	%cx, 10(%edx)
.L610:
	movl	192(%esp), %ecx
	movswl	4(%ecx), %eax
	cmpl	%eax, %esi
	jge	.L611
	movw	%si, 4(%ecx)
.L611:
	movl	192(%esp), %edx
	movb	$0, 200(%esp)
	movswl	6(%edx), %ecx
	cmpl	%ecx, %esi
	jle	.L561
	movw	%si, 6(%edx)
	jmp	.L561
	.p2align 4,,7
	.p2align 3
.L636:
	movb	$1, 200(%esp)
	jmp	.L561
	.p2align 4,,7
	.p2align 3
.L562:
	movl	76(%esp), %eax
	subl	%ebp, %eax
	addl	$1, %eax
	cmpl	%ecx, %ebp
	movl	%eax, 280(%esp)
	fildl	280(%esp)
	fildl	232(%esp)
	fdiv	%st(1), %st
	fstl	208(%esp)
	fxch	%st(1)
	fsubs	.LC0
	fmulp	%st, %st(1)
	jge	.L627
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	%ecx, %ebp
	movl	%edx, 280(%esp)
	fildl	280(%esp)
	fmull	208(%esp)
	fadds	.LC13
	fstpl	224(%esp)
.L564:
	movl	104(%esp), %eax
	fstl	248(%esp)
	cmpl	%eax, 76(%esp)
	jle	.L565
	movl	%eax, %ecx
	movl	76(%esp), %eax
	subl	104(%esp), %eax
	movl	%ecx, 76(%esp)
	movl	%eax, 280(%esp)
	fildl	280(%esp)
	fmull	208(%esp)
	fsubr	%st(1), %st
	fstpl	248(%esp)
.L565:
	movl	116(%esp), %ecx
	fstpl	264(%esp)
	cmpl	%ebp, 116(%esp)
	cmovl	%ebp, %ecx
	cmpl	%ecx, 76(%esp)
	movl	%ecx, 116(%esp)
	jge	.L566
	movl	188(%esp), %edx
	cmpl	$2, 60(%edx)
	je	.L653
	movl	76(%esp), %edx
	movl	%edx, 116(%esp)
.L566:
	movl	76(%esp), %ecx
	cmpl	%ecx, 112(%esp)
	cmovle	112(%esp), %ecx
	cmpl	%ecx, %ebp
	movl	%ecx, 112(%esp)
	jle	.L631
	cmpb	$0, 277(%esp)
	je	.L632
	movl	%ebp, %eax
	subl	112(%esp), %eax
	movl	%ebp, 112(%esp)
	movl	%eax, 280(%esp)
	fildl	280(%esp)
	fmull	208(%esp)
	fadds	.LC13
	fstpl	240(%esp)
	jmp	.L567
	.p2align 4,,7
	.p2align 3
.L651:
	movl	156(%edi), %edx
	movl	220(%esp), %eax
	movl	188(%esp), %ecx
	movl	%edx, 76(%esp)
	movl	4(%ecx,%eax,4), %edx
	movl	160(%edi), %eax
	movl	%edx, 184(%esp)
	testl	%eax, %eax
	movl	%eax, 108(%esp)
	je	.L614
	movl	%eax, %edx
	movl	16(%eax), %eax
	movl	184(%esp), %ecx
	movl	%eax, 160(%edi)
	movl	76(%esp), %eax
	movl	%ecx, 12(%edx)
	movl	%edi, %ecx
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%eax, 20(%edx)
.L615:
	movl	164(%edi), %eax
	movl	108(%esp), %edx
	testl	%eax, %eax
	movl	%eax, 16(%edx)
	je	.L654
.L616:
	movl	108(%esp), %edx
	movl	%edx, 164(%edi)
	movl	%ecx, %edi
	movl	%edx, 156(%ecx)
	movl	80(%ecx), %edx
	addl	%ebx, %edx
	movl	(%edx), %eax
	jmp	.L613
	.p2align 4,,7
	.p2align 3
.L627:
	fldz
	fstpl	224(%esp)
	jmp	.L564
	.p2align 4,,7
	.p2align 3
.L631:
	fldz
	fstpl	240(%esp)
.L567:
	movl	220(%esp), %eax
	movl	188(%esp), %ecx
	movl	$20, 104(%esp)
	movl	4(%ecx,%eax,4), %edx
	fldl	68(%ecx)
	fmull	28(%edx)
	fld1
	fldl	96(%esp)
	fdivr	%st(1), %st
	fmuls	.LC98
	fsubrp	%st, %st(1)
	fmulp	%st, %st(1)
	fmuls	.LC99
	fldcw	284(%esp)
	fistpl	280(%esp)
	fldcw	286(%esp)
	movl	280(%esp), %eax
	cmpl	$19, %eax
	jle	.L569
	cmpl	$256, %eax
	movl	$255, %ecx
	cmovl	%eax, %ecx
	movl	%ecx, 104(%esp)
	movl	188(%esp), %ecx
.L569:
	fldl	80(%esp)
	fdivl	48(%esp)
	fabs
	fmull	28(%ecx)
	fldcw	284(%esp)
	fistpl	280(%esp)
	fldcw	286(%esp)
	movl	280(%esp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	idivl	236(%esp)
	cmpl	116(%esp), %ebp
	movl	%edx, 256(%esp)
	jge	.L635
	cmpb	$0, 196(%esp)
	je	.L571
	movl	60(%ecx), %ecx
	testl	%ecx, %ecx
	jne	.L572
	movl	140(%edi), %eax
	movl	128(%edi), %ecx
	testl	%eax, %eax
	movl	%ecx, 260(%esp)
	movl	%eax, 196(%esp)
	je	.L573
	movl	%eax, %edx
	movl	12(%eax), %eax
	movl	%eax, 140(%edi)
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%ecx, 16(%edx)
	movl	%edi, %edx
.L574:
	movl	144(%edi), %eax
	movl	196(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, 12(%ecx)
	je	.L655
.L575:
	movl	196(%esp), %ecx
	subl	$-128, %edx
	movl	%edx, 260(%esp)
	movl	%ecx, 144(%edi)
	movl	%ecx, 128(%edi)
.L571:
	movl	260(%esp), %edx
	leal	(%esi,%esi,4), %eax
	sall	$2, %eax
	movzwl	116(%esp), %ecx
	movl	%eax, 16(%esp)
	movw	%bp, 196(%esp)
	movl	(%edx), %edi
	movl	16(%esp), %edx
	movw	%cx, 278(%esp)
	addl	(%edi), %edx
	movl	328(%esp), %edi
	movw	%cx, 2(%edx)
	movl	188(%esp), %ecx
	movw	%bp, (%edx)
	movl	96(%ecx,%edi,8), %eax
	movl	104(%esp), %edi
	movl	8(%eax), %ecx
	movl	256(%esp), %eax
	imull	232(%esp), %eax
	sall	$2, %eax
	addl	(%ecx,%edi,4), %eax
	movl	188(%esp), %ecx
	movl	%eax, 4(%edx)
	movl	260(%esp), %edx
	movl	60(%ecx), %eax
	movl	(%edx), %edx
	testl	%eax, %eax
	movl	16(%esp), %eax
	je	.L656
	fldl	264(%esp)
	fmuls	.LC100
	addl	(%edx), %eax
	fldcw	284(%esp)
	fistpl	8(%eax)
	fldcw	286(%esp)
.L582:
	fldl	208(%esp)
	fmuls	.LC100
	movswl	4(%edx), %ecx
	movl	232(%esp), %edi
	cmpl	%ecx, %ebp
	fldcw	284(%esp)
	fistpl	12(%eax)
	fldcw	286(%esp)
	movl	%edi, 16(%eax)
	jge	.L583
	movzwl	196(%esp), %eax
	movw	%ax, 4(%edx)
.L583:
	movswl	6(%edx), %ecx
	cmpl	%ecx, 116(%esp)
	jle	.L584
	movzwl	278(%esp), %edi
	movw	%di, 6(%edx)
.L584:
	movswl	8(%edx), %eax
	cmpl	%esi, %eax
	jle	.L585
	movw	%si, 8(%edx)
.L585:
	movswl	10(%edx), %ecx
	cmpl	%esi, %ecx
	jge	.L586
	movw	%si, 10(%edx)
.L586:
	movl	112(%esp), %edx
	addl	$1, 116(%esp)
	cmpl	%edx, 76(%esp)
	movb	$0, 196(%esp)
	jle	.L657
.L587:
	cmpb	$0, 204(%esp)
	je	.L588
	movl	180(%esp), %ecx
	cmpb	$0, 277(%esp)
	movl	%ecx, 204(%esp)
	jne	.L589
	movl	124(%ecx), %edi
	movl	%edi, 224(%esp)
	movl	140(%ecx), %edi
	testl	%edi, %edi
	je	.L590
	movl	12(%edi), %edx
	movl	224(%esp), %eax
	movl	%edx, 140(%ecx)
	movw	$10000, 4(%edi)
	movw	$-1, 6(%edi)
	movw	$10000, 8(%edi)
	movw	$-1, 10(%edi)
	movl	%eax, 16(%edi)
.L591:
	movl	204(%esp), %ecx
	movl	144(%ecx), %eax
	testl	%eax, %eax
	movl	%eax, 12(%edi)
	je	.L658
.L592:
	movl	204(%esp), %edx
	movl	%edi, 144(%edx)
	movl	%edi, 124(%edx)
	movl	180(%esp), %edi
	addl	$124, %edi
	movl	%edi, 272(%esp)
.L588:
	movl	272(%esp), %edx
	leal	(%esi,%esi,4), %edi
	sall	$2, %edi
	movzwl	112(%esp), %eax
	movl	%edi, 72(%esp)
	movl	328(%esp), %edi
	movl	(%edx), %ecx
	movl	72(%esp), %edx
	movw	%ax, 204(%esp)
	addl	(%ecx), %edx
	movzwl	76(%esp), %ecx
	movw	%ax, (%edx)
	movw	%cx, 2(%edx)
	movw	%cx, 224(%esp)
	movl	188(%esp), %ecx
	movl	92(%ecx,%edi,8), %eax
	movl	104(%esp), %edi
	movl	8(%eax), %ecx
	movl	256(%esp), %eax
	imull	232(%esp), %eax
	sall	$2, %eax
	addl	(%ecx,%edi,4), %eax
	cmpb	$0, 277(%esp)
	movl	%eax, 4(%edx)
	movl	272(%esp), %eax
	movl	(%eax), %edx
	movl	(%edx), %eax
	je	.L659
	fldl	240(%esp)
	fmuls	.LC100
	movl	72(%esp), %edi
	fldcw	284(%esp)
	fistpl	8(%eax,%edi)
	fldcw	286(%esp)
.L599:
	fldl	208(%esp)
	fmuls	.LC100
	movl	232(%esp), %ecx
	addl	72(%esp), %eax
	fldcw	284(%esp)
	fistpl	12(%eax)
	fldcw	286(%esp)
	movl	%ecx, 16(%eax)
	movswl	4(%edx), %eax
	cmpl	%eax, 112(%esp)
	jge	.L600
	movzwl	204(%esp), %edi
	movw	%di, 4(%edx)
.L600:
	movswl	6(%edx), %eax
	cmpl	%eax, 76(%esp)
	jle	.L601
	movzwl	224(%esp), %ecx
	movw	%cx, 6(%edx)
.L601:
	movswl	8(%edx), %edi
	cmpl	%esi, %edi
	jle	.L602
	movw	%si, 8(%edx)
.L602:
	movswl	10(%edx), %eax
	cmpl	%esi, %eax
	jge	.L603
	movw	%si, 10(%edx)
.L603:
	movl	180(%esp), %edi
	subl	$1, 112(%esp)
	movb	$0, 204(%esp)
	movl	76(%edi), %edx
	movb	$1, 104(%esp)
	addl	%ebx, %edx
	jmp	.L563
	.p2align 4,,7
	.p2align 3
.L635:
	movl	112(%esp), %edx
	cmpl	%edx, 76(%esp)
	movb	$1, 196(%esp)
	jg	.L587
.L657:
	movl	180(%esp), %edi
	movb	$1, 204(%esp)
	movb	$1, 104(%esp)
	movl	76(%edi), %edx
	addl	%ebx, %edx
	jmp	.L563
	.p2align 4,,7
	.p2align 3
.L632:
	fldz
	movl	%ebp, 112(%esp)
	fstpl	240(%esp)
	jmp	.L567
	.p2align 4,,7
	.p2align 3
.L659:
	fldl	248(%esp)
	fmuls	.LC100
	movl	72(%esp), %ecx
	fldcw	284(%esp)
	fistpl	8(%eax,%ecx)
	fldcw	286(%esp)
	jmp	.L599
	.p2align 4,,7
	.p2align 3
.L656:
	fldl	224(%esp)
	fmuls	.LC100
	addl	(%edx), %eax
	fldcw	284(%esp)
	fistpl	8(%eax)
	fldcw	286(%esp)
	jmp	.L582
.L653:
	movl	%ecx, %eax
	movl	76(%esp), %ecx
	subl	76(%esp), %eax
	movl	%eax, 280(%esp)
	fildl	280(%esp)
	fmull	208(%esp)
	movl	%ecx, 116(%esp)
	fsubrl	264(%esp)
	fstpl	264(%esp)
	jmp	.L566
	.p2align 4,,7
	.p2align 3
.L652:
	movl	152(%edi), %eax
	movl	220(%esp), %edx
	movl	188(%esp), %ecx
	movl	%eax, 200(%esp)
	movl	160(%edi), %eax
	movl	4(%ecx,%edx,4), %edx
	testl	%eax, %eax
	movl	%eax, 192(%esp)
	movl	%edx, 208(%esp)
	je	.L605
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	16(%eax), %eax
	movl	%eax, 160(%edi)
	movl	%ecx, 12(%edx)
	movl	200(%esp), %ecx
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%ecx, 20(%edx)
	movl	%edi, %edx
.L606:
	movl	164(%edi), %eax
	movl	192(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, 16(%ecx)
	je	.L660
.L607:
	movl	192(%esp), %ecx
	movl	%ecx, 164(%edi)
	movl	76(%edx), %edi
	movl	%ecx, 152(%edx)
	movl	(%edi,%ebx), %ecx
	movl	%edx, %edi
	jmp	.L604
.L589:
	movl	140(%ecx), %edi
	movl	136(%ecx), %eax
	testl	%edi, %edi
	movl	%eax, 224(%esp)
	je	.L594
	movl	12(%edi), %edx
	movl	%edx, 140(%ecx)
	movl	224(%esp), %ecx
	movw	$10000, 4(%edi)
	movw	$-1, 6(%edi)
	movw	$10000, 8(%edi)
	movw	$-1, 10(%edi)
	movl	%ecx, 16(%edi)
.L595:
	movl	204(%esp), %ecx
	movl	144(%ecx), %edx
	testl	%edx, %edx
	movl	%edx, 12(%edi)
	je	.L661
.L596:
	movl	204(%esp), %ecx
	movl	%edi, 144(%ecx)
	movl	%edi, 136(%ecx)
	movl	180(%esp), %edi
	addl	$136, %edi
	movl	%edi, 272(%esp)
	jmp	.L588
.L572:
	movl	140(%edi), %eax
	movl	132(%edi), %edx
	testl	%eax, %eax
	movl	%edx, 260(%esp)
	movl	%eax, 196(%esp)
	je	.L577
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	12(%eax), %eax
	movl	%eax, 140(%edi)
	movl	%ecx, 16(%edx)
	movl	196(%esp), %ecx
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%edi, %edx
.L578:
	movl	144(%edi), %eax
	testl	%eax, %eax
	movl	%eax, 12(%ecx)
	je	.L662
.L579:
	movl	196(%esp), %ecx
	addl	$132, %edx
	movl	%edx, 260(%esp)
	movl	%ecx, 144(%edi)
	movl	%ecx, 132(%edi)
	jmp	.L571
.L654:
	movl	%edx, 168(%edi)
	jmp	.L616
.L660:
	movl	%ecx, 168(%edi)
	jmp	.L607
.L614:
	movl	$24, (%esp)
	call	_Znwj
.LEHE32:
	movl	(%edi), %edx
	sall	$2, %edx
	movl	%edx, (%esp)
	movl	%eax, 108(%esp)
.LEHB33:
	call	_Znaj
.LEHE33:
	movl	108(%esp), %edx
	movl	76(%esp), %ecx
	movl	%eax, (%edx)
	movl	184(%esp), %eax
	movl	%ecx, 20(%edx)
	movl	$0, 16(%edx)
	movw	$10000, 4(%edx)
	movl	%eax, 12(%edx)
	movl	320(%esp), %eax
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	20(%eax), %ecx
	movl	%ecx, 180(%esp)
	jmp	.L615
.L655:
	movl	%ecx, 148(%edi)
	jmp	.L575
.L662:
	movl	%ecx, 148(%edi)
	jmp	.L579
.L661:
	movl	%edi, 148(%ecx)
	jmp	.L596
.L658:
	movl	%edi, 148(%ecx)
	jmp	.L592
.L605:
	movl	$24, (%esp)
.LEHB34:
	call	_Znwj
.LEHE34:
	movl	(%edi), %edx
	sall	$2, %edx
	movl	%edx, (%esp)
	movl	%eax, 192(%esp)
.LEHB35:
	call	_Znaj
.LEHE35:
	movl	192(%esp), %edx
	movl	208(%esp), %ecx
	movl	%eax, (%edx)
	movl	200(%esp), %eax
	movl	%ecx, 12(%edx)
	movl	320(%esp), %ecx
	movl	$0, 16(%edx)
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%eax, 20(%edx)
	movl	20(%ecx), %edx
	movl	%edx, 180(%esp)
	jmp	.L606
.L590:
	movl	$20, (%esp)
.LEHB36:
	call	_Znwj
.LEHE36:
	movl	180(%esp), %edx
	movl	%eax, %edi
	movl	(%edx), %eax
	movl	$0, 12(%edi)
	leal	(%eax,%eax,4), %ecx
	sall	$2, %ecx
	movl	%ecx, (%esp)
.LEHB37:
	call	_Znaj
.LEHE37:
	movl	224(%esp), %ecx
	movl	320(%esp), %edx
	movl	%eax, (%edi)
	movw	$10000, 4(%edi)
	movw	$-1, 6(%edi)
	movw	$10000, 8(%edi)
	movl	20(%edx), %eax
	movw	$-1, 10(%edi)
	movl	%ecx, 16(%edi)
	fnstcw	286(%esp)
	movl	%eax, 180(%esp)
	movzwl	286(%esp), %ecx
	movb	$12, %ch
	movw	%cx, 284(%esp)
	jmp	.L591
.L594:
	movl	$20, (%esp)
.LEHB38:
	call	_Znwj
.LEHE38:
	movl	180(%esp), %edx
	movl	(%edx), %ecx
	movl	%eax, %edi
	movl	$0, 12(%eax)
	leal	(%ecx,%ecx,4), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
.LEHB39:
	call	_Znaj
.LEHE39:
	movl	%eax, (%edi)
	movl	320(%esp), %edx
	movl	224(%esp), %eax
	movw	$10000, 4(%edi)
	movw	$-1, 6(%edi)
	movw	$10000, 8(%edi)
	movl	20(%edx), %ecx
	movw	$-1, 10(%edi)
	movl	%eax, 16(%edi)
	fnstcw	286(%esp)
	movl	%ecx, 180(%esp)
	movzwl	286(%esp), %eax
	movb	$12, %ah
	movw	%ax, 284(%esp)
	jmp	.L595
.L577:
	movl	$20, (%esp)
.LEHB40:
	call	_Znwj
.LEHE40:
	movl	(%edi), %ecx
	leal	(%ecx,%ecx,4), %edx
	sall	$2, %edx
	movl	%eax, 196(%esp)
	movl	196(%esp), %eax
	movl	$0, 12(%eax)
	movl	%edx, (%esp)
.LEHB41:
	call	_Znaj
.LEHE41:
	movl	196(%esp), %ecx
	movl	320(%esp), %edx
	movl	%eax, (%ecx)
	movl	260(%esp), %eax
	movw	$10000, 4(%ecx)
	movl	20(%edx), %edx
	movw	$-1, 6(%ecx)
	movw	$10000, 8(%ecx)
	movw	$-1, 10(%ecx)
	movl	%eax, 16(%ecx)
	fnstcw	286(%esp)
	movl	%edx, 180(%esp)
	movzwl	286(%esp), %eax
	movb	$12, %ah
	movw	%ax, 284(%esp)
	jmp	.L578
.L573:
	movl	$20, (%esp)
.LEHB42:
	call	_Znwj
.LEHE42:
	movl	(%edi), %edx
	leal	(%edx,%edx,4), %ecx
	sall	$2, %ecx
	movl	%eax, 196(%esp)
	movl	196(%esp), %eax
	movl	$0, 12(%eax)
	movl	%ecx, (%esp)
.LEHB43:
	call	_Znaj
.LEHE43:
	movl	196(%esp), %edx
	movl	260(%esp), %ecx
	movl	%eax, (%edx)
	movl	320(%esp), %eax
	movw	$10000, 4(%edx)
	movw	$-1, 6(%edx)
	movw	$10000, 8(%edx)
	movw	$-1, 10(%edx)
	movl	%ecx, 16(%edx)
	movl	20(%eax), %edx
	fnstcw	286(%esp)
	movzwl	286(%esp), %ecx
	movl	%edx, 180(%esp)
	movb	$12, %ch
	movw	%cx, 284(%esp)
	jmp	.L574
.L645:
	movl	108(%esp), %edi
	movl	%eax, %ebp
	movl	%edi, (%esp)
	call	_ZdlPv
	movl	%ebp, (%esp)
.LEHB44:
	call	_Unwind_Resume
.L640:
.L649:
	movl	196(%esp), %edi
	movl	%eax, %esi
	movl	%edi, (%esp)
	call	_ZdlPv
	movl	%esi, (%esp)
	call	_Unwind_Resume
.L644:
	movl	192(%esp), %esi
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.L643:
.L650:
	movl	%eax, %ebp
	movl	%edi, (%esp)
	call	_ZdlPv
	movl	%ebp, (%esp)
	call	_Unwind_Resume
.LEHE44:
.L642:
	jmp	.L650
.L641:
	.p2align 4,,5
	jmp	.L649
	.cfi_endproc
.LFE1375:
	.section	.gcc_except_table
.LLSDA1375:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1375-.LLSDACSB1375
.LLSDACSB1375:
	.uleb128 .LEHB32-.LFB1375
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB1375
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L645-.LFB1375
	.uleb128 0
	.uleb128 .LEHB34-.LFB1375
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB1375
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L644-.LFB1375
	.uleb128 0
	.uleb128 .LEHB36-.LFB1375
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB1375
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L642-.LFB1375
	.uleb128 0
	.uleb128 .LEHB38-.LFB1375
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB1375
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L643-.LFB1375
	.uleb128 0
	.uleb128 .LEHB40-.LFB1375
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB1375
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L641-.LFB1375
	.uleb128 0
	.uleb128 .LEHB42-.LFB1375
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB1375
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L640-.LFB1375
	.uleb128 0
	.uleb128 .LEHB44-.LFB1375
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE1375:
	.text
	.size	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE, .-_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12process_wallEN5Plane8PositionEP4Wall
	.type	_ZN7XEngine12process_wallEN5Plane8PositionEP4Wall, @function
_ZN7XEngine12process_wallEN5Plane8PositionEP4Wall:
.LFB1370:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 16(%esp)
	movl	40(%esp), %ebx
	.cfi_offset 3, -16
	movl	36(%esp), %eax
	movl	%esi, 20(%esp)
	movl	32(%esp), %esi
	.cfi_offset 6, -12
	movl	%edi, 24(%esp)
	xorl	140(%ebx), %eax
	movl	52(%ebx), %edx
	movl	56(%ebx), %ecx
	jne	.L680
	.cfi_offset 7, -8
	movl	60(%esi), %eax
	cmpb	$0, 88(%eax)
	je	.L668
	movl	84(%eax), %edi
.L669:
	movl	%edi, %ecx
	subl	8(%edx), %ecx
	movl	%ecx, 84(%eax)
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	testb	%al, %al
	je	.L677
	movl	60(%ebx), %eax
	cmpl	$3, %eax
	je	.L678
	cmpl	$1, %eax
	jne	.L671
.L678:
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN7XEngine18process_solid_wallERK4Wall
.L677:
	movl	60(%esi), %eax
	movl	%edi, 84(%eax)
.L664:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 3
	ret
	.p2align 4,,7
	.p2align 3
.L680:
	.cfi_restore_state
	cmpl	$1, %eax
	jne	.L664
	movl	60(%ebx), %edi
	cmpl	$3, %edi
	je	.L664
	cmpl	$1, %edi
	je	.L664
	movl	60(%esi), %eax
	cmpb	$0, 88(%eax)
	jne	.L673
	cmpl	$2, %edi
	je	.L679
	testl	%edi, %edi
	je	.L679
	movl	56(%eax), %edi
	addl	8(%edx), %edi
.L676:
	movl	%edi, 84(%eax)
	movb	$1, 88(%eax)
.L673:
	movl	84(%eax), %edi
	movl	%edi, %edx
	subl	8(%ecx), %edx
	movl	%edx, 84(%eax)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	testb	%al, %al
	je	.L677
	movl	$1, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	jmp	.L677
	.p2align 4,,7
	.p2align 3
.L668:
	movl	56(%eax), %edi
	addl	8(%edx), %edi
	movb	$1, 88(%eax)
	jmp	.L669
	.p2align 4,,7
	.p2align 3
.L679:
	movl	56(%eax), %edi
	addl	8(%ecx), %edi
	jmp	.L676
	.p2align 4,,7
	.p2align 3
.L671:
	movl	$0, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	movl	60(%esi), %eax
	movl	%edi, 84(%eax)
	jmp	.L664
	.cfi_endproc
.LFE1370:
	.size	_ZN7XEngine12process_wallEN5Plane8PositionEP4Wall, .-_ZN7XEngine12process_wallEN5Plane8PositionEP4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE
	.type	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE, @function
_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE:
.LFB1369:
	.cfi_startproc
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
	movl	36(%esp), %edi
.L719:
	movl	(%edi), %eax
	movl	60(%ebx), %edx
	fldl	(%eax)
	fmull	4(%edx)
	fldl	8(%eax)
	fmull	12(%edx)
	faddp	%st, %st(1)
	faddl	16(%eax)
	flds	.LC101
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	ja	.L683
	flds	.LC102
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	.L728
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L709
	movl	4(%esi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L708
	movl	8(%esi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L708
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L729
.L708:
	movl	28(%edi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE
	movl	20(%ebx), %edx
	cmpb	$0, 100(%edx)
	jne	.L681
	.p2align 4,,7
	.p2align 3
.L709:
	movl	20(%edi), %esi
	jmp	.L700
	.p2align 4,,7
	.p2align 3
.L699:
	movl	320(%esi), %esi
	testl	%esi, %esi
	je	.L712
.L700:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L699
	movl	%esi, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine12process_wallEN5Plane8PositionEP4Wall
	movl	20(%ebx), %eax
	cmpw	$0, 108(%eax)
	jne	.L699
.L725:
	movb	$1, 100(%eax)
	.p2align 4,,7
	.p2align 3
.L681:
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
	.p2align 4,,7
	.p2align 3
.L683:
	.cfi_restore_state
	fstp	%st(0)
	movl	24(%edi), %esi
	testl	%esi, %esi
	je	.L706
	movl	4(%esi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L705
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L705
	movl	12(%esi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L730
.L705:
	movl	24(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE
	movl	20(%ebx), %ecx
	cmpb	$0, 100(%ecx)
	jne	.L681
	.p2align 4,,7
	.p2align 3
.L706:
	movl	20(%edi), %esi
	jmp	.L692
	.p2align 4,,7
	.p2align 3
.L732:
	movl	320(%esi), %esi
	testl	%esi, %esi
	je	.L731
.L692:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L732
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine12process_wallEN5Plane8PositionEP4Wall
	movl	20(%ebx), %eax
	cmpw	$0, 108(%eax)
	je	.L725
	movl	320(%esi), %esi
	testl	%esi, %esi
	jne	.L692
.L731:
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L681
	movl	4(%esi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L707
	movl	8(%esi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L733
.L707:
	movl	28(%edi), %edi
	jmp	.L719
	.p2align 4,,7
	.p2align 3
.L728:
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L712
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L711
	movl	8(%esi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L711
	movl	12(%esi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L734
.L711:
	movl	28(%edi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE
	movl	20(%ebx), %eax
	cmpb	$0, 100(%eax)
	jne	.L681
	.p2align 4,,7
	.p2align 3
.L712:
	movl	24(%edi), %esi
	testl	%esi, %esi
	je	.L681
	movl	4(%esi), %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L735
.L713:
	movl	24(%edi), %edi
	jmp	.L719
	.p2align 4,,7
	.p2align 3
.L735:
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L713
	movl	12(%esi), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L713
	movl	16(%esi), %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L681
	jmp	.L713
	.p2align 4,,7
	.p2align 3
.L733:
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L707
	movl	16(%esi), %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L681
	jmp	.L707
	.p2align 4,,7
	.p2align 3
.L734:
	movl	16(%esi), %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L712
	jmp	.L711
	.p2align 4,,7
	.p2align 3
.L729:
	movl	16(%esi), %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L709
	jmp	.L708
	.p2align 4,,7
	.p2align 3
.L730:
	movl	16(%esi), %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L706
	jmp	.L705
	.cfi_endproc
.LFE1369:
	.size	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE, .-_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9collisionERK4WallRK8Vector2d
	.type	_ZN7XEngine9collisionERK4WallRK8Vector2d, @function
_ZN7XEngine9collisionERK4WallRK8Vector2d:
.LFB1376:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 16(%esp)
	movl	36(%esp), %ebx
	.cfi_offset 3, -16
	movl	%esi, 20(%esp)
	xorl	%esi, %esi
	.cfi_offset 6, -12
	movl	%edi, 24(%esp)
	movl	40(%esp), %edi
	.cfi_offset 7, -8
	movl	60(%ebx), %eax
	testl	%eax, %eax
	je	.L737
	cmpl	$2, %eax
	je	.L738
	movl	%edi, 4(%esp)
	movl	64(%ebx), %eax
	movl	%eax, (%esp)
	call	_ZN5Plane9collisionERK8Vector2d
	testb	%al, %al
	je	.L737
	cmpl	$2, 60(%ebx)
	je	.L738
.L740:
	movl	4(%ebx), %esi
	fldl	4(%edi)
	fsubl	4(%esi)
	fmull	12(%ebx)
	fldl	12(%edi)
	fsubl	12(%esi)
	xorl	%esi, %esi
	fmull	20(%ebx)
	faddp	%st, %st(1)
	fmull	36(%ebx)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jb	.L747
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	setae	%cl
	movl	%ecx, %esi
	jmp	.L737
	.p2align 4,,7
	.p2align 3
.L747:
	fstp	%st(0)
.L737:
	movl	%esi, %eax
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 3
	ret
	.p2align 4,,7
	.p2align 3
.L738:
	.cfi_restore_state
	flds	.LC103
	xorl	%esi, %esi
	fstpl	8(%esp)
	movl	%edi, 4(%esp)
	movl	64(%ebx), %edx
	movl	%edx, (%esp)
	call	_ZN5Plane9collisionERK8Vector2dd
	testb	%al, %al
	je	.L737
	jmp	.L740
	.cfi_endproc
.LFE1376:
	.size	_ZN7XEngine9collisionERK4WallRK8Vector2d, .-_ZN7XEngine9collisionERK4WallRK8Vector2d
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine14door_collisionEP4Wall
	.type	_ZN7XEngine14door_collisionEP4Wall, @function
_ZN7XEngine14door_collisionEP4Wall:
.LFB1379:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	movl	32(%esp), %esi
	movl	52(%eax), %ebx
	movl	488(%esi), %eax
	testl	%eax, %eax
	jne	.L753
	jmp	.L749
	.p2align 4,,7
	.p2align 3
.L759:
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L749
.L753:
	cmpl	4(%eax), %ebx
	.p2align 4,,3
	jne	.L759
	movl	(%eax), %edx
	cmpl	$4, %edx
	je	.L760
	leal	-1(%edx), %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jbe	.L755
	testl	%edx, %edx
	movl	$1, %eax
	jne	.L755
	movl	60(%esi), %eax
	movl	84(%eax), %esi
	addl	$5, %esi
	cmpl	%esi, 12(%ebx)
	setle	%al
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L749:
	.cfi_restore_state
	movl	$24, (%esp)
	call	_Znwj
	movl	488(%esi), %edx
	movl	%ebx, 4(%eax)
	movl	%edx, 16(%eax)
	movl	492(%esi), %ebx
	movl	$0, (%eax)
	movl	$2, 12(%eax)
	movl	%eax, 488(%esi)
	movl	%ebx, 20(%eax)
	movl	%eax, 492(%esi)
	movl	$1, %eax
.L755:
	addl	$20, %esp
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
.L760:
	.cfi_restore_state
	movl	492(%esi), %edx
	movl	$0, (%eax)
	movl	$2, 12(%eax)
	movl	%edx, 20(%eax)
	movl	%eax, 492(%esi)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1379:
	.size	_ZN7XEngine14door_collisionEP4Wall, .-_ZN7XEngine14door_collisionEP4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine16check_collisionsERK8Vector2d
	.type	_ZN7XEngine16check_collisionsERK8Vector2d, @function
_ZN7XEngine16check_collisionsERK8Vector2d:
.LFB1377:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
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
	movl	68(%esp), %edi
	movl	480(%esi), %eax
	testl	%eax, %eax
	je	.L762
	movl	60(%eax), %eax
	testl	%eax, %eax
	movl	%eax, 28(%esp)
	je	.L762
	.p2align 4,,7
	.p2align 3
.L777:
	movl	28(%esp), %edx
	movl	(%edx), %ebp
	movl	%ebp, 24(%esp)
	movl	52(%ebp), %ebx
	xorl	%ebp, %ebp
	.p2align 4,,7
	.p2align 3
.L781:
	testl	%ebx, %ebx
	je	.L782
.L778:
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN7XEngine9collisionERK4WallRK8Vector2d
	testb	%al, %al
	movl	60(%ebx), %eax
	je	.L765
	cmpl	$2, %eax
	je	.L783
.L775:
	movl	$1, %ebp
.L765:
	cmpl	$3, %eax
	jne	.L784
.L768:
	movl	324(%ebx), %ebx
	testl	%ebx, %ebx
	jne	.L778
	.p2align 4,,7
	.p2align 3
.L782:
	movl	28(%esp), %ebx
	movl	4(%ebx), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 28(%esp)
	je	.L762
	movl	%ebp, %eax
	testb	%al, %al
	je	.L777
.L762:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
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
.L784:
	.cfi_restore_state
	cmpl	$1, %eax
	je	.L768
	movl	24(%esp), %edx
	cmpl	%edx, 52(%ebx)
	je	.L768
	movl	328(%ebx), %ebx
	jmp	.L781
	.p2align 4,,7
	.p2align 3
.L783:
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN7XEngine14door_collisionEP4Wall
	testb	%al, %al
	movl	60(%ebx), %eax
	je	.L765
	jmp	.L775
	.cfi_endproc
.LFE1377:
	.size	_ZN7XEngine16check_collisionsERK8Vector2d, .-_ZN7XEngine16check_collisionsERK8Vector2d
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine21check_elev_activationEv
	.type	_ZN7XEngine21check_elev_activationEv, @function
_ZN7XEngine21check_elev_activationEv:
.LFB1382:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	480(%esi), %ebx
	testl	%ebx, %ebx
	je	.L785
	cmpl	$2, 4(%ebx)
	je	.L793
.L785:
	addl	$20, %esp
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
.L793:
	.cfi_restore_state
	movl	496(%esi), %eax
	testl	%eax, %eax
	jne	.L791
	jmp	.L787
	.p2align 4,,7
	.p2align 3
.L794:
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L787
.L791:
	cmpl	8(%eax), %ebx
	.p2align 4,,3
	jne	.L794
	cmpl	$4, (%eax)
	jne	.L785
	movl	500(%esi), %edx
	movl	$0, (%eax)
	movl	$100, 12(%eax)
	movl	$2, 20(%eax)
	movl	%edx, 28(%eax)
	movl	%eax, 500(%esi)
	jmp	.L785
	.p2align 4,,7
	.p2align 3
.L787:
	movl	$40, (%esp)
	call	_Znwj
	movl	496(%esi), %ecx
	movl	8(%ebx), %edx
	movl	%ebx, 8(%eax)
	movl	20(%ebx), %ebx
	movl	%ecx, 24(%eax)
	movl	500(%esi), %ecx
	movl	%edx, 32(%eax)
	movl	$0, (%eax)
	movl	%ebx, 36(%eax)
	movl	$100, 12(%eax)
	movl	$2, 20(%eax)
	movl	%eax, 496(%esi)
	movl	%ecx, 28(%eax)
	movl	%eax, 500(%esi)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1382:
	.size	_ZN7XEngine21check_elev_activationEv, .-_ZN7XEngine21check_elev_activationEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine6renderEv
	.type	_ZN7XEngine6renderEv, @function
_ZN7XEngine6renderEv:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %edi
	leal	24(%esp), %eax
	leal	16(%esp), %edx
	fldl	.LC104
	movl	60(%edi), %ebx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	fsubl	60(%ebx)
	fstpl	(%esp)
	call	sincos
	fldl	16(%esp)
	fstpl	68(%ebx)
	fldl	24(%esp)
	fstpl	76(%ebx)
	movb	$0, 88(%ebx)
	movl	%edi, (%esp)
	call	_ZN7XEngine21check_elev_activationEv
	movl	492(%edi), %esi
	testl	%esi, %esi
	jne	.L826
	jmp	.L796
	.p2align 4,,7
	.p2align 3
.L797:
	movl	12(%esi), %ebp
	leal	-1(%ebp), %ebx
	testl	%ebp, %ebp
	movl	%ebx, 12(%esi)
	jle	.L867
.L801:
	movl	20(%esi), %esi
	testl	%esi, %esi
	je	.L796
.L826:
	cmpl	$2, (%esi)
	jne	.L797
	movl	4(%esi), %eax
	cmpl	480(%edi), %eax
	je	.L797
	movl	52(%eax), %ebx
	testl	%ebx, %ebx
	jne	.L827
	jmp	.L798
	.p2align 4,,7
	.p2align 3
.L799:
	movl	324(%ebx), %ebx
	testl	%ebx, %ebx
	je	.L798
.L827:
	cmpl	$2, 60(%ebx)
	jne	.L799
	movl	60(%edi), %ecx
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 8(%esp)
	call	_ZN7XEngine9collisionERK4WallRK8Vector2d
	testb	%al, %al
	jne	.L797
	movl	324(%ebx), %ebx
	testl	%ebx, %ebx
	jne	.L827
	.p2align 4,,7
	.p2align 3
.L798:
	movl	12(%esi), %ebp
	movl	$3, (%esi)
	leal	-1(%ebp), %ebx
	testl	%ebp, %ebp
	movl	%ebx, 12(%esi)
	jg	.L801
.L867:
	movl	%esi, (%esp)
	call	_ZN4Door6updateEv
	cmpl	$4, (%esi)
	je	.L802
	movl	$2, 12(%esi)
	movl	20(%esi), %esi
	testl	%esi, %esi
	jne	.L826
	.p2align 4,,7
	.p2align 3
.L796:
	movl	500(%edi), %ebx
	jmp	.L865
	.p2align 4,,7
	.p2align 3
.L866:
	movl	28(%ebx), %ebx
.L865:
	testl	%ebx, %ebx
	je	.L806
.L868:
	movl	20(%ebx), %esi
	leal	-1(%esi), %edx
	testl	%esi, %esi
	movl	%edx, 20(%ebx)
	jg	.L866
	movl	%ebx, (%esp)
	call	_ZN8Elevator6updateEv
	cmpl	$4, (%ebx)
	je	.L809
	movl	$2, 20(%ebx)
	movl	28(%ebx), %ebx
	testl	%ebx, %ebx
	jne	.L868
	.p2align 4,,7
	.p2align 3
.L806:
	movl	20(%edi), %ebx
	movl	164(%ebx), %eax
	testl	%eax, %eax
	je	.L813
	movl	168(%ebx), %esi
	movl	160(%ebx), %ecx
	movl	%ecx, 16(%esi)
	movl	%eax, 160(%ebx)
	movl	$0, 168(%ebx)
	movl	$0, 164(%ebx)
.L813:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	.L814
	movl	148(%ebx), %edx
	movl	140(%ebx), %ebp
	movl	%ebp, 12(%edx)
	movl	%eax, 140(%ebx)
	movl	$0, 148(%ebx)
	movl	$0, 144(%ebx)
.L814:
	movl	472(%edi), %eax
	testl	%eax, %eax
	je	.L815
	.p2align 4,,7
	.p2align 3
.L824:
	movb	$0, (%eax)
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L824
.L815:
	movl	480(%edi), %eax
	testl	%eax, %eax
	je	.L817
	.p2align 4,,7
	.p2align 3
.L823:
	movb	$0, 44(%eax)
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L823
.L817:
	movl	12(%ebx), %esi
	leal	480(%edi), %ecx
	movl	(%ebx), %eax
	movl	64(%ebx), %edx
	movl	76(%ebx), %ebp
	movl	%ecx, 484(%edi)
	movl	$0, 472(%edi)
	sall	$3, %eax
	movl	$0, 480(%edi)
	movw	%si, 108(%ebx)
	movb	$0, 100(%ebx)
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, (%esp)
	call	memcpy
	movl	(%ebx), %ecx
	movl	104(%ebx), %eax
	movl	$0, 4(%esp)
	leal	4(,%ecx,4), %esi
	movl	%esi, 8(%esp)
	movl	%eax, (%esp)
	call	memset
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	.L819
	movl	120(%ebx), %ebp
	leal	-1(%esi), %ecx
	movl	$1, %edx
	andl	$7, %ecx
	cmpl	%esi, %edx
	movw	$-1, 2(%ebp)
	leal	20(%ebp), %eax
	movw	$-1, 0(%ebp)
	je	.L819
	testl	%ecx, %ecx
	je	.L820
	cmpl	$1, %ecx
	je	.L859
	cmpl	$2, %ecx
	.p2align 4,,3
	je	.L860
	cmpl	$3, %ecx
	.p2align 4,,2
	je	.L861
	cmpl	$4, %ecx
	.p2align 4,,2
	je	.L862
	cmpl	$5, %ecx
	.p2align 4,,2
	je	.L863
	cmpl	$6, %ecx
	.p2align 4,,2
	je	.L864
	movw	$-1, 2(%eax)
	movl	$2, %edx
	movw	$-1, (%eax)
	leal	40(%ebp), %eax
.L864:
	movw	$-1, 2(%eax)
	addl	$1, %edx
	movw	$-1, (%eax)
	addl	$20, %eax
.L863:
	movw	$-1, 2(%eax)
	addl	$1, %edx
	movw	$-1, (%eax)
	addl	$20, %eax
.L862:
	movw	$-1, 2(%eax)
	addl	$1, %edx
	movw	$-1, (%eax)
	addl	$20, %eax
.L861:
	movw	$-1, 2(%eax)
	addl	$1, %edx
	movw	$-1, (%eax)
	addl	$20, %eax
.L860:
	movw	$-1, 2(%eax)
	addl	$1, %edx
	movw	$-1, (%eax)
	addl	$20, %eax
.L859:
	addl	$1, %edx
	movw	$-1, 2(%eax)
	movw	$-1, (%eax)
	addl	$20, %eax
	cmpl	%esi, %edx
	je	.L819
.L820:
	addl	$8, %edx
	movw	$-1, 2(%eax)
	movw	$-1, (%eax)
	movw	$-1, 22(%eax)
	movw	$-1, 20(%eax)
	movw	$-1, 42(%eax)
	movw	$-1, 40(%eax)
	movw	$-1, 62(%eax)
	movw	$-1, 60(%eax)
	movw	$-1, 82(%eax)
	movw	$-1, 80(%eax)
	movw	$-1, 102(%eax)
	movw	$-1, 100(%eax)
	movw	$-1, 122(%eax)
	movw	$-1, 120(%eax)
	movw	$-1, 142(%eax)
	movw	$-1, 140(%eax)
	addl	$160, %eax
	cmpl	%esi, %edx
	jne	.L820
.L819:
	addl	$1, %esi
	movl	4(%ebx), %ecx
	movw	%si, 114(%ebx)
	movl	476(%edi), %esi
	movw	$-1, 112(%ebx)
	movw	$-1, 116(%ebx)
	addl	$1, %ecx
	movl	(%esi), %eax
	movw	%cx, 110(%ebx)
	movl	$0, 124(%ebx)
	movl	$0, 128(%ebx)
	movl	$0, 132(%ebx)
	movl	$0, 136(%ebx)
	movl	$0, 152(%ebx)
	movl	$0, 156(%ebx)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeE
	movl	484(%edi), %edx
	movl	$0, (%edx)
	movl	20(%edi), %ebx
	movl	60(%edi), %ebp
	movl	%ebx, (%esp)
	movl	%ebp, 4(%esp)
	call	_ZN12ScreenRender17render_vis_planesEP6Player
	movl	%ebx, (%esp)
	call	_ZN12ScreenRender18render_solid_wallsEv
	movl	%edi, 64(%esp)
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
	jmp	_ZN7XEngine21check_elev_activationEv
.L802:
	.cfi_restore_state
	movl	492(%edi), %edx
	cmpl	%edx, %esi
	jne	.L856
	jmp	.L871
	.p2align 4,,7
	.p2align 3
.L821:
	movl	%eax, %edx
.L856:
	movl	20(%edx), %eax
	cmpl	%eax, %esi
	jne	.L821
	movl	20(%esi), %ecx
	movl	%ecx, 20(%edx)
	jmp	.L801
.L809:
	movl	500(%edi), %edx
	cmpl	%edx, %ebx
	jne	.L857
	jmp	.L872
	.p2align 4,,7
	.p2align 3
.L822:
	movl	%eax, %edx
.L857:
	movl	28(%edx), %eax
	cmpl	%eax, %ebx
	jne	.L822
	movl	28(%ebx), %ebp
	movl	%ebp, 28(%edx)
	jmp	.L866
.L871:
	movl	20(%esi), %eax
	movl	%eax, 492(%edi)
	jmp	.L801
.L872:
	movl	28(%ebx), %ebx
	movl	%ebx, 500(%edi)
	jmp	.L865
	.cfi_endproc
.LFE1360:
	.size	_ZN7XEngine6renderEv, .-_ZN7XEngine6renderEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine16find_elev_sectorEP6Sector
	.type	_ZN7XEngine16find_elev_sectorEP6Sector, @function
_ZN7XEngine16find_elev_sectorEP6Sector:
.LFB1383:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	496(%eax), %eax
	testl	%eax, %eax
	je	.L874
	cmpl	%edx, 8(%eax)
	jne	.L878
	jmp	.L880
	.p2align 4,,7
	.p2align 3
.L877:
	cmpl	%edx, 8(%eax)
	.p2align 4,,5
	je	.L874
.L878:
	movl	24(%eax), %eax
	testl	%eax, %eax
	.p2align 4,,3
	jne	.L877
.L874:
	.p2align 4,,3
	rep
	ret
.L880:
	.p2align 4,,6
	rep
	ret
	.cfi_endproc
.LFE1383:
	.size	_ZN7XEngine16find_elev_sectorEP6Sector, .-_ZN7XEngine16find_elev_sectorEP6Sector
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18insert_elev_in_aelEP8Elevator
	.type	_ZN7XEngine18insert_elev_in_aelEP8Elevator, @function
_ZN7XEngine18insert_elev_in_aelEP8Elevator:
.LFB1384:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	500(%eax), %ecx
	movl	%ecx, 28(%edx)
	movl	%edx, 500(%eax)
	ret
	.cfi_endproc
.LFE1384:
	.size	_ZN7XEngine18insert_elev_in_aelEP8Elevator, .-_ZN7XEngine18insert_elev_in_aelEP8Elevator
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine20remove_elev_from_aelEP8Elevator
	.type	_ZN7XEngine20remove_elev_from_aelEP8Elevator, @function
_ZN7XEngine20remove_elev_from_aelEP8Elevator:
.LFB1385:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	movl	500(%eax), %edx
	cmpl	%ecx, %edx
	jne	.L887
	jmp	.L889
	.p2align 4,,7
	.p2align 3
.L886:
	movl	%eax, %edx
.L887:
	movl	28(%edx), %eax
	cmpl	%eax, %ecx
	jne	.L886
	movl	28(%ecx), %eax
	movl	%eax, 28(%edx)
	ret
.L889:
	movl	28(%edx), %edx
	movl	%edx, 500(%eax)
	ret
	.cfi_endproc
.LFE1385:
	.size	_ZN7XEngine20remove_elev_from_aelEP8Elevator, .-_ZN7XEngine20remove_elev_from_aelEP8Elevator
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine15update_positionEd
	.type	_ZN7XEngine15update_positionEd, @function
_ZN7XEngine15update_positionEd:
.LFB1387:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$68, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %ebx
	leal	56(%esp), %eax
	fldl	84(%esp)
	leal	48(%esp), %edx
	fldl	.LC104
	movl	60(%ebx), %esi
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	faddl	60(%esi)
	fstpl	(%esp)
	fstpl	16(%esp)
	call	sincos
	fldl	16(%esp)
	fldl	48(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fmull	56(%esp)
	fstpl	40(%esp)
	fldl	4(%esi)
	fadd	%st(1), %st
	fstpl	4(%esi)
	fstpl	16(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine16check_collisionsERK8Vector2d
	testb	%al, %al
	fldl	16(%esp)
	movl	60(%ebx), %eax
	je	.L895
	fsubrl	4(%eax)
	fstpl	4(%eax)
	jmp	.L891
	.p2align 4,,7
	.p2align 3
.L895:
	fstp	%st(0)
.L891:
	fldl	40(%esp)
	faddl	12(%eax)
	fstpl	12(%eax)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine16check_collisionsERK8Vector2d
	testb	%al, %al
	je	.L890
	movl	60(%ebx), %ecx
	fldl	40(%esp)
	fsubrl	12(%ecx)
	fstpl	12(%ecx)
.L890:
	addl	$68, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.cfi_endproc
.LFE1387:
	.size	_ZN7XEngine15update_positionEd, .-_ZN7XEngine15update_positionEd
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13process_inputEv
	.type	_ZN7XEngine13process_inputEv, @function
_ZN7XEngine13process_inputEv:
.LFB1386:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	cmpb	$0, 4(%ebx)
	jne	.L911
.L897:
	cmpb	$0, 5(%ebx)
	jne	.L912
.L898:
	cmpb	$0, 6(%ebx)
	je	.L899
	.p2align 4,,3
	jmp	.L913
	.p2align 4,,7
	.p2align 3
.L918:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L899:
	cmpb	$0, 7(%ebx)
	je	.L896
	.p2align 4,,5
	jmp	.L914
	.p2align 4,,7
	.p2align 3
.L916:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L896:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	ret
	.p2align 4,,7
	.p2align 3
.L914:
	.cfi_restore_state
	movl	60(%ebx), %eax
	fldl	.LC107
	faddl	60(%eax)
	fstl	60(%eax)
	fldl	.LC108
	fxch	%st(1)
	fucomi	%st(1), %st
	jae	.L915
	fstp	%st(1)
.L904:
	fldz
	fucomip	%st(1), %st
	jbe	.L916
	faddl	.LC108
	fstpl	60(%eax)
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L913:
	.cfi_restore_state
	movl	60(%ebx), %eax
	fldl	.LC107
	fsubrl	60(%eax)
	fstl	60(%eax)
	fldl	.LC108
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L917
	fsubp	%st, %st(1)
	fstl	60(%eax)
	jmp	.L900
	.p2align 4,,7
	.p2align 3
.L917:
	fstp	%st(1)
.L900:
	fldz
	fucomip	%st(1), %st
	jbe	.L918
	faddl	.LC108
	fstpl	60(%eax)
	jmp	.L899
	.p2align 4,,7
	.p2align 3
.L912:
	flds	.LC106
	fstpl	4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine15update_positionEd
	jmp	.L898
	.p2align 4,,7
	.p2align 3
.L911:
	flds	.LC105
	fstpl	4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine15update_positionEd
	jmp	.L897
	.p2align 4,,7
	.p2align 3
.L915:
	fsubp	%st, %st(1)
	fstl	60(%eax)
	jmp	.L904
	.cfi_endproc
.LFE1386:
	.size	_ZN7XEngine13process_inputEv, .-_ZN7XEngine13process_inputEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12update_angleEd
	.type	_ZN7XEngine12update_angleEd, @function
_ZN7XEngine12update_angleEd:
.LFB1388:
	.cfi_startproc
	movl	4(%esp), %eax
	fldl	8(%esp)
	movl	60(%eax), %eax
	faddl	60(%eax)
	fstl	60(%eax)
	fldl	.LC108
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L926
	fsubp	%st, %st(1)
	fstl	60(%eax)
	jmp	.L920
	.p2align 4,,7
	.p2align 3
.L926:
	fstp	%st(1)
.L920:
	fldz
	fucomip	%st(1), %st
	jbe	.L927
	faddl	.LC108
	fstpl	60(%eax)
	jmp	.L919
	.p2align 4,,7
	.p2align 3
.L927:
	fstp	%st(0)
.L919:
	rep
	ret
	.cfi_endproc
.LFE1388:
	.size	_ZN7XEngine12update_angleEd, .-_ZN7XEngine12update_angleEd
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13update_heightEd
	.type	_ZN7XEngine13update_heightEd, @function
_ZN7XEngine13update_heightEd:
.LFB1389:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	60(%eax), %eax
	fildl	56(%eax)
	fnstcw	6(%esp)
	faddl	20(%esp)
	movzwl	6(%esp), %edx
	movb	$12, %dh
	movw	%dx, 4(%esp)
	fldcw	4(%esp)
	fistpl	(%esp)
	fldcw	6(%esp)
	movl	(%esp), %edx
	cmpl	$9, %edx
	movl	%edx, 56(%eax)
	jg	.L929
	movl	$10, 56(%eax)
.L928:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,7
	.p2align 3
.L929:
	.cfi_restore_state
	addl	$-128, %edx
	jle	.L928
	movl	$128, 56(%eax)
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1389:
	.size	_ZN7XEngine13update_heightEd, .-_ZN7XEngine13update_heightEd
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall
	.type	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall, @function
_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall:
.LFB1390:
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
	movl	320(%esp), %ecx
	leal	48(%esp), %edx
	movl	316(%esp), %ebx
	movl	304(%esp), %edi
	movb	$0, 48(%esp)
	movl	%ecx, %esi
	shrl	$31, %esi
	addl	%esi, %ecx
	sarl	%ecx
	movl	%ecx, 44(%esp)
	fildl	44(%esp)
	fldl	12(%ebx)
	fsub	%st(1), %st
	movl	$0, 100(%esp)
	fldl	4(%ebx)
	fsub	%st(2), %st
	movl	%edx, 4(%esp)
	movl	468(%edi), %ebp
	fstpl	52(%esp)
	fstpl	60(%esp)
	movl	%ebp, (%esp)
	fstpl	16(%esp)
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
	movl	468(%edi), %esi
	fstpl	108(%esp)
	fstpl	116(%esp)
	movl	%esi, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	160(%esp), %ecx
	movb	$0, 160(%esp)
	movl	$0, 212(%esp)
	fldl	16(%esp)
	movl	%eax, %esi
	fldl	12(%ebx)
	fadd	%st(1), %st
	fldl	4(%ebx)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%ecx, 4(%esp)
	movl	468(%edi), %edx
	fstpl	164(%esp)
	fstpl	172(%esp)
	movl	%edx, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 216(%esp)
	movl	$0, 268(%esp)
	fldl	16(%esp)
	movl	%eax, %ecx
	fldl	12(%ebx)
	leal	216(%esp), %eax
	fadd	%st(1), %st
	fxch	%st(1)
	fsubrl	4(%ebx)
	movl	%eax, 4(%esp)
	movl	468(%edi), %ebx
	movl	%ecx, 36(%esp)
	fstpl	220(%esp)
	fstpl	228(%esp)
	movl	%ebx, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$336, (%esp)
	movl	%eax, 40(%esp)
	call	_Znwj
	movl	308(%esp), %edx
	fldl	4(%esi)
	movl	%eax, %ebx
	fsubl	4(%ebp)
	movl	%edx, 76(%eax)
	movl	36(%esp), %edx
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	$0, 320(%eax)
	fstl	12(%ebx)
	fldl	12(%esi)
	fsubl	12(%ebp)
	movl	%ebp, 4(%eax)
	movl	%esi, 8(%eax)
	movl	312(%esp), %eax
	movl	$0, 56(%ebx)
	movl	$0, 80(%ebx)
	fstl	20(%ebx)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 52(%ebx)
	fstpl	44(%ebx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%ebx)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L944
	fstp	%st(1)
.L932:
	cmpl	$-1, (%ebx)
	fstpl	28(%ebx)
	fld1
	fstpl	68(%ebx)
	je	.L934
	movl	52(%ebx), %edi
	movl	52(%edi), %eax
	movl	%eax, 324(%ebx)
	movl	60(%ebx), %eax
	addl	$1, 56(%edi)
	movl	%ebx, 52(%edi)
	cmpl	$3, %eax
	je	.L934
	cmpl	$1, %eax
	je	.L934
	movl	56(%ebx), %edi
	movl	52(%edi), %ecx
	movl	%ecx, 328(%ebx)
	addl	$1, 56(%edi)
	movl	%ebx, 52(%edi)
.L934:
	movl	%edx, 36(%esp)
	movl	$336, (%esp)
	call	_Znwj
	movl	36(%esp), %edx
	movl	308(%esp), %ecx
	fldl	4(%edx)
	movl	%eax, %edi
	fsubl	4(%esi)
	movl	%ecx, 76(%eax)
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	$0, 320(%eax)
	fstl	12(%edi)
	fldl	12(%edx)
	fsubl	12(%esi)
	movl	%esi, 4(%eax)
	movl	%edx, 8(%eax)
	movl	312(%esp), %eax
	movl	$0, 56(%edi)
	movl	$0, 80(%edi)
	fstl	20(%edi)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 52(%edi)
	fstpl	44(%edi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%edi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L945
	fstp	%st(1)
.L935:
	cmpl	$-1, (%edi)
	fstpl	28(%edi)
	fld1
	fstpl	68(%edi)
	je	.L937
	movl	52(%edi), %esi
	movl	52(%esi), %eax
	movl	%eax, 324(%edi)
	movl	60(%edi), %eax
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
	cmpl	$3, %eax
	je	.L937
	cmpl	$1, %eax
	je	.L937
	movl	56(%edi), %esi
	movl	52(%esi), %ecx
	movl	%ecx, 328(%edi)
	addl	$1, 56(%esi)
	movl	%edi, 52(%esi)
.L937:
	movl	%edx, 36(%esp)
	movl	$336, (%esp)
	call	_Znwj
	movl	36(%esp), %edx
	movl	40(%esp), %ecx
	movl	%eax, %esi
	movl	%ecx, 8(%eax)
	movl	312(%esp), %ecx
	movl	%edx, 4(%eax)
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	$0, 320(%eax)
	movl	308(%esp), %eax
	movl	%ecx, 52(%esi)
	movl	$0, 56(%esi)
	movl	$0, 80(%esi)
	movl	%eax, 76(%esi)
	movl	40(%esp), %eax
	fldl	4(%eax)
	fsubl	4(%edx)
	fstl	12(%esi)
	fldl	12(%eax)
	fsubl	12(%edx)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L946
	fstp	%st(1)
.L938:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L940
	movl	52(%esi), %eax
	movl	52(%eax), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%eax)
	movl	%esi, 52(%eax)
	movl	60(%esi), %eax
	cmpl	$3, %eax
	je	.L940
	cmpl	$1, %eax
	je	.L940
	movl	56(%esi), %ecx
	movl	52(%ecx), %eax
	movl	%eax, 328(%esi)
	addl	$1, 56(%ecx)
	movl	%esi, 52(%ecx)
.L940:
	movl	$336, (%esp)
	call	_Znwj
	movl	308(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edx, 76(%eax)
	movl	40(%esp), %edx
	fldl	4(%ebp)
	movl	%ecx, 4(%eax)
	movl	312(%esp), %ecx
	movl	$1, (%eax)
	fsubl	4(%edx)
	movl	$1, 60(%eax)
	movl	$0, 320(%eax)
	movl	%ebp, 8(%eax)
	movl	%ecx, 52(%eax)
	fstl	12(%eax)
	fldl	12(%ebp)
	fsubl	12(%edx)
	movl	$0, 56(%eax)
	movl	$0, 80(%eax)
	fstl	20(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%eax)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L947
	fstp	%st(1)
.L941:
	cmpl	$-1, (%eax)
	fstpl	28(%eax)
	fld1
	fstpl	68(%eax)
	je	.L943
	movl	52(%eax), %ebp
	movl	52(%ebp), %edx
	movl	%edx, 324(%eax)
	movl	60(%eax), %edx
	addl	$1, 56(%ebp)
	movl	%eax, 52(%ebp)
	cmpl	$3, %edx
	je	.L943
	cmpl	$1, %edx
	je	.L943
	movl	56(%eax), %ebp
	movl	52(%ebp), %ecx
	movl	%ecx, 328(%eax)
	addl	$1, 56(%ebp)
	movl	%eax, 52(%ebp)
.L943:
	movl	%edi, 320(%ebx)
	movl	%esi, 320(%edi)
	movl	324(%esp), %edi
	movl	%eax, 320(%esi)
	movl	%edi, 320(%eax)
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
.L945:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L935
.L944:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L932
.L947:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 36(%esp)
	call	sqrt
	movl	36(%esp), %eax
	jmp	.L941
.L946:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L938
	.cfi_endproc
.LFE1390:
	.size	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall, .-_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall
	.type	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall, @function
_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall:
.LFB1391:
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
	movl	320(%esp), %ecx
	leal	48(%esp), %ebp
	movl	316(%esp), %ebx
	movl	304(%esp), %esi
	movb	$0, 48(%esp)
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%edx, %ecx
	sarl	%ecx
	movl	%ecx, 44(%esp)
	fildl	44(%esp)
	fldl	12(%ebx)
	fsub	%st(1), %st
	movl	$0, 100(%esp)
	fldl	4(%ebx)
	fsub	%st(2), %st
	movl	%ebp, 4(%esp)
	movl	468(%esi), %edi
	fstpl	52(%esp)
	fstpl	60(%esp)
	movl	%edi, (%esp)
	fstpl	16(%esp)
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
	movl	468(%esi), %edx
	fstpl	108(%esp)
	fstpl	116(%esp)
	movl	%edx, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	leal	160(%esp), %ecx
	movb	$0, 160(%esp)
	movl	$0, 212(%esp)
	fldl	16(%esp)
	fldl	12(%ebx)
	fadd	%st(1), %st
	movl	%eax, 40(%esp)
	fldl	4(%ebx)
	faddp	%st, %st(2)
	fxch	%st(1)
	movl	%ecx, 4(%esp)
	movl	468(%esi), %ebp
	fstpl	164(%esp)
	fstpl	172(%esp)
	movl	%ebp, (%esp)
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
	movl	468(%esi), %esi
	fstpl	220(%esp)
	fstpl	228(%esp)
	movl	%esi, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$336, (%esp)
	movl	%eax, 36(%esp)
	call	_Znwj
	movl	324(%esp), %edx
	movl	308(%esp), %ecx
	movl	%edx, 320(%eax)
	movl	36(%esp), %edx
	movl	%eax, %esi
	movl	%ecx, 76(%eax)
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	fldl	4(%edx)
	fsubl	4(%edi)
	movl	%edi, 4(%eax)
	movl	%edx, 8(%eax)
	movl	312(%esp), %eax
	movl	$0, 56(%esi)
	movl	$0, 80(%esi)
	fstl	12(%esi)
	fldl	12(%edx)
	fsubl	12(%edi)
	movl	%eax, 52(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L961
	fstp	%st(1)
.L949:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L951
	movl	52(%esi), %ebx
	movl	52(%ebx), %eax
	movl	%eax, 324(%esi)
	movl	60(%esi), %eax
	addl	$1, 56(%ebx)
	movl	%esi, 52(%ebx)
	cmpl	$3, %eax
	je	.L951
	cmpl	$1, %eax
	je	.L951
	movl	56(%esi), %ebx
	movl	52(%ebx), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%ebx)
	movl	%esi, 52(%ebx)
.L951:
	movl	%edx, 36(%esp)
	movl	$336, (%esp)
	call	_Znwj
	movl	312(%esp), %edx
	movl	%esi, 320(%eax)
	movl	36(%esp), %esi
	movl	%eax, %ebx
	fldl	4(%ebp)
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	fsubl	4(%esi)
	movl	%esi, 4(%eax)
	movl	%ebp, 8(%eax)
	movl	308(%esp), %eax
	movl	%edx, 52(%ebx)
	movl	$0, 56(%ebx)
	fstl	12(%ebx)
	fldl	12(%ebp)
	fsubl	12(%esi)
	movl	%eax, 76(%ebx)
	movl	$0, 80(%ebx)
	fstl	20(%ebx)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%ebx)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%ebx)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L962
	fstp	%st(1)
.L952:
	cmpl	$-1, (%ebx)
	fstpl	28(%ebx)
	fld1
	fstpl	68(%ebx)
	je	.L954
	movl	52(%ebx), %ecx
	movl	60(%ebx), %eax
	movl	52(%ecx), %esi
	movl	%esi, 324(%ebx)
	addl	$1, 56(%ecx)
	cmpl	$3, %eax
	movl	%ebx, 52(%ecx)
	je	.L954
	cmpl	$1, %eax
	je	.L954
	movl	56(%ebx), %eax
	movl	52(%eax), %edx
	movl	%edx, 328(%ebx)
	addl	$1, 56(%eax)
	movl	%ebx, 52(%eax)
.L954:
	movl	$336, (%esp)
	call	_Znwj
	movl	312(%esp), %ecx
	movl	%ebx, 320(%eax)
	movl	40(%esp), %ebx
	movl	%eax, %esi
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	movl	%ebp, 4(%eax)
	fldl	4(%ebx)
	fsubl	4(%ebp)
	movl	%ebx, 8(%eax)
	movl	308(%esp), %eax
	movl	%ecx, 52(%esi)
	movl	$0, 56(%esi)
	movl	$0, 80(%esi)
	fstl	12(%esi)
	fldl	12(%ebx)
	fsubl	12(%ebp)
	movl	%eax, 76(%esi)
	fstl	20(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%esi)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%esi)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L963
	fstp	%st(1)
.L955:
	cmpl	$-1, (%esi)
	fstpl	28(%esi)
	fld1
	fstpl	68(%esi)
	je	.L957
	movl	52(%esi), %ebp
	movl	60(%esi), %eax
	movl	52(%ebp), %edx
	movl	%edx, 324(%esi)
	addl	$1, 56(%ebp)
	cmpl	$3, %eax
	movl	%esi, 52(%ebp)
	je	.L957
	cmpl	$1, %eax
	je	.L957
	movl	56(%esi), %ebx
	movl	52(%ebx), %ecx
	movl	%ecx, 328(%esi)
	addl	$1, 56(%ebx)
	movl	%esi, 52(%ebx)
.L957:
	movl	$336, (%esp)
	call	_Znwj
	movl	40(%esp), %ebx
	movl	308(%esp), %edx
	movl	312(%esp), %ebp
	movl	%esi, 320(%eax)
	movl	40(%esp), %esi
	fldl	4(%edi)
	movl	$1, (%eax)
	movl	$1, 60(%eax)
	fsubl	4(%esi)
	movl	%ebx, 4(%eax)
	movl	%edi, 8(%eax)
	movl	%edx, 76(%eax)
	movl	%ebp, 52(%eax)
	fstl	12(%eax)
	fldl	12(%edi)
	fsubl	12(%esi)
	movl	$0, 56(%eax)
	movl	$0, 80(%eax)
	fstl	20(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	fstpl	44(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fdivrs	.LC0
	fstpl	36(%eax)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L964
	fstp	%st(1)
.L958:
	cmpl	$-1, (%eax)
	fstpl	28(%eax)
	fld1
	fstpl	68(%eax)
	je	.L960
	movl	52(%eax), %edi
	movl	60(%eax), %edx
	movl	52(%edi), %ecx
	movl	%ecx, 324(%eax)
	addl	$1, 56(%edi)
	cmpl	$3, %edx
	movl	%eax, 52(%edi)
	je	.L960
	cmpl	$1, %edx
	je	.L960
	movl	56(%eax), %esi
	movl	52(%esi), %ebp
	movl	%ebp, 328(%eax)
	addl	$1, 56(%esi)
	movl	%eax, 52(%esi)
.L960:
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
.L962:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L952
.L961:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L949
.L964:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 36(%esp)
	call	sqrt
	movl	36(%esp), %eax
	jmp	.L958
.L963:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L955
	.cfi_endproc
.LFE1391:
	.size	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall, .-_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1393:
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
.LFE1393:
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
	.weak	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	.set	_ZN4WallC1EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_,_ZN4WallC2EiP8Vector2dS1_NS_9WallTypesEP6SectorS4_P7TextureS6_S6_S6_S6_S6_PS_
	.globl	_ZN7XEngineC1EiiP14XScreenRgbInfo
	.set	_ZN7XEngineC1EiiP14XScreenRgbInfo,_ZN7XEngineC2EiiP14XScreenRgbInfo
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC8:
	.long	1167970304
	.align 4
.LC9:
	.long	1156415488
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC10:
	.long	2134057426
	.long	1074977148
	.align 8
.LC12:
	.long	1374389535
	.long	1073028792
	.section	.rodata.cst4
	.align 4
.LC13:
	.long	0
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
	.long	1143111680
	.align 4
.LC25:
	.long	1146388480
	.align 4
.LC26:
	.long	1151909888
	.align 4
.LC27:
	.long	1157234688
	.align 4
.LC28:
	.long	1144750080
	.align 4
.LC29:
	.long	1157627904
	.align 4
.LC30:
	.long	1149239296
	.align 4
.LC31:
	.long	1158479872
	.align 4
.LC32:
	.long	1141473280
	.align 4
.LC33:
	.long	1150844928
	.align 4
.LC34:
	.long	1157840896
	.align 4
.LC35:
	.long	1149403136
	.align 4
.LC36:
	.long	1160298496
	.align 4
.LC37:
	.long	1161117696
	.align 4
.LC38:
	.long	1161936896
	.align 4
.LC39:
	.long	1159479296
	.align 4
.LC40:
	.long	1158660096
	.align 4
.LC41:
	.long	1153957888
	.align 4
.LC42:
	.long	1159069696
	.align 4
.LC43:
	.long	1154777088
	.align 4
.LC44:
	.long	1158250496
	.align 4
.LC45:
	.long	1157562368
	.align 4
.LC46:
	.long	1156005888
	.align 4
.LC47:
	.long	1158086656
	.align 4
.LC48:
	.long	1159172096
	.align 4
.LC49:
	.long	1157636096
	.align 4
.LC50:
	.long	1159376896
	.align 4
.LC51:
	.long	1158455296
	.align 4
.LC52:
	.long	1151500288
	.align 4
.LC53:
	.long	1162346496
	.align 4
.LC54:
	.long	1163984896
	.align 4
.LC55:
	.long	1164599296
	.align 4
.LC56:
	.long	1161527296
	.align 4
.LC57:
	.long	1161732096
	.align 4
.LC58:
	.long	1162141696
	.align 4
.LC59:
	.long	1167867904
	.align 4
.LC60:
	.long	1168072704
	.align 4
.LC61:
	.long	1161445376
	.align 4
.LC62:
	.long	1161363456
	.align 4
.LC63:
	.long	1162756096
	.align 4
.LC64:
	.long	1163575296
	.align 4
.LC65:
	.long	1159888896
	.align 4
.LC66:
	.long	1156825088
	.align 4
.LC67:
	.long	1152729088
	.align 4
.LC68:
	.long	1145569280
	.align 4
.LC69:
	.long	1138819072
	.align 4
.LC70:
	.long	1152319488
	.align 4
.LC71:
	.long	1151090688
	.align 4
.LC72:
	.long	1140785152
	.align 4
.LC73:
	.long	1153630208
	.align 4
.LC74:
	.long	1154449408
	.align 4
.LC75:
	.long	1155268608
	.align 4
.LC76:
	.long	1156087808
	.align 4
.LC77:
	.long	1156907008
	.align 4
.LC78:
	.long	1143767040
	.align 4
.LC79:
	.long	1152811008
	.align 4
.LC80:
	.long	1136197632
	.align 4
.LC81:
	.long	1130102784
	.align 4
.LC82:
	.long	1138163712
	.align 4
.LC83:
	.long	1133248512
	.align 4
.LC84:
	.long	1141719040
	.align 4
.LC85:
	.long	1157902336
	.align 4
.LC86:
	.long	1142865920
	.align 4
.LC87:
	.long	1158189056
	.align 4
.LC88:
	.long	1155596288
	.align 4
.LC89:
	.long	1150066688
	.align 4
.LC90:
	.long	1159274496
	.align 4
.LC91:
	.long	1165623296
	.align 4
.LC92:
	.long	1161568256
	.align 4
.LC93:
	.long	1166127104
	.align 4
.LC94:
	.long	1166434304
	.align 4
.LC95:
	.long	1166741504
	.align 4
.LC96:
	.long	1162100736
	.align 4
.LC98:
	.long	981467136
	.align 4
.LC99:
	.long	1132396544
	.align 4
.LC100:
	.long	1199570944
	.align 4
.LC101:
	.long	953267991
	.align 4
.LC102:
	.long	-1194215657
	.align 4
.LC103:
	.long	1097859072
	.section	.rodata.cst8
	.align 8
.LC104:
	.long	1285274117
	.long	1060467073
	.section	.rodata.cst4
	.align 4
.LC105:
	.long	1075838976
	.align 4
.LC106:
	.long	-1071644672
	.section	.rodata.cst8
	.align 8
.LC107:
	.long	-1717986918
	.long	1067030937
	.align 8
.LC108:
	.long	1413754136
	.long	1075388923
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
