object = fastalib.o matrix.o swscalar.o swsse2.o swstriped.o swwozniak.o


smith-water: $(object)
	cc -o smith-water $(object)

fastalib.o: fastalib.c
	cc -c fastalib.c

matrix.o: matrix.c
	cc -c matrix.c

swscalar.o:swscalar.c
	cc -c swscalar.c

swsse2.o: swsse2.c
	cc -c swsse2.c

swstriped.o: swstriped.c
	cc -c swstriped.c

swwozniak.o: swwozniak.c
	cc -c swwozniak.c


make clean:
	rm smith-water $(object) 
