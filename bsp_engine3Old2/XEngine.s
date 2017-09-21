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
.LFB1216:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	ret
	.cfi_endproc
.LFE1216:
	.size	_ZN7XEngineD2Ev, .-_ZN7XEngineD2Ev
	.section	.text._ZN7XEngineD0Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN7XEngineD0Ev
	.type	_ZN7XEngineD0Ev, @function
_ZN7XEngineD0Ev:
.LFB1218:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	jmp	_ZdlPv
	.cfi_endproc
.LFE1218:
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
	.type	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8, @function
_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8:
.LFB1364:
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
	movl	136(%ebx), %eax
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
	movl	136(%ebx), %eax
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
	movl	136(%ebx), %eax
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
	movl	136(%ebx), %eax
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
.LFE1364:
	.size	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8, .-_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine10deg_to_radEi
	.type	_ZN7XEngine10deg_to_radEi, @function
_ZN7XEngine10deg_to_radEi:
.LFB1326:
	.cfi_startproc
	fildl	8(%esp)
	fmull	.LC2
	ret
	.cfi_endproc
.LFE1326:
	.size	_ZN7XEngine10deg_to_radEi, .-_ZN7XEngine10deg_to_radEi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"wall0.ppm"
.LC4:
	.string	"wall1.ppm"
.LC5:
	.string	"floor0.ppm"
.LC6:
	.string	"floor1.ppm"
.LC7:
	.string	"ceiling0.ppm"
.LC8:
	.string	"ceiling1.ppm"
.LC9:
	.string	"ceiling2.ppm"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine14setup_texturesEv
	.type	_ZN7XEngine14setup_texturesEv, @function
_ZN7XEngine14setup_texturesEv:
.LFB1328:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1328
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
	movl	16(%ebx), %eax
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC3, 4(%esp)
.LEHB0:
	call	*8(%edx)
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
	movl	16(%ebx), %eax
	movl	%esi, 72(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC4, 4(%esp)
.LEHB2:
	call	*8(%edx)
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
	movl	16(%ebx), %eax
	movl	%esi, 76(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC5, 4(%esp)
.LEHB4:
	call	*8(%edx)
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
	movl	16(%ebx), %eax
	movl	%esi, 84(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC6, 4(%esp)
.LEHB6:
	call	*8(%edx)
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
	movl	16(%ebx), %eax
	movl	%esi, 88(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC7, 4(%esp)
.LEHB8:
	call	*8(%edx)
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
	movl	16(%ebx), %eax
	movl	%esi, 96(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC8, 4(%esp)
.LEHB10:
	call	*8(%edx)
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
	movl	16(%ebx), %eax
	movl	%esi, 100(%ebx)
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	$.LC9, 4(%esp)
.LEHB12:
	call	*8(%edx)
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
	movl	%esi, 104(%ebx)
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
.L36:
.L43:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB14:
	call	_Unwind_Resume
.LEHE14:
.L42:
	jmp	.L43
.L41:
	.p2align 4,,5
	jmp	.L43
.L40:
	.p2align 4,,11
	jmp	.L43
.L39:
	.p2align 4,,11
	jmp	.L43
.L38:
	.p2align 4,,11
	jmp	.L43
.L37:
	.p2align 4,,11
	jmp	.L43
	.cfi_endproc
.LFE1328:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1328:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1328-.LLSDACSB1328
.LLSDACSB1328:
	.uleb128 .LEHB0-.LFB1328
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1328
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L36-.LFB1328
	.uleb128 0
	.uleb128 .LEHB2-.LFB1328
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1328
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L37-.LFB1328
	.uleb128 0
	.uleb128 .LEHB4-.LFB1328
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1328
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L38-.LFB1328
	.uleb128 0
	.uleb128 .LEHB6-.LFB1328
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB1328
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L39-.LFB1328
	.uleb128 0
	.uleb128 .LEHB8-.LFB1328
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB1328
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L40-.LFB1328
	.uleb128 0
	.uleb128 .LEHB10-.LFB1328
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1328
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L41-.LFB1328
	.uleb128 0
	.uleb128 .LEHB12-.LFB1328
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB1328
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L42-.LFB1328
	.uleb128 0
	.uleb128 .LEHB14-.LFB1328
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE1328:
	.text
	.size	_ZN7XEngine14setup_texturesEv, .-_ZN7XEngine14setup_texturesEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12setup_playerEv
	.type	_ZN7XEngine12setup_playerEv, @function
_ZN7XEngine12setup_playerEv:
.LFB1329:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$68, (%esp)
	call	_Znwj
	movl	32(%esp), %edx
	flds	.LC10
	movl	%eax, 108(%edx)
	fstl	4(%eax)
	movl	$32, 56(%eax)
	fstpl	12(%eax)
	fldl	.LC11
	fstpl	60(%eax)
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1329:
	.size	_ZN7XEngine12setup_playerEv, .-_ZN7XEngine12setup_playerEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine17setup_screen_dataEv
	.type	_ZN7XEngine17setup_screen_dataEv, @function
_ZN7XEngine17setup_screen_dataEv:
.LFB1330:
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
	movl	32(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	32(%ebx), %edi
	testl	%edi, %edi
	movl	%eax, 24(%ebx)
	je	.L54
	movl	28(%ebx), %edx
	xorl	%ecx, %ecx
	movl	%edx, %ebp
	movl	%edx, 24(%esp)
	sall	$2, %ebp
	xorl	%edx, %edx
	jmp	.L47
	.p2align 4,,7
	.p2align 3
.L55:
	movl	24(%ebx), %eax
.L47:
	movl	20(%ebx), %esi
	addl	%ecx, %esi
	addl	%ebp, %ecx
	movl	%esi, (%eax,%edx,4)
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	.L55
.L46:
	movl	24(%esp), %edx
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	36(%ebx), %esi
	movl	%eax, %ebp
	movl	%eax, 68(%ebx)
	movl	40(%ebx), %eax
	cmpl	%eax, %esi
	jg	.L48
	leal	(%esi,%esi,2), %edi
	sall	$3, %edi
	movl	%ebp, 24(%esp)
	.p2align 4,,7
	.p2align 3
.L49:
	fildl	60(%ebx)
	fstpl	8(%esp)
	movl	28(%ebx), %eax
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
	movl	68(%ebx), %eax
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
	movl	40(%ebx), %eax
	cmpl	%esi, %eax
	fldl	32(%esp)
	fstpl	8(%ebp)
	fldl	40(%esp)
	fstpl	16(%ebp)
	jge	.L49
	movl	36(%ebx), %esi
.L48:
	subl	%esi, %eax
	addl	$1, %eax
	movl	%eax, 56(%ebx)
	movl	28(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 148(%ebx)
	movl	28(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 152(%ebx)
	movl	28(%ebx), %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 160(%ebx)
	movl	28(%ebx), %eax
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, 184(%ebx)
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
	ret
.L54:
	.cfi_restore_state
	movl	28(%ebx), %eax
	movl	%eax, 24(%esp)
	jmp	.L46
	.cfi_endproc
.LFE1330:
	.size	_ZN7XEngine17setup_screen_dataEv, .-_ZN7XEngine17setup_screen_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine16setup_level_dataEv
	.type	_ZN7XEngine16setup_level_dataEv, @function
_ZN7XEngine16setup_level_dataEv:
.LFB1331:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1331
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
	subl	$5612, %esp
	.cfi_def_cfa_offset 5632
	movl	5632(%esp), %ebx
	movl	$20, (%esp)
.LEHB15:
	call	_Znwj
.LEHE15:
	movl	%eax, %esi
	movl	%eax, (%esp)
.LEHB16:
	call	_ZN9VertexSetC1Ev
.LEHE16:
	movl	%esi, 136(%ebx)
	movl	$32, (%esp)
.LEHB17:
	call	_Znwj
	movl	88(%ebx), %edx
	movl	%eax, %esi
	movl	100(%ebx), %eax
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
	movl	84(%ebx), %edx
	movl	%eax, 116(%esp)
	movl	116(%esp), %ecx
	movl	104(%ebx), %eax
	flds	.LC12
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$2, (%ecx)
	movl	$0, 4(%ecx)
	movl	$128, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$128, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	84(%ebx), %edx
	movl	%eax, %edi
	movl	100(%ebx), %eax
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
	movl	88(%ebx), %edx
	movl	%eax, 140(%esp)
	movl	140(%esp), %ecx
	fld1
	movl	96(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$4, (%ecx)
	movl	$42, 4(%ecx)
	movl	$140, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$98, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	88(%ebx), %edx
	movl	%eax, 136(%esp)
	movl	136(%esp), %ecx
	fld1
	movl	96(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$5, (%ecx)
	movl	$52, 4(%ecx)
	movl	$130, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$78, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	84(%ebx), %edx
	movl	%eax, 144(%esp)
	movl	144(%esp), %ecx
	fld1
	movl	100(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$6, (%ecx)
	movl	$62, 4(%ecx)
	movl	$150, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$88, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	84(%ebx), %edx
	movl	%eax, 148(%esp)
	movl	148(%esp), %ecx
	fld1
	movl	100(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$7, (%ecx)
	movl	$72, 4(%ecx)
	movl	$170, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$98, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	84(%ebx), %edx
	movl	%eax, 152(%esp)
	movl	152(%esp), %ecx
	fld1
	movl	96(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$8, (%ecx)
	movl	$30, 4(%ecx)
	movl	$86, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$56, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	84(%ebx), %edx
	movl	%eax, 156(%esp)
	movl	156(%esp), %ecx
	fld1
	movl	100(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$9, (%ecx)
	movl	$10, 4(%ecx)
	movl	$150, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$140, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	84(%ebx), %edx
	movl	%eax, 124(%esp)
	movl	100(%ebx), %eax
	movl	124(%esp), %ecx
	fldl	.LC13
	fstpl	16(%ecx)
	movl	%edx, 24(%ecx)
	movl	$10, (%ecx)
	movl	$72, 4(%ecx)
	movl	$256, 8(%ecx)
	movl	%eax, 28(%ecx)
	movl	$184, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	88(%ebx), %edx
	movl	%eax, 132(%esp)
	movl	132(%esp), %ebp
	fld1
	movl	100(%ebx), %eax
	fstpl	16(%ebp)
	movl	%edx, 24(%ebp)
	movl	$11, 0(%ebp)
	movl	$82, 4(%ebp)
	movl	$170, 8(%ebp)
	movl	%eax, 28(%ebp)
	movl	$88, 12(%ebp)
	movl	$32, (%esp)
	call	_Znwj
	movl	100(%ebx), %edx
	movl	%eax, 120(%esp)
	movl	120(%esp), %ecx
	fld1
	movl	88(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 28(%ecx)
	movl	$11, (%ecx)
	movl	$20, 4(%ecx)
	movl	$96, 8(%ecx)
	movl	%eax, 24(%ecx)
	movl	$76, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	100(%ebx), %edx
	movl	%eax, 160(%esp)
	movl	160(%esp), %ecx
	fld1
	movl	84(%ebx), %eax
	fstpl	16(%ecx)
	movl	%edx, 28(%ecx)
	movl	$11, (%ecx)
	movl	$40, 4(%ecx)
	movl	$170, 8(%ecx)
	movl	%eax, 24(%ecx)
	movl	$130, 12(%ecx)
	movl	$32, (%esp)
	call	_Znwj
	movl	96(%ebx), %edx
	movl	%eax, 164(%esp)
	movl	164(%esp), %ecx
	fld1
	movl	88(%ebx), %eax
	fstpl	16(%ecx)
	movl	$11, (%ecx)
	fldz
	movl	$82, 4(%ecx)
	movl	$170, 8(%ecx)
	fstl	396(%esp)
	movl	%eax, 24(%ecx)
	leal	392(%esp), %eax
	flds	.LC15
	movl	$88, 12(%ecx)
	movl	%edx, 28(%ecx)
	fstl	404(%esp)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstps	16(%esp)
	fstps	32(%esp)
	movb	$0, 392(%esp)
	movl	$0, 444(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 448(%esp)
	movl	$0, 500(%esp)
	flds	32(%esp)
	movl	%eax, 276(%esp)
	leal	448(%esp), %eax
	fstpl	452(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	460(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 504(%esp)
	movl	$0, 556(%esp)
	flds	.LC16
	movl	%eax, 280(%esp)
	leal	504(%esp), %eax
	fstpl	508(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	516(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 560(%esp)
	movl	$0, 612(%esp)
	flds	.LC16
	movl	%eax, 284(%esp)
	leal	560(%esp), %eax
	fstpl	564(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC17
	fstpl	572(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 616(%esp)
	movl	$0, 668(%esp)
	flds	.LC18
	movl	%eax, 288(%esp)
	leal	616(%esp), %eax
	fstpl	620(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC17
	fstpl	628(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 672(%esp)
	movl	$0, 724(%esp)
	flds	.LC18
	movl	%eax, 292(%esp)
	leal	672(%esp), %eax
	fstpl	676(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC19
	fstpl	684(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 728(%esp)
	movl	$0, 780(%esp)
	flds	.LC16
	movl	%eax, 296(%esp)
	leal	728(%esp), %eax
	fstpl	732(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC19
	fstpl	740(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 784(%esp)
	movl	$0, 836(%esp)
	flds	.LC16
	movl	%eax, 300(%esp)
	leal	784(%esp), %eax
	fstpl	788(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC20
	fstpl	796(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 840(%esp)
	movl	$0, 892(%esp)
	flds	.LC18
	movl	%eax, 304(%esp)
	leal	840(%esp), %eax
	fstpl	844(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC20
	fstpl	852(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 896(%esp)
	movl	$0, 948(%esp)
	movl	%eax, 308(%esp)
	flds	16(%esp)
	leal	896(%esp), %eax
	fstpl	900(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC19
	fstpl	908(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 952(%esp)
	movl	$0, 1004(%esp)
	flds	.LC21
	fstl	956(%esp)
	movl	%eax, 312(%esp)
	leal	952(%esp), %eax
	flds	.LC17
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	964(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1008(%esp)
	movl	$0, 1060(%esp)
	flds	.LC22
	fstl	1012(%esp)
	movl	%eax, 128(%esp)
	leal	1008(%esp), %eax
	flds	.LC17
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	1020(%esp)
	movl	%eax, (%esp)
	fstps	48(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1064(%esp)
	movl	$0, 1116(%esp)
	flds	.LC18
	fstpl	1068(%esp)
	movl	%eax, 168(%esp)
	leal	1064(%esp), %eax
	flds	.LC23
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	1076(%esp)
	movl	%eax, (%esp)
	fstps	16(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1120(%esp)
	movl	$0, 1172(%esp)
	flds	.LC18
	fstpl	1124(%esp)
	movl	%eax, 172(%esp)
	leal	1120(%esp), %eax
	flds	.LC24
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	1132(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1176(%esp)
	movl	$0, 1228(%esp)
	flds	48(%esp)
	movl	%eax, 176(%esp)
	leal	1176(%esp), %eax
	fstpl	1180(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC19
	fstpl	1188(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1232(%esp)
	movl	$0, 1284(%esp)
	flds	32(%esp)
	movl	%eax, 180(%esp)
	leal	1232(%esp), %eax
	fstpl	1236(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC19
	fstpl	1244(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1288(%esp)
	movl	$0, 1340(%esp)
	flds	48(%esp)
	movl	%eax, 184(%esp)
	leal	1288(%esp), %eax
	fstpl	1292(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	1300(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1344(%esp)
	movl	$0, 1396(%esp)
	flds	48(%esp)
	movl	%eax, 316(%esp)
	leal	1344(%esp), %eax
	fstpl	1348(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	64(%esp)
	fstpl	1356(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1400(%esp)
	movl	$0, 1452(%esp)
	flds	32(%esp)
	movl	%eax, 320(%esp)
	leal	1400(%esp), %eax
	fstpl	1404(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	1412(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1456(%esp)
	movl	$0, 1508(%esp)
	flds	32(%esp)
	movl	%eax, 324(%esp)
	leal	1456(%esp), %eax
	fstpl	1460(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	64(%esp)
	fstpl	1468(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1512(%esp)
	movl	$0, 1564(%esp)
	flds	.LC16
	movl	%eax, 328(%esp)
	leal	1512(%esp), %eax
	fstpl	1516(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	1524(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1568(%esp)
	movl	$0, 1620(%esp)
	movl	%eax, 332(%esp)
	flds	.LC16
	leal	1568(%esp), %eax
	fstpl	1572(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	64(%esp)
	fstpl	1580(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1624(%esp)
	movl	$0, 1676(%esp)
	flds	.LC16
	fstpl	1628(%esp)
	movl	%eax, 336(%esp)
	leal	1624(%esp), %eax
	flds	.LC25
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	1636(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1680(%esp)
	movl	$0, 1732(%esp)
	flds	.LC16
	fstpl	1684(%esp)
	movl	%eax, 188(%esp)
	leal	1680(%esp), %eax
	flds	.LC26
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	1692(%esp)
	movl	%eax, (%esp)
	fstps	16(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1736(%esp)
	movl	$0, 1788(%esp)
	flds	.LC19
	movl	%eax, 192(%esp)
	leal	1736(%esp), %eax
	fstpl	1740(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	32(%esp)
	fstpl	1748(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1792(%esp)
	movl	$0, 1844(%esp)
	flds	.LC19
	movl	%eax, 196(%esp)
	leal	1792(%esp), %eax
	fstpl	1796(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	1804(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1848(%esp)
	movl	$0, 1900(%esp)
	flds	.LC17
	fstpl	1852(%esp)
	movl	%eax, 200(%esp)
	leal	1848(%esp), %eax
	flds	.LC27
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	1860(%esp)
	movl	%eax, (%esp)
	fstps	16(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1904(%esp)
	movl	$0, 1956(%esp)
	flds	.LC16
	movl	%eax, 340(%esp)
	leal	1904(%esp), %eax
	fstpl	1908(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	1916(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 1960(%esp)
	movl	$0, 2012(%esp)
	flds	.LC17
	movl	%eax, 204(%esp)
	leal	1960(%esp), %eax
	fstpl	1964(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC20
	fstpl	1972(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2016(%esp)
	movl	$0, 2068(%esp)
	flds	.LC16
	fstpl	2020(%esp)
	movl	%eax, 208(%esp)
	leal	2016(%esp), %eax
	flds	.LC28
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	2028(%esp)
	movl	%eax, (%esp)
	fstps	16(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2072(%esp)
	movl	$0, 2124(%esp)
	flds	.LC29
	fstpl	2076(%esp)
	movl	%eax, 344(%esp)
	leal	2072(%esp), %eax
	flds	.LC30
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	2084(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2128(%esp)
	movl	$0, 2180(%esp)
	flds	.LC17
	movl	%eax, 348(%esp)
	leal	2128(%esp), %eax
	fstpl	2132(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	32(%esp)
	fstpl	2140(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2184(%esp)
	movl	$0, 2236(%esp)
	flds	.LC31
	fstl	2188(%esp)
	movl	%eax, 352(%esp)
	leal	2184(%esp), %eax
	flds	32(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	2196(%esp)
	movl	%eax, (%esp)
	fstps	48(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2240(%esp)
	movl	$0, 2292(%esp)
	flds	48(%esp)
	fstpl	2244(%esp)
	movl	%eax, 212(%esp)
	leal	2240(%esp), %eax
	flds	.LC32
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	2252(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2296(%esp)
	movl	$0, 2348(%esp)
	flds	.LC33
	movl	%eax, 216(%esp)
	leal	2296(%esp), %eax
	fstpl	2300(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	32(%esp)
	fstpl	2308(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2352(%esp)
	movl	$0, 2404(%esp)
	flds	.LC34
	fstl	2356(%esp)
	movl	%eax, 356(%esp)
	leal	2352(%esp), %eax
	flds	.LC35
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	2364(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2408(%esp)
	movl	$0, 2460(%esp)
	flds	.LC36
	fstl	2412(%esp)
	movl	%eax, 220(%esp)
	leal	2408(%esp), %eax
	flds	32(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	2420(%esp)
	movl	%eax, (%esp)
	fstps	48(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2464(%esp)
	movl	$0, 2516(%esp)
	flds	64(%esp)
	fstpl	2468(%esp)
	movl	%eax, 224(%esp)
	leal	2464(%esp), %eax
	flds	.LC37
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	2476(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2520(%esp)
	movl	$0, 2572(%esp)
	flds	48(%esp)
	movl	%eax, 228(%esp)
	leal	2520(%esp), %eax
	fstpl	2524(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	32(%esp)
	fstpl	2532(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2576(%esp)
	movl	$0, 2628(%esp)
	flds	.LC20
	movl	%eax, 232(%esp)
	leal	2576(%esp), %eax
	fstpl	2580(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC38
	fstpl	2588(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2632(%esp)
	movl	$0, 2684(%esp)
	flds	.LC20
	movl	%eax, 236(%esp)
	leal	2632(%esp), %eax
	fstpl	2636(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC39
	fstpl	2644(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2688(%esp)
	movl	$0, 2740(%esp)
	flds	16(%esp)
	fstpl	2692(%esp)
	movl	%eax, 240(%esp)
	leal	2688(%esp), %eax
	flds	.LC40
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	2700(%esp)
	movl	%eax, (%esp)
	fstps	64(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2744(%esp)
	movl	$0, 2796(%esp)
	flds	.LC41
	movl	%eax, 244(%esp)
	leal	2744(%esp), %eax
	fstpl	2748(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	64(%esp)
	fstpl	2756(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2800(%esp)
	movl	$0, 2852(%esp)
	flds	.LC42
	fstpl	2804(%esp)
	movl	%eax, 248(%esp)
	leal	2800(%esp), %eax
	flds	.LC43
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	2812(%esp)
	movl	%eax, (%esp)
	fstps	48(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2856(%esp)
	movl	$0, 2908(%esp)
	flds	.LC44
	fstl	2860(%esp)
	movl	%eax, 360(%esp)
	leal	2856(%esp), %eax
	flds	.LC45
	fstl	2868(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstps	32(%esp)
	fstps	80(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2912(%esp)
	movl	$0, 2964(%esp)
	movl	%eax, 364(%esp)
	flds	16(%esp)
	leal	2912(%esp), %eax
	fstpl	2916(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	32(%esp)
	fstpl	2924(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 2968(%esp)
	movl	$0, 3020(%esp)
	flds	.LC46
	fstl	2972(%esp)
	movl	%eax, 252(%esp)
	leal	2968(%esp), %eax
	flds	32(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	2980(%esp)
	movl	%eax, (%esp)
	fstps	96(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3024(%esp)
	movl	$0, 3076(%esp)
	flds	48(%esp)
	movl	%eax, 256(%esp)
	leal	3024(%esp), %eax
	fstpl	3028(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	32(%esp)
	fstpl	3036(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3080(%esp)
	movl	$0, 3132(%esp)
	flds	64(%esp)
	movl	%eax, 368(%esp)
	leal	3080(%esp), %eax
	fstpl	3084(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	48(%esp)
	fstpl	3092(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3136(%esp)
	movl	$0, 3188(%esp)
	flds	.LC47
	fstpl	3140(%esp)
	movl	%eax, 372(%esp)
	leal	3136(%esp), %eax
	flds	.LC48
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	3148(%esp)
	movl	%eax, (%esp)
	fstps	48(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3192(%esp)
	movl	$0, 3244(%esp)
	flds	.LC49
	fstpl	3196(%esp)
	movl	%eax, 260(%esp)
	leal	3192(%esp), %eax
	flds	.LC50
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	3204(%esp)
	movl	%eax, (%esp)
	fstps	32(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3248(%esp)
	movl	$0, 3300(%esp)
	flds	16(%esp)
	fstpl	3252(%esp)
	movl	%eax, 264(%esp)
	leal	3248(%esp), %eax
	flds	.LC51
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	3260(%esp)
	movl	%eax, (%esp)
	fstps	16(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3304(%esp)
	movl	$0, 3356(%esp)
	flds	96(%esp)
	movl	%eax, 268(%esp)
	leal	3304(%esp), %eax
	fstpl	3308(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	3316(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3360(%esp)
	movl	$0, 3412(%esp)
	flds	.LC52
	fstl	3364(%esp)
	movl	%eax, 272(%esp)
	leal	3360(%esp), %eax
	flds	48(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	3372(%esp)
	movl	%eax, (%esp)
	fstps	16(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 3416(%esp)
	movl	$0, 3468(%esp)
	movl	%eax, 376(%esp)
	flds	16(%esp)
	leal	3416(%esp), %eax
	fstpl	3420(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	32(%esp)
	fstpl	3428(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	72(%ebx), %edx
	movl	%ebp, %ecx
	movb	$0, 3472(%esp)
	movl	$0, 3524(%esp)
	movl	$0, 8(%esp)
	movl	$30, 4(%esp)
	flds	.LC35
	fstpl	3476(%esp)
	movl	%eax, 380(%esp)
	leal	3472(%esp), %eax
	flds	.LC53
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3484(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%ebp, %ecx
	movb	$0, 3528(%esp)
	movl	$0, 3580(%esp)
	movl	$30, 4(%esp)
	flds	.LC35
	fstpl	3532(%esp)
	movl	%eax, 8(%esp)
	leal	3528(%esp), %eax
	flds	.LC54
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3540(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%ebp, %ecx
	movb	$0, 3584(%esp)
	movl	$0, 3636(%esp)
	movl	$30, 4(%esp)
	flds	.LC35
	fstpl	3588(%esp)
	movl	%eax, 8(%esp)
	leal	3584(%esp), %eax
	flds	80(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3596(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%ebp, %ecx
	movb	$0, 3640(%esp)
	movl	$0, 3692(%esp)
	movl	$30, 4(%esp)
	flds	.LC35
	fstpl	3644(%esp)
	movl	%eax, 8(%esp)
	leal	3640(%esp), %eax
	flds	.LC55
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3652(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	$252, (%esp)
	movl	%eax, %ebp
	call	_Znwj
	movl	276(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	280(%esp), %ebp
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
	jp	.L216
	fstp	%st(1)
.L57:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	284(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	280(%esp), %edx
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
	jp	.L217
	fstp	%st(1)
.L59:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	284(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	288(%esp), %ebp
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
	jp	.L218
	fstp	%st(1)
.L61:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	312(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	308(%esp), %edx
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
	jp	.L219
	fstp	%st(1)
.L63:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	312(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	276(%esp), %ebp
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
	jp	.L220
	fstp	%st(1)
.L65:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	128(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	288(%esp), %edx
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
	jp	.L221
	fstp	%st(1)
.L67:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	128(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	168(%esp), %ebp
	movl	%ecx, 4(%edx)
	movl	116(%esp), %ecx
	movl	$1, (%edx)
	movl	%eax, 48(%edx)
	movl	%eax, 52(%edx)
	fldl	4(%ebp)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	movl	%eax, 68(%edx)
	movl	128(%esp), %eax
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
	jp	.L222
	fstp	%st(1)
.L69:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	292(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	168(%esp), %edx
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
	jp	.L223
	fstp	%st(1)
.L71:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	292(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	172(%esp), %ebp
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
	jp	.L224
	fstp	%st(1)
.L73:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	176(%esp), %ecx
	movl	96(%esp), %edx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%edx, 248(%ebp)
	movl	172(%esp), %edx
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	movl	172(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	116(%esp), %edx
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
	jp	.L225
	fstp	%st(1)
.L75:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	176(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	296(%esp), %ebp
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
	jp	.L226
	fstp	%st(1)
.L77:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	180(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	296(%esp), %edx
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
	jp	.L227
	fstp	%st(1)
.L79:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	180(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	184(%esp), %ebp
	movl	%ecx, 4(%edx)
	movl	116(%esp), %ecx
	movl	$1, (%edx)
	movl	%eax, 48(%edx)
	movl	%eax, 52(%edx)
	fldl	4(%ebp)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	movl	%eax, 68(%edx)
	movl	180(%esp), %eax
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
	jp	.L228
	fstp	%st(1)
.L81:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	300(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	184(%esp), %edx
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
	jp	.L229
	fstp	%st(1)
.L83:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	316(%esp), %ecx
	movl	%eax, %edx
	movl	76(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	168(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	116(%esp), %eax
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
	jp	.L230
	fstp	%st(1)
.L85:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	316(%esp), %ecx
	movl	%eax, %ebp
	movl	76(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	172(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	116(%esp), %eax
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
	jp	.L231
	fstp	%st(1)
.L87:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	320(%esp), %ecx
	movl	%eax, %edx
	movl	76(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	176(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	116(%esp), %eax
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
	jp	.L232
	fstp	%st(1)
.L89:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	320(%esp), %ecx
	movl	%eax, %ebp
	movl	76(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	180(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	116(%esp), %eax
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
	jp	.L233
	fstp	%st(1)
.L91:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	128(%esp), %ecx
	movl	%eax, %edx
	movl	76(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	324(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	116(%esp), %eax
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
	jp	.L234
	fstp	%st(1)
.L93:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	332(%esp), %ecx
	movl	%eax, %ebp
	movl	76(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	324(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	116(%esp), %eax
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
	jp	.L235
	fstp	%st(1)
.L95:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	332(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	188(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	116(%esp), %eax
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
	jp	.L236
	fstp	%st(1)
.L97:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	192(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	188(%esp), %edx
	movl	%ecx, 8(%ebp)
	movl	120(%esp), %ecx
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	movl	192(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	116(%esp), %edx
	movl	$0, 36(%ebp)
	movl	%ecx, 32(%ebp)
	fldl	4(%eax)
	movl	188(%esp), %eax
	movl	%edx, 28(%ebp)
	fsubl	4(%eax)
	movl	192(%esp), %eax
	fldl	12(%eax)
	movl	188(%esp), %eax
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
	jp	.L237
	fstp	%st(1)
.L99:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	72(%ebx), %edx
	movl	192(%esp), %ecx
	movl	%ebp, 248(%eax)
	movl	336(%esp), %ebp
	movl	%ecx, 4(%eax)
	movl	116(%esp), %ecx
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	fldl	4(%ebp)
	movl	%ebp, 8(%eax)
	movl	192(%esp), %ebp
	movl	%ecx, 28(%eax)
	movl	336(%esp), %ecx
	movl	%edx, 48(%eax)
	movl	$0, 32(%eax)
	fsubl	4(%ebp)
	movl	$0, 52(%eax)
	fldl	12(%ecx)
	fsubl	12(%ebp)
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
	jp	.L238
	fstp	%st(1)
.L101:
	fstpl	12(%eax)
	movl	120(%esp), %ecx
	fld1
	fstpl	40(%eax)
	movl	%eax, 8(%esp)
	leal	3696(%esp), %eax
	flds	.LC26
	fstl	3700(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	flds	.LC16
	fstpl	3708(%esp)
	movb	$0, 3696(%esp)
	fstps	16(%esp)
	movl	$0, 3748(%esp)
	movl	$30, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	120(%esp), %ecx
	movb	$0, 3752(%esp)
	movl	$0, 3804(%esp)
	movl	$30, 4(%esp)
	flds	16(%esp)
	fstpl	3756(%esp)
	movl	%eax, 8(%esp)
	leal	3752(%esp), %eax
	flds	.LC56
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3764(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	$252, (%esp)
	movl	%eax, %ebp
	call	_Znwj
	movl	188(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	196(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	120(%esp), %eax
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
	jp	.L239
	fstp	%st(1)
.L103:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	200(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	196(%esp), %edx
	movl	%ecx, 8(%ebp)
	movl	160(%esp), %ecx
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	movl	200(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	120(%esp), %edx
	movl	$0, 36(%ebp)
	movl	%ecx, 32(%ebp)
	fldl	4(%eax)
	movl	196(%esp), %eax
	movl	%edx, 28(%ebp)
	fsubl	4(%eax)
	movl	200(%esp), %eax
	fldl	12(%eax)
	movl	196(%esp), %eax
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
	jp	.L240
	fstp	%st(1)
.L105:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	200(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	192(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	120(%esp), %eax
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
	jp	.L241
	fstp	%st(1)
.L107:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	328(%esp), %ecx
	movl	%eax, %ebp
	movl	76(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	336(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	116(%esp), %eax
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
	jp	.L242
	fstp	%st(1)
.L109:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	76(%ebx), %edx
	movl	328(%esp), %ecx
	movl	%ebp, 248(%eax)
	movl	184(%esp), %ebp
	movl	%edx, 48(%eax)
	movl	116(%esp), %edx
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
	jp	.L243
	fstp	%st(1)
.L111:
	fstpl	12(%eax)
	movl	72(%ebx), %edx
	movl	%esi, %ecx
	fld1
	fstpl	40(%eax)
	movl	%eax, 8(%esp)
	leal	3808(%esp), %eax
	flds	.LC57
	fstl	3812(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	flds	.LC58
	fstpl	3820(%esp)
	movb	$0, 3808(%esp)
	fstps	16(%esp)
	movl	$0, 3860(%esp)
	movl	$40, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%esi, %ecx
	movb	$0, 3864(%esp)
	movl	$0, 3916(%esp)
	movl	$40, 4(%esp)
	flds	16(%esp)
	fstpl	3868(%esp)
	movl	%eax, 8(%esp)
	leal	3864(%esp), %eax
	flds	.LC59
	fstl	3876(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	16(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%esi, %ecx
	movb	$0, 3920(%esp)
	movl	$0, 3972(%esp)
	movl	$40, 4(%esp)
	flds	.LC33
	fstpl	3924(%esp)
	movl	%eax, 8(%esp)
	leal	3920(%esp), %eax
	flds	16(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3932(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%esi, %ecx
	movb	$0, 3976(%esp)
	movl	$0, 4028(%esp)
	movl	$40, 4(%esp)
	flds	.LC25
	fstpl	3980(%esp)
	movl	%eax, 8(%esp)
	leal	3976(%esp), %eax
	flds	16(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	3988(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	$252, (%esp)
	movl	%eax, 96(%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	204(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	340(%esp), %edx
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
	jp	.L244
	fstp	%st(1)
.L113:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	208(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	340(%esp), %ebp
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
	jp	.L245
	fstp	%st(1)
.L115:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	204(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	300(%esp), %edx
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
	jp	.L246
	fstp	%st(1)
.L117:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	204(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	304(%esp), %ebp
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%edi, 28(%edx)
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
	jp	.L247
	fstp	%st(1)
.L119:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	308(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	208(%esp), %edx
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
	jp	.L248
	fstp	%st(1)
.L121:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	304(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	344(%esp), %ebp
	movl	$0, (%edx)
	movl	$1, 36(%edx)
	movl	%ecx, 4(%edx)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%edi, 28(%edx)
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
	jp	.L249
	fstp	%st(1)
.L123:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	348(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	344(%esp), %edx
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
	jp	.L250
	fstp	%st(1)
.L125:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	72(%ebx), %edx
	movl	352(%esp), %ecx
	movl	%ebp, 248(%eax)
	movl	208(%esp), %ebp
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%ecx, 4(%eax)
	fldl	4(%ebp)
	fsubl	4(%ecx)
	movl	%ebp, 8(%eax)
	movl	%edx, 48(%eax)
	movl	%edi, 28(%eax)
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
	jp	.L251
	fstp	%st(1)
.L127:
	fstpl	12(%eax)
	movl	%edi, %ecx
	fld1
	fstpl	40(%eax)
	movl	%eax, 8(%esp)
	leal	4032(%esp), %eax
	flds	.LC60
	fstpl	4036(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	flds	.LC61
	fstl	4044(%esp)
	movb	$0, 4032(%esp)
	fstps	80(%esp)
	movl	$0, 4084(%esp)
	movl	$30, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4088(%esp)
	movl	$0, 4140(%esp)
	movl	$30, 4(%esp)
	flds	.LC60
	fstpl	4092(%esp)
	movl	%eax, 8(%esp)
	leal	4088(%esp), %eax
	flds	.LC62
	fstl	4100(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	64(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4144(%esp)
	movl	$0, 4196(%esp)
	movl	$30, 4(%esp)
	flds	.LC60
	fstpl	4148(%esp)
	movl	%eax, 8(%esp)
	leal	4144(%esp), %eax
	flds	.LC63
	fstl	4156(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	48(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4200(%esp)
	movl	$0, 4252(%esp)
	movl	$30, 4(%esp)
	flds	.LC60
	fstpl	4204(%esp)
	movl	%eax, 8(%esp)
	leal	4200(%esp), %eax
	flds	.LC64
	fstl	4212(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	32(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4256(%esp)
	movl	$0, 4308(%esp)
	movl	$30, 4(%esp)
	flds	.LC60
	fstpl	4260(%esp)
	movl	%eax, 8(%esp)
	leal	4256(%esp), %eax
	flds	.LC65
	fstl	4268(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	16(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4312(%esp)
	movl	$0, 4364(%esp)
	movl	$30, 4(%esp)
	flds	.LC66
	fstpl	4316(%esp)
	movl	%eax, 8(%esp)
	leal	4312(%esp), %eax
	flds	.LC53
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	4324(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4368(%esp)
	movl	$0, 4420(%esp)
	movl	$30, 4(%esp)
	flds	.LC66
	fstpl	4372(%esp)
	movl	%eax, 8(%esp)
	leal	4368(%esp), %eax
	flds	80(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	4380(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4424(%esp)
	movl	$0, 4476(%esp)
	movl	$30, 4(%esp)
	flds	.LC66
	fstpl	4428(%esp)
	movl	%eax, 8(%esp)
	leal	4424(%esp), %eax
	flds	64(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	4436(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4480(%esp)
	movl	$0, 4532(%esp)
	movl	$30, 4(%esp)
	flds	.LC66
	fstpl	4484(%esp)
	movl	%eax, 8(%esp)
	leal	4480(%esp), %eax
	flds	48(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	4492(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4536(%esp)
	movl	$0, 4588(%esp)
	movl	$30, 4(%esp)
	flds	.LC66
	fstpl	4540(%esp)
	movl	%eax, 8(%esp)
	leal	4536(%esp), %eax
	flds	32(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	4548(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 4592(%esp)
	movl	$0, 4644(%esp)
	movl	$30, 4(%esp)
	flds	.LC66
	fstpl	4596(%esp)
	movl	%eax, 8(%esp)
	leal	4592(%esp), %eax
	flds	16(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	4604(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movb	$0, 4648(%esp)
	movl	$0, 4700(%esp)
	flds	.LC67
	movl	%eax, %ebp
	fstl	4652(%esp)
	leal	4648(%esp), %eax
	flds	.LC68
	fstl	4660(%esp)
	fxch	%st(1)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstps	32(%esp)
	fstps	48(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 4704(%esp)
	movl	$0, 4756(%esp)
	flds	.LC69
	fstl	4708(%esp)
	movl	%eax, 116(%esp)
	leal	4704(%esp), %eax
	flds	48(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	4716(%esp)
	movl	%eax, (%esp)
	fstps	16(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 4760(%esp)
	movl	$0, 4812(%esp)
	flds	16(%esp)
	movl	%eax, %ecx
	fstpl	4764(%esp)
	leal	4760(%esp), %eax
	flds	.LC70
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	4772(%esp)
	movl	%ecx, 112(%esp)
	fstps	16(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 4816(%esp)
	movl	$0, 4868(%esp)
	flds	32(%esp)
	movl	%eax, 120(%esp)
	leal	4816(%esp), %eax
	fstpl	4820(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	4828(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$252, (%esp)
	movl	%eax, 128(%esp)
	call	_Znwj
	movl	112(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%edx)
	movl	116(%esp), %ebp
	movl	$100, (%edx)
	movl	%eax, 48(%edx)
	movl	%eax, 52(%edx)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	movl	%eax, 68(%edx)
	movl	116(%esp), %eax
	movl	%ebp, 4(%edx)
	movl	152(%esp), %ebp
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
	jp	.L252
	fstp	%st(1)
.L129:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	%ecx, 112(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	112(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	120(%esp), %edx
	movl	$101, 0(%ebp)
	movl	$0, 36(%ebp)
	movl	%eax, 48(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	movl	120(%esp), %eax
	movl	%edx, 8(%ebp)
	movl	152(%esp), %edx
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
	jp	.L253
	fstp	%st(1)
.L131:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%ebp, 248(%edx)
	movl	128(%esp), %ebp
	movl	%ecx, 4(%edx)
	movl	152(%esp), %ecx
	movl	$102, (%edx)
	movl	%eax, 48(%edx)
	movl	%eax, 52(%edx)
	fldl	4(%ebp)
	movl	%eax, 56(%edx)
	movl	%eax, 60(%edx)
	movl	%eax, 64(%edx)
	movl	%eax, 68(%edx)
	movl	120(%esp), %eax
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
	jp	.L254
	fstp	%st(1)
.L133:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	116(%esp), %ecx
	movl	96(%esp), %edx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%edx, 248(%ebp)
	movl	128(%esp), %edx
	movl	$103, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	%eax, 52(%ebp)
	movl	%eax, 56(%ebp)
	movl	%eax, 60(%ebp)
	movl	%eax, 64(%ebp)
	movl	%eax, 68(%ebp)
	movl	128(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	152(%esp), %edx
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
	jp	.L255
	fstp	%st(1)
.L135:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	leal	4872(%esp), %eax
	flds	.LC71
	fstl	4876(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	.LC72
	fstl	4884(%esp)
	fxch	%st(1)
	movb	$0, 4872(%esp)
	fstps	32(%esp)
	fstps	48(%esp)
	movl	$0, 4924(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 4928(%esp)
	movl	$0, 4980(%esp)
	flds	.LC73
	fstl	4932(%esp)
	movl	%eax, 116(%esp)
	leal	4928(%esp), %eax
	flds	48(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstpl	4940(%esp)
	movl	%eax, (%esp)
	fstps	16(%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 4984(%esp)
	movl	$0, 5036(%esp)
	flds	16(%esp)
	movl	%eax, %edx
	fstpl	4988(%esp)
	leal	4984(%esp), %eax
	flds	.LC74
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	fstl	4996(%esp)
	movl	%edx, 96(%esp)
	fstps	16(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movb	$0, 5040(%esp)
	movl	$0, 5092(%esp)
	movl	%eax, %ecx
	flds	32(%esp)
	leal	5040(%esp), %eax
	fstpl	5044(%esp)
	movl	%eax, 4(%esp)
	movl	136(%ebx), %eax
	flds	16(%esp)
	fstpl	5052(%esp)
	movl	%ecx, 112(%esp)
	movl	%eax, (%esp)
	call	_ZN9VertexSet6insertERK8Vector2d
	movl	$252, (%esp)
	movl	%eax, 120(%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	112(%esp), %ecx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	fldl	4(%edx)
	movl	%ebp, 248(%esi)
	movl	116(%esp), %ebp
	movl	$100, (%esi)
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	116(%esp), %eax
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
	jp	.L256
	fstp	%st(1)
.L137:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	%edx, 96(%esp)
	movl	%ecx, 112(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	112(%esp), %ecx
	movl	96(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	72(%ebx), %eax
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
	jp	.L257
	fstp	%st(1)
.L139:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	%ecx, 112(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	120(%esp), %edx
	movl	112(%esp), %ecx
	fldl	4(%edx)
	movl	%eax, %esi
	fsubl	4(%ecx)
	movl	72(%ebx), %eax
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
	jp	.L258
	fstp	%st(1)
.L141:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	116(%esp), %ecx
	movl	120(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	72(%ebx), %eax
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
	jp	.L259
	fstp	%st(1)
.L143:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	212(%esp), %esi
	movl	348(%esp), %ecx
	fldl	4(%esi)
	movl	%eax, %edx
	fsubl	4(%ecx)
	movl	72(%ebx), %eax
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%ebp, 248(%edx)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	%ecx, 4(%edx)
	movl	%esi, 8(%edx)
	movl	%eax, 48(%edx)
	movl	%edi, 28(%edx)
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
	jp	.L260
	fstp	%st(1)
.L145:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	216(%esp), %ecx
	movl	140(%esp), %ebp
	movl	%eax, %esi
	movl	72(%ebx), %eax
	movl	%edx, 248(%esi)
	movl	212(%esp), %edx
	fldl	4(%ecx)
	movl	$1, (%esi)
	movl	$0, 36(%esi)
	fsubl	4(%edx)
	movl	%edx, 4(%esi)
	movl	%ecx, 8(%esi)
	movl	%eax, 48(%esi)
	movl	%edi, 28(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%ebp, 32(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	fld	%st(0)
	fdiv	%st(2), %st
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
	jp	.L261
	fstp	%st(1)
.L147:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	356(%esp), %ecx
	movl	216(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	72(%ebx), %eax
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
	jp	.L262
	fstp	%st(1)
.L149:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	352(%esp), %ecx
	movl	356(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	72(%ebx), %eax
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
	jp	.L263
	fstp	%st(1)
.L151:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	220(%esp), %ecx
	movl	212(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	movl	%esi, 248(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%ebp)
	movl	140(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	$0, 32(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%ebp)
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
	jp	.L264
	fstp	%st(1)
.L153:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	224(%esp), %ecx
	movl	220(%esp), %edx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%esi)
	movl	140(%esp), %ebp
	movl	%edx, 4(%esi)
	movl	136(%esp), %edx
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	220(%esp), %eax
	movl	$1, (%esi)
	movl	$0, 36(%esi)
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
	jp	.L265
	fstp	%st(1)
.L155:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	224(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%esi, 248(%edx)
	movl	216(%esp), %esi
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	140(%esp), %eax
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%esi, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%esi)
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
	jp	.L266
	fstp	%st(1)
.L157:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	228(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	220(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	136(%esp), %eax
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
	jp	.L267
	fstp	%st(1)
.L159:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	232(%esp), %ecx
	movl	228(%esp), %edx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%esi)
	movl	136(%esp), %ebp
	movl	%edx, 4(%esi)
	movl	144(%esp), %edx
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	228(%esp), %eax
	movl	$1, (%esi)
	movl	$0, 36(%esi)
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
	jp	.L268
	fstp	%st(1)
.L161:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	232(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%esi, 248(%edx)
	movl	224(%esp), %esi
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	136(%esp), %eax
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%esi, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%esi)
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
	jp	.L269
	fstp	%st(1)
.L163:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	236(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	228(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	144(%esp), %eax
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
	jp	.L270
	fstp	%st(1)
.L165:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	240(%esp), %ecx
	movl	236(%esp), %edx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%esi)
	movl	144(%esp), %ebp
	movl	%edx, 4(%esi)
	movl	148(%esp), %edx
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	236(%esp), %eax
	movl	$1, (%esi)
	movl	$0, 36(%esi)
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
	jp	.L271
	fstp	%st(1)
.L167:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	240(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%esi, 248(%edx)
	movl	232(%esp), %esi
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	144(%esp), %eax
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%esi, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%esi)
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
	jp	.L272
	fstp	%st(1)
.L169:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	244(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	236(%esp), %edx
	fldl	4(%ecx)
	movl	$1, 0(%ebp)
	movl	%eax, 48(%ebp)
	movl	148(%esp), %eax
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
	jp	.L273
	fstp	%st(1)
.L171:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	248(%esp), %ecx
	movl	244(%esp), %edx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%esi)
	movl	148(%esp), %ebp
	movl	%edx, 4(%esi)
	movl	124(%esp), %edx
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	244(%esp), %eax
	movl	$1, (%esi)
	movl	$0, 36(%esi)
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
	jp	.L274
	fstp	%st(1)
.L173:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	248(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%esi, 248(%edx)
	movl	240(%esp), %esi
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	148(%esp), %eax
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%esi, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%esi)
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
	jp	.L275
	fstp	%st(1)
.L175:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	360(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	244(%esp), %edx
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
	jp	.L276
	fstp	%st(1)
.L177:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	364(%esp), %ecx
	movl	360(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%ebp, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%esi)
	movl	124(%esp), %eax
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
	jp	.L277
	fstp	%st(1)
.L179:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	252(%esp), %ecx
	movl	364(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	movl	%esi, 248(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%ebp)
	movl	124(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	$0, 32(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%ebp)
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
	jp	.L278
	fstp	%st(1)
.L181:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	256(%esp), %ecx
	movl	252(%esp), %edx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%esi)
	movl	124(%esp), %ebp
	movl	%edx, 4(%esi)
	movl	132(%esp), %edx
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	252(%esp), %eax
	movl	$1, (%esi)
	movl	$0, 36(%esi)
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
	jp	.L279
	fstp	%st(1)
.L183:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	256(%esp), %ecx
	movl	%eax, %edx
	movl	72(%ebx), %eax
	movl	%esi, 248(%edx)
	movl	368(%esp), %esi
	movl	$1, (%edx)
	movl	$1, 36(%edx)
	movl	%eax, 48(%edx)
	movl	124(%esp), %eax
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%ecx, 4(%edx)
	movl	%esi, 8(%edx)
	movl	%eax, 28(%edx)
	movl	$0, 32(%edx)
	fldl	12(%esi)
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
	jp	.L280
	fstp	%st(1)
.L185:
	fstpl	12(%edx)
	fld1
	fstpl	40(%edx)
	movl	%edx, 96(%esp)
	movl	$252, (%esp)
	call	_Znwj
	movl	96(%esp), %edx
	movl	260(%esp), %ecx
	movl	%eax, %ebp
	movl	72(%ebx), %eax
	movl	%edx, 248(%ebp)
	movl	368(%esp), %edx
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
	jp	.L281
	fstp	%st(1)
.L187:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	264(%esp), %ecx
	movl	260(%esp), %edx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%esi)
	movl	124(%esp), %ebp
	movl	%edx, 4(%esi)
	movl	164(%esp), %edx
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	260(%esp), %eax
	movl	$1, (%esi)
	movl	$0, 36(%esi)
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
	jp	.L282
	fstp	%st(1)
.L189:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	372(%esp), %ecx
	movl	264(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	movl	%esi, 248(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%ebp)
	movl	124(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	$0, 32(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%ebp)
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
	jp	.L283
	fstp	%st(1)
.L191:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	248(%esp), %esi
	movl	372(%esp), %ecx
	movl	72(%ebx), %edx
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%ebp, 248(%eax)
	movl	124(%esp), %ebp
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%ecx, 4(%eax)
	fldl	12(%esi)
	fsubl	12(%ecx)
	movl	%esi, 8(%eax)
	movl	%edx, 48(%eax)
	movl	%ebp, 28(%eax)
	movl	$0, 32(%eax)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	$0, 52(%eax)
	fstpl	20(%eax)
	fxch	%st(1)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld	%st(0)
	fsqrt
	fucomi	%st(0), %st
	jp	.L284
	fstp	%st(1)
.L193:
	fstpl	12(%eax)
	movl	124(%esp), %ecx
	fld1
	fstpl	40(%eax)
	movl	%eax, 8(%esp)
	leal	5096(%esp), %eax
	flds	.LC75
	fstl	5100(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	flds	.LC41
	fstl	5108(%esp)
	fxch	%st(1)
	movb	$0, 5096(%esp)
	fstps	16(%esp)
	fstps	48(%esp)
	movl	$0, 5148(%esp)
	movl	$50, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	124(%esp), %ecx
	movb	$0, 5152(%esp)
	movl	$0, 5204(%esp)
	movl	$50, 4(%esp)
	flds	.LC46
	fstl	5156(%esp)
	movl	%eax, 8(%esp)
	leal	5152(%esp), %eax
	flds	48(%esp)
	fstpl	5164(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	32(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	124(%esp), %ecx
	movb	$0, 5208(%esp)
	movl	$0, 5260(%esp)
	movl	$50, 4(%esp)
	flds	16(%esp)
	fstpl	5212(%esp)
	movl	%eax, 8(%esp)
	leal	5208(%esp), %eax
	flds	.LC35
	fstl	5220(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	16(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	124(%esp), %ecx
	movb	$0, 5264(%esp)
	movl	$0, 5316(%esp)
	movl	$50, 4(%esp)
	flds	32(%esp)
	fstpl	5268(%esp)
	movl	%eax, 8(%esp)
	leal	5264(%esp), %eax
	flds	16(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	5276(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	$252, (%esp)
	movl	%eax, %esi
	call	_Znwj
	movl	268(%esp), %ecx
	movl	252(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	movl	%esi, 248(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%ebp)
	movl	132(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	$0, 32(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%ebp)
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
	jp	.L285
	fstp	%st(1)
.L195:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	272(%esp), %ecx
	movl	268(%esp), %edx
	movl	%eax, %esi
	movl	72(%ebx), %eax
	fldl	4(%ecx)
	movl	%ebp, 248(%esi)
	movl	132(%esp), %ebp
	movl	%edx, 4(%esi)
	movl	160(%esp), %edx
	movl	%eax, 48(%esi)
	movl	%eax, 52(%esi)
	movl	%eax, 56(%esi)
	movl	%eax, 60(%esi)
	movl	%eax, 64(%esi)
	movl	%eax, 68(%esi)
	movl	268(%esp), %eax
	movl	$1, (%esi)
	movl	$0, 36(%esi)
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
	jp	.L286
	fstp	%st(1)
.L197:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	256(%esp), %ecx
	movl	272(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %ebp
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, 0(%ebp)
	movl	$1, 36(%ebp)
	movl	%esi, 248(%ebp)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%ebp)
	movl	132(%esp), %eax
	movl	%edx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	$0, 32(%ebp)
	fld	%st(0)
	fdiv	%st(2), %st
	movl	%eax, 28(%ebp)
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
	jp	.L287
	fstp	%st(1)
.L199:
	fstpl	12(%ebp)
	fld1
	fstpl	40(%ebp)
	movl	$252, (%esp)
	call	_Znwj
	movl	272(%esp), %ecx
	movl	196(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%ebp, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%esi)
	movl	160(%esp), %eax
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
	jp	.L288
	fstp	%st(1)
.L201:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	72(%ebx), %edx
	movl	268(%esp), %ecx
	movl	160(%esp), %ebp
	movl	%esi, 248(%eax)
	movl	200(%esp), %esi
	movl	$1, (%eax)
	movl	$1, 36(%eax)
	movl	%ecx, 4(%eax)
	fldl	4(%esi)
	fsubl	4(%ecx)
	movl	%esi, 8(%eax)
	movl	%edx, 48(%eax)
	movl	%ebp, 28(%eax)
	movl	$0, 32(%eax)
	fldl	12(%esi)
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
	jp	.L289
	fstp	%st(1)
.L203:
	fstpl	12(%eax)
	movl	%edi, %ecx
	fld1
	fstpl	40(%eax)
	movl	%eax, 8(%esp)
	leal	5320(%esp), %eax
	flds	.LC26
	fstl	5324(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	flds	.LC35
	fstpl	5332(%esp)
	movb	$0, 5320(%esp)
	fstps	16(%esp)
	movl	$0, 5372(%esp)
	movl	$30, 4(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	%edi, %ecx
	movb	$0, 5376(%esp)
	movl	$0, 5428(%esp)
	movl	$30, 4(%esp)
	flds	16(%esp)
	fstpl	5380(%esp)
	movl	%eax, 8(%esp)
	leal	5376(%esp), %eax
	flds	.LC46
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	5388(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	136(%esp), %ecx
	movb	$0, 5432(%esp)
	movl	$0, 5484(%esp)
	movl	$30, 4(%esp)
	flds	.LC76
	fstl	5436(%esp)
	movl	%eax, 8(%esp)
	leal	5432(%esp), %eax
	flds	.LC41
	fstpl	5444(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstps	16(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	136(%esp), %ecx
	movb	$0, 5488(%esp)
	movl	$0, 5540(%esp)
	movl	$30, 4(%esp)
	flds	16(%esp)
	fstpl	5492(%esp)
	movl	%eax, 8(%esp)
	leal	5488(%esp), %eax
	flds	.LC77
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	5500(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	72(%ebx), %edx
	movl	136(%esp), %ecx
	movb	$0, 5544(%esp)
	movl	$0, 5596(%esp)
	movl	$30, 4(%esp)
	flds	16(%esp)
	fstpl	5548(%esp)
	movl	%eax, 8(%esp)
	leal	5544(%esp), %eax
	flds	.LC78
	movl	%eax, (%esp)
	movl	%ebx, %eax
	fstpl	5556(%esp)
	call	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall.constprop.8
	movl	$252, (%esp)
	movl	%eax, %esi
	call	_Znwj
	movl	376(%esp), %ecx
	movl	260(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %edi
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, (%edi)
	movl	$1, 36(%edi)
	movl	%esi, 248(%edi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%edi)
	movl	164(%esp), %eax
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
	jp	.L290
	fstp	%st(1)
.L205:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	$252, (%esp)
	call	_Znwj
	movl	380(%esp), %ecx
	movl	376(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %esi
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, (%esi)
	movl	$1, 36(%esi)
	movl	%edi, 248(%esi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%esi)
	movl	164(%esp), %eax
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
	jp	.L291
	fstp	%st(1)
.L207:
	fstpl	12(%esi)
	fld1
	fstpl	40(%esi)
	movl	$252, (%esp)
	call	_Znwj
	movl	264(%esp), %ecx
	movl	380(%esp), %edx
	fldl	4(%ecx)
	movl	%eax, %edi
	fsubl	4(%edx)
	movl	72(%ebx), %eax
	movl	$1, (%edi)
	movl	$1, 36(%edi)
	movl	%esi, 248(%edi)
	fldl	12(%ecx)
	fsubl	12(%edx)
	movl	%eax, 48(%edi)
	movl	164(%esp), %eax
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
	jp	.L292
	fstp	%st(1)
.L209:
	fstpl	12(%edi)
	fld1
	fstpl	40(%edi)
	movl	$24, (%esp)
	call	_Znwj
.LEHE17:
	movl	%eax, %esi
	movl	136(%ebx), %eax
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
.LEHB18:
	call	_ZN7BspTreeC1EP4WallP9VertexSet
.LEHE18:
	movl	%esi, 144(%ebx)
	addl	$5612, %esp
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
.L216:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L57
.L292:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L209
.L291:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L207
.L290:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L205
.L289:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 112(%esp)
	call	sqrt
	movl	72(%ebx), %edx
	movl	112(%esp), %eax
	jmp	.L203
.L288:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L201
.L287:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L199
.L286:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L197
.L285:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L195
.L284:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 112(%esp)
	call	sqrt
	movl	72(%ebx), %edx
	movl	112(%esp), %eax
	jmp	.L193
.L283:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L191
.L282:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L189
.L281:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L187
.L280:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L185
.L279:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L183
.L278:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L181
.L277:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L179
.L276:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L177
.L275:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L175
.L274:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L173
.L273:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L171
.L272:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L169
.L271:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L167
.L270:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L165
.L269:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L163
.L268:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L161
.L267:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L159
.L266:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L157
.L265:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L155
.L264:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L153
.L263:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L151
.L262:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L149
.L261:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L147
.L260:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L145
.L259:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L143
.L258:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L141
.L257:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	112(%esp), %ecx
	jmp	.L139
.L256:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	112(%esp), %ecx
	movl	96(%esp), %edx
	jmp	.L137
.L255:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L135
.L254:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L133
.L253:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L131
.L252:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	112(%esp), %ecx
	movl	96(%esp), %edx
	jmp	.L129
.L251:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 112(%esp)
	call	sqrt
	movl	72(%ebx), %edx
	movl	112(%esp), %eax
	jmp	.L127
.L250:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L125
.L249:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L123
.L248:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L121
.L247:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L119
.L246:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L117
.L245:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L115
.L244:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L113
.L243:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 112(%esp)
	call	sqrt
	movl	112(%esp), %eax
	jmp	.L111
.L242:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L109
.L241:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L107
.L240:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L105
.L239:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L103
.L238:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 112(%esp)
	call	sqrt
	movl	72(%ebx), %edx
	movl	112(%esp), %eax
	jmp	.L101
.L237:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L99
.L236:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L97
.L235:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L95
.L234:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L93
.L233:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L91
.L232:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L89
.L231:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L87
.L230:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L85
.L229:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L83
.L228:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L81
.L227:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L79
.L226:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L77
.L225:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L75
.L224:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L73
.L223:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L71
.L222:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L69
.L221:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L67
.L220:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L65
.L219:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L63
.L218:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%edx, 96(%esp)
	call	sqrt
	movl	96(%esp), %edx
	jmp	.L61
.L217:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L59
.L213:
.L215:
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB19:
	call	_Unwind_Resume
.LEHE19:
.L214:
	jmp	.L215
	.cfi_endproc
.LFE1331:
	.section	.gcc_except_table
.LLSDA1331:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1331-.LLSDACSB1331
.LLSDACSB1331:
	.uleb128 .LEHB15-.LFB1331
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB1331
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L213-.LFB1331
	.uleb128 0
	.uleb128 .LEHB17-.LFB1331
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB1331
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L214-.LFB1331
	.uleb128 0
	.uleb128 .LEHB19-.LFB1331
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE1331:
	.text
	.size	_ZN7XEngine16setup_level_dataEv, .-_ZN7XEngine16setup_level_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine10setup_dataEv
	.type	_ZN7XEngine10setup_dataEv, @function
_ZN7XEngine10setup_dataEv:
.LFB1327:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	28(%ebx), %eax
	movl	$20, 36(%ebx)
	movl	$20, 44(%ebx)
	leal	-21(%eax), %edx
	movl	%edx, 40(%ebx)
	movl	32(%ebx), %edx
	leal	-21(%edx), %ecx
	movl	%ecx, 48(%ebx)
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 52(%ebx)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fdivl	.LC79
	fnstcw	26(%esp)
	movzwl	26(%esp), %eax
	movb	$12, %ah
	movw	%ax, 24(%esp)
	fldcw	24(%esp)
	fistpl	60(%ebx)
	fldcw	26(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine14setup_texturesEv
	movl	%ebx, (%esp)
	call	_ZN7XEngine17setup_screen_dataEv
	movl	$68, (%esp)
	call	_Znwj
	flds	.LC10
	movl	%eax, 108(%ebx)
	fstl	4(%eax)
	movl	$32, 56(%eax)
	fstpl	12(%eax)
	fldl	.LC11
	fstpl	60(%eax)
	movl	%ebx, 48(%esp)
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	jmp	_ZN7XEngine16setup_level_dataEv
	.cfi_endproc
.LFE1327:
	.size	_ZN7XEngine10setup_dataEv, .-_ZN7XEngine10setup_dataEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngineC2EiiP14XScreenRgbInfo
	.type	_ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1324:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1324
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
	movb	$0, 7(%ebx)
	movb	$0, 6(%ebx)
	movb	$0, 4(%ebx)
	movb	$0, 5(%ebx)
	movl	$60, 64(%ebx)
	movl	%edi, 8(%ebx)
	movl	%edx, 36(%esp)
	movl	$20, (%esp)
.LEHB20:
	call	_Znwj
.LEHE20:
	movl	36(%esp), %edx
	movl	%eax, %esi
	movsbl	4(%edi), %eax
	movl	%eax, 16(%esp)
	movl	(%edi), %eax
	movl	%edx, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 12(%esp)
.LEHB21:
	call	_ZN11XRasterizerC1EiiPhc
.LEHE21:
	movl	12(%esi), %eax
	movl	%esi, 12(%ebx)
	movl	%eax, 20(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 28(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 32(%ebx)
	movl	$40, (%esp)
.LEHB22:
	call	_Znwj
	movl	%edi, 4(%eax)
	movl	$0, 8(%eax)
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	movl	%eax, 16(%ebx)
	movl	28(%ebx), %eax
	movl	$20, 36(%ebx)
	movl	$20, 44(%ebx)
	leal	-21(%eax), %edx
	movl	%edx, 40(%ebx)
	movl	32(%ebx), %edx
	leal	-21(%edx), %ecx
	movl	%ecx, 48(%ebx)
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 52(%ebx)
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 44(%esp)
	fildl	44(%esp)
	fdivl	.LC79
	fnstcw	42(%esp)
	movzwl	42(%esp), %eax
	movb	$12, %ah
	movw	%ax, 40(%esp)
	fldcw	40(%esp)
	fistpl	60(%ebx)
	fldcw	42(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine14setup_texturesEv
	movl	%ebx, (%esp)
	call	_ZN7XEngine17setup_screen_dataEv
	movl	$68, (%esp)
	call	_Znwj
	flds	.LC10
	movl	%eax, 108(%ebx)
	fstl	4(%eax)
	movl	$32, 56(%eax)
	fstpl	12(%eax)
	fldl	.LC11
	fstpl	60(%eax)
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
.L296:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE22:
	.cfi_endproc
.LFE1324:
	.section	.gcc_except_table
.LLSDA1324:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1324-.LLSDACSB1324
.LLSDACSB1324:
	.uleb128 .LEHB20-.LFB1324
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB1324
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L296-.LFB1324
	.uleb128 0
	.uleb128 .LEHB22-.LFB1324
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE1324:
	.text
	.size	_ZN7XEngineC2EiiP14XScreenRgbInfo, .-_ZN7XEngineC2EiiP14XScreenRgbInfo
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	.type	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_, @function
_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_:
.LFB1340:
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
	je	.L298
	fldl	36(%esi)
.L299:
	movl	8(%edx), %ebx
	fstl	56(%esp)
	cmpb	$0, (%ebx)
	je	.L302
	fldl	36(%ebx)
.L303:
	fstl	64(%esp)
	fxch	%st(1)
	fucomi	%st(1), %st
	fld	%st(1)
	fcmovnbe	%st(1), %st
	xorl	%eax, %eax
	flds	.LC80
	fucomip	%st(1), %st
	fstp	%st(0)
	jae	.L363
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
	jbe	.L309
	fxch	%st(3)
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(1)
	movl	$1, %esi
	xorl	%ebx, %ebx
.L309:
	fldz
	fucomi	%st(3), %st
	jbe	.L357
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
	jmp	.L313
	.p2align 4,,7
	.p2align 3
.L369:
	fxch	%st(3)
	fxch	%st(1)
.L313:
	movl	60(%ecx), %edi
	movl	%edi, 32(%esp)
	movl	28(%ecx), %eax
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
	fildl	36(%ecx)
	jbe	.L358
	fucomip	%st(1), %st
	jae	.L364
	fildl	40(%ecx)
	fxch	%st(2)
	fucomi	%st(2), %st
	fstp	%st(2)
	jae	.L365
	movl	$1, 28(%esp)
	movl	$0, 24(%esp)
	jmp	.L317
	.p2align 4,,7
	.p2align 3
.L358:
	fucomip	%st(2), %st
	jae	.L366
	fildl	40(%ecx)
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jae	.L367
	movl	$0, 28(%esp)
	movl	$1, 24(%esp)
.L317:
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
	jp	.L318
	jne	.L318
	fstp	%st(0)
	fld1
.L318:
	movl	128(%ecx), %ebp
	imull	%edi, %ebp
	movl	%ebp, 32(%esp)
	fildl	32(%esp)
	fildl	52(%ecx)
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
	jp	.L368
	fcmove	%st(1), %st
	fstp	%st(1)
	fxch	%st(1)
	jmp	.L320
	.p2align 4,,7
	.p2align 3
.L368:
	fstp	%st(1)
	fxch	%st(1)
.L320:
	fdiv	%st(5), %st
	movl	36(%edx), %ecx
	testl	%ecx, %ecx
	faddl	8(%esp)
	fstl	120(%esp,%esi,8)
	fsub	%st, %st(1)
	fld1
	faddp	%st, %st(2)
	fxch	%st(1)
	fstl	104(%esp,%esi,8)
	je	.L322
	fldl	104(%esp,%ebx,8)
	fldl	120(%esp,%ebx,8)
	fxch	%st(5)
.L323:
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
	jmp	.L308
	.p2align 4,,7
	.p2align 3
.L363:
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L308
	.p2align 4,,7
	.p2align 3
.L364:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L308
	.p2align 4,,7
	.p2align 3
.L365:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L308
	.p2align 4,,7
	.p2align 3
.L366:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	jmp	.L308
	.p2align 4,,7
	.p2align 3
.L367:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L308:
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
.L302:
	.cfi_restore_state
	movl	108(%ecx), %eax
	fldl	4(%ebx)
	fsubl	4(%eax)
	fstl	20(%ebx)
	fldl	12(%ebx)
	fsubl	12(%eax)
	fstl	28(%ebx)
	fldl	112(%ecx)
	fldl	120(%ecx)
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
	jnp	.L359
	fxch	%st(4)
	jmp	.L304
	.p2align 4,,7
	.p2align 3
.L371:
	fxch	%st(4)
.L304:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	140(%ecx), %eax
	movb	$1, (%ebx)
	movl	%eax, 52(%ebx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%ebx)
	movl	%ebx, 140(%ecx)
	jmp	.L303
	.p2align 4,,7
	.p2align 3
.L298:
	movl	108(%ecx), %eax
	fldl	4(%esi)
	fsubl	4(%eax)
	fstl	20(%esi)
	fldl	12(%esi)
	fsubl	12(%eax)
	fstl	28(%esi)
	fldl	112(%ecx)
	fldl	120(%ecx)
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
	jnp	.L360
	fxch	%st(4)
	jmp	.L300
	.p2align 4,,7
	.p2align 3
.L370:
	fxch	%st(4)
.L300:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	140(%ecx), %eax
	movb	$1, (%esi)
	movl	%eax, 52(%esi)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%esi)
	movl	%esi, 140(%ecx)
	jmp	.L299
	.p2align 4,,7
	.p2align 3
.L357:
	fucomip	%st(2), %st
	jbe	.L369
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
	jmp	.L313
	.p2align 4,,7
	.p2align 3
.L360:
	jne	.L370
	fstp	%st(0)
	fld1
	fstl	36(%esi)
	fxch	%st(4)
	jmp	.L300
	.p2align 4,,7
	.p2align 3
.L359:
	jne	.L371
	fstp	%st(0)
	fld1
	fstl	36(%ebx)
	fxch	%st(4)
	jmp	.L304
	.p2align 4,,7
	.p2align 3
.L322:
	fstp	%st(2)
	fxch	%st(1)
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	220(%esp), %eax
	movl	28(%edx,%eax,4), %ecx
	movl	4(%ecx), %eax
	cmpl	%eax, 8(%esp)
	jge	.L324
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
	jp	.L325
	jne	.L325
	fld1
	fstpl	72(%esp,%ebx,8)
.L325:
	fdiv	%st(5), %st
	fstl	72(%esp,%esi,8)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L361
.L327:
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
.L329:
	movl	20(%esp), %ebp
	addl	8(%esp), %ebp
	addl	12(%ecx), %eax
	cmpl	%eax, %ebp
	jle	.L330
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
	jp	.L331
	jne	.L331
	fld1
	fstpl	88(%esp,%ebx,8)
.L331:
	fdiv	%st(5), %st
	fstl	88(%esp,%esi,8)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jnp	.L362
.L333:
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
.L335:
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
	jmp	.L323
	.p2align 4,,7
	.p2align 3
.L330:
	fldl	104(%esp,%ebx,8)
	fstl	136(%esp,%ebx,8)
	fxch	%st(1)
	fstl	136(%esp,%esi,8)
	fld	%st(0)
	fxch	%st(2)
	fxch	%st(1)
	jmp	.L335
	.p2align 4,,7
	.p2align 3
.L324:
	fldl	120(%esp,%ebx,8)
	fstl	152(%esp,%ebx,8)
	fxch	%st(2)
	fstpl	152(%esp,%esi,8)
	jmp	.L329
	.p2align 4,,7
	.p2align 3
.L362:
	jne	.L333
	fstp	%st(0)
	fld1
	fstl	88(%esp,%esi,8)
	jmp	.L333
	.p2align 4,,7
	.p2align 3
.L361:
	jne	.L327
	fstp	%st(0)
	fld1
	fstl	72(%esp,%esi,8)
	jmp	.L327
	.cfi_endproc
.LFE1340:
	.size	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_, .-_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13visible_bwallER4Wall
	.type	_ZN7XEngine13visible_bwallER4Wall, @function
_ZN7XEngine13visible_bwallER4Wall:
.LFB1341:
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
	je	.L373
	fldl	36(%ebx)
.L374:
	movl	8(%eax), %ecx
	fstl	32(%esp)
	cmpb	$0, (%ecx)
	je	.L377
	fldl	36(%ecx)
.L378:
	fstl	40(%esp)
	fxch	%st(1)
	fucomi	%st(1), %st
	fld	%st(1)
	fcmovnbe	%st(1), %st
	xorl	%eax, %eax
	flds	.LC80
	fucomip	%st(1), %st
	fstp	%st(0)
	jae	.L406
	fldl	44(%ebx)
	xorl	%esi, %esi
	fstl	16(%esp)
	fldl	44(%ecx)
	movl	$1, %ecx
	fstl	24(%esp)
	fucomi	%st(1), %st
	jbe	.L384
	fxch	%st(1)
	fxch	%st(2)
	fxch	%st(3)
	fxch	%st(2)
	movl	$1, %esi
	xorl	%ecx, %ecx
.L384:
	fldz
	fucomi	%st(4), %st
	jbe	.L403
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
	jmp	.L388
	.p2align 4,,7
	.p2align 3
.L407:
	fxch	%st(3)
	fxch	%st(2)
.L388:
	fildl	60(%edx)
	fmul	%st, %st(4)
	fxch	%st(4)
	movl	28(%edx), %eax
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
	jle	.L390
	cmpl	36(%edx), %ebx
	jle	.L383
	cmpl	40(%edx), %ecx
	setl	%al
	jmp	.L383
	.p2align 4,,7
	.p2align 3
.L406:
	fstp	%st(0)
	fstp	%st(0)
.L383:
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
.L377:
	.cfi_restore_state
	movl	108(%edx), %eax
	fldl	4(%ecx)
	fsubl	4(%eax)
	fstl	20(%ecx)
	fldl	12(%ecx)
	fsubl	12(%eax)
	fstl	28(%ecx)
	fldl	112(%edx)
	fldl	120(%edx)
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
	jnp	.L404
	fxch	%st(4)
	jmp	.L379
	.p2align 4,,7
	.p2align 3
.L409:
	fxch	%st(4)
.L379:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	140(%edx), %eax
	movb	$1, (%ecx)
	movl	%eax, 52(%ecx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%ecx)
	movl	%ecx, 140(%edx)
	jmp	.L378
	.p2align 4,,7
	.p2align 3
.L373:
	movl	108(%edx), %ecx
	fldl	4(%ebx)
	fsubl	4(%ecx)
	fstl	20(%ebx)
	fldl	12(%ebx)
	fsubl	12(%ecx)
	fstl	28(%ebx)
	fldl	112(%edx)
	fldl	120(%edx)
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
	jnp	.L405
	fxch	%st(4)
	jmp	.L375
	.p2align 4,,7
	.p2align 3
.L408:
	fxch	%st(4)
.L375:
	fmulp	%st, %st(1)
	fxch	%st(2)
	movl	140(%edx), %ecx
	movb	$1, (%ebx)
	movl	%ecx, 52(%ebx)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	44(%ebx)
	movl	%ebx, 140(%edx)
	jmp	.L374
	.p2align 4,,7
	.p2align 3
.L403:
	fucomip	%st(3), %st
	jbe	.L407
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
	jmp	.L388
	.p2align 4,,7
	.p2align 3
.L405:
	jne	.L408
	fstp	%st(0)
	fld1
	fstl	36(%ebx)
	fxch	%st(4)
	jmp	.L375
	.p2align 4,,7
	.p2align 3
.L404:
	jne	.L409
	fstp	%st(0)
	fld1
	fstl	36(%ecx)
	fxch	%st(4)
	jmp	.L379
	.p2align 4,,7
	.p2align 3
.L390:
	cmpl	36(%edx), %ecx
	jle	.L383
	cmpl	40(%edx), %ebx
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
.LFE1341:
	.size	_ZN7XEngine13visible_bwallER4Wall, .-_ZN7XEngine13visible_bwallER4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE
	.type	_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE, @function
_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE:
.LFB1339:
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
	je	.L415
.L411:
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
.L415:
	.cfi_restore_state
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L411
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L411
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
.LFE1339:
	.size	_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE, .-_ZN7XEngine13brect_visibleEPN7BspTree7BspNodeE
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18process_solid_wallERK4Wall
	.type	_ZN7XEngine18process_solid_wallERK4Wall, @function
_ZN7XEngine18process_solid_wallERK4Wall:
.LFB1342:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1342
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
	movl	36(%esi), %edi
	fdiv	%st(1), %st
	cmpl	%edi, %ebx
	fstpl	88(%esp)
	jge	.L417
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
.L418:
	movl	40(%esi), %edi
	cmpl	%edi, 84(%esp)
	jle	.L461
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
	jmp	.L419
	.p2align 4,,7
	.p2align 3
.L461:
	fstp	%st(0)
.L419:
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
	movl	28(%esi), %edx
	movl	60(%esi), %ecx
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
	movl	184(%esi), %edi
	movl	%eax, 148(%esp)
	jg	.L462
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
	jmp	.L444
	.p2align 4,,7
	.p2align 3
.L459:
	fnstcw	158(%esp)
	movzwl	158(%esp), %edx
	movb	$12, %dh
	movw	%dx, 156(%esp)
	movl	148(%esi), %ecx
	fldcw	156(%esp)
	fistpl	24(%esp)
	fldcw	158(%esp)
	addl	%edi, %ecx
	movl	(%ecx), %edx
	cmpl	%edx, 24(%esp)
	movl	%ecx, 76(%esp)
	jle	.L422
	fstp	%st(0)
	movl	152(%esi), %ecx
	addl	$1, %edx
	movl	%edx, 24(%esp)
	movb	$1, (%eax)
	addl	%edi, %ecx
	movl	%ecx, 16(%esp)
.L423:
	movl	(%ecx), %eax
	cmpl	%eax, 24(%esp)
	jle	.L452
.L460:
	cmpb	$0, 134(%esp)
	jne	.L439
	movl	0(%ebp), %edx
.L440:
	movl	24(%esp), %ecx
	addl	28(%esp), %edx
	subl	$1, %ecx
	cmpl	%eax, 12(%ebp)
	movl	%eax, (%edx)
	jle	.L441
	movl	%eax, 12(%ebp)
.L441:
	cmpl	16(%ebp), %ecx
	movl	%ecx, 4(%edx)
	jle	.L442
	movl	%ecx, 16(%ebp)
.L442:
	cmpl	4(%ebp), %ebx
	jge	.L443
	movl	%ebx, 4(%ebp)
.L443:
	cmpl	8(%ebp), %ebx
	movb	$0, 134(%esp)
	jle	.L421
	movl	%ebx, 8(%ebp)
	.p2align 4,,7
	.p2align 3
.L421:
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
	jl	.L416
	fldl	64(%esp)
	fldl	56(%esp)
.L444:
	fldl	96(%esp)
	fadd	%st(1), %st
	movl	160(%esi), %eax
	fstpl	56(%esp)
	fldl	104(%esp)
	addl	%ebx, %eax
	fadd	%st(2), %st
	cmpb	$0, (%eax)
	fstpl	64(%esp)
	je	.L459
	fstp	%st(0)
	fstp	%st(0)
	movb	$1, 134(%esp)
	movb	$1, 135(%esp)
	jmp	.L421
	.p2align 4,,7
	.p2align 3
.L422:
	movl	152(%esi), %ecx
	fldcw	156(%esp)
	fistpl	72(%esp)
	fldcw	158(%esp)
	addl	%edi, %ecx
	movl	%ecx, 16(%esp)
	movl	(%ecx), %ecx
	cmpl	%ecx, 72(%esp)
	movl	%ecx, 80(%esp)
	jge	.L424
	subl	$1, %ecx
	movl	%ecx, 72(%esp)
	movb	$1, (%eax)
.L425:
	cmpl	%edx, 72(%esp)
	jge	.L451
	cmpb	$0, 135(%esp)
	jne	.L433
	movl	128(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 76(%esp)
.L434:
	movl	72(%esp), %ecx
	addl	28(%esp), %eax
	addl	$1, %ecx
	movl	%eax, 72(%esp)
	movl	%ecx, (%eax)
	movl	128(%esp), %eax
	cmpl	12(%eax), %ecx
	jge	.L435
	movl	%ecx, 12(%eax)
	movl	128(%esp), %eax
.L435:
	movl	72(%esp), %ecx
	cmpl	%edx, 16(%eax)
	movl	%edx, 4(%ecx)
	jge	.L436
	movl	%edx, 16(%eax)
	movl	128(%esp), %eax
.L436:
	cmpl	%ebx, 4(%eax)
	jle	.L437
	movl	%ebx, 4(%eax)
	movl	128(%esp), %eax
.L437:
	cmpl	%ebx, 8(%eax)
	jge	.L458
	movl	%ebx, 8(%eax)
.L458:
	movl	152(%esi), %ecx
	movb	$0, 135(%esp)
	addl	%edi, %ecx
	movl	(%ecx), %eax
	cmpl	%eax, 24(%esp)
	movl	%ecx, 16(%esp)
	jg	.L460
.L452:
	movb	$1, 134(%esp)
	jmp	.L421
	.p2align 4,,7
	.p2align 3
.L451:
	movb	$1, 135(%esp)
	movl	16(%esp), %ecx
	jmp	.L423
	.p2align 4,,7
	.p2align 3
.L424:
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
	jge	.L426
	subl	24(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	80(%esp), %ecx
	fildl	24(%esp)
	fmul	%st(1), %st
	movl	%ecx, 24(%esp)
	fadds	.LC14
	fmuls	.LC81
	fldcw	156(%esp)
	fistpl	136(%esp)
	fldcw	158(%esp)
.L426:
	fld1
	fldl	40(%esp)
	fdivr	%st(1), %st
	cmpl	72(%esp), %edx
	cmovg	72(%esp), %edx
	movb	$1, (%eax)
	movl	196(%esp), %eax
	subl	$1, 164(%esi)
	movl	%edx, 72(%esp)
	movl	140(%esp), %edx
	movl	$0, 80(%esp)
	fldl	40(%eax)
	fmull	16(%edx)
	fdivrp	%st, %st(1)
	fdivs	.LC82
	fsubrp	%st, %st(1)
	fmuls	.LC83
	fldcw	156(%esp)
	fistpl	152(%esp)
	fldcw	158(%esp)
	movl	152(%esp), %eax
	testl	%eax, %eax
	js	.L428
	leal	0(,%eax,4), %edx
	cmpl	$255, %eax
	movl	$1020, %ecx
	cmovle	%edx, %ecx
	movl	%ecx, 80(%esp)
.L428:
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
	fmuls	.LC81
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
	cmpl	168(%esi), %ecx
	jge	.L429
	movl	%ecx, 168(%esi)
.L429:
	movl	72(%esp), %eax
	cmpl	172(%esi), %eax
	jle	.L430
	movl	%eax, 172(%esi)
.L430:
	cmpl	%ebx, 176(%esi)
	jle	.L431
	movl	%ebx, 176(%esi)
.L431:
	cmpl	%ebx, 180(%esi)
	jge	.L457
	movl	%ebx, 180(%esi)
.L457:
	movl	76(%esp), %ecx
	movl	(%ecx), %edx
	jmp	.L425
	.p2align 4,,7
	.p2align 3
.L439:
	movl	$28, (%esp)
.LEHB23:
	call	_Znwj
.LEHE23:
	movl	196(%esp), %ecx
	movl	200(%esi), %edx
	movl	%eax, %ebp
	movl	28(%ecx), %eax
	movl	%edx, 24(%ebp)
	movl	$100000, 4(%ebp)
	movl	$-1, 8(%ebp)
	movl	%eax, 20(%ebp)
	movl	28(%esi), %eax
	movl	$100000, 12(%ebp)
	movl	$-1, 16(%ebp)
	sall	$3, %eax
	movl	%eax, (%esp)
.LEHB24:
	call	_Znaj
.LEHE24:
	movl	%eax, 0(%ebp)
	movl	%eax, %edx
	movl	152(%esi), %eax
	movl	%ebp, 200(%esi)
	movl	(%eax,%edi), %eax
	jmp	.L440
	.p2align 4,,7
	.p2align 3
.L433:
	movl	$28, (%esp)
.LEHB25:
	call	_Znwj
.LEHE25:
	movl	196(%esp), %ecx
	movl	196(%esi), %edx
	movl	%eax, 128(%esp)
	movl	28(%ecx), %eax
	movl	128(%esp), %ecx
	movl	%eax, 20(%ecx)
	movl	28(%esi), %eax
	movl	%edx, 24(%ecx)
	movl	$100000, 4(%ecx)
	movl	$-1, 8(%ecx)
	movl	$100000, 12(%ecx)
	sall	$3, %eax
	movl	$-1, 16(%ecx)
	movl	%eax, (%esp)
.LEHB26:
	call	_Znaj
.LEHE26:
	movl	128(%esp), %edx
	movl	%eax, 76(%esp)
	movl	%eax, (%edx)
	movl	148(%esi), %eax
	movl	%edx, 196(%esi)
	movl	(%eax,%edi), %edx
	movl	76(%esp), %eax
	jmp	.L434
.L462:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L416:
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
.L417:
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
	jmp	.L418
.L456:
	movl	%eax, %ebx
	movl	%ebp, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB27:
	call	_Unwind_Resume
.L455:
	movl	%eax, %ebx
	movl	128(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE27:
	.cfi_endproc
.LFE1342:
	.section	.gcc_except_table
.LLSDA1342:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1342-.LLSDACSB1342
.LLSDACSB1342:
	.uleb128 .LEHB23-.LFB1342
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB1342
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L456-.LFB1342
	.uleb128 0
	.uleb128 .LEHB25-.LFB1342
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB1342
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L455-.LFB1342
	.uleb128 0
	.uleb128 .LEHB27-.LFB1342
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE1342:
	.text
	.size	_ZN7XEngine18process_solid_wallERK4Wall, .-_ZN7XEngine18process_solid_wallERK4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18render_solid_wallsEv
	.type	_ZN7XEngine18render_solid_wallsEv, @function
_ZN7XEngine18render_solid_wallsEv:
.LFB1343:
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
	movl	64(%esp), %ebx
	movl	64(%esp), %esi
	movl	184(%eax), %edx
	movl	176(%eax), %eax
	leal	(%eax,%eax,2), %ecx
	leal	(%edx,%ecx,8), %ebp
	movl	180(%ebx), %ecx
	leal	3(%ecx,%ecx,2), %ecx
	leal	(%edx,%ecx,8), %ebx
	movl	168(%esi), %ecx
	movl	172(%esi), %edx
	cmpl	%edx, %ecx
	jg	.L464
	movl	24(%esi), %edi
	movl	%edi, 24(%esp)
.L468:
	cmpl	%ebx, %ebp
	movl	(%edi,%ecx,4), %esi
	je	.L465
	leal	(%esi,%eax,4), %edx
	movl	%ebp, %eax
	.p2align 4,,7
	.p2align 3
.L467:
	cmpl	%ecx, (%eax)
	jg	.L466
	cmpl	%ecx, 4(%eax)
	jl	.L466
	movswl	14(%eax), %esi
	movl	8(%eax), %edi
	andl	$127, %esi
	movl	(%edi,%esi,4), %esi
	movl	%esi, (%edx)
	movl	16(%eax), %esi
	addl	%esi, 12(%eax)
.L466:
	addl	$24, %eax
	addl	$4, %edx
	cmpl	%eax, %ebx
	jne	.L467
	movl	64(%esp), %eax
	movl	172(%eax), %edx
.L465:
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jg	.L464
	movl	64(%esp), %esi
	movl	24(%esp), %edi
	movl	176(%esi), %eax
	jmp	.L468
.L464:
	movl	64(%esp), %edi
	movl	192(%edi), %ebp
	testl	%ebp, %ebp
	je	.L469
.L492:
	movl	12(%ebp), %edx
	movl	0(%ebp), %esi
	movl	4(%ebp), %ecx
	leal	(%edx,%edx,2), %eax
	leal	(%esi,%eax,8), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	leal	3(%eax,%eax,2), %eax
	leal	(%esi,%eax,8), %ebx
	movl	8(%ebp), %eax
	cmpl	%eax, %ecx
	jg	.L470
	movl	64(%esp), %esi
	movl	24(%esi), %esi
	movl	%esi, 28(%esp)
	movl	%esi, %edi
	.p2align 4,,7
	.p2align 3
.L475:
	cmpl	%ebx, 24(%esp)
	movl	(%edi,%ecx,4), %esi
	je	.L471
	movl	24(%esp), %eax
	leal	(%esi,%edx,4), %edx
	.p2align 4,,7
	.p2align 3
.L473:
	cmpl	%ecx, (%eax)
	jg	.L472
	cmpl	%ecx, 4(%eax)
	jl	.L472
	movswl	14(%eax), %esi
	movl	8(%eax), %edi
	andl	$127, %esi
	movl	(%edi,%esi,4), %esi
	movl	%esi, (%edx)
	movl	16(%eax), %esi
	addl	%esi, 12(%eax)
.L472:
	addl	$24, %eax
	addl	$4, %edx
	cmpl	%eax, %ebx
	jne	.L473
	movl	8(%ebp), %eax
.L471:
	addl	$1, %ecx
	cmpl	%eax, %ecx
	jg	.L474
	movl	12(%ebp), %edx
	movl	28(%esp), %edi
	jmp	.L475
.L474:
	movl	0(%ebp), %esi
.L470:
	testl	%esi, %esi
	movl	20(%ebp), %ebx
	je	.L476
	movl	%esi, (%esp)
	call	_ZdaPv
.L476:
	movl	%ebp, (%esp)
	call	_ZdlPv
	testl	%ebx, %ebx
	je	.L469
	movl	%ebx, %ebp
	jmp	.L492
.L469:
	movl	64(%esp), %eax
	movl	188(%eax), %ebp
	testl	%ebp, %ebp
	je	.L463
.L493:
	movl	12(%ebp), %edx
	movl	0(%ebp), %esi
	movl	8(%ebp), %ecx
	leal	(%edx,%edx,2), %eax
	leal	(%esi,%eax,8), %eax
	movl	%eax, 24(%esp)
	movl	16(%ebp), %eax
	leal	3(%eax,%eax,2), %eax
	leal	(%esi,%eax,8), %ebx
	movl	4(%ebp), %eax
	cmpl	%eax, %ecx
	jl	.L479
	movl	64(%esp), %esi
	movl	24(%esi), %esi
	movl	%esi, 28(%esp)
	movl	%esi, %edi
	.p2align 4,,7
	.p2align 3
.L484:
	cmpl	%ebx, 24(%esp)
	movl	(%edi,%ecx,4), %esi
	je	.L480
	movl	24(%esp), %eax
	leal	(%esi,%edx,4), %edx
	.p2align 4,,7
	.p2align 3
.L482:
	cmpl	%ecx, (%eax)
	jg	.L481
	cmpl	%ecx, 4(%eax)
	jl	.L481
	movswl	14(%eax), %esi
	movl	8(%eax), %edi
	andl	$127, %esi
	movl	(%edi,%esi,4), %esi
	movl	%esi, (%edx)
	movl	16(%eax), %esi
	subl	%esi, 12(%eax)
.L481:
	addl	$24, %eax
	addl	$4, %edx
	cmpl	%eax, %ebx
	jne	.L482
	movl	4(%ebp), %eax
.L480:
	subl	$1, %ecx
	cmpl	%eax, %ecx
	jl	.L483
	movl	12(%ebp), %edx
	movl	28(%esp), %edi
	jmp	.L484
.L483:
	movl	0(%ebp), %esi
.L479:
	testl	%esi, %esi
	movl	20(%ebp), %ebx
	je	.L485
	movl	%esi, (%esp)
	call	_ZdaPv
.L485:
	movl	%ebp, (%esp)
	call	_ZdlPv
	testl	%ebx, %ebx
	je	.L463
	movl	%ebx, %ebp
	jmp	.L493
.L463:
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
.LFE1343:
	.size	_ZN7XEngine18render_solid_wallsEv, .-_ZN7XEngine18render_solid_wallsEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	.type	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE, @function
_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE:
.LFB1344:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1344
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
	movl	36(%ebx), %eax
	fildl	264(%esp)
	fldl	80(%esp)
	fsubrl	224(%ebp,%ecx,8)
	cmpl	%eax, %esi
	movl	%edi, 200(%esp)
	movl	%eax, 56(%esp)
	fdiv	%st(1), %st
	fstpl	152(%esp)
	jge	.L497
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
.L498:
	movl	40(%ebx), %eax
	cmpl	%eax, 200(%esp)
	movl	%eax, 56(%esp)
	jle	.L557
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
	jmp	.L499
	.p2align 4,,7
	.p2align 3
.L557:
	fstp	%st(0)
.L499:
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
	movl	28(%ebx), %edx
	movl	60(%ebx), %ecx
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
	jg	.L558
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
	jmp	.L534
	.p2align 4,,7
	.p2align 3
.L555:
	fxch	%st(2)
	fnstcw	270(%esp)
	movzwl	270(%esp), %edx
	movb	$12, %dh
	movw	%dx, 268(%esp)
	fldcw	268(%esp)
	fistpl	264(%esp)
	fldcw	270(%esp)
	fxch	%st(1)
	movl	148(%ebx), %edx
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
	jle	.L502
	fstp	%st(0)
	leal	1(%edx), %ebp
	movb	$1, (%eax)
	movb	$0, 120(%esp)
.L503:
	movl	152(%ebx), %edx
	addl	%edi, %edx
	movl	(%edx), %eax
	cmpl	%eax, %ebp
	jle	.L547
.L556:
	cmpb	$0, 218(%esp)
	jne	.L529
	movl	52(%esp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, 128(%esp)
.L530:
	addl	48(%esp), %ecx
	subl	$1, %ebp
	movl	%ecx, 128(%esp)
	movl	%eax, (%ecx)
	movl	52(%esp), %ecx
	cmpl	12(%ecx), %eax
	jge	.L531
	movl	%eax, 12(%ecx)
.L531:
	movl	128(%esp), %eax
	movl	%ebp, 4(%eax)
	movl	52(%esp), %eax
	cmpl	16(%eax), %ebp
	jle	.L532
	movl	%ebp, 16(%eax)
	movl	52(%esp), %eax
.L532:
	cmpl	4(%eax), %esi
	jge	.L533
	movl	%esi, 4(%eax)
	movl	52(%esp), %eax
.L533:
	cmpl	8(%eax), %esi
	movb	$0, 218(%esp)
	jle	.L528
	movl	%esi, 8(%eax)
.L528:
	cmpb	$0, 120(%esp)
	je	.L501
	movl	136(%esp), %ebp
	movl	148(%ebx), %eax
	movl	%ebp, (%edx)
	movl	132(%esp), %ebp
	movl	%ebp, (%eax,%edi)
	cmpl	(%edx), %ebp
	jg	.L501
	movl	160(%ebx), %eax
	movb	$1, (%eax,%esi)
	subl	$1, 164(%ebx)
	.p2align 4,,7
	.p2align 3
.L501:
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
	jl	.L496
	fldl	112(%esp)
	fldl	104(%esp)
	fldl	96(%esp)
	fldl	88(%esp)
	fxch	%st(2)
.L534:
	fldl	160(%esp)
	fadd	%st(3), %st
	movl	160(%ebx), %eax
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
	je	.L555
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	movb	$1, 140(%esp)
	movb	$1, 219(%esp)
	movb	$1, 218(%esp)
	movb	$1, 144(%esp)
	jmp	.L501
	.p2align 4,,7
	.p2align 3
.L502:
	movl	152(%ebx), %ecx
	fldcw	268(%esp)
	fistpl	128(%esp)
	fldcw	270(%esp)
	movl	(%ecx,%edi), %ecx
	cmpl	%ecx, 128(%esp)
	movl	%ecx, 220(%esp)
	jge	.L504
	subl	$1, %ecx
	movl	%ecx, 128(%esp)
	movb	$1, (%eax)
	movb	$0, 120(%esp)
.L505:
	cmpl	%edx, 128(%esp)
	jge	.L545
	cmpb	$0, 144(%esp)
	jne	.L523
	movl	148(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 144(%esp)
.L524:
	movl	128(%esp), %ecx
	addl	48(%esp), %eax
	addl	$1, %ecx
	movl	%eax, 128(%esp)
	movl	%ecx, (%eax)
	movl	148(%esp), %eax
	cmpl	12(%eax), %ecx
	jge	.L525
	movl	%ecx, 12(%eax)
	movl	148(%esp), %eax
.L525:
	movl	128(%esp), %ecx
	cmpl	%edx, 16(%eax)
	movl	%edx, 4(%ecx)
	jge	.L526
	movl	%edx, 16(%eax)
	movl	148(%esp), %eax
.L526:
	cmpl	4(%eax), %esi
	jge	.L527
	movl	%esi, 4(%eax)
	movl	148(%esp), %eax
.L527:
	cmpl	8(%eax), %esi
	movb	$0, 144(%esp)
	jle	.L503
	movl	152(%ebx), %edx
	movl	%esi, 8(%eax)
	addl	%edi, %edx
	movl	(%edx), %eax
	cmpl	%eax, %ebp
	jg	.L556
	.p2align 4,,7
	.p2align 3
.L547:
	movb	$1, 218(%esp)
	jmp	.L528
	.p2align 4,,7
	.p2align 3
.L545:
	movb	$1, 144(%esp)
	jmp	.L503
	.p2align 4,,7
	.p2align 3
.L504:
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
	jge	.L540
	movl	220(%esp), %eax
	subl	%ebp, %eax
	movl	220(%esp), %ebp
	movl	%eax, 264(%esp)
	fildl	264(%esp)
	fmulp	%st, %st(1)
	fadds	.LC14
	fstpl	232(%esp)
.L506:
	cmpl	%edx, 128(%esp)
	jle	.L507
	movl	128(%esp), %eax
	movl	%edx, 128(%esp)
	subl	%edx, %eax
	movl	%eax, 264(%esp)
	fildl	264(%esp)
	fmull	120(%esp)
	fsubrl	224(%esp)
	fstpl	224(%esp)
.L507:
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
	fdivs	.LC82
	fsubrp	%st, %st(1)
	fmuls	.LC83
	fldcw	268(%esp)
	fistpl	204(%esp)
	fldcw	270(%esp)
	movl	204(%esp), %eax
	testl	%eax, %eax
	js	.L541
	cmpl	$256, 204(%esp)
	movl	$255, %ecx
	cmovl	204(%esp), %ecx
	movl	%ecx, 204(%esp)
.L509:
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
	jge	.L543
	cmpb	$0, 219(%esp)
	jne	.L511
	movl	192(%ebx), %eax
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
.L512:
	movl	136(%esp), %ecx
	addl	56(%esp), %edx
	movl	312(%esp), %eax
	flds	.LC81
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
	jge	.L513
	movl	220(%esp), %eax
	movl	%ebp, 4(%eax)
.L513:
	movl	252(%esp), %edx
	cmpl	%edx, 128(%esp)
	jle	.L514
	movl	128(%esp), %edx
	movl	220(%esp), %eax
	movl	%edx, 8(%eax)
.L514:
	cmpl	256(%esp), %esi
	jge	.L515
	movl	220(%esp), %eax
	movl	%esi, 12(%eax)
.L515:
	cmpl	260(%esp), %esi
	movb	$0, 219(%esp)
	jle	.L510
	movl	220(%esp), %eax
	movl	%esi, 16(%eax)
.L510:
	movl	132(%esp), %edx
	cmpl	%edx, 128(%esp)
	movl	%edx, %eax
	cmovle	128(%esp), %eax
	cmpl	%ebp, %eax
	cmovl	%ebp, %eax
	cmpl	%eax, 128(%esp)
	movl	%eax, 132(%esp)
	jg	.L516
	movl	148(%ebx), %eax
	movb	$1, 140(%esp)
	movb	$1, 120(%esp)
	movl	(%eax,%edi), %edx
	jmp	.L505
	.p2align 4,,7
	.p2align 3
.L529:
	movl	$28, (%esp)
.LEHB28:
	call	_Znwj
.LEHE28:
	movl	312(%esp), %edx
	movl	308(%esp), %ecx
	movl	%eax, 52(%esp)
	movl	28(%ecx,%edx,4), %eax
	movl	52(%esp), %edx
	movl	200(%ebx), %ecx
	movl	%eax, 20(%edx)
	movl	28(%ebx), %eax
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
	movl	52(%esp), %edx
	movl	%eax, 128(%esp)
	movl	128(%esp), %ecx
	movl	%eax, (%edx)
	movl	%edx, 200(%ebx)
	movl	152(%ebx), %edx
	addl	%edi, %edx
	movl	(%edx), %eax
	jmp	.L530
	.p2align 4,,7
	.p2align 3
.L543:
	movb	$1, 219(%esp)
	jmp	.L510
	.p2align 4,,7
	.p2align 3
.L540:
	fstp	%st(0)
	fldz
	fstpl	232(%esp)
	jmp	.L506
	.p2align 4,,7
	.p2align 3
.L516:
	cmpb	$0, 140(%esp)
	jne	.L517
	movl	188(%ebx), %eax
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
.L518:
	movl	132(%esp), %ecx
	addl	56(%esp), %edx
	movl	128(%esp), %eax
	flds	.LC81
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
	jge	.L519
	movl	140(%esp), %eax
	movl	%ebp, 4(%eax)
.L519:
	movl	248(%esp), %edx
	cmpl	%edx, 128(%esp)
	jle	.L520
	movl	128(%esp), %edx
	movl	140(%esp), %eax
	movl	%edx, 8(%eax)
.L520:
	cmpl	252(%esp), %esi
	jge	.L521
	movl	140(%esp), %eax
	movl	%esi, 12(%eax)
.L521:
	cmpl	256(%esp), %esi
	jle	.L554
	movl	140(%esp), %eax
	movl	%esi, 16(%eax)
.L554:
	movl	148(%ebx), %eax
	movl	(%eax,%edi), %edx
	movb	$0, 140(%esp)
	movb	$1, 120(%esp)
	jmp	.L505
	.p2align 4,,7
	.p2align 3
.L523:
	movl	$28, (%esp)
.LEHB30:
	call	_Znwj
.LEHE30:
	movl	312(%esp), %edx
	movl	308(%esp), %ecx
	movl	%eax, 148(%esp)
	movl	28(%ecx,%edx,4), %eax
	movl	148(%esp), %edx
	movl	196(%ebx), %ecx
	movl	%eax, 20(%edx)
	movl	28(%ebx), %eax
	movl	%ecx, 24(%edx)
	movl	$100000, 4(%edx)
	movl	$-1, 8(%edx)
	movl	$100000, 12(%edx)
	sall	$3, %eax
	movl	$-1, 16(%edx)
	movl	%eax, (%esp)
.LEHB31:
	call	_Znaj
.LEHE31:
	movl	148(%esp), %edx
	movl	%eax, 144(%esp)
	movl	%eax, (%edx)
	movl	148(%ebx), %eax
	movl	%edx, 196(%ebx)
	movl	(%eax,%edi), %edx
	movl	144(%esp), %eax
	jmp	.L524
	.p2align 4,,7
	.p2align 3
.L541:
	movl	$0, 204(%esp)
	jmp	.L509
.L558:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L496:
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
.L517:
	.cfi_restore_state
	movl	$24, (%esp)
.LEHB32:
	call	_Znwj
.LEHE32:
	movl	188(%ebx), %edx
	movl	%eax, 140(%esp)
	movl	28(%ebx), %eax
	movl	140(%esp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	%edx, 20(%ecx)
	sall	$3, %eax
	movl	%eax, (%esp)
.LEHB33:
	call	_Znaj
.LEHE33:
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
	movl	%eax, 188(%ebx)
	fnstcw	270(%esp)
	movl	$10000, 232(%esp)
	movzwl	270(%esp), %eax
	movb	$12, %ah
	movw	%ax, 268(%esp)
	jmp	.L518
	.p2align 4,,7
	.p2align 3
.L511:
	movl	$24, (%esp)
.LEHB34:
	call	_Znwj
.LEHE34:
	movl	192(%ebx), %edx
	movl	%eax, 220(%esp)
	movl	28(%ebx), %eax
	movl	220(%esp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	%edx, 20(%ecx)
	sall	$3, %eax
	movl	%eax, (%esp)
.LEHB35:
	call	_Znaj
.LEHE35:
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
	movl	%eax, 192(%ebx)
	fnstcw	270(%esp)
	movl	$10000, 248(%esp)
	movzwl	270(%esp), %eax
	movb	$12, %ah
	movw	%ax, 268(%esp)
	jmp	.L512
	.p2align 4,,7
	.p2align 3
.L497:
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
	jmp	.L498
.L553:
	movl	%eax, %ebx
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
.LEHB36:
	call	_Unwind_Resume
.L550:
	movl	%eax, %ebx
	movl	220(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.L551:
	movl	%eax, %ebx
	movl	140(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.L552:
	movl	%eax, %ebx
	movl	148(%esp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	movl	%ebx, (%esp)
	call	_Unwind_Resume
.LEHE36:
	.cfi_endproc
.LFE1344:
	.section	.gcc_except_table
.LLSDA1344:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1344-.LLSDACSB1344
.LLSDACSB1344:
	.uleb128 .LEHB28-.LFB1344
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB1344
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L553-.LFB1344
	.uleb128 0
	.uleb128 .LEHB30-.LFB1344
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB1344
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L552-.LFB1344
	.uleb128 0
	.uleb128 .LEHB32-.LFB1344
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB1344
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L551-.LFB1344
	.uleb128 0
	.uleb128 .LEHB34-.LFB1344
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB1344
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L550-.LFB1344
	.uleb128 0
	.uleb128 .LEHB36-.LFB1344
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE1344:
	.text
	.size	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE, .-_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	.type	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d, @function
_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d:
.LFB1338:
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
.L608:
	movl	%ebp, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_ZN5Plane17evaluate_positionERK8Vector2d
	cmpl	$1, %eax
	je	.L563
	cmpl	$2, %eax
	je	.L564
	testl	%eax, %eax
	.p2align 4,,3
	jne	.L559
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L604
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L603
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L603
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L618
.L603:
	movl	%ebp, 8(%esp)
	movl	28(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	cmpb	$0, 156(%ebx)
	jne	.L559
	.p2align 4,,7
	.p2align 3
.L604:
	movl	24(%edi), %esi
	testl	%esi, %esi
	je	.L559
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L619
.L605:
	movl	24(%edi), %edi
	jmp	.L608
	.p2align 4,,7
	.p2align 3
.L619:
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L605
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L605
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L605
	.p2align 4,,7
	.p2align 3
.L559:
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
.L564:
	.cfi_restore_state
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L601
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L600
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L600
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L620
.L600:
	movl	%ebp, 8(%esp)
	movl	28(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	cmpb	$0, 156(%ebx)
	jne	.L559
	.p2align 4,,7
	.p2align 3
.L601:
	movl	20(%edi), %esi
	jmp	.L591
	.p2align 4,,7
	.p2align 3
.L624:
	cmpl	$1, %eax
	movl	128(%ebx), %edx
	je	.L621
.L587:
	movl	32(%esi), %eax
	movl	%edx, %ecx
	subl	4(%eax), %ecx
	movl	$1, %eax
.L588:
	movl	%ecx, 128(%ebx)
	movl	%edx, 24(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	movl	24(%esp), %edx
	testb	%al, %al
	je	.L589
	cmpl	$1, 36(%esi)
	je	.L622
	movl	%edx, 24(%esp)
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
	movl	24(%esp), %edx
.L589:
	movl	%edx, 128(%ebx)
.L610:
	movl	248(%esi), %esi
	testl	%esi, %esi
	je	.L623
.L591:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L610
	cmpb	$0, 132(%ebx)
	movl	36(%esi), %eax
	jne	.L624
	testl	%eax, %eax
	movl	108(%ebx), %edx
	jne	.L585
	movl	32(%esi), %ecx
	movl	56(%edx), %edx
	addl	4(%ecx), %edx
.L586:
	cmpl	$1, %eax
	movb	$1, 132(%ebx)
	jne	.L587
.L621:
	movl	28(%esi), %eax
	movl	%edx, %ecx
	subl	4(%eax), %ecx
	xorl	%eax, %eax
	jmp	.L588
	.p2align 4,,7
	.p2align 3
.L563:
	movl	24(%edi), %esi
	testl	%esi, %esi
	je	.L598
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L597
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L597
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L625
.L597:
	movl	%ebp, 8(%esp)
	movl	24(%edi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	cmpb	$0, 156(%ebx)
	jne	.L559
	.p2align 4,,7
	.p2align 3
.L598:
	movl	20(%edi), %esi
	jmp	.L575
	.p2align 4,,7
	.p2align 3
.L628:
	movl	128(%ebx), %edx
	movl	%edx, 28(%esp)
.L570:
	subl	%eax, %edx
	movl	%edx, 128(%ebx)
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine12visible_wallER4WallNS0_9SideTypesES2_
	testb	%al, %al
	je	.L573
	cmpl	$1, 36(%esi)
	je	.L626
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine19process_portal_wallERK4WallNS0_9SideTypesE
.L573:
	movl	28(%esp), %edx
	movl	%edx, 128(%ebx)
.L609:
	movl	248(%esi), %esi
	testl	%esi, %esi
	je	.L627
.L575:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L609
	movl	28(%esi), %eax
	cmpb	$0, 132(%ebx)
	movl	4(%eax), %eax
	jne	.L628
	movl	108(%ebx), %edx
	movl	56(%edx), %edx
	movb	$1, 132(%ebx)
	addl	%eax, %edx
	movl	%edx, 28(%esp)
	jmp	.L570
	.p2align 4,,7
	.p2align 3
.L623:
	movl	164(%ebx), %eax
	testl	%eax, %eax
	jne	.L604
.L616:
	movb	$1, 156(%ebx)
	jmp	.L559
	.p2align 4,,7
	.p2align 3
.L627:
	movl	164(%ebx), %eax
	testl	%eax, %eax
	je	.L616
	movl	28(%edi), %esi
	testl	%esi, %esi
	je	.L559
	movl	4(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L599
	movl	8(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	jne	.L599
	movl	12(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L629
.L599:
	movl	28(%edi), %edi
	jmp	.L608
	.p2align 4,,7
	.p2align 3
.L585:
	movl	28(%esi), %ecx
	movl	56(%edx), %edx
	addl	4(%ecx), %edx
	jmp	.L586
	.p2align 4,,7
	.p2align 3
.L626:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine18process_solid_wallERK4Wall
	jmp	.L573
	.p2align 4,,7
	.p2align 3
.L622:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN7XEngine18process_solid_wallERK4Wall
	movl	24(%esp), %edx
	jmp	.L589
.L618:
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L604
	jmp	.L603
	.p2align 4,,7
	.p2align 3
.L625:
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L598
	jmp	.L597
	.p2align 4,,7
	.p2align 3
.L620:
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L601
	jmp	.L600
	.p2align 4,,7
	.p2align 3
.L629:
	movl	16(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ZN7XEngine13visible_bwallER4Wall
	testb	%al, %al
	je	.L559
	jmp	.L599
	.cfi_endproc
.LFE1338:
	.size	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d, .-_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine21compute_visible_wallsEv
	.type	_ZN7XEngine21compute_visible_wallsEv, @function
_ZN7XEngine21compute_visible_wallsEv:
.LFB1337:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	108(%eax), %edx
	movl	%edx, 8(%esp)
	movl	144(%eax), %edx
	movl	(%edx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_ZN7XEngine25compute_visible_walls_recEPN7BspTree7BspNodeERK8Vector2d
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1337:
	.size	_ZN7XEngine21compute_visible_wallsEv, .-_ZN7XEngine21compute_visible_wallsEv
	.section	.rodata.str1.1
.LC84:
	.string	"ciao"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine14render_ceilingEv
	.type	_ZN7XEngine14render_ceilingEv, @function
_ZN7XEngine14render_ceilingEv:
.LFB1345:
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
	subl	$204, %esp
	.cfi_def_cfa_offset 224
	movl	224(%esp), %ebx
	movl	224(%esp), %edx
	movl	36(%ebx), %eax
	movl	68(%ebx), %ecx
	movl	200(%edx), %edx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	fldl	8(%eax)
	testl	%edx, %edx
	fstpl	144(%esp)
	fldl	16(%eax)
	fldl	112(%ebx)
	fldl	144(%esp)
	fmul	%st(1), %st
	movl	%edx, 116(%esp)
	fldl	120(%ebx)
	fld	%st(0)
	fmul	%st(4), %st
	fadd	%st(2), %st
	fstpl	152(%esp)
	fchs
	fldl	144(%esp)
	fmul	%st(1), %st
	fxch	%st(3)
	fmul	%st(4), %st
	fld	%st(3)
	fadd	%st(1), %st
	fstpl	168(%esp)
	fxch	%st(4)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	160(%esp)
	fsubp	%st, %st(1)
	fstpl	176(%esp)
	fildl	56(%ebx)
	fdivrs	.LC0
	je	.L691
.L681:
	movl	4(%edx), %eax
	movl	(%edx), %ecx
	movl	16(%edx), %ebp
	cmpl	%ebp, 4(%ecx,%eax,8)
	je	.L633
	.p2align 4,,7
	.p2align 3
.L673:
	addl	$1, %eax
	cmpl	%ebp, 4(%ecx,%eax,8)
	jne	.L673
.L633:
	movl	116(%esp), %ebx
	movl	%eax, %esi
	movl	8(%ebx), %edi
	leal	(%ecx,%eax,8), %ebx
	cmpl	%eax, %edi
	jle	.L636
	cmpl	4(%ebx), %ebp
	leal	8(%ecx,%eax,8), %edx
	je	.L637
	.p2align 4,,7
	.p2align 3
.L636:
	movl	116(%esp), %edi
	xorl	%edx, %edx
	cmpl	%ebp, (%ebx)
	movl	%eax, 128(%esp)
	movl	20(%edi), %edi
	setne	%dl
	subl	%edx, %esi
	leal	1(%esi), %edx
	movl	%edx, 136(%esp)
	movl	%edi, 132(%esp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L640:
	movl	224(%esp), %ebx
	movl	24(%ebx), %eax
	movl	(%eax,%ebp,4), %eax
	leal	(%eax,%edi,4), %ebx
	movl	132(%esp), %edi
	leal	(%eax,%edx,4), %eax
	movl	224(%esp), %edx
	movl	%eax, 120(%esp)
	movl	8(%edi), %eax
	subl	128(%edx), %eax
	movl	%eax, 188(%esp)
	movl	52(%edx), %eax
	fildl	188(%esp)
	subl	%ebp, %eax
	movl	%eax, 188(%esp)
	movl	108(%edx), %eax
	fildl	188(%esp)
	fdivrp	%st, %st(1)
	fildl	60(%edx)
	fmulp	%st, %st(1)
	fldl	144(%esp)
	fdivrp	%st, %st(1)
	fldl	4(%eax)
	fldl	152(%esp)
	fmul	%st(2), %st
	fadd	%st(1), %st
	fldl	12(%eax)
	fldl	168(%esp)
	fmul	%st(4), %st
	movl	$.LC84, 4(%esp)
	movl	$1, (%esp)
	fadd	%st(1), %st
	fxch	%st(3)
	fstpl	80(%esp)
	fxch	%st(3)
	fstpl	96(%esp)
	fxch	%st(1)
	fstpl	32(%esp)
	fstpl	64(%esp)
	fxch	%st(1)
	fstpl	16(%esp)
	fstpl	48(%esp)
	call	__printf_chk
	movl	116(%esp), %edi
	movl	224(%esp), %edx
	movl	20(%edi), %edi
	movl	36(%edx), %ecx
	xorl	%edx, %edx
	fldl	96(%esp)
	fldl	160(%esp)
	fmul	%st(1), %st
	movl	%edi, 132(%esp)
	fldl	80(%esp)
	faddp	%st, %st(1)
	fldl	64(%esp)
	fsubr	%st, %st(1)
	fldl	16(%esp)
	fmul	%st, %st(2)
	fldl	176(%esp)
	fmul	%st(4), %st
	fldl	48(%esp)
	faddp	%st, %st(1)
	fldl	32(%esp)
	fsubr	%st, %st(1)
	fxch	%st(1)
	fmul	%st(2), %st
	fxch	%st(5)
	fdivl	16(%edi)
	fnstcw	186(%esp)
	movzwl	186(%esp), %eax
	movb	$12, %ah
	movw	%ax, 184(%esp)
	fdivs	.LC82
	fsubrs	.LC0
	fmuls	.LC83
	fldcw	184(%esp)
	fistpl	188(%esp)
	fldcw	186(%esp)
	movl	188(%esp), %eax
	testl	%eax, %eax
	js	.L642
	movl	132(%esp), %edi
	leal	0(,%eax,4), %edx
	cmpl	$255, %eax
	movl	$1020, %eax
	cmovg	%eax, %edx
.L642:
	flds	.LC81
	fld	%st(4)
	movl	28(%edi), %eax
	fmul	%st(1), %st
	cmpl	120(%esp), %ebx
	movl	8(%eax), %eax
	fldcw	184(%esp)
	fistpl	124(%esp)
	fldcw	186(%esp)
	movl	(%eax,%edx), %ebp
	fld	%st(5)
	fmul	%st(1), %st
	fldcw	184(%esp)
	fistpl	188(%esp)
	fldcw	186(%esp)
	movl	188(%esp), %edx
	je	.L692
	movl	128(%esp), %eax
	movl	%esi, 140(%esp)
	movl	%edx, %esi
	subl	%ecx, %eax
	movl	%eax, 188(%esp)
	fildl	188(%esp)
	fmul	%st, %st(5)
	fxch	%st(5)
	faddp	%st, %st(4)
	fmul	%st, %st(3)
	fxch	%st(3)
	fldcw	184(%esp)
	fistpl	188(%esp)
	fldcw	186(%esp)
	fxch	%st(4)
	movl	188(%esp), %edi
	fmulp	%st, %st(3)
	fxch	%st(2)
	faddp	%st, %st(3)
	fmulp	%st, %st(2)
	fxch	%st(1)
	fldcw	184(%esp)
	fistpl	188(%esp)
	fldcw	186(%esp)
	movl	188(%esp), %ecx
	.p2align 4,,7
	.p2align 3
.L644:
	movl	%ecx, %edx
	movl	%edi, %eax
	shrl	$10, %edx
	addl	%esi, %ecx
	sarl	$16, %eax
	andl	$4032, %edx
	andl	$63, %eax
	addl	%edx, %eax
	movl	0(%ebp,%eax,4), %eax
	addl	124(%esp), %edi
	movl	%eax, (%ebx)
	addl	$4, %ebx
	cmpl	%ebx, 120(%esp)
	jne	.L644
	movl	140(%esp), %esi
	jmp	.L643
.L692:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(2)
	fstp	%st(0)
	fstp	%st(1)
	.p2align 4,,7
	.p2align 3
.L643:
	movl	116(%esp), %edx
	movl	16(%edx), %eax
	movl	12(%edx), %ebp
	subl	$1, %eax
	cmpl	%ebp, %eax
	movl	%eax, 16(%edx)
	jl	.L645
	movl	(%edx), %ecx
	movl	128(%esp), %ebx
	leal	(%ecx,%ebx,8), %edx
	cmpl	(%edx), %eax
	jl	.L646
	cmpl	4(%edx), %eax
	jg	.L646
	movl	116(%esp), %edx
	movl	4(%edx), %edi
	movl	%ebx, %edx
	jmp	.L647
	.p2align 4,,7
	.p2align 3
.L688:
	movl	%ebx, %edx
.L647:
	cmpl	%edi, %edx
	je	.L669
	leal	-1(%edx), %ebx
	cmpl	(%ecx,%ebx,8), %eax
	jl	.L669
	cmpl	4(%ecx,%ebx,8), %eax
	jle	.L688
	.p2align 4,,7
	.p2align 3
.L669:
	leal	(%ecx,%esi,8), %ebx
	movl	%eax, %ebp
	cmpl	(%ebx), %eax
	jl	.L654
	cmpl	4(%ebx), %eax
	jg	.L654
	movl	116(%esp), %edi
	movl	8(%edi), %ebx
	movl	136(%esp), %edi
	jmp	.L657
	.p2align 4,,7
	.p2align 3
.L689:
	movl	%edi, %esi
	addl	$1, %edi
.L657:
	cmpl	%ebx, %esi
	je	.L687
	cmpl	(%ecx,%edi,8), %eax
	jl	.L687
	cmpl	4(%ecx,%edi,8), %eax
	jle	.L689
.L687:
	movl	%edi, 136(%esp)
	.p2align 4,,7
	.p2align 3
.L658:
	movl	%edx, 128(%esp)
	movl	%edx, %edi
	movl	136(%esp), %edx
	jmp	.L640
.L638:
	movl	%edx, %ebx
	addl	$8, %edx
	cmpl	%ebp, -4(%edx)
	jne	.L636
.L637:
	addl	$1, %esi
	cmpl	%edi, %esi
	jne	.L638
	leal	(%ecx,%esi,8), %ebx
	jmp	.L636
	.p2align 4,,7
	.p2align 3
.L646:
	movl	116(%esp), %ebx
	movl	128(%esp), %edx
	movl	8(%ebx), %edi
	.p2align 4,,7
	.p2align 3
.L678:
	addl	$1, %edx
	cmpl	%edi, %edx
	jle	.L651
	movl	116(%esp), %ebx
	movl	4(%ebx), %edx
.L651:
	cmpl	%edx, 128(%esp)
	je	.L690
.L652:
	leal	(%ecx,%edx,8), %ebx
	cmpl	%eax, (%ebx)
	jg	.L678
	cmpl	%eax, 4(%ebx)
	jl	.L678
	cmpl	%eax, %ebp
	jle	.L669
	.p2align 4,,7
	.p2align 3
.L645:
	movl	116(%esp), %edx
	movl	(%edx), %eax
	movl	24(%edx), %ebx
	testl	%eax, %eax
	je	.L662
	fstpl	16(%esp)
	movl	%eax, (%esp)
	call	_ZdaPv
	fldl	16(%esp)
.L662:
	movl	116(%esp), %edi
	fstpl	16(%esp)
	movl	%edi, (%esp)
	call	_ZdlPv
	testl	%ebx, %ebx
	fldl	16(%esp)
	je	.L693
	movl	%ebx, 116(%esp)
	movl	%ebx, %edx
	jmp	.L681
	.p2align 4,,7
	.p2align 3
.L690:
	movl	116(%esp), %ebx
	subl	$1, %eax
	cmpl	%eax, %ebp
	movl	%eax, 16(%ebx)
	jle	.L652
	jmp	.L645
	.p2align 4,,7
	.p2align 3
.L654:
	movl	116(%esp), %ebx
	movl	4(%ebx), %edi
	.p2align 4,,7
	.p2align 3
.L679:
	subl	$1, %esi
	cmpl	%edi, %esi
	jge	.L660
	movl	116(%esp), %ebx
	movl	8(%ebx), %esi
.L660:
	leal	(%ecx,%esi,8), %ebx
	cmpl	(%ebx), %eax
	jl	.L679
	cmpl	4(%ebx), %eax
	jg	.L679
	leal	1(%esi), %edi
	movl	%edi, 136(%esp)
	jmp	.L658
.L691:
	fstp	%st(0)
	jmp	.L631
.L693:
	fstp	%st(0)
.L631:
	addl	$204, %esp
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
.LFE1345:
	.size	_ZN7XEngine14render_ceilingEv, .-_ZN7XEngine14render_ceilingEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12render_floorEv
	.type	_ZN7XEngine12render_floorEv, @function
_ZN7XEngine12render_floorEv:
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
	subl	$188, %esp
	.cfi_def_cfa_offset 208
	movl	208(%esp), %ecx
	movl	208(%esp), %edx
	movl	36(%ecx), %eax
	movl	68(%ecx), %ebx
	movl	196(%edx), %edx
	leal	(%eax,%eax,2), %eax
	leal	(%ebx,%eax,8), %eax
	fldl	8(%eax)
	testl	%edx, %edx
	fstpl	128(%esp)
	fldl	16(%eax)
	fldl	112(%ecx)
	fldl	128(%esp)
	fmul	%st(1), %st
	movl	%edx, 100(%esp)
	fldl	120(%ecx)
	fld	%st(0)
	fmul	%st(4), %st
	fadd	%st(2), %st
	fstpl	136(%esp)
	fchs
	fldl	128(%esp)
	fmul	%st(1), %st
	fxch	%st(3)
	fmul	%st(4), %st
	fld	%st(3)
	fadd	%st(1), %st
	fstpl	152(%esp)
	fxch	%st(4)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	144(%esp)
	fsubp	%st, %st(1)
	fstpl	160(%esp)
	je	.L694
.L747:
	movl	4(%edx), %eax
	movl	%edx, %ecx
	movl	(%edx), %edx
	movl	12(%ecx), %ebp
	cmpl	%ebp, (%edx,%eax,8)
	je	.L696
	.p2align 4,,7
	.p2align 3
.L738:
	addl	$1, %eax
	cmpl	%ebp, (%edx,%eax,8)
	jne	.L738
.L696:
	movl	100(%esp), %ebx
	movl	%eax, %esi
	movl	8(%ebx), %ecx
	cmpl	%eax, %ecx
	jg	.L751
.L698:
	cmpl	%ebp, (%edx,%esi,8)
	jne	.L728
.L703:
	movl	100(%esp), %edi
	leal	1(%esi), %edx
	movl	%eax, 112(%esp)
	movl	%edx, 120(%esp)
	movl	20(%edi), %edi
	movl	%edi, 116(%esp)
	movl	%eax, %edi
	.p2align 4,,7
	.p2align 3
.L704:
	movl	208(%esp), %ecx
	movl	24(%ecx), %eax
	movl	(%eax,%ebp,4), %eax
	leal	(%eax,%edi,4), %ebx
	movl	208(%esp), %edi
	leal	(%eax,%edx,4), %eax
	movl	%eax, 104(%esp)
	movl	128(%ecx), %eax
	movl	116(%esp), %ecx
	subl	4(%ecx), %eax
	movl	%eax, 172(%esp)
	subl	52(%edi), %ebp
	fildl	172(%esp)
	movl	%ebp, 172(%esp)
	movl	108(%edi), %eax
	fildl	172(%esp)
	fdivrp	%st, %st(1)
	fildl	60(%edi)
	fmulp	%st, %st(1)
	fldl	128(%esp)
	fdivrp	%st, %st(1)
	fldl	4(%eax)
	fldl	136(%esp)
	fmul	%st(2), %st
	fadd	%st(1), %st
	fldl	12(%eax)
	fldl	152(%esp)
	fmul	%st(4), %st
	movl	$.LC84, 4(%esp)
	movl	$1, (%esp)
	fadd	%st(1), %st
	fxch	%st(3)
	fstpl	64(%esp)
	fxch	%st(3)
	fstpl	80(%esp)
	fxch	%st(1)
	fstpl	16(%esp)
	fstpl	48(%esp)
	fstpl	32(%esp)
	call	__printf_chk
	movl	100(%esp), %edx
	movl	36(%edi), %ecx
	movl	20(%edx), %edx
	fildl	56(%edi)
	fldl	80(%esp)
	fldl	144(%esp)
	fmul	%st(1), %st
	movl	%edx, 116(%esp)
	fldl	64(%esp)
	faddp	%st, %st(1)
	fldl	48(%esp)
	fsubr	%st, %st(1)
	fxch	%st(1)
	fdiv	%st(3), %st
	fldl	160(%esp)
	fmul	%st(3), %st
	fldl	32(%esp)
	faddp	%st, %st(1)
	fldl	16(%esp)
	fsubr	%st, %st(1)
	fxch	%st(1)
	fdivp	%st, %st(5)
	fxch	%st(3)
	fdivl	16(%edx)
	xorl	%edx, %edx
	fnstcw	170(%esp)
	movzwl	170(%esp), %eax
	movb	$12, %ah
	movw	%ax, 168(%esp)
	fdivs	.LC82
	fsubrs	.LC0
	fmuls	.LC83
	fldcw	168(%esp)
	fistpl	172(%esp)
	fldcw	170(%esp)
	movl	172(%esp), %eax
	testl	%eax, %eax
	js	.L706
	leal	0(,%eax,4), %edx
	cmpl	$255, %eax
	movl	$1020, %edi
	cmovg	%edi, %edx
.L706:
	flds	.LC81
	fld	%st(1)
	movl	116(%esp), %edi
	fmul	%st(1), %st
	cmpl	104(%esp), %ebx
	movl	24(%edi), %eax
	fldcw	168(%esp)
	fistpl	108(%esp)
	fldcw	170(%esp)
	movl	8(%eax), %eax
	fld	%st(4)
	fmul	%st(1), %st
	movl	(%eax,%edx), %ebp
	fldcw	168(%esp)
	fistpl	172(%esp)
	fldcw	170(%esp)
	movl	172(%esp), %edx
	je	.L755
	movl	112(%esp), %eax
	movl	%esi, 124(%esp)
	movl	%edx, %esi
	subl	%ecx, %eax
	movl	%eax, 172(%esp)
	fildl	172(%esp)
	fmul	%st, %st(2)
	fxch	%st(2)
	faddp	%st, %st(3)
	fmul	%st, %st(2)
	fxch	%st(2)
	fldcw	168(%esp)
	fistpl	172(%esp)
	fldcw	170(%esp)
	movl	172(%esp), %edi
	fmulp	%st, %st(3)
	fxch	%st(2)
	faddp	%st, %st(1)
	fmulp	%st, %st(1)
	fldcw	168(%esp)
	fistpl	172(%esp)
	fldcw	170(%esp)
	movl	172(%esp), %ecx
	.p2align 4,,7
	.p2align 3
.L708:
	movl	%ecx, %edx
	movl	%edi, %eax
	shrl	$10, %edx
	addl	%esi, %ecx
	sarl	$16, %eax
	andl	$4032, %edx
	andl	$63, %eax
	addl	%edx, %eax
	movl	0(%ebp,%eax,4), %eax
	addl	108(%esp), %edi
	movl	%eax, (%ebx)
	addl	$4, %ebx
	cmpl	%ebx, 104(%esp)
	jne	.L708
	movl	124(%esp), %esi
	jmp	.L707
.L755:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L707:
	movl	100(%esp), %edx
	movl	12(%edx), %eax
	movl	16(%edx), %ebp
	addl	$1, %eax
	cmpl	%ebp, %eax
	movl	%eax, 12(%edx)
	jg	.L709
	movl	(%edx), %ecx
	movl	112(%esp), %ebx
	leal	(%ecx,%ebx,8), %edx
	cmpl	(%edx), %eax
	jl	.L710
	cmpl	4(%edx), %eax
	jg	.L710
	movl	100(%esp), %edx
	movl	4(%edx), %edi
	movl	%ebx, %edx
	jmp	.L711
	.p2align 4,,7
	.p2align 3
.L752:
	movl	%ebx, %edx
.L711:
	cmpl	%edi, %edx
	je	.L734
	leal	-1(%edx), %ebx
	cmpl	(%ecx,%ebx,8), %eax
	jl	.L734
	cmpl	4(%ecx,%ebx,8), %eax
	jle	.L752
	.p2align 4,,7
	.p2align 3
.L734:
	leal	(%ecx,%esi,8), %ebx
	movl	%eax, %ebp
	cmpl	(%ebx), %eax
	jl	.L718
	cmpl	4(%ebx), %eax
	jg	.L718
	movl	100(%esp), %edi
	movl	8(%edi), %ebx
	movl	120(%esp), %edi
	jmp	.L721
	.p2align 4,,7
	.p2align 3
.L753:
	movl	%edi, %esi
	addl	$1, %edi
.L721:
	cmpl	%ebx, %esi
	je	.L750
	cmpl	(%ecx,%edi,8), %eax
	jl	.L750
	cmpl	4(%ecx,%edi,8), %eax
	jle	.L753
.L750:
	movl	%edi, 120(%esp)
	.p2align 4,,7
	.p2align 3
.L722:
	movl	%edx, 112(%esp)
	movl	%edx, %edi
	movl	120(%esp), %edx
	jmp	.L704
	.p2align 4,,7
	.p2align 3
.L710:
	movl	100(%esp), %ebx
	movl	112(%esp), %edx
	movl	8(%ebx), %edi
	.p2align 4,,7
	.p2align 3
.L744:
	addl	$1, %edx
	cmpl	%edi, %edx
	jle	.L715
	movl	100(%esp), %ebx
	movl	4(%ebx), %edx
.L715:
	cmpl	%edx, 112(%esp)
	je	.L754
.L716:
	leal	(%ecx,%edx,8), %ebx
	cmpl	%eax, (%ebx)
	jg	.L744
	cmpl	%eax, 4(%ebx)
	jl	.L744
	cmpl	%eax, %ebp
	jge	.L734
	.p2align 4,,7
	.p2align 3
.L709:
	movl	100(%esp), %edx
	movl	(%edx), %eax
	movl	24(%edx), %ebx
	testl	%eax, %eax
	je	.L726
	movl	%eax, (%esp)
	call	_ZdaPv
.L726:
	movl	100(%esp), %ecx
	movl	%ecx, (%esp)
	call	_ZdlPv
	testl	%ebx, %ebx
	je	.L694
	movl	%ebx, 100(%esp)
	movl	%ebx, %edx
	jmp	.L747
	.p2align 4,,7
	.p2align 3
.L754:
	movl	100(%esp), %ebx
	addl	$1, %eax
	cmpl	%eax, %ebp
	movl	%eax, 12(%ebx)
	jge	.L716
	jmp	.L709
	.p2align 4,,7
	.p2align 3
.L718:
	movl	100(%esp), %ebx
	movl	4(%ebx), %edi
	.p2align 4,,7
	.p2align 3
.L745:
	subl	$1, %esi
	cmpl	%edi, %esi
	jge	.L724
	movl	100(%esp), %ebx
	movl	8(%ebx), %esi
.L724:
	leal	(%ecx,%esi,8), %ebx
	cmpl	(%ebx), %eax
	jl	.L745
	cmpl	4(%ebx), %eax
	jg	.L745
	leal	1(%esi), %edi
	movl	%edi, 120(%esp)
	jmp	.L722
.L751:
	cmpl	(%edx,%eax,8), %ebp
	jne	.L728
	movl	%eax, %esi
	.p2align 4,,7
	.p2align 3
.L701:
	addl	$1, %esi
	cmpl	%ecx, %esi
	je	.L698
	cmpl	%ebp, (%edx,%esi,8)
	je	.L701
.L728:
	subl	$1, %esi
	jmp	.L703
.L694:
	addl	$188, %esp
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
	.size	_ZN7XEngine12render_floorEv, .-_ZN7XEngine12render_floorEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine6renderEv
	.type	_ZN7XEngine6renderEv, @function
_ZN7XEngine6renderEv:
.LFB1332:
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
	fldl	.LC85
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	108(%ebx), %eax
	fsubl	60(%eax)
	fstpl	(%esp)
	call	sincos
	movl	28(%ebx), %edx
	testl	%edx, %edx
	fldl	16(%esp)
	fstpl	112(%ebx)
	fldl	24(%esp)
	fstpl	120(%ebx)
	movb	$0, 132(%ebx)
	movl	$0, 140(%ebx)
	je	.L757
	movl	152(%ebx), %esi
	xorl	%eax, %eax
	movl	148(%ebx), %ecx
	.p2align 4,,7
	.p2align 3
.L758:
	movl	44(%ebx), %edx
	movl	%edx, (%esi,%eax,4)
	movl	48(%ebx), %edx
	movl	%edx, (%ecx,%eax,4)
	movl	28(%ebx), %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L758
.L757:
	movl	56(%ebx), %eax
	movb	$0, 156(%ebx)
	movl	%eax, 164(%ebx)
	movl	160(%ebx), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset
	movl	28(%ebx), %eax
	movl	$255, 4(%esp)
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	movl	184(%ebx), %eax
	movl	%eax, (%esp)
	call	memset
	movl	32(%ebx), %eax
	movl	$-1, 172(%ebx)
	movl	$-1, 180(%ebx)
	movl	$0, 188(%ebx)
	addl	$1, %eax
	movl	%eax, 168(%ebx)
	movl	28(%ebx), %eax
	movl	$0, 192(%ebx)
	movl	$0, 196(%ebx)
	movl	$0, 200(%ebx)
	addl	$1, %eax
	movl	%eax, 176(%ebx)
	movl	108(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	144(%ebx), %eax
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
	movl	140(%ebx), %eax
	testl	%eax, %eax
	je	.L756
	.p2align 4,,7
	.p2align 3
.L761:
	movb	$0, (%eax)
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L761
.L756:
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
.LFE1332:
	.size	_ZN7XEngine6renderEv, .-_ZN7XEngine6renderEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall
	.type	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall, @function
_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall:
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
	movl	136(%edi), %eax
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
	movl	136(%edi), %eax
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
	movl	136(%edi), %eax
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
	movl	136(%edi), %eax
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
	jp	.L773
	fstp	%st(1)
.L765:
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
	jp	.L774
	fstp	%st(1)
.L767:
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
	jp	.L775
	fstp	%st(1)
.L769:
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
	jp	.L776
	fstp	%st(1)
.L771:
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
.L773:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L765
.L776:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 36(%esp)
	call	sqrt
	movl	36(%esp), %eax
	jmp	.L771
.L775:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L769
.L774:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L767
	.cfi_endproc
.LFE1347:
	.size	_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall, .-_ZN7XEngine18create_square_roomEP7TextureP6SectorRK8Vector2diP4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall
	.type	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall, @function
_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall:
.LFB1348:
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
	movl	136(%esi), %eax
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
	movl	136(%esi), %eax
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
	movl	136(%esi), %eax
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
	movl	136(%esi), %eax
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
	jp	.L786
	fstp	%st(1)
.L778:
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
	jp	.L787
	fstp	%st(1)
.L780:
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
	jp	.L788
	fstp	%st(1)
.L782:
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
	jp	.L789
	fstp	%st(1)
.L784:
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
.L786:
	.cfi_restore_state
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	movl	36(%esp), %edx
	jmp	.L778
.L789:
	fstp	%st(0)
	fstpl	(%esp)
	movl	%eax, 36(%esp)
	call	sqrt
	movl	36(%esp), %eax
	jmp	.L784
.L788:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	jmp	.L782
.L787:
	fstp	%st(0)
	fstpl	(%esp)
	call	sqrt
	.p2align 4,,3
	jmp	.L780
	.cfi_endproc
.LFE1348:
	.size	_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall, .-_ZN7XEngine13create_columnEP7TextureP6SectorRK8Vector2diP4Wall
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13process_inputEv
	.type	_ZN7XEngine13process_inputEv, @function
_ZN7XEngine13process_inputEv:
.LFB1349:
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
	cmpb	$0, 4(%ebx)
	jne	.L805
.L791:
	cmpb	$0, 5(%ebx)
	jne	.L806
.L792:
	cmpb	$0, 6(%ebx)
	je	.L793
	.p2align 4,,3
	jmp	.L807
	.p2align 4,,7
	.p2align 3
.L812:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L793:
	cmpb	$0, 7(%ebx)
	je	.L790
	.p2align 4,,5
	jmp	.L808
	.p2align 4,,7
	.p2align 3
.L810:
	fstp	%st(0)
	.p2align 4,,7
	.p2align 3
.L790:
	addl	$36, %esp
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
.L808:
	.cfi_restore_state
	movl	108(%ebx), %eax
	fldl	.LC88
	faddl	60(%eax)
	fstl	60(%eax)
	fldl	.LC89
	fxch	%st(1)
	fucomi	%st(1), %st
	jae	.L809
	fstp	%st(1)
.L798:
	fldz
	fucomip	%st(1), %st
	jbe	.L810
	faddl	.LC89
	fstpl	60(%eax)
	addl	$36, %esp
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
.L807:
	.cfi_restore_state
	movl	108(%ebx), %eax
	fldl	.LC88
	fsubrl	60(%eax)
	fstl	60(%eax)
	fldl	.LC89
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L811
	fsubp	%st, %st(1)
	fstl	60(%eax)
	jmp	.L794
	.p2align 4,,7
	.p2align 3
.L811:
	fstp	%st(1)
.L794:
	fldz
	fucomip	%st(1), %st
	jbe	.L812
	faddl	.LC89
	fstpl	60(%eax)
	jmp	.L793
	.p2align 4,,7
	.p2align 3
.L806:
	movl	108(%ebx), %esi
	leal	24(%esp), %eax
	leal	16(%esp), %edx
	fldl	.LC85
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	faddl	60(%esi)
	fstpl	(%esp)
	call	sincos
	fldl	24(%esp)
	fldl	.LC87
	fldl	16(%esp)
	fmul	%st(1), %st
	faddl	4(%esi)
	fstpl	4(%esi)
	fmulp	%st, %st(1)
	faddl	12(%esi)
	fstpl	12(%esi)
	jmp	.L792
	.p2align 4,,7
	.p2align 3
.L805:
	movl	108(%ebx), %esi
	leal	24(%esp), %eax
	leal	16(%esp), %edx
	fldl	.LC85
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	faddl	60(%esi)
	fstpl	(%esp)
	call	sincos
	fldl	24(%esp)
	fldl	.LC86
	fldl	16(%esp)
	fmul	%st(1), %st
	faddl	4(%esi)
	fstpl	4(%esi)
	fmulp	%st, %st(1)
	faddl	12(%esi)
	fstpl	12(%esi)
	jmp	.L791
	.p2align 4,,7
	.p2align 3
.L809:
	fsubp	%st, %st(1)
	fstl	60(%eax)
	jmp	.L798
	.cfi_endproc
.LFE1349:
	.size	_ZN7XEngine13process_inputEv, .-_ZN7XEngine13process_inputEv
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine15update_positionEd
	.type	_ZN7XEngine15update_positionEd, @function
_ZN7XEngine15update_positionEd:
.LFB1350:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$56, %esp
	.cfi_def_cfa_offset 64
	movl	64(%esp), %eax
	leal	32(%esp), %edx
	fldl	68(%esp)
	fldl	.LC85
	movl	108(%eax), %ebx
	leal	40(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	faddl	60(%ebx)
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
.LFE1350:
	.size	_ZN7XEngine15update_positionEd, .-_ZN7XEngine15update_positionEd
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine12update_angleEd
	.type	_ZN7XEngine12update_angleEd, @function
_ZN7XEngine12update_angleEd:
.LFB1351:
	.cfi_startproc
	movl	4(%esp), %eax
	fldl	8(%esp)
	movl	108(%eax), %eax
	faddl	60(%eax)
	fstl	60(%eax)
	fldl	.LC89
	fxch	%st(1)
	fucomi	%st(1), %st
	jb	.L821
	fsubp	%st, %st(1)
	fstl	60(%eax)
	jmp	.L815
	.p2align 4,,7
	.p2align 3
.L821:
	fstp	%st(1)
.L815:
	fldz
	fucomip	%st(1), %st
	jbe	.L822
	faddl	.LC89
	fstpl	60(%eax)
	jmp	.L814
	.p2align 4,,7
	.p2align 3
.L822:
	fstp	%st(0)
.L814:
	rep
	ret
	.cfi_endproc
.LFE1351:
	.size	_ZN7XEngine12update_angleEd, .-_ZN7XEngine12update_angleEd
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine13update_heightEi
	.type	_ZN7XEngine13update_heightEi, @function
_ZN7XEngine13update_heightEi:
.LFB1352:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	108(%edx), %edx
	addl	56(%edx), %eax
	cmpl	$9, %eax
	movl	%eax, 56(%edx)
	jg	.L824
	movl	$10, 56(%edx)
	ret
	.p2align 4,,7
	.p2align 3
.L824:
	addl	$-128, %eax
	jle	.L823
	movl	$128, 56(%edx)
.L823:
	ret
	.cfi_endproc
.LFE1352:
	.size	_ZN7XEngine13update_heightEi, .-_ZN7XEngine13update_heightEi
	.align 2
	.p2align 4,,15
	.globl	_ZN7XEngine9update_vpEi
	.type	_ZN7XEngine9update_vpEi, @function
_ZN7XEngine9update_vpEi:
.LFB1353:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	44(%edx), %ecx
	addl	52(%edx), %eax
	cmpl	%ecx, %eax
	movl	%eax, 52(%edx)
	jge	.L827
	movl	%ecx, 52(%edx)
	movl	%ecx, %eax
.L827:
	movl	48(%edx), %ecx
	cmpl	%eax, %ecx
	jge	.L826
	movl	%ecx, 52(%edx)
.L826:
	rep
	ret
	.cfi_endproc
.LFE1353:
	.size	_ZN7XEngine9update_vpEi, .-_ZN7XEngine9update_vpEi
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1355:
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
.LFE1355:
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
	.long	-1571644103
	.long	1066524486
	.section	.rodata.cst4
	.align 4
.LC10:
	.long	1128792064
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	2134057426
	.long	1074977148
	.section	.rodata.cst4
	.align 4
.LC12:
	.long	1069547520
	.section	.rodata.cst8
	.align 8
.LC13:
	.long	-858993459
	.long	1072483532
	.section	.rodata.cst4
	.align 4
.LC14:
	.long	0
	.align 4
.LC15:
	.long	1133903872
	.align 4
.LC16:
	.long	1143930880
	.align 4
.LC17:
	.long	1140457472
	.align 4
.LC18:
	.long	1135542272
	.align 4
.LC19:
	.long	1148846080
	.align 4
.LC20:
	.long	1153138688
	.align 4
.LC21:
	.long	1143275520
	.align 4
.LC22:
	.long	1136852992
	.align 4
.LC23:
	.long	1141309440
	.align 4
.LC24:
	.long	1148190720
	.align 4
.LC25:
	.long	1143111680
	.align 4
.LC26:
	.long	1146388480
	.align 4
.LC27:
	.long	1151909888
	.align 4
.LC28:
	.long	1157234688
	.align 4
.LC29:
	.long	1144750080
	.align 4
.LC30:
	.long	1157627904
	.align 4
.LC31:
	.long	1149239296
	.align 4
.LC32:
	.long	1158479872
	.align 4
.LC33:
	.long	1141473280
	.align 4
.LC34:
	.long	1150844928
	.align 4
.LC35:
	.long	1157840896
	.align 4
.LC36:
	.long	1149403136
	.align 4
.LC37:
	.long	1160298496
	.align 4
.LC38:
	.long	1161117696
	.align 4
.LC39:
	.long	1161936896
	.align 4
.LC40:
	.long	1159479296
	.align 4
.LC41:
	.long	1158660096
	.align 4
.LC42:
	.long	1153957888
	.align 4
.LC43:
	.long	1159069696
	.align 4
.LC44:
	.long	1154777088
	.align 4
.LC45:
	.long	1156415488
	.align 4
.LC46:
	.long	1158250496
	.align 4
.LC47:
	.long	1159172096
	.align 4
.LC48:
	.long	1157636096
	.align 4
.LC49:
	.long	1159376896
	.align 4
.LC50:
	.long	1158455296
	.align 4
.LC51:
	.long	1151500288
	.align 4
.LC52:
	.long	1162346496
	.align 4
.LC53:
	.long	1152811008
	.align 4
.LC54:
	.long	1153794048
	.align 4
.LC55:
	.long	1155760128
	.align 4
.LC56:
	.long	1145569280
	.align 4
.LC57:
	.long	1138819072
	.align 4
.LC58:
	.long	1152319488
	.align 4
.LC59:
	.long	1151090688
	.align 4
.LC60:
	.long	1140785152
	.align 4
.LC61:
	.long	1153630208
	.align 4
.LC62:
	.long	1154449408
	.align 4
.LC63:
	.long	1155268608
	.align 4
.LC64:
	.long	1156087808
	.align 4
.LC65:
	.long	1156907008
	.align 4
.LC66:
	.long	1143767040
	.align 4
.LC67:
	.long	1136197632
	.align 4
.LC68:
	.long	1130102784
	.align 4
.LC69:
	.long	1138163712
	.align 4
.LC70:
	.long	1133248512
	.align 4
.LC71:
	.long	1141719040
	.align 4
.LC72:
	.long	1157902336
	.align 4
.LC73:
	.long	1142865920
	.align 4
.LC74:
	.long	1158189056
	.align 4
.LC75:
	.long	1155596288
	.align 4
.LC76:
	.long	1150066688
	.align 4
.LC77:
	.long	1159274496
	.align 4
.LC78:
	.long	1159888896
	.section	.rodata.cst8
	.align 8
.LC79:
	.long	1167078172
	.long	1071806887
	.section	.rodata.cst4
	.align 4
.LC80:
	.long	1084227584
	.align 4
.LC81:
	.long	1199570944
	.align 4
.LC82:
	.long	1153433600
	.align 4
.LC83:
	.long	1132396544
	.section	.rodata.cst8
	.align 8
.LC85:
	.long	1285274117
	.long	1060467073
	.align 8
.LC86:
	.long	858993459
	.long	1073951539
	.align 8
.LC87:
	.long	858993459
	.long	-1073532109
	.align 8
.LC88:
	.long	-1717986918
	.long	1067030937
	.align 8
.LC89:
	.long	1413754136
	.long	1075388923
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
