; Chapter 3 Exercise 2: Symbolic Integer Constants

Comment !
Description: Write a program that defines symbolic constants
for all of the days of the week. Create an array variable
that uses the symbols as initializers.
!

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

??? = 0

.data
myDays BYTE ???

.code
main PROC

	INVOKE ExitProcess,0
main ENDP
END main