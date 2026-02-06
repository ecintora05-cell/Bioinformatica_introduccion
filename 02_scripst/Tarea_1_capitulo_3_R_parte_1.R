#Tarea 1 Capitulo 3 Introduccion a R
#VECTORES
#En R puedes trabajar con vecotres (tienen una sola dimension y guardan datos 
#del mismo tipo), matriz (arreglo de dos dimensiones con datos del mismo tipo),
#Data Frame (Arreglo de dos dimensiones con datos de diferentes clases), lista
#arreglo de una dimension que permite incorporar datos de distincas clases
#para ver el contenido de una variable en un script, se utiliza la funcion print
x<-5
print(x)
#Los elementos de un vector se le conocen como componentes y pueden ser logico,
#caracter, numerico o integer
#Para definir vectores se utiliza "c()" combinar y hay dos formas
#EXTENSIVA los elementos dentro del parentesis deben estar separados por ","
vector_numerico<-c(1,2,3,4,5,6,7)
vector_texto<-c("a","b","c","d")
vector_logico<-c(T,F,T,F)
#SECUENCIA se utiliza el operador ":" para crear un rango o se puede usar seq()
x<-c(1:100)
y<-seq(1,100)
print(x)
print(y)
#Se peuden generar secuencias que partan de un num especifico con un orden especifico
x<-seq(-20,30,by=3)
print(x)
#para conocer la cantidad de valores que tiene (longitud del vector) se usa la funcion
length(y)
#Para acceder a los componentes de un vector de una determinada posicio (indice)
#Se usan los "[]" para elementos consecutivos y no consecutivos
#CONSECUTIVOS, se usa ":" para determinar el rango e.j.
vector_texto[2:4]
#No consecutivas se coloca un vector y los elementos separadas por ","
x[c(1,5,7,8)]
#Excluir elementos de un vector se utiliza con "[-]", dentro del corchete se pone
#la ubicacion o ubicaciones que se quiere eliminar
x[-1]
x[-c(1,5,8)]
#Para excluir el ultimo elemento del vector se usa
x[-length(x)]
#Se puede reagsinar valores de un vector previamente definido
y<-y[-c(10:90)]
print(y)
#Se pueden generar vectores vacios para luego llenarlos e.j.
v<-c() #Vector vacio
v[1]<-2
v[c(2:6)]<-c(10,20,30,50,70)
print(v)
#Repeticion de elementos en un vector se puede hacer con la funcion 
# "rep(valor,Num de veces)"
v<-rep(5,10)
print(v)
#Se puede repetir un conjunto de valores mediante un vector
v<-rep(c(1,3,5,7,11),3)
print(v)
#Otra forma de hacerlo
primos<-c(1,3,5,7,11,13)
v<-rep(primos,each=3)
print(v)
#Al usar ecah se ordenan las reepticiones de menor a mayor, sin usar each, 
#las repeticiones quedan en el orden como las asignaste la primera vez
#FUNCIONES ANY ALL
#las funciones any() y all(), nos permiten ver si algunos o todos los elementos
# de un vector cumplen una condicion T o F e.j.
x<-c(-20:5)
any(x<10)
any(x>10)
any(x<=5)
all(x<10)
all(x>sqrt(16))
any(x>sqrt(16))
#EJERCICIOS
#1.Con un vector x, describe un codigo que determine si todos los elementos del vector
# son iguales a 0
x<-c(1:10)
all(x==0)
#2.Escriba un codigo que tome un vector y devuelva T si hay algun elemento repetido
#en el vector, utilizando la función any
x<-rep(c(1,2,3),each=2); any(duplicated(x))
#3.Dado un vector x, escriba una funcion que determine si todos los elementos del
#vector son iguales entre si utilizando la función all
all(x==x[1])
#4.Escribe una función que tome dos vectores y devuelva en T si ambos vectores tienen
#algún elemento en común utilizando la función any
x<-c(1:5);y<-c(5:9)
any(x%in%y)
#5.Escriba una función que tome dos vectores y devuelba T si todos los elementos del
#vector x son mayores que los elementos correpondientes en el vector y usando all
x<-c(6:10); y<-c(1:5)
all(x>y)
#6.Dado un vector x, escribe una función que determine si todos los elementos del 
#vector son menores que cero utilizando la funcion all
all(x<0)
#7.Escribe una función que tome dos vectores y devuelva en T si al menos un elemento
#del vector x es mayor que los elementos correspondientes en el vector y con la 
#función any
x<-c(2:6)
any(x>y)
#8.Dado un vector x, escribe una funcion que determine si todos los elementos del 
#vector son iguales a un valor especifico utilizando all
all(x==10)
#9.Escribe una función que tome dos vectores y devuelva T si al menos un elemento 
#correspondiente del vector x es menor que los elementos correspondientes en el 
#vector y con any
x<-c(0:4); any(x<y)
#NOTA: para los ejercicios 2, 3 y 4 use Chat GPT para orientarme en que funcion
#podia usar porque estaba muy perdido
#OPERACIONES ARITMETICAS
#Se pueden hacer operaciones aritmeticas con vectores, lo importante es que ambos
#vectores tengan la misma longitud y las operaciones se efectuar acorde al lugar
#que ocupe cada elemento dentro del vector
x<-c(1:3); y<-c(4:6)
#SUMA
x+y; x+3
#RESTA
x-y; x-3
#MULTIPLICACION
x*x; x*y; x*2
#DIVISION
x/y; x/3
#EXPONENTE
x**y; x**2
#RAIZ CUADRADA
sqrt(x)
#LOGARITMO
log(x)
#OPERACIONES CON COMANDO
#Se aplican funciones para hacer operaciones largas, se aplican los siguientes comandos
x<-rnorm(1000)
#Con el siguiente comando se obtiene el valor minimo
min(x)
#Se obtiene el numero maximo
max(x)
#Da a conocer el minimo y maximo
range(x)
#Suma todos los valores del vector
sum(x)
#Se calcula la media
mean(x)
#Se obtiene la mediana 
median(x)
#EJERCICIO
#¿Quw función tienen los siguientes comandos sd() quantile()?
#La función sd() calcula la desviacion estandar
sd(x)
#La función quantile() genera los cuartiles
quantile(x)
#Para las funciones unique() y sort() funcionan mejor con datos discretos en vez
#de continuos
x<-c(rep(3,5),1:15,rep(c(1:3),5))
unique(x) #Saca los valores de manera unica
x<-sample(10,10)
print(x)
sort(x) #ordena los valores de menor a mayor
#GRAFICOS CON VECTORES
#Se puede graficar en R usando los siguientes comandos
x<-rnorm(1000)
#Histograma
hist(x,col = "blue")
#Plot, grafica de datos en orden de aparicion del vector
plot(x,col="yellow")
#Boxplot muestra la media y los cuartiles
boxplot(x,col = "salmon")
#Vectores con nombre, se le pueden asignar nombre a los vectores mediante la 
#función de names()
#Primero se pone un vector con las edades
edades<-c(5,10,15,25,40)
#Se asigna otro vector con los nombres de los dueños de las edades
nombres<-c("Matos","Carlos","Dani", "Maria","Jose")
#Se nombran los elementos del vector edades names (numero)<-Nombre
names(edades)<-nombres
print(edades) #Se le asignan al que esta en ()
#Se pueden usar los nombres de los vectores para buscar su info asociada
edades["Matos"]
#EJERCICIOS
edades<-c(35,35,70,17,14); nombres<-c("Jerry","Beth","Rick","Summer","Morty")
names(edades)<-nombres
#1. ¿Cuál es el promedio de las edades sin contar a Beth?
mean(edades[-2])
#2. Quiten a Morty del vector, ordenalo y guardalo como nuevo vector
edades_sin_Morty<-sort(edades[-5]);print(edades_sin_Morty)
#3. ¿Hay alguna edad mayor a 75?, ¿menor a 12?, ¿Entre 12 y 20?
any(edades>75);any(edades<12); any(c(edades>12,edades<20))
