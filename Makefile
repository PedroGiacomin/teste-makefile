
TARGET=vpl_execution
CC = g++

BUILD_DIR = ./build
SRC_DIR = ./src
INCLUDE_DIR = ./include

#Linkagem
${TARGET}: ${BUILD_DIR}/main.o ${BUILD_DIR}/Circulo.o ${BUILD_DIR}/Cilindro.o ${BUILD_DIR}/Ponto.o
	${CC} ${BUILD_DIR}/*.o -o ${TARGET}

#Compilacao
${BUILD_DIR}/main.o: main.cpp
	${CC} -I ${INCLUDE_DIR} -c main.cpp -o ${BUILD_DIR}/main.o

${BUILD_DIR}/Circulo.o: Circulo.cpp ${INCLUDE_DIR}/Circulo.hpp
	${CC} -I ${INCLUDE_DIR} -c Circulo.cpp -o ${BUILD_DIR}/Circulo.o

${BUILD_DIR}/Cilindro.o: Cilindro.cpp ${INCLUDE_DIR}/Cilindro.hpp
	${CC} -I ${INCLUDE_DIR} -c Cilindro.cpp -o ${BUILD_DIR}/Cilindro.o

${BUILD_DIR}/Ponto.o: Ponto.cpp ${INCLUDE_DIR}/Ponto.hpp
	${CC} -I ${INCLUDE_DIR} -c Ponto.cpp -o ${BUILD_DIR}/Ponto.o

#Precisa desse -I e o dir dos .hpp para o codigo dentro do cpp conseguir achar o hpp
#Precisa desse -c pra compilar
#Precisa desse -o pra criar o arquivo .o dentro da pasta build

clean: 
	rm build/*.o ${TARGET}
