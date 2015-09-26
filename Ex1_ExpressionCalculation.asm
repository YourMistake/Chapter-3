; Chapter 3, Exercise 1: Expression Calculation

Comment !
Description: Using the AddTwo program from Section 3.2 as a
reference, write a program that calculates the following expression, 
using registers: A = (A + B) - (C + D). Assign integer values to the EAX,
EBX, ECX, and EDX registers.
!

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

Comment !.data This is an implementation using word variables instead of simply assigning values into each register
varA WORD 0002h
varB WORD 0001h
varC WORD 0002h
varD WORD 0003h

.code
main PROC
mov eax, varA
add eax, varB
mov ebx, varC
add ebx, varD
sub eax, ebx
mov varA, eax
!
.code
main PROC
	mov eax, 2
    mov ebx, 3
    mov ecx, 1
    mov edx, 5
    add eax, ebx
    add ecx, edx
    sub eax, ebx

	INVOKE ExitProcess,0
main ENDP
END main