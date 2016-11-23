all: grabar_raw

clean:
	rm grabar_raw && rm tmpp.raw

grabar_raw:
	gcc -o grabar_raw -lasound grabar_raw.c && echo "COMPILADO"

rec:
	./grabar_raw > tmpp.raw

play:
	aplay -f cd tmpp.raw
