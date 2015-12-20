[org 0x0100]

jmp START
	
CLRSCREEN:
	mov cx, 4000
	mov ax, 0x0720
	CLD
	rep stosw
	ret

START:
	mov ax, 0xb800
	mov es,ax
	call CLRSCREEN

mov ax, 0x4c00
INT 0x21