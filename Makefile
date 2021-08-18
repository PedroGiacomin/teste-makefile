
TARGET=vpl_execution
CC = g++

BUILD_DIR = ./build
SRC_DIR = ./src
INCLUDE_DIR = ./include

#Linkagem
${TARGET}: ${BUILD_DIR}/main.o ${BUILD_DIR}/Circulo.o ${BUILD_DIR}/Cilindro.o ${BUILD_DIR}/Ponto.o
	${CC} ${BUILD_DIR}/*.o -o ${TARGET}

#Compilacao
${BUILD_DIR}/main.o: ${SRC_DIR}/main.cpp
	${CC} -I ${INCLUDE_DIR} -c ${SRC_DIR}/main.cpp -o ${BUILD_DIR}/main.o

${BUILD_DIR}/Circulo.o: ${SRC_DIR}/entidades/Circulo.cpp ${INCLUDE_DIR}/Circulo.hpp
	${CC} -I ${INCLUDE_DIR} -c ${SRC_DIR}/entidades/Circulo.cpp -o ${BUILD_DIR}/Circulo.o

${BUILD_DIR}/Cilindro.o: ${SRC_DIR}/entidades/Cilindro.cpp ${INCLUDE_DIR}/Cilindro.hpp
	${CC} -I ${INCLUDE_DIR} -c ${SRC_DIR}/entidades/Cilindro.cpp -o ${BUILD_DIR}/Cilindro.o

${BUILD_DIR}/Ponto.o: ${SRC_DIR}/entidades/Ponto.cpp ${INCLUDE_DIR}/Ponto.hpp
	${CC} -I ${INCLUDE_DIR} -c ${SRC_DIR}/entidades/Ponto.cpp -o ${BUILD_DIR}/Ponto.o

#Precisa desse -I e o dir dos .hpp para o codigo dentro do cpp conseguir achar o hpp
#Precisa desse -c pra compilar
#Precisa desse -o pra criar o arquivo .o dentro da pasta build

clean: 
	rm build/*.o ${TARGET}
