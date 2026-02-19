#Capítulo 4 Matrices
#Tabla que almacena datos del mismo tipo, se pueden hacer operaciones matemáticas
#4.1 Creación de matrices
#Se puede crear a partir de matrix(), se ocupa un vector y una dimensión
y<-matrix(c(1,5,8,-5),nrow = 2,ncol = 2)
print(y)
#ncol indica num de columnas, nrow, indica num filas
#por dfault empieza a rellenar por columna
z<-matrix(c(T,F,rep(c(T,F),3)),nrow = 4)
print(z)
#Se puede cambiar el orden de llenado, para que empiece a llenar por filas
m<-matrix(c(1:6),nrow = 2,byrow = T)
m
#byrow indica el orden de llenado por filas
#4.2 Dimensión de una matriz
#La dimensión de una matriz es el número de filas y columnas
#Se puede calcular mediante dim(), dim() NO se puede usar en vectores
dim(y);dim(z)
#En caso de matrices, para indicar un elemento se utiliza [fila,columna]
y[1,2]
#Para seleccionar todos los elementos de una fila
z[1,]
#Para seleccionar los elementos de una columna
z[,2]
#4.3 Creación de una matriz vacia
#Se puede crear una matriz vacía y posteriormente llenar cada posición con un elemento
y<-matrix(nrow = 2,ncol = 2)
y[1,1]<-"Holi"
y[1,2]<-"todos"
y[2,1]<-"los"
y[2,2]<-"tqm"; y
#4.4 Operaciones rbind y cbind en R para Matrices
#Las funciones rbind() y cbind(), se utilizan para unir filas y columnas en una matriz
#la función y() se utiliza para trasponer una matriz
#4.5 Uso de rbind() para unir matrices por renglones
#La funcíón rbind() se utiliza oara unir matrices por filas
matriz1<-matrix(1:6,nrow = 2)
matriz2<-matrix(7:12,nrow = 2)
#se unen las matrices por renglones
matriz_unida<-rbind(matriz1,matriz2)
matriz_unida
#Al unir las matrices por filas, R suma todos los elementos  
# empieza a rellenar acorde al orden de las filas
#4.6 Uso de cbind() para unir matrices por columnas
#La función cbind() se utiliza para unir matrices por columnas
#unir matrices por colunas
matriz_unida_columnas<-cbind(matriz1,matriz2)
matriz_unida_columnas
#Si las matrices se unen por columnas, el num de filas se respeta
#Se puede usar la función View() para observar las tablas en una ventana, 
#solo funciona con datos tabulares
#Ejercicio. Realizar una matriz
M1<-matrix(1:7,nrow = 3,ncol = 4);M1
#Si los datos de la matriz no alcanzan a llenarlo, la matriz se llena automaticamente
#repitiendo los valores acorde al orden de llenado
M2<-matrix(1:7,nrow = 3,ncol = 3);M2
#Si el vector tiene mas elementos que las dimenciones de la matiz, crea nuevas columnas
#y se llena el resto
M3<-cbind(M1,M2)
M4<-rbind(M1[,-4],M2)#Para unir las matrices debe de tener el mismo numero de filas
M3;M4
#4.7 Operaciones con matrices
#Multiplicacion de escalar de una matriz
3*M1 #Todos los valores se multiplican por 3
#Suma de dos matrices
M1+M1#Deben de tener las mismas dimensiones
M1[,-4]+M2; dim(M1);dim(M2)
dim(M1)==dim(M2)
#Multiplicación de matrices, se utiliza %*%
M1[,-4]%*%M2#Deben de tener el mismo num de columnas
#4.8 Uso de t() para transportar una matriz, se intercambian las filas y columnas
matrriz_inversa<-t(M1); matrriz_inversa
#4.9 Seleccionar elementos de matrices
#Para seleccionar elementos de matrices se utilizan [], indicando fila y columna
M1[1,3];M1[3,1]
#Para seleccionar toda una fila/columna
M1[1,] #Se selecciona toda la fila 1
M1[,4] #Se selcciona toda la columna 4
#Seleccionar elementos de una matriz
M1[1:3,1] #Selecciona los elementos de las filas 1 y 2 que están en la columna 1
M1[1:2,3:4] #Selecciona los elementos de las filas 1 y 2 y que esten en las columnas 3 y 4
M1[-2,] #Quita l fila num 2
M1[-1,-c(1,3)] #Quita la fila 1 junto con las columnas 1 y 3
#4.10 Nombres a renglones y columnas
#Tambien se le pueden asignar nombres
#Nombre de columnas
colnames(M1)<-c("Lunes","Martes","Jueves","Viernes")
#nombre de filas
rownames(M1)<-c("Itzel","Clau","Vane")
M1 #Pära darle nombre, deben de ser la misma cantidad de filas y columnas con 
#respecto a los nombres

#Ejercicios
#1 Genera dos matrices aleatorias de tamaño 3x3 y luego suma ambas matrices
M1<-matrix(c(3,6,7,8,9,2,5,9,10),nrow = 3); M2<-matrix(c(1,4,6,3,6,34,6,7,12),nrow = 3)
M1+M2
#2 Crea dos matrices aleatorias, una de tamaño 2x3 y otra de tamaño 3x4. Calcula 
#su producto matrical
M3<-M1[1:2,]; M4<-matrix(c(1,5,3,6,12,4,4,6,2,23,67,4),nrow = 3, ncol = 4)
M3%*%M4

#3 Crea una matriz aleatoria de tamaño 4x3 y encuentra su matriz transpuesta

#4 -Genera una matriz cuadrada aleatoria de tamaño 4x4 calcula su determinante
M2<-matrix(sample(1:50,16),nrow = 4,ncol = 4)
det(M2)

#5 Crea una matriz cuadrada aleatoria de tamaño 3x3 y encuentra su inversa

#6 -Genera una matriz aleatoria 5x5 y extrae la tercera fila y la segunda columna
M1<-matrix(sample(1:50,25),ncol = 5,nrow = 5); M2<-M1[-c(1:2,4:5),-c(1,3:5)];M2
M2<-M1[3,];M3<-M1[,2]; M2;M3
#7 Crea una matriz diagonal aleatoria de tamaño 4x4 y encuentra sus elementos diagonales

#8 Define una matriz de coeficientes A y un vector de terminos constantes b.
#Luego, resuelve el sistema de ecuaciones Ax=b

#9 Genera una matriz aleatoria de tamaño 3x3 y multiplica cada uno de sus elementos
#por un escalar, por ejemplo, 2

#10 -Crea una matriz simétrica aleatoria de tamaño 4x4 y verifica si es simétrica

#11 Comparación de Expresión Génica entre Condiciones
#Descripción: Supongamos que tienes una matriz de expresión génica con 6 genes y 4 condiciones experimentales.
#Crea una matriz llamada expresion_genica con 6 genes y 4 condiciones (rellena con datos aleatorios).
#Asigna nombres de genes a las filas y nombres de condiciones a las columnas.
#Calcula el promedio de expresión génica para cada gen.
exp_gen<-matrix(sample(1:100000,24),nrow = 6,ncol = 4)
rownames(exp_gen)<-c("Wtn","shc","HCM","P53","SpikeS","NTF")
colnames(exp_gen)<-c("Control","Agua","Inflamación","Necrosis")
exp_gen
apply(exp_gen,1,mean)#La función apply toma datos de una matriz, 1 para filas y para columnas
# y luego la opración atritmeotica