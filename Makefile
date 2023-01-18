aSMtris.com: aSMtris.hex
	hex2bin.py $< $@

aSMtris.hex: aSMtris.rel
	./aslink -inua _CODE=0x100 $<

aSMtris.rel: aSMtris.asm
	./asx86 -lo $<

clean:
	rm -f aSMtris.com aSMtris.hex aSMtris.rel aSMtris.lst
