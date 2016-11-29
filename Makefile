cc=icpc
object = fastalib.o matrix.o swscalar.o swsse2.o swstriped.o swwozniak.o

cflag = -g -fopenmp -O3
lflag=-fopenmp -O3

smith-water: $(object)
	$(cc) $(cflag) $(lflag) -o smith-water $(object)

fastalib.o: fastalib.c
	$(cc)  $(cflag) -c fastalib.c

matrix.o: matrix.c
	$(cc)  $(cflag) -c matrix.c

swscalar.o:swscalar.c
	$(cc) $(cflag) -c swscalar.c

swsse2.o: swsse2.c
	$(cc) $(cflag) -c swsse2.c

swstriped.o: swstriped.c
	$(cc) $(cflag) -c swstriped.c

swwozniak.o: swwozniak.c
	$(cc) $(cflag) -c swwozniak.c


make clean:
	rm smith-water $(object) 
