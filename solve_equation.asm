format ELF64

section ".text" executable
public solve_equation as "solve_equation"

solve_equation:
	call solve
	ret


solve:
	movsd xmm0, [rcx]
	movsd xmm1, [rdx]
	mov edx, 0
	cvtsi2ss xmm2, edx
	subsd xmm2, xmm1
	divsd xmm2, xmm0
    movsd xmm0, xmm2
    movsd [r8], xmm0
    sub r9, 1
    cmp r9, 0
    jz end_solve
    jmp solve

end_solve:
    ret


