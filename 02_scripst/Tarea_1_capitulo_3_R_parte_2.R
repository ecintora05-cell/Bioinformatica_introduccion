#Tarea 1 Capitulo 3 Parte 2
#Tamaños de Genomas
#Iniciar con el vector, para tener el tamaño en bp se multiplica por el prefijo Mega
genomeSizeM_BP<-c(3234.83,2716.97,143.73,0.014281,12.1);genomeSizeM_BP*1e6
#Se asignan nombres a los genomas
nombres<-c("Human","Mouse","Fruit_Fly","Roundworm","Yeast")
names(genomeSizeM_BP)<-nombres
print(genomeSizeM_BP)
#Hubo diferencias en el punto decimal, en la ultima version se coloco antes de 
#multiplicarlo por el Mega
#EJERCICIO
#1. Generar un vector de las edades de 10 de tus compañeros
edades<-c(22,23,22,24,28,30,24,23,23,25)
#2. Asignarles un nombre
nombre<-c("Martin","Clau","Jazmin","Itzel","Eliseo","Vane","Fer","Moni","Caro","Ana")
names(edades)<-nombre
print(edades)
#3. Encuentra el mínimo, máximo, media, mediana, la desviación estandar
#la longitud del vector y selecciona los elementos impares
min(edades); max(edades); mean(edades); median(edades); sd(edades)
length(edades); edades[c(2,8,9,10)]
#4 Elimina el minimo y el maximo y con el vector resultante elabora un histograma
edades<-sort(edades); edad<-edades[-c(1,2,10)]
hist(edad,col = "red")
#5. Crea un vector de cracteres con diez nombres de especies y asocialos con su 
#número de acceso de NCBI para su genoma
especies<-c("ballena_azul","ballena_jorobada","Puma","Coyote","Jaguar","orca","lobo_marino","lince","Ballena_gris","Lobo")
Num_genoma<-c("GCA_009873245.3","GCA_041834305.1","GCA_003327715.1","GCA_034620425.1","GCA_046562885.2","GCA_937001465.1","GCA_009762305.2","GCA_022079265.1","GCA_028021215.1","GCA_011100685.1")
names(Num_genoma)<-especies
print(Num_genoma)
#TRATAR NA
#R reconoce las NA (ausencia de información), para detectarlas se usa la función
x<-c(88,NA,12,168,13)
is.na(x)
#Podemos hacer que R excluya las NA en los analisis con el comando na.rm
mean(x,na.rm = T)
#FILTRADO DE ELEMENTOS DE UN VECTOR
#Se pueden crear vectores que sean subconjunto de otros vectores, anidado
un_vector<-c(1,2,3,5,7,11,13,17,19)
otro_vector<-un_vector[un_vector*un_vector>10]; print(otro_vector)
#Las operaciones de los vectores se leen de adentro hacia afuera
#FILTRADO CON SUBSET
#Con el comando subset() se filtra lo mismo como el ejercicio de arriba, aunque con
# la ventaja es que ignora las NA
otro_vector<-subset(un_vector,un_vector*un_vector>10); print(otro_vector)
un_vector<-c(1,2,3,5,7,11,NA,13,17,NA,19)
otro_vector<-subset(un_vector,un_vector*un_vector>10);print(otro_vector)
#Seleccion which () nos regresa los indices, quienes cumplen cierta condicion
z<-c(5,2,-3,8)
which(z*z>8)
#De esta manera nos dice quienes son
z[which(z*z>8)]
#VER SI DOS VECTORES SON IGUALES
x<-c(1,4,9,16,25)
y<-c(1:5); y<-y*y
x==y
#Para secuencias grandes se puede usar el comando all()
x<-seq(1,1000,1)
y<-seq(1,1000,1)
all(x==y)
#FACTOR
#Son un tipo de vector que puede tomar un num limitado de valores que se utilizan 
#como varias categorias. A los valores que puede tomar los elementos de le conocen 
#como levels
x<-c(1,2,2,3,1,2,3,3,1,2,3,3,1); print(x)
x<-as.factor(x);print(x) #Son como las variantes que tiene el vector
meses = c("March","April","January","November","January",
          "September","October","September","November","August",
          "January","November","November","February","May","August",
          "July","December","August","August","September","November",
          "February","April")
meses<-as.factor(meses);print(meses)
#Puedes hacer ciertas operaciones con los factores como tablas
table(meses)
#EJERCICIO TEPERATURA DE INCUBACION
#temperatura de incubacion en grados Celcius
temperaturas<-c(37,37,25,30,30,37,25,25)
#Calculo de temperatura media
temp_media<-mean(temperaturas)
cat("Temperatura media:",temp_media, "°C")#Es para la oración de salida
#Calculo de la desviacion estandar
temp_desviacion<-sd(temperaturas)
cat("Desviación estándar",temp_desviacion,"°C")
muestras<-c("Muestra1","Muestra2","Muestra3","Muestra4")
temperaturas<-c(Muestra1=37,Muestra2=25,Muestra3=30,Muestra4=40)
#Se filtran las tempereturas dentro del rango optimo
temp_optimas<-temperaturas[temperaturas>=25&temperaturas<=37]
#Muestras dentro del rango optimo
muestras_optimas<-names(temp_optimas)
cat("Muestras con temperatura óptima:",muestras_optimas)
#Crear un Factor ordenado por temperatiras de menor a mayor
temp_ordendas<-sort(temperaturas); print(temp_ordendas)
#Crear un vector de los meses de cumpleaños de las alumnas
meses_cumple<-c("Febrero","Marzo","Agosto","Marzo","Julio","Julio","Marzo","Septiembre","Marzo","Mayo"); print(meses_cumple)
#Num de cumpleañeros por meses
meses_cumple<-as.factor(meses_cumple);table(meses_cumple)
#EJERCICIO
#Crea un vector con el nombre de 10 virus
virus<-c("Rabia","Varicela","COVID","MERS","Hepatitis_C","VIH","Sarampion","VPH","Dengue","Influenza")
#Asocia esos nombres con el numero de acceso en IUCN
acceso<-c("GCA_000859625.1","GCA_008791805.1","	GCA_000864885.1","GCA_000901155.1","GCA_002820845.1","GCA_000864765.1","GCA_000854845.1","GCA_000863945.2","GCA_000857725.1","GCA_000865725.1")
names(acceso)<-virus; print(acceso)
#Combina tamaño de bp y nombres
tam_pb<-c(11932,30119,29751,30119,9413,9181,15894,7904,10862,13588)
names(tam_pb)<-virus;print(tam_pb)
#Determinar cuales son mayores de 10000 pb
tam_pb[which(tam_pb>10000)]
#Asocia un subconjunto que tnega virus de menor de 10000 y otro mayor a 10000
tam_peq<-tam_pb[which(tam_pb<10000)]; print(tam_peq)
tam_grd<-tam_pb[which(tam_pb>10000)];print(tam_grd)
#Hacer un histograma de los tamaños
hist(tam_pb,col = "tomato")
#Hacer un boxplot con los nombres en los ejes
boxplot(tam_pb, xlab=virus,col = "blue")
#Ejercicios ADICIONALES
#Crea un vector con los num 2,4,6,8, y 10
v1<-c(2,4,6,8,10)
#Crea un vector con los num 1,3,5,7 y 9
v2<-c(1,3,5,7,9)
#Suma los vectores v1 y v2 elemento por elemento
v1+v2
#Multiplica el vector v1 po el escalar 3
v1*v1[3]
#Calcula la media del vector v2
mean(v2)
#Encuentra el valor minimo del vector v1
min(v1)
#Crea un vector con los numeros 2,4,6,8 y 10
v3<-c(2,4,6,8,10)
#Compara los vectores V1 y v3 y determina si son iguales
all(v1==v3)
#Crea un vector con los primeros 10 numeros impares
v4<-c(1,3,5,7,9,11,13,15,17,19)
#Encuentra los elementos comunes entre los vectores v2 y v4
which(v2==v4); print(v2[1:5])
#Crea un vector con num aleatorios del entre 1 y 50
v1<-rnorm(1:50,10);print(v1)
