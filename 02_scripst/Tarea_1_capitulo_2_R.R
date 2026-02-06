#Tarea 1 Capitulo 2 Introducción a R
#Expresiones son comandos que no guardan una información y que al ser 
#corridos, la información puede cambiar e.j.
rnorm(10)
#mientras que las asignaciones son comandos que guardan la información en una
#variable mediante el comando "<-", y cuando corres la variable se obtiene la 
#misma información e.j.
x<-rnorm(10)
x
#En las asignaciones, se puede diferenciar entre mayusculas y minusculas e.j.
A<-5
a<-9
#También las asignaciones se pueden asignar en mas de una linea de comando e.j.
y <-
pi + 7
#ADVERTENCIA, si utilizas la misma variable para asignar valores distintos
#se sobrescribe la variable al último calor asignado
#los comandos se pueden separar por ";" o diferente renglon e.j.
z<-5;Z<-78
#Movimiento entre directores
#El siguiente comando se utiliza para saber en que directorio estas
getwd()
#El siguiente comando se utiliza para cambiar de direccion
#setwd("la dirrecion que deseas estar")
#Bash en R
#Se pueden usar comandos de Bash en R usando la funcion system(
#para la lista de archivos de una carpeta se usa
system("ls-la")
#Para saber el directorio en el que estamos se usa la funcion
system("pwd")
#Operaciones Numericas
#Se pueden realizar calculos en R
#SUMA
z+A
#RESTA
Z-a
#MULTIPLICACION
a*A
#DIVISION
z/Z
#EXPONENTE
a**Z
#RAIZ CUADRADA
sqrt(Z)
#LOGARITMO
log(a)
#EJERCICIOS
1+2*3+3+15/3
4-15/3+3**2+3*sqrt(81)
40-(4+3)**2+(10-5)/3
32**5-(3-5)*2+32/sqrt(64)
1/(3**-3)+(8-10**2)-(25/sqrt(25))**2
#TIPOS DE VALORES EN R
#Valores booleanos
#Datos logicos, solo contiene informacion binaria TRUE=1 y FALSE=0
#IGUAL
10==0
#NO ES IGUAL A
0!=10
#MAYOR QUE
5>10
#MENOR QUE
5<10
#MAYOR O IGUAL QUE
10>=0
#MENOR O IGUAL QUE
10<=0
#Ejercicios
#1-Demostrar el logaritmo base 10 de 20 es menor que la raís cuadrada de 4
log(20)<sqrt(4)
#Demostrar 1/3**-1 es igual a 3/1**-1
1/3**-1 == 3/1**-1
#Caracter son strings de texto donde cada uno de los elementos de va entre comillas
#pueden ser un caracter hasta oraciones e.j.
x<-"Nada tiene sentido si no es a la luz de la evolucion 1975"
#En R los valores numericos se guardan como numeric o integer, en R no hay mucha 
#diferencia pero si al usar funciones de Bioconductor, un integer es ligeramente
#mas pequeño que el tamaño del genoma humano
#Clase numerica
y<-1
class(y)
#Clase integer
w<-1:3
class(w)


