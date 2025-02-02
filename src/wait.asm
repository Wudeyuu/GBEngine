EXPORT wait
SECTION "wait", ROM0

wait:
	push de
	push af
	
	ld de, 6553
	.loop_waitde:
		dec de
		ld a, d
		or e
		jr nz, .loop_waitde

	pop af
	pop de
	ret
