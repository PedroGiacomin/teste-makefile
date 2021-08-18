
program: main.o Circulo.o Cilindro.o Ponto.o
	g++ main.o Circulo.o Cilindro.o Ponto.o -o program

main.o: main.cpp
	g++ -c main.cpp

Circulo.o: Circulo.cpp Circulo.hpp
	g++ -c Circulo.cpp

Cilindro.o: Cilindro.cpp Cilindro.hpp
	g++ -c Cilindro.cpp

Ponto.o: Ponto.cpp Ponto.hpp
	g++ -c Ponto.cpp

clean: 
	rm *.o 
