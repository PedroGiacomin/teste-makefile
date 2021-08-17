
program: main.o Circulo.o Cilindro.o Ponto.o
	g++ main.o Circulo.o Cilindro.o Ponto.o -o program

main.o: main.cpp
	g++ -c main.cpp

Circulo.o: Circulo.h Circulo.cpp
	g++ -c Circulo.cpp

Cilindro.o: Cilindro.h Cilindro.cpp
	g++ -c Cilindro.cpp

Ponto.o: Ponto.h Ponto.cpp
	g++ -c Ponto.cpp

clean: 
	rm *.o 
