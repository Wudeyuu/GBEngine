EXPORT loadTile
SECTION "tiles", ROM0

loadTile:
	push af
	push bc
	push de
	push hl
	
	ld b, 16
	.loop:
		ld a, [hl]
		ld [de], a

		dec b
		inc hl
		inc de
		ld a, 0
		or b
		jr nz, .loop

	pop hl
	pop de
	pop bc
	pop af
	
	ret

EXPORT gameboyIcon
gameboyIcon:
	DB %00111100, %01111110
	DB %01000010, %01000010
	DB %01000010, %01000010
	DB %01000010, %01000010
	DB %01111110, %01011110
	DB %01111110, %00001010
	DB %01111100, %01010110
	DB %00111000, %01111100

SECTION "vRamTiles", VRAM[$8000]
