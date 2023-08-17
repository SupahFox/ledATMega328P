;
; main.asm
;
; Created: 31/8/2021 15:27:54
; Author : Administrador, SupahFox
;
.include "./m328Pdef.inc"
.org 0x00 ;aca arranca el programa
; Replace with your application code

setup: ; configuro los puerto y pongo valores incinales

ldi r16,0b00111100 ; Acá le asigno el valor en binario a r16 para saber donde están los pines del led
				   ; Los 1 (de izquierda a derecha) son pb2, pb3, pb4, pb5

out DDRB,r16 ; Le paso la variable de r16 a DDRB

ldi r16, 0xFF
out PORTB,r16
start:
	ldi r16,0b11000011 
	out PORTB,r16; prendo el pin 2 del puerto B. -
	rjmp start