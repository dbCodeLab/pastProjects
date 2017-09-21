	.file	"XEngine.cc"
	.section	.text._ZN14XTextureLoaderC2EP14XScreenRgbInfo,"axG",@progbits,_ZN14XTextureLoaderC5EP14XScreenRgbInfo,comdat
	.align 2
	.weak	_ZN14XTextureLoaderC2EP14XScreenRgbInfo
	.type	_ZN14XTextureLoaderC2EP14XScreenRgbInfo, @function
_ZN14XTextureLoaderC2EP14XScreenRgbInfo:
.LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$_ZTV14XTextureLoader+8, (%eax)
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN14XTextureLoaderC2EP14XScreenRgbInfo, .-_ZN14XTextureLoaderC2EP14XScreenRgbInfo
	.section	.text._ZN14XTextureLoaderD2Ev,"axG",@progbits,_ZN14XTextureLoaderD5Ev,comdat
	.align 2
	.weak	_ZN14XTextureLoaderD2Ev
	.type	_ZN14XTextureLoaderD2Ev, @function
_ZN14XTextureLoaderD2Ev:
.LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV14XTextureLoader+8, (%eax)
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L2:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN14XTextureLoaderD2Ev, .-_ZN14XTextureLoaderD2Ev
	.section	.text._ZN14XTextureLoaderD0Ev,"axG",@progbits,_ZN14XTextureLoaderD5Ev,comdat
	.align 2
	.weak	_ZN14XTextureLoaderD0Ev
	.type	_ZN14XTextureLoaderD0Ev, @function
_ZN14XTextureLoaderD0Ev:
.LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN14XTextureLoaderD1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN14XTextureLoaderD0Ev, .-_ZN14XTextureLoaderD0Ev
	.section	.text._ZN14XTextureLoader18release_tex_memoryEv,"axG",@progbits,_ZN14XTextureLoader18release_tex_memoryEv,comdat
	.align 2
	.weak	_ZN14XTextureLoader18release_tex_memoryEv
	.type	_ZN14XTextureLoader18release_tex_memoryEv, @function
_ZN14XTextureLoader18release_tex_memoryEv:
.LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L7
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_ZdaPv
.L7:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN14XTextureLoader18release_tex_memoryEv, .-_ZN14XTextureLoader18release_tex_memoryEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN7XEngineD2Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.weak	_ZN7XEngineD2Ev
	.type	_ZN7XEngineD2Ev, @function
_ZN7XEngineD2Ev:
.LFB1074:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L9
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L9:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1074:
	.size	_ZN7XEngineD2Ev, .-_ZN7XEngineD2Ev
	.section	.text._ZN7XEngineD0Ev,"axG",@progbits,_ZN7XEngineD5Ev,comdat
	.align 2
	.weak	_ZN7XEngineD0Ev
	.type	_ZN7XEngineD0Ev, @function
_ZN7XEngineD0Ev:
.LFB1076:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngineD1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1076:
	.size	_ZN7XEngineD0Ev, .-_ZN7XEngineD0Ev
	.section	.text._ZN17XTextureLoaderPPMC2EP14XScreenRgbInfo,"axG",@progbits,_ZN17XTextureLoaderPPMC5EP14XScreenRgbInfo,comdat
	.align 2
	.weak	_ZN17XTextureLoaderPPMC2EP14XScreenRgbInfo
	.type	_ZN17XTextureLoaderPPMC2EP14XScreenRgbInfo, @function
_ZN17XTextureLoaderPPMC2EP14XScreenRgbInfo:
.LFB1142:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN14XTextureLoaderC2EP14XScreenRgbInfo
	movl	8(%ebp), %eax
	movl	$_ZTV17XTextureLoaderPPM+8, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1142:
	.size	_ZN17XTextureLoaderPPMC2EP14XScreenRgbInfo, .-_ZN17XTextureLoaderPPMC2EP14XScreenRgbInfo
	.text
	.align 2
	.globl	_ZN7XEngineC2EiiP14XScreenRgbInfo
	.type	_ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1145:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1145
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV7XEngine+8, (%eax)
	movl	8(%ebp), %eax
	movl	$50, 2500(%eax)
	movl	8(%ebp), %eax
	movl	$60, 2552(%eax)
	movl	8(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	$20, (%esp)
.LEHB0:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_Znwj
.LEHE0:
	movl	%eax, %ebx
	movl	20(%ebp), %eax
	movzbl	4(%eax), %eax
	movsbl	%al, %edx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB1:
	call	_ZN11XRasterizerC1EiiPhc
.LEHE1:
	movl	8(%ebp), %eax
	movl	%ebx, 8(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	$40, (%esp)
.LEHB2:
	call	_Znwj
	movl	%eax, %ebx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZN17XTextureLoaderPPMC1EP14XScreenRgbInfo
	movl	8(%ebp), %eax
	movl	%ebx, 52(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine9init_dataEv
	addl	$32, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L17:
	.cfi_restore_state
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE1145:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1145-.LLSDACSB1145
.LLSDACSB1145:
	.uleb128 .LEHB0-.LFB1145
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1145
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L17-.LFB1145
	.uleb128 0
	.uleb128 .LEHB2-.LFB1145
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1145:
	.text
	.size	_ZN7XEngineC2EiiP14XScreenRgbInfo, .-_ZN7XEngineC2EiiP14XScreenRgbInfo
	.align 2
	.globl	_ZN7XEngine11process_keyEc
	.type	_ZN7XEngine11process_keyEc, @function
_ZN7XEngine11process_keyEc:
.LFB1147:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	movb	%al, -12(%ebp)
	movsbl	-12(%ebp), %eax
	subl	$97, %eax
	cmpl	$23, %eax
	ja	.L18
	movl	.L29(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L29:
	.long	.L20
	.long	.L21
	.long	.L22
	.long	.L23
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L24
	.long	.L18
	.long	.L25
	.long	.L18
	.long	.L18
	.long	.L26
	.long	.L27
	.long	.L28
	.text
.L24:
	movl	$0, (%esp)
	call	exit
.L20:
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine12update_angleEi
	jmp	.L18
.L23:
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine12update_angleEi
	jmp	.L18
.L27:
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine15update_positionEi
	jmp	.L18
.L25:
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine15update_positionEi
	jmp	.L18
.L28:
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine13update_heightEi
	jmp	.L18
.L22:
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine13update_heightEi
	jmp	.L18
.L26:
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine9update_vpEi
	jmp	.L18
.L21:
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine9update_vpEi
	nop
.L18:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1147:
	.size	_ZN7XEngine11process_keyEc, .-_ZN7XEngine11process_keyEc
	.align 2
	.globl	_ZN7XEngine15update_positionEi
	.type	_ZN7XEngine15update_positionEi, @function
_ZN7XEngine15update_positionEi:
.LFB1148:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	movl	%eax, -12(%ebp)
	fildl	-12(%ebp)
	fstpl	-24(%ebp)
	movl	8(%ebp), %eax
	movl	2524(%eax), %eax
	imull	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	fildl	-12(%ebp)
	fstpl	-32(%ebp)
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fstpl	(%esp)
	call	cos
	fmull	-32(%ebp)
	faddl	-24(%ebp)
	fnstcw	-14(%ebp)
	movzwl	-14(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -16(%ebp)
	fldcw	-16(%ebp)
	fistpl	-12(%ebp)
	fldcw	-14(%ebp)
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2504(%eax)
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	movl	%eax, -12(%ebp)
	fildl	-12(%ebp)
	fstpl	-40(%ebp)
	movl	8(%ebp), %eax
	movl	2528(%eax), %eax
	imull	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	fildl	-12(%ebp)
	fstpl	-48(%ebp)
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fstpl	(%esp)
	call	sin
	fmull	-48(%ebp)
	faddl	-40(%ebp)
	fnstcw	-14(%ebp)
	movzwl	-14(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -16(%ebp)
	fldcw	-16(%ebp)
	fistpl	-12(%ebp)
	fldcw	-14(%ebp)
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2508(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1148:
	.size	_ZN7XEngine15update_positionEi, .-_ZN7XEngine15update_positionEi
	.align 2
	.globl	_ZN7XEngine12update_angleEi
	.type	_ZN7XEngine12update_angleEi, @function
_ZN7XEngine12update_angleEi:
.LFB1149:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fildl	12(%ebp)
	movl	8(%ebp), %eax
	flds	2536(%eax)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	movl	8(%ebp), %eax
	fstps	2532(%eax)
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fldl	.LC1
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	setae	%al
	testb	%al, %al
	je	.L32
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fldl	.LC1
	fsubrp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	movl	8(%ebp), %eax
	fstps	2532(%eax)
.L32:
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L31
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fldl	.LC1
	faddp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	movl	8(%ebp), %eax
	fstps	2532(%eax)
.L31:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1149:
	.size	_ZN7XEngine12update_angleEi, .-_ZN7XEngine12update_angleEi
	.align 2
	.globl	_ZN7XEngine13update_heightEi
	.type	_ZN7XEngine13update_heightEi, @function
_ZN7XEngine13update_heightEi:
.LFB1150:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	2512(%eax), %eax
	movl	12(%ebp), %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 2512(%eax)
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1150:
	.size	_ZN7XEngine13update_heightEi, .-_ZN7XEngine13update_heightEi
	.align 2
	.globl	_ZN7XEngine9update_vpEi
	.type	_ZN7XEngine9update_vpEi, @function
_ZN7XEngine9update_vpEi:
.LFB1151:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	12(%ebp), %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	%eax, %edx
	jge	.L36
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L36:
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	%eax, %edx
	jle	.L35
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.L35:
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1151:
	.size	_ZN7XEngine9update_vpEi, .-_ZN7XEngine9update_vpEi
	.align 2
	.globl	_ZN7XEngine10deg_to_radEi
	.type	_ZN7XEngine10deg_to_radEi, @function
_ZN7XEngine10deg_to_radEi:
.LFB1152:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	fildl	12(%ebp)
	fldl	.LC3
	fmulp	%st, %st(1)
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1152:
	.size	_ZN7XEngine10deg_to_radEi, .-_ZN7XEngine10deg_to_radEi
	.align 2
	.globl	_ZN7XEngine9init_dataEv
	.type	_ZN7XEngine9init_dataEv, @function
_ZN7XEngine9init_dataEv:
.LFB1153:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	$20, 24(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	-21(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	8(%ebp), %eax
	movl	$20, 32(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-21(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine8init_mapEv
	movl	8(%ebp), %eax
	movl	$160, 2508(%eax)
	movl	8(%ebp), %eax
	movl	2508(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2504(%eax)
	movl	8(%ebp), %eax
	movl	$10, 2528(%eax)
	movl	8(%ebp), %eax
	movl	2528(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2524(%eax)
	movl	8(%ebp), %eax
	movl	$0x00000000, %edx
	movl	%edx, 2532(%eax)
	movl	8(%ebp), %eax
	movl	$0x3d6147ae, %edx
	movl	%edx, 2536(%eax)
	movl	8(%ebp), %eax
	movl	$32, 2512(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -16(%ebp)
	fildl	-16(%ebp)
	fstpl	-32(%ebp)
	movl	$30, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine10deg_to_radEi
	fstpl	(%esp)
	call	tan
	fdivrl	-32(%ebp)
	fnstcw	-18(%ebp)
	movzwl	-18(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -20(%ebp)
	fldcw	-20(%ebp)
	fistpl	-16(%ebp)
	fldcw	-18(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2516(%eax)
	movl	8(%ebp), %eax
	movl	2500(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	%edx, %eax
	sall	$12, %eax
	movl	%eax, -16(%ebp)
	fildl	-16(%ebp)
	fstpl	(%esp)
	call	sqrt
	fstps	-12(%ebp)
	flds	-12(%ebp)
	movl	8(%ebp), %eax
	fstps	2548(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine14setup_texturesEv
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine17setup_screen_dataEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1153:
	.size	_ZN7XEngine9init_dataEv, .-_ZN7XEngine9init_dataEv
	.align 2
	.globl	_ZN7XEngine17setup_screen_dataEv
	.type	_ZN7XEngine17setup_screen_dataEv, @function
_ZN7XEngine17setup_screen_dataEv:
.LFB1154:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 2556(%eax)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L41
.L42:
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %ebx
	movl	8(%ebp), %eax
	movl	2516(%eax), %eax
	movl	%eax, -32(%ebp)
	fildl	-32(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -32(%ebp)
	fildl	-32(%ebp)
	fxch	%st(1)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	atan2
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fstps	(%ebx)
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %ebx
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	flds	(%eax)
	fstpl	(%esp)
	call	cos
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fstps	4(%ebx)
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %ebx
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	flds	(%eax)
	fstpl	(%esp)
	call	sin
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fstps	8(%ebx)
	addl	$1, -12(%ebp)
.L41:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-12(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L42
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1154:
	.size	_ZN7XEngine17setup_screen_dataEv, .-_ZN7XEngine17setup_screen_dataEv
	.section	.rodata
.LC5:
	.string	"xwall"
.LC6:
	.string	"ywall"
.LC7:
	.string	"floor"
.LC8:
	.string	"ceiling"
	.text
	.align 2
	.globl	_ZN7XEngine14setup_texturesEv
	.type	_ZN7XEngine14setup_texturesEv, @function
_ZN7XEngine14setup_texturesEv:
.LFB1155:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$21, 76(%eax)
	movl	$12, (%esp)
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	$.LC5, 12(%esp)
	movl	$3, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	movl	$12, (%esp)
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	$.LC6, 12(%esp)
	movl	$3, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	movl	$8, (%esp)
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$.LC7, 12(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	movl	$8, (%esp)
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$.LC8, 12(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7XEngine18create_sky_textureEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1155:
	.size	_ZN7XEngine14setup_texturesEv, .-_ZN7XEngine14setup_texturesEv
	.align 2
	.globl	_ZN7XEngine18create_sky_textureEv
	.type	_ZN7XEngine18create_sky_textureEv, @function
_ZN7XEngine18create_sky_textureEv:
.LFB1156:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$16384, (%esp)
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L45
.L46:
	movl	-16(%ebp), %eax
	movl	$11259375, (%eax)
	addl	$4, -16(%ebp)
	addl	$1, -12(%ebp)
.L45:
	cmpl	$4096, -12(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L46
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1156:
	.size	_ZN7XEngine18create_sky_textureEv, .-_ZN7XEngine18create_sky_textureEv
	.section	.rodata
.LC9:
	.string	"%s%d.ppm"
	.text
	.align 2
	.globl	_ZN7XEngine18gen_light_texturesEPPPjiPKc
	.type	_ZN7XEngine18gen_light_texturesEPPPjiPKc, @function
_ZN7XEngine18gen_light_texturesEPPPjiPKc:
.LFB1157:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$276, %esp
	movl	8(%ebp), %eax
	movl	%eax, -252(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -256(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -260(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -244(%ebp)
	jmp	.L48
	.cfi_offset 3, -12
.L54:
	movl	-244(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC9, 4(%esp)
	leal	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf
	movl	-252(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	(%eax), %ecx
	movl	-252(%ebp), %eax
	movl	52(%eax), %eax
	leal	-212(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	movl	-252(%ebp), %eax
	movl	52(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -224(%ebp)
	movl	-244(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ebx
	addl	-256(%ebp), %ebx
	movl	-252(%ebp), %eax
	movl	76(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%ebx)
	movl	$1, -240(%ebp)
	jmp	.L49
.L53:
	movl	$4096, -220(%ebp)
	movl	-244(%ebp), %eax
	sall	$2, %eax
	addl	-256(%ebp), %eax
	movl	(%eax), %eax
	movl	-240(%ebp), %edx
	subl	$1, %edx
	sall	$2, %edx
	leal	(%eax,%edx), %ebx
	movl	-220(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, (%ebx)
	movl	-244(%ebp), %eax
	sall	$2, %eax
	addl	-256(%ebp), %eax
	movl	(%eax), %eax
	movl	-240(%ebp), %edx
	subl	$1, %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -236(%ebp)
	movl	-220(%ebp), %eax
	sall	$2, %eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	memcpy
	movl	-240(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -216(%ebp)
	movl	$255, -232(%ebp)
	cmpl	$0, -232(%ebp)
	jns	.L50
	movl	$0, -232(%ebp)
.L50:
	movl	$0, -228(%ebp)
	jmp	.L51
.L52:
	movl	-236(%ebp), %edx
	addl	$4, -236(%ebp)
	movl	-252(%ebp), %eax
	movl	4(%eax), %eax
	movl	-232(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN14XScreenRgbInfo12light_nativeEPhi
	addl	$1, -228(%ebp)
.L51:
	movl	-228(%ebp), %eax
	cmpl	-220(%ebp), %eax
	setne	%al
	testb	%al, %al
	jne	.L52
	addl	$1, -240(%ebp)
.L49:
	movl	-252(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-240(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L53
	movl	-252(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-252(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	addl	$1, -244(%ebp)
.L48:
	movl	-244(%ebp), %eax
	cmpl	16(%ebp), %eax
	setne	%al
	testb	%al, %al
	jne	.L54
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L55
	call	__stack_chk_fail
.L55:
	addl	$276, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1157:
	.size	_ZN7XEngine18gen_light_texturesEPPPjiPKc, .-_ZN7XEngine18gen_light_texturesEPPPjiPKc
	.align 2
	.globl	_ZN7XEngine8init_mapEv
	.type	_ZN7XEngine8init_mapEv, @function
_ZN7XEngine8init_mapEv:
.LFB1158:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$100, %esp
	movl	8(%ebp), %eax
	movl	2500(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	%edx, %eax
	sall	$4, %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 92(%eax)
	movl	8(%ebp), %eax
	movl	2500(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	%edx, %eax
	sall	$4, %eax
	movl	%eax, (%esp)
	call	_Znaj
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 96(%eax)
	movl	$0, -80(%ebp)
	jmp	.L57
.L63:
	movl	$0, -76(%ebp)
	jmp	.L58
.L62:
	cmpl	$0, -80(%ebp)
	je	.L59
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	subl	$1, %eax
	cmpl	-80(%ebp), %eax
	je	.L59
	cmpl	$0, -76(%ebp)
	je	.L59
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	subl	$1, %eax
	cmpl	-76(%ebp), %eax
	jne	.L60
.L59:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$1, (%eax)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$192, 12(%eax)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, 12(%eax)
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, 4(%eax)
	jmp	.L61
.L60:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, 12(%eax)
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, 12(%eax)
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, 4(%eax)
.L61:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %ebx
	call	rand
	movl	%eax, %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, 8(%ebx)
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-80(%ebp), %eax
	addl	-76(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %ebx
	call	rand
	movl	%eax, %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, 8(%ebx)
	addl	$1, -76(%ebp)
.L58:
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	cmpl	-76(%ebp), %eax
	setne	%al
	testb	%al, %al
	jne	.L62
	addl	$1, -80(%ebp)
.L57:
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	cmpl	-80(%ebp), %eax
	setne	%al
	testb	%al, %al
	jne	.L63
	movl	$0, -12(%ebp)
	movl	$10, -68(%ebp)
	jmp	.L64
.L67:
	movl	-12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	$15, -64(%ebp)
	jmp	.L65
.L66:
	addl	$8, -72(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-68(%ebp), %eax
	addl	-64(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-68(%ebp), %eax
	addl	-64(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$1, 4(%eax)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-68(%ebp), %eax
	addl	-64(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$0, 8(%eax)
	addl	$1, -64(%ebp)
.L65:
	cmpl	$25, -64(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L66
	addl	$1, -68(%ebp)
.L64:
	cmpl	$12, -68(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L67
	movl	$15, -60(%ebp)
	jmp	.L68
.L71:
	movl	$10, -56(%ebp)
	jmp	.L69
.L70:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-60(%ebp), %eax
	addl	-56(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	_ZZN7XEngine8init_mapEvE6height+4, %eax
	movl	%eax, 12(%edx)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-60(%ebp), %eax
	addl	-56(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$1, 4(%eax)
	addl	$1, -56(%ebp)
.L69:
	cmpl	$20, -56(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L70
	addl	$1, -60(%ebp)
.L68:
	cmpl	$25, -60(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L71
	movl	$15, -52(%ebp)
	jmp	.L72
.L75:
	movl	$20, -48(%ebp)
	jmp	.L73
.L74:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-52(%ebp), %eax
	addl	-48(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	_ZZN7XEngine8init_mapEvE6height+8, %eax
	movl	%eax, 12(%edx)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-52(%ebp), %eax
	addl	-48(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$1, 4(%eax)
	addl	$1, -48(%ebp)
.L73:
	cmpl	$30, -48(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L74
	addl	$1, -52(%ebp)
.L72:
	cmpl	$25, -52(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L75
	movl	$25, -44(%ebp)
	jmp	.L76
.L79:
	movl	$20, -40(%ebp)
	jmp	.L77
.L78:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-44(%ebp), %eax
	addl	-40(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	_ZZN7XEngine8init_mapEvE6height+12, %eax
	movl	%eax, 12(%edx)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-44(%ebp), %eax
	addl	-40(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$1, 4(%eax)
	addl	$1, -40(%ebp)
.L77:
	cmpl	$30, -40(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L78
	addl	$1, -44(%ebp)
.L76:
	cmpl	$31, -44(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L79
	movl	$31, -36(%ebp)
	jmp	.L80
.L83:
	movl	$20, -32(%ebp)
	jmp	.L81
.L82:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	_ZZN7XEngine8init_mapEvE6height+16, %eax
	movl	%eax, 12(%edx)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$1, 4(%eax)
	addl	$1, -32(%ebp)
.L81:
	cmpl	$30, -32(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L82
	addl	$1, -36(%ebp)
.L80:
	cmpl	$40, -36(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L83
	movl	$30, -28(%ebp)
	jmp	.L84
.L88:
	movl	$35, -24(%ebp)
	jmp	.L85
.L87:
	call	rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	testl	%edx, %edx
	sete	%al
	testb	%al, %al
	je	.L86
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-28(%ebp), %eax
	addl	-24(%ebp), %eax
	sall	$4, %eax
	leal	(%edx,%eax), %ebx
	call	rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 12(%ebx)
.L86:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-28(%ebp), %eax
	addl	-24(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$1, 4(%eax)
	addl	$1, -24(%ebp)
.L85:
	cmpl	$48, -24(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L87
	addl	$1, -28(%ebp)
.L84:
	cmpl	$48, -28(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L88
	movl	$30, -20(%ebp)
	jmp	.L89
.L93:
	movl	$2, -16(%ebp)
	jmp	.L90
.L92:
	call	rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	testl	%edx, %edx
	sete	%al
	testb	%al, %al
	je	.L91
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-20(%ebp), %eax
	addl	-16(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$192, 12(%eax)
.L91:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-20(%ebp), %eax
	addl	-16(%ebp), %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	$1, 4(%eax)
	addl	$1, -16(%ebp)
.L90:
	cmpl	$15, -16(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L92
	addl	$1, -20(%ebp)
.L89:
	cmpl	$48, -20(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L93
	addl	$100, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1158:
	.size	_ZN7XEngine8init_mapEv, .-_ZN7XEngine8init_mapEv
	.align 2
	.globl	_ZN7XEngine11render_viewEv
	.type	_ZN7XEngine11render_viewEv, @function
_ZN7XEngine11render_viewEv:
.LFB1159:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$276, %esp
	movl	$0x3c800000, %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -236(%ebp)
	movl	8(%ebp), %eax
	movl	2520(%eax), %eax
	movl	$256, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -68(%ebp)
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -232(%ebp)
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fstpl	(%esp)
	.cfi_offset 3, -12
	call	cos
	fstps	-252(%ebp)
	flds	-252(%ebp)
	movl	8(%ebp), %eax
	fstps	2540(%eax)
	movl	8(%ebp), %eax
	flds	2532(%eax)
	fstpl	(%esp)
	call	sin
	fstps	-252(%ebp)
	flds	-252(%ebp)
	movl	8(%ebp), %eax
	fstps	2544(%eax)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	leal	63(%eax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$6, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	leal	63(%eax), %ebx
	testl	%eax, %eax
	cmovs	%ebx, %eax
	sarl	$6, %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	%ebx, %eax
	addl	%ecx, %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	12(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	8(%ebp), %eax
	movl	2512(%eax), %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 2520(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	imull	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -224(%ebp)
	jmp	.L95
.L127:
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	-224(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	-224(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	8(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	flds	2544(%eax)
	fmuls	-60(%ebp)
	movl	8(%ebp), %eax
	flds	2540(%eax)
	fmuls	-56(%ebp)
	faddp	%st, %st(1)
	fstps	-52(%ebp)
	movl	8(%ebp), %eax
	flds	2540(%eax)
	fmuls	-60(%ebp)
	movl	8(%ebp), %eax
	flds	2544(%eax)
	fmuls	-56(%ebp)
	fsubrp	%st, %st(1)
	fstps	-48(%ebp)
	fld1
	fdivs	-52(%ebp)
	fstps	-44(%ebp)
	fld1
	fdivs	-48(%ebp)
	fstps	-40(%ebp)
	flds	-52(%ebp)
	fdivs	-48(%ebp)
	fstps	-220(%ebp)
	flds	-220(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L96
	flds	-220(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L96
.L128:
	movl	$0x39ab8c0a, %eax
	movl	%eax, -220(%ebp)
.L96:
	movl	8(%ebp), %eax
	flds	2532(%eax)
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	-224(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	flds	(%eax)
	faddp	%st, %st(1)
	fstps	-216(%ebp)
	fldz
	flds	-216(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L98
	flds	-216(%ebp)
	fldl	.LC1
	faddp	%st, %st(1)
	fstps	-216(%ebp)
.L98:
	flds	-216(%ebp)
	fldl	.LC1
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	setae	%al
	testb	%al, %al
	je	.L99
	flds	-216(%ebp)
	fldl	.LC1
	fsubrp	%st, %st(1)
	fstps	-216(%ebp)
.L99:
	flds	-216(%ebp)
	fldl	.LC13
	fucomip	%st(1), %st
	fstp	%st(0)
	setae	%al
	testb	%al, %al
	jne	.L100
	flds	-216(%ebp)
	fldl	.LC14
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	setae	%al
	testb	%al, %al
	je	.L101
.L100:
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	leal	63(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	addl	$1, %eax
	sall	$6, %eax
	movl	%eax, -212(%ebp)
	movl	$0, -132(%ebp)
	movl	$64, -156(%ebp)
	movl	$1, -140(%ebp)
	flds	.LC15
	fdivs	-220(%ebp)
	fstps	-144(%ebp)
	fldz
	flds	-144(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L103
	flds	-144(%ebp)
	fchs
	fstps	-144(%ebp)
	jmp	.L103
.L101:
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	leal	63(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	sall	$6, %eax
	movl	%eax, -212(%ebp)
	movl	$-1, -132(%ebp)
	movl	$-64, -156(%ebp)
	movl	$-1, -140(%ebp)
	flds	.LC15
	fdivs	-220(%ebp)
	fstps	-144(%ebp)
	flds	-144(%ebp)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L103
	flds	-144(%ebp)
	fchs
	fstps	-144(%ebp)
.L103:
	flds	-216(%ebp)
	fldl	.LC16
	fucomip	%st(1), %st
	fstp	%st(0)
	setae	%al
	testb	%al, %al
	je	.L104
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	leal	63(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	addl	$1, %eax
	sall	$6, %eax
	movl	%eax, -208(%ebp)
	movl	$0, -128(%ebp)
	movl	$64, -152(%ebp)
	movl	$1, -136(%ebp)
	flds	-220(%ebp)
	flds	.LC15
	fmulp	%st, %st(1)
	fstps	-148(%ebp)
	fldz
	flds	-148(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L105
	flds	-148(%ebp)
	fchs
	fstps	-148(%ebp)
	jmp	.L105
.L104:
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	leal	63(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	sall	$6, %eax
	movl	%eax, -208(%ebp)
	movl	$-1, -128(%ebp)
	movl	$-64, -152(%ebp)
	movl	$-1, -136(%ebp)
	flds	-220(%ebp)
	flds	.LC15
	fmulp	%st, %st(1)
	fstps	-148(%ebp)
	flds	-148(%ebp)
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L105
	flds	-148(%ebp)
	fchs
	fstps	-148(%ebp)
.L105:
	flds	-40(%ebp)
	flds	.LC15
	fmulp	%st, %st(1)
	fstps	-188(%ebp)
	fldz
	flds	-188(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L106
	flds	-188(%ebp)
	fchs
	fstps	-188(%ebp)
.L106:
	flds	-44(%ebp)
	flds	.LC15
	fmulp	%st, %st(1)
	fstps	-184(%ebp)
	fldz
	flds	-184(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L107
	flds	-184(%ebp)
	fchs
	fstps	-184(%ebp)
.L107:
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	subl	-212(%ebp), %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	fmuls	-40(%ebp)
	fstps	-180(%ebp)
	fldz
	flds	-180(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L108
	flds	-180(%ebp)
	fchs
	fstps	-180(%ebp)
.L108:
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	subl	-208(%ebp), %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	fmuls	-44(%ebp)
	fstps	-176(%ebp)
	fldz
	flds	-176(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L109
	flds	-176(%ebp)
	fchs
	fstps	-176(%ebp)
.L109:
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	movl	-212(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	fmuls	-220(%ebp)
	faddp	%st, %st(1)
	fstps	-196(%ebp)
	movl	-132(%ebp), %eax
	addl	%eax, -212(%ebp)
	movl	-212(%ebp), %eax
	movl	%eax, -204(%ebp)
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	movl	-208(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	fdivs	-220(%ebp)
	faddp	%st, %st(1)
	fstps	-192(%ebp)
	movl	-128(%ebp), %eax
	addl	%eax, -208(%ebp)
	movl	-208(%ebp), %eax
	movl	%eax, -200(%ebp)
	fildl	-204(%ebp)
	fmuls	-72(%ebp)
	fnstcw	-258(%ebp)
	movzwl	-258(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -260(%ebp)
	fldcw	-260(%ebp)
	fistpl	-172(%ebp)
	fldcw	-258(%ebp)
	fildl	-200(%ebp)
	fmuls	-72(%ebp)
	fldcw	-260(%ebp)
	fistpl	-168(%ebp)
	fldcw	-258(%ebp)
	flds	-196(%ebp)
	fmuls	-72(%ebp)
	fstps	-164(%ebp)
	flds	-192(%ebp)
	fmuls	-72(%ebp)
	fstps	-160(%ebp)
	flds	-148(%ebp)
	fmuls	-72(%ebp)
	fstps	-36(%ebp)
	flds	-144(%ebp)
	fmuls	-72(%ebp)
	fstps	-32(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -96(%ebp)
.L126:
	flds	-176(%ebp)
	flds	-180(%ebp)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	testb	%al, %al
	je	.L110
	flds	-164(%ebp)
	fldcw	-260(%ebp)
	fistpl	-256(%ebp)
	fldcw	-258(%ebp)
	movl	-256(%ebp), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	%edx, %eax
	addl	-172(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	-108(%ebp), %edx
	sall	$4, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	-108(%ebp), %edx
	sall	$4, %edx
	addl	%edx, %eax
	movl	12(%eax), %eax
	movl	%eax, -92(%ebp)
	flds	-196(%ebp)
	fldcw	-260(%ebp)
	fistpl	-256(%ebp)
	fldcw	-258(%ebp)
	movl	-256(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	%eax, -112(%ebp)
	flds	-180(%ebp)
	fmuls	-60(%ebp)
	fstps	-240(%ebp)
	movl	-156(%ebp), %eax
	addl	%eax, -204(%ebp)
	flds	-196(%ebp)
	fadds	-148(%ebp)
	fstps	-196(%ebp)
	flds	-180(%ebp)
	fadds	-188(%ebp)
	fstps	-180(%ebp)
	movl	-140(%ebp), %eax
	addl	%eax, -172(%ebp)
	flds	-164(%ebp)
	fadds	-36(%ebp)
	fstps	-164(%ebp)
	jmp	.L111
.L110:
	flds	-160(%ebp)
	fldcw	-260(%ebp)
	fistpl	-256(%ebp)
	fldcw	-258(%ebp)
	movl	-256(%ebp), %edx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	-168(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	-108(%ebp), %edx
	sall	$4, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	-108(%ebp), %edx
	sall	$4, %edx
	addl	%edx, %eax
	movl	12(%eax), %eax
	movl	%eax, -92(%ebp)
	flds	-192(%ebp)
	fldcw	-260(%ebp)
	fistpl	-256(%ebp)
	fldcw	-258(%ebp)
	movl	-256(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	%eax, -112(%ebp)
	flds	-176(%ebp)
	fmuls	-60(%ebp)
	fstps	-240(%ebp)
	movl	-152(%ebp), %eax
	addl	%eax, -200(%ebp)
	flds	-192(%ebp)
	fadds	-144(%ebp)
	fstps	-192(%ebp)
	flds	-176(%ebp)
	fadds	-184(%ebp)
	fstps	-176(%ebp)
	movl	-136(%ebp), %eax
	addl	%eax, -168(%ebp)
	flds	-160(%ebp)
	fadds	-32(%ebp)
	fstps	-160(%ebp)
.L111:
	flds	-240(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L112
	flds	-240(%ebp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L112
.L129:
	movl	$0x3f800000, %eax
	movl	%eax, -240(%ebp)
.L112:
	movl	8(%ebp), %eax
	movl	2516(%eax), %edx
	movl	8(%ebp), %eax
	movl	2520(%eax), %eax
	subl	-88(%ebp), %eax
	imull	%edx, %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	fdivs	-240(%ebp)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	faddp	%st, %st(1)
	fldcw	-260(%ebp)
	fistpl	-104(%ebp)
	fldcw	-258(%ebp)
	movl	-88(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jg	.L114
	addl	$1, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L115
.L114:
	movl	8(%ebp), %eax
	movl	2516(%eax), %eax
	imull	-28(%ebp), %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	fdivs	-240(%ebp)
	fldcw	-260(%ebp)
	fistpl	-24(%ebp)
	fldcw	-258(%ebp)
	movl	-24(%ebp), %eax
	movl	-104(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -100(%ebp)
	movl	$0x00000000, %eax
	movl	%eax, -120(%ebp)
	fildl	-28(%ebp)
	fildl	-24(%ebp)
	fdivrp	%st, %st(1)
	fstps	-20(%ebp)
	movl	-100(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jg	.L115
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-100(%ebp), %eax
	jle	.L116
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	subl	-100(%ebp), %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	fmuls	-20(%ebp)
	fstps	-120(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -100(%ebp)
.L116:
	movl	-104(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jle	.L117
	movl	-96(%ebp), %eax
	movl	%eax, -104(%ebp)
.L117:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	imull	-100(%ebp), %eax
	sall	$2, %eax
	addl	-236(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	-108(%ebp), %ecx
	sall	$4, %ecx
	addl	%ecx, %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-112(%ebp), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	flds	-120(%ebp)
	flds	.LC17
	fmulp	%st, %st(1)
	fldcw	-260(%ebp)
	fistpl	-124(%ebp)
	fldcw	-258(%ebp)
	flds	-20(%ebp)
	flds	.LC17
	fmulp	%st, %st(1)
	fldcw	-260(%ebp)
	fistpl	-12(%ebp)
	fldcw	-258(%ebp)
	movl	-100(%ebp), %eax
	movl	-104(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -84(%ebp)
	jmp	.L118
.L119:
	movl	-124(%ebp), %eax
	movl	%eax, %edx
	sarl	$16, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-80(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	addl	%eax, -124(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$2, %eax
	addl	%eax, -80(%ebp)
.L118:
	cmpl	$0, -84(%ebp)
	setne	%al
	subl	$1, -84(%ebp)
	testb	%al, %al
	jne	.L119
	addl	$1, -104(%ebp)
.L115:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	-104(%ebp), %eax
	jge	.L120
	movl	-104(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jg	.L120
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	imull	-104(%ebp), %eax
	sall	$2, %eax
	addl	-236(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	imull	-104(%ebp), %eax
	sall	$2, %eax
	addl	-232(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-104(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	-104(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -228(%ebp)
	jmp	.L121
.L122:
	movl	8(%ebp), %eax
	movl	2520(%eax), %eax
	subl	-88(%ebp), %eax
	movl	%eax, -256(%ebp)
	fildl	-256(%ebp)
	fildl	-228(%ebp)
	fdivrp	%st, %st(1)
	movl	-76(%ebp), %eax
	fstps	(%eax)
	addl	$1, -228(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$2, %eax
	addl	%eax, -76(%ebp)
.L121:
	cmpl	$0, -84(%ebp)
	setne	%al
	subl	$1, -84(%ebp)
	testb	%al, %al
	jne	.L122
.L120:
	movl	-100(%ebp), %eax
	cmpl	-96(%ebp), %eax
	jg	.L123
	movl	-100(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -96(%ebp)
.L123:
	movl	-92(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	-96(%ebp), %eax
	jg	.L124
	cmpl	$1, -116(%ebp)
	je	.L124
	movl	$1, %eax
	jmp	.L125
.L124:
	movl	$0, %eax
.L125:
	testb	%al, %al
	jne	.L126
	addl	$1, -224(%ebp)
	addl	$4, -236(%ebp)
	addl	$4, -232(%ebp)
.L95:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-224(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L127
	addl	$276, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1159:
	.size	_ZN7XEngine11render_viewEv, .-_ZN7XEngine11render_viewEv
	.section	.rodata
.LC18:
	.string	"ciao"
	.text
	.align 2
	.globl	_ZN7XEngine12render_floorEv
	.type	_ZN7XEngine12render_floorEv, @function
_ZN7XEngine12render_floorEv:
.LFB1160:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$196, %esp
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	8(%ebp), %eax
	movl	2556(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	8(%eax), %eax
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %eax
	flds	2540(%eax)
	fmuls	-104(%ebp)
	fstps	-96(%ebp)
	movl	8(%ebp), %eax
	flds	2544(%eax)
	fmuls	-100(%ebp)
	fstps	-92(%ebp)
	flds	-96(%ebp)
	fsubs	-92(%ebp)
	fstps	-88(%ebp)
	flds	-96(%ebp)
	fadds	-92(%ebp)
	fstps	-84(%ebp)
	movl	8(%ebp), %eax
	flds	2544(%eax)
	fmuls	-104(%ebp)
	fstps	-80(%ebp)
	movl	8(%ebp), %eax
	flds	2540(%eax)
	fmuls	-100(%ebp)
	fstps	-76(%ebp)
	flds	-80(%ebp)
	fadds	-76(%ebp)
	fstps	-72(%ebp)
	flds	-80(%ebp)
	fsubs	-76(%ebp)
	fstps	-68(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -172(%ebp)
	fildl	-172(%ebp)
	fld1
	fdivp	%st, %st(1)
	fstps	-64(%ebp)
	movl	8(%ebp), %eax
	movl	2516(%eax), %eax
	movl	%eax, -172(%ebp)
	fildl	-172(%ebp)
	fdivs	-104(%ebp)
	fstps	-60(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	imull	%ebx, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -156(%ebp)
	movl	-156(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %ebx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	imull	%ebx, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	addl	$1, %eax
	movl	%eax, -140(%ebp)
	jmp	.L131
.L159:
	movl	-144(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L132
.L136:
	movl	-144(%ebp), %eax
	flds	(%eax)
	fldz
	fucomip	%st(1), %st
	jp	.L165
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L162
	addl	$4, -144(%ebp)
	addl	$1, -136(%ebp)
.L132:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-136(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L136
	jmp	.L135
.L165:
	fstp	%st(0)
.L162:
	nop
.L135:
	movl	-136(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	addl	$1, %eax
	cmpl	-136(%ebp), %eax
	je	.L163
.L137:
	movl	-144(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	addl	$4, -144(%ebp)
	movl	$1, -132(%ebp)
	jmp	.L139
.L147:
	movl	-144(%ebp), %eax
	flds	(%eax)
	fldz
	fucomip	%st(1), %st
	jp	.L166
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L140
	jmp	.L160
.L166:
	fstp	%st(0)
.L160:
	movl	$0, -128(%ebp)
	jmp	.L142
.L146:
	movl	8(%ebp), %ecx
	movl	-128(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$100, %eax
	flds	(%eax)
	movl	-144(%ebp), %eax
	flds	(%eax)
	fucomi	%st(1), %st
	jp	.L167
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L164
	jmp	.L143
.L167:
	fstp	%st(0)
	fstp	%st(0)
.L143:
	addl	$1, -128(%ebp)
.L142:
	movl	-128(%ebp), %eax
	cmpl	-132(%ebp), %eax
	setne	%al
	testb	%al, %al
	jne	.L146
	jmp	.L145
.L164:
	nop
.L145:
	movl	-128(%ebp), %eax
	cmpl	-132(%ebp), %eax
	jne	.L140
	movl	-144(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %ebx
	movl	-132(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$100, %eax
	movl	%ecx, (%eax)
	addl	$1, -132(%ebp)
.L140:
	addl	$4, -144(%ebp)
	addl	$1, -136(%ebp)
.L139:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-136(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L147
	movl	$0, -124(%ebp)
	jmp	.L148
.L149:
	movl	8(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$100, %eax
	flds	(%eax)
	fmuls	-60(%ebp)
	fstps	-48(%ebp)
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	movl	%eax, -172(%ebp)
	fildl	-172(%ebp)
	flds	-48(%ebp)
	fmuls	-88(%ebp)
	faddp	%st, %st(1)
	fstps	-44(%ebp)
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	movl	%eax, -172(%ebp)
	fildl	-172(%ebp)
	flds	-48(%ebp)
	fmuls	-72(%ebp)
	faddp	%st, %st(1)
	fstps	-40(%ebp)
	movl	8(%ebp), %eax
	movl	2504(%eax), %eax
	movl	%eax, -172(%ebp)
	fildl	-172(%ebp)
	flds	-48(%ebp)
	fmuls	-84(%ebp)
	faddp	%st, %st(1)
	fstps	-36(%ebp)
	movl	8(%ebp), %eax
	movl	2508(%eax), %eax
	movl	%eax, -172(%ebp)
	fildl	-172(%ebp)
	flds	-48(%ebp)
	fmuls	-68(%ebp)
	faddp	%st, %st(1)
	fstps	-32(%ebp)
	flds	-36(%ebp)
	fsubs	-44(%ebp)
	fmuls	-64(%ebp)
	fstps	-28(%ebp)
	flds	-32(%ebp)
	fsubs	-40(%ebp)
	fmuls	-64(%ebp)
	fstps	-24(%ebp)
	movl	8(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	leal	104(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
	flds	-44(%ebp)
	flds	.LC17
	fmulp	%st, %st(1)
	fnstcw	-174(%ebp)
	movzwl	-174(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -176(%ebp)
	fldcw	-176(%ebp)
	fistpl	-172(%ebp)
	fldcw	-174(%ebp)
	movl	-172(%ebp), %ecx
	movl	8(%ebp), %ebx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$108, %eax
	movl	%ecx, (%eax)
	flds	-40(%ebp)
	flds	.LC17
	fmulp	%st, %st(1)
	fldcw	-176(%ebp)
	fistpl	-172(%ebp)
	fldcw	-174(%ebp)
	movl	-172(%ebp), %ecx
	movl	8(%ebp), %ebx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$112, %eax
	movl	%ecx, (%eax)
	flds	-28(%ebp)
	flds	.LC17
	fmulp	%st, %st(1)
	fldcw	-176(%ebp)
	fistpl	-172(%ebp)
	fldcw	-174(%ebp)
	movl	-172(%ebp), %ecx
	movl	8(%ebp), %ebx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$116, %eax
	movl	%ecx, (%eax)
	flds	-24(%ebp)
	flds	.LC17
	fmulp	%st, %st(1)
	fldcw	-176(%ebp)
	fistpl	-172(%ebp)
	fldcw	-174(%ebp)
	movl	-172(%ebp), %ecx
	movl	8(%ebp), %ebx
	movl	-124(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$120, %eax
	movl	%ecx, (%eax)
	addl	$1, -124(%ebp)
.L148:
	movl	-124(%ebp), %eax
	cmpl	-132(%ebp), %eax
	setne	%al
	testb	%al, %al
	jne	.L149
	movl	-56(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	$-1, -116(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L150
.L158:
	movl	-144(%ebp), %eax
	flds	(%eax)
	fldz
	fucomip	%st(1), %st
	jp	.L168
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L151
	jmp	.L161
.L168:
	fstp	%st(0)
.L161:
	movl	8(%ebp), %eax
	addl	$100, %eax
	movl	%eax, -120(%ebp)
	jmp	.L153
.L154:
	addl	$24, -120(%ebp)
.L153:
	movl	-120(%ebp), %eax
	flds	(%eax)
	movl	-144(%ebp), %eax
	flds	(%eax)
	fucomi	%st(1), %st
	setp	%dl
	movl	$1, %eax
	fucomip	%st(1), %st
	fstp	%st(0)
	cmove	%edx, %eax
	testb	%al, %al
	jne	.L154
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-120(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	sarl	$16, %eax
	leal	63(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	sarl	$16, %eax
	leal	63(%eax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$6, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	2500(%eax), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-116(%ebp), %eax
	je	.L155
	movl	-12(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	-12(%ebp), %ecx
	sall	$4, %ecx
	addl	%ecx, %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
.L155:
	movl	$.LC18, (%esp)
	call	printf
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sarl	$16, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, %ecx
	sall	$6, %ecx
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$16, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	-112(%ebp), %eax
	movl	(%eax), %edx
	movl	-152(%ebp), %eax
	movl	%edx, (%eax)
.L151:
	movl	$0, -108(%ebp)
	jmp	.L156
.L157:
	movl	8(%ebp), %ecx
	movl	-108(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$108, %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %ebx
	movl	-108(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$116, %eax
	movl	(%eax), %eax
	addl	%eax, %ecx
	movl	8(%ebp), %ebx
	movl	-108(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$108, %eax
	movl	%ecx, (%eax)
	movl	8(%ebp), %ecx
	movl	-108(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	addl	$112, %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %ebx
	movl	-108(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$120, %eax
	movl	(%eax), %eax
	addl	%eax, %ecx
	movl	8(%ebp), %ebx
	movl	-108(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%ebx, %eax
	addl	$112, %eax
	movl	%ecx, (%eax)
	addl	$1, -108(%ebp)
.L156:
	movl	-108(%ebp), %eax
	cmpl	-132(%ebp), %eax
	setne	%al
	testb	%al, %al
	jne	.L157
	addl	$4, -144(%ebp)
	addl	$4, -152(%ebp)
	addl	$1, -136(%ebp)
.L150:
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-136(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L158
	jmp	.L138
.L163:
	nop
.L138:
	addl	$1, -140(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$2, %eax
	addl	%eax, -156(%ebp)
	movl	-156(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$2, %eax
	addl	%eax, -148(%ebp)
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
.L131:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-140(%ebp), %eax
	setge	%al
	testb	%al, %al
	jne	.L159
	addl	$196, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1160:
	.size	_ZN7XEngine12render_floorEv, .-_ZN7XEngine12render_floorEv
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
	.weak	_ZTS7XEngine
	.section	.rodata._ZTS7XEngine,"aG",@progbits,_ZTS7XEngine,comdat
	.type	_ZTS7XEngine, @object
	.size	_ZTS7XEngine, 9
_ZTS7XEngine:
	.string	"7XEngine"
	.weak	_ZTI7XEngine
	.section	.rodata._ZTI7XEngine,"aG",@progbits,_ZTI7XEngine,comdat
	.align 4
	.type	_ZTI7XEngine, @object
	.size	_ZTI7XEngine, 8
_ZTI7XEngine:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS7XEngine
	.weak	_ZTS14XTextureLoader
	.section	.rodata._ZTS14XTextureLoader,"aG",@progbits,_ZTS14XTextureLoader,comdat
	.type	_ZTS14XTextureLoader, @object
	.size	_ZTS14XTextureLoader, 17
_ZTS14XTextureLoader:
	.string	"14XTextureLoader"
	.weak	_ZTI14XTextureLoader
	.section	.rodata._ZTI14XTextureLoader,"aG",@progbits,_ZTI14XTextureLoader,comdat
	.align 4
	.type	_ZTI14XTextureLoader, @object
	.size	_ZTI14XTextureLoader, 8
_ZTI14XTextureLoader:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS14XTextureLoader
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1161:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L169
	cmpl	$65535, 12(%ebp)
	jne	.L169
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L169:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1161:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, @function
_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo:
.LFB1162:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1162:
	.size	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo, .-_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__sub_I__ZN7XEngineC2EiiP14XScreenRgbInfo
	.data
	.align 4
	.type	_ZZN7XEngine8init_mapEvE6height, @object
	.size	_ZZN7XEngine8init_mapEvE6height, 20
_ZZN7XEngine8init_mapEvE6height:
	.long	0
	.long	16
	.long	32
	.long	48
	.long	64
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
	.weak	_ZN14XTextureLoaderC1EP14XScreenRgbInfo
	.set	_ZN14XTextureLoaderC1EP14XScreenRgbInfo,_ZN14XTextureLoaderC2EP14XScreenRgbInfo
	.weak	_ZN14XTextureLoaderD1Ev
	.set	_ZN14XTextureLoaderD1Ev,_ZN14XTextureLoaderD2Ev
	.weak	_ZN7XEngineD1Ev
	.set	_ZN7XEngineD1Ev,_ZN7XEngineD2Ev
	.weak	_ZN17XTextureLoaderPPMC1EP14XScreenRgbInfo
	.set	_ZN17XTextureLoaderPPMC1EP14XScreenRgbInfo,_ZN17XTextureLoaderPPMC2EP14XScreenRgbInfo
	.globl	_ZN7XEngineC1EiiP14XScreenRgbInfo
	.set	_ZN7XEngineC1EiiP14XScreenRgbInfo,_ZN7XEngineC2EiiP14XScreenRgbInfo
	.section	.rodata
	.align 8
.LC1:
	.long	1413754136
	.long	1075388923
	.align 8
.LC3:
	.long	-1571644103
	.long	1066524486
	.align 8
.LC13:
	.long	1413754136
	.long	1073291771
	.align 8
.LC14:
	.long	2134057426
	.long	1074977148
	.align 4
.LC15:
	.long	1115684864
	.align 8
.LC16:
	.long	1413754136
	.long	1074340347
	.align 4
.LC17:
	.long	1199570944
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
