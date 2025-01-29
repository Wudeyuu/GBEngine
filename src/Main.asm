SECTION "start", ROM0[$100]

start:
	jp main

SECTION "main", ROM0[$150]

main:
	jp main
