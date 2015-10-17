; Chapter 3 Exercise 2: Symbolic Integer Constants
; Erik Vanlandingham
; CIS-361
; Last Modified 10-17-15

Comment !
Description: Write a program that defines symbolic constants
for all of the days of the week. Create an array variable
that uses the symbols as initializers.
!

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

; Set the constants
MONDAY = 0
TUESDAY = 1
WEDNESDAY = 2
THURSDAY = 3
FRIDAY = 4
SATURDAY = 5
SUNDAY = 6

.data

; Use the constants as elements in the array of days
myDays BYTE MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY

.code
main PROC
; Only declarations were required
	INVOKE ExitProcess,0
main ENDP
END main