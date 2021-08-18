
TARGET=vpl_execution

BUILD_DIR = ./build
SRC_DIR = ./src
INCLUDE_DIR = ./include

#Linkagem
${TARGET}: ${BUILD_DIR}/main.o ${BUILD_DIR}/Circulo.o ${BUILD_DIR}/Cilindro.o ${BUILD_DIR}/Ponto.o
	g++ ${BUILD_DIR}/*.o -o ${TARGET}

#Compilacao
${BUILD_DIR}/main.o: main.cpp
	g++ -c main.cpp -o ${BUILD_DIR}/main.o

${BUILD_DIR}/Circulo.o: Circulo.cpp Circulo.hpp
	g++ -c Circulo.cpp -o ${BUILD_DIR}/Circulo.o

${BUILD_DIR}/Cilindro.o: Cilindro.cpp Cilindro.hpp
	g++ -c Cilindro.cpp -o ${BUILD_DIR}/Cilindro.o

${BUILD_DIR}/Ponto.o: Ponto.cpp Ponto.hpp
	g++ -c Ponto.cpp -o ${BUILD_DIR}/Ponto.o


clean: 
	rm build/*.o ${TARGET}
