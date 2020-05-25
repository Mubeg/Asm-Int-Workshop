.model tiny
.code
org 100h

start: 		mov ax, 3802d
		
		nop
		nop
		mov al, 20h
		nop
		mov ah, 02h
		mov dx, offset Msg
		mov dl, 34h
		int 21h

		mov ax, 4c00h
		int 21h

CR equ 13
LF equ 10
CRLF equ CR, LF

Msg: db 'Hello world!', CRLF, '$'

end		start