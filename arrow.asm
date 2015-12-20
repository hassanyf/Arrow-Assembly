[org 0x0100]

jmp START
	
CLRSCREEN:
	mov cx, 4000
	mov ax, 0x0720
	CLD
	rep stosw
	ret

RIGHT:
	xor di, di
	mov cx, 80
here:
	mov ax, 0x073E
	push cx
	mov cx, 60000
delay:
	loop delay
	pop cx
	dec di
	dec di
	push ax
	mov ax, 0x0720
	mov word[es:di], ax
	pop ax
	inc di
	inc di
	CLD
	stosw
	loop here
	ret

START:
	mov ax, 0xb800
	mov es,ax
	call CLRSCREEN
	call RIGHT

mov ax, 0x4c00
INT 0x21