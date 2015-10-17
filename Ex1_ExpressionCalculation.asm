; Chapter 3, Exercise 1: Expression Calculation
; Erik Vanlandingham
; CIS-361
; Last Modified 10-17-15

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

.code
main PROC
    ; Move the values into the registers
	mov eax, 2
    mov ebx, 3
    mov ecx, 1
    mov edx, 5
    add eax, ebx    ; 5
    add ecx, edx    ; 6
    sub eax, ecx    ; The result is FFFFFFFF

	INVOKE ExitProcess,0
main ENDP
END main