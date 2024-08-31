; Jose Isaac Suarez Guzman

.org  0000h
; cargamos  numerod hexadeecimales al  los registro B Y C
 ld b, 27h
 ld c, 7h
; converrtimos el bit mas alto de B a bcd
 ld a,b
 srl a
; convertimos el bit mas alto de C a bcd
 ld d,c
 srl d
; convertimos el digito mas bajo de C a bcd
 ld e,c
 AND  0fh
; almacenamos en registros DE
 sla d
 add a ,d

; convertimos el digito mas bajo de B a bcd
 ld c,b
  AND  0fh
 ;almacenaje en el Registro BC

 sla b
 add a,c

; suma de los digitos mas bajos
 ld a,c

 add a,e
 daa
 ld l,a

 ; suma de los digitos mas altos
 ld a,b
 adc a , d
 daa
 ld h,a

 ld a,0



end
