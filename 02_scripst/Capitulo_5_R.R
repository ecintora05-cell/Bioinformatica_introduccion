#Capítulo 5 DATA FRAME
#Es una estructura de datos regtangulares que se compone de filas y columnas, donde
#cada columna puede tener un tipo de datos diferentes, almacena datos tabulares de 
#diferentes tipso
#5.1 Crear un DataFrame en R
#Se utiliza la función data.frame() para crear uno
estudiantes<- data.frame(nombre=c("Juan","Maria","Pedro","Laura"), 
                         edad=c(20,22,21,23),puntaje=c(85,90,88,92))
print(estudiantes) #Se registra por columnas, todas las columnas deben de tener
# la misma extención
dna_data<-data.frame(secuencia=c("ATCGATCG","GCTAGCTA","TTAAGGCT"),
                     Tamaño=c(8,8,8),Contenido_GC=c(0.5,0.4,0.3))
print(dna_data)
#5.2 Acceder a los datos de un dataframe
#Para seleccionar elementos o acceder algún dato se utiliza []
dna_data[2,"secuencia"]
#También se puede acceder a varios elementos
dna_data[1:2,c("Tamaño","Contenido_GC")]
#Esto devuelve un dataframe con los elementos seleccionados
#5.3 Agregar y eliminar renglones y columnas en un Dataframe en R
#para agregar una nueva columna en un dataframe se pude usar <- y el signo $ señalando
#el nombre de la columna
dna_data$temperatura_melting<-c(24,24,20)
#Para eliminar una columna en R, se puede usar la asignación NULL
dna_data$temperatura_melting<-NULL
#Para agregar un nuevo renglón en el dataframe, puedes usar la función rbind()
#5.4 Importar archivos externos
#5.4.1 Importar archivos cvs en R
#Un archivo cvs es un documento de texto que contiene datos en formato tabular
#donde cada renglón representa un registro y cada columna una variable. E.j.

#ventanas<-read.cvs("ventanas.cvs")

#Si el documento cvs utiliza un separador de campos diferentes a comas, puedes usar

#ventanas<-read.cvs2("ventanas.cvs")

#5.4.2 Importar un archivo TSV en R
#Un archivo TSV es un documento cvs, pero utiliza tabuladores en lugar de comas
#Para importar el archivo se usa

#ventanas<-read.delim("ventanas.tsv")
#Si el archivo TSV utiliza otro tipo de saparador, se usa la función read.delim2

#5.4.3 Importar un archivo Excel en R
#Para importar un archivo en excel se utiliza la función read_excel(), del paquete
#readxl
#library (readxl) llama primero al paquete
#ventanas<-read_excel("ventanas.exe") después se aplica la función

#5.4.4 Ejercicios
#1 Datos de crecimiento de cultivos bacterianos
#Descripción: Supón que tienes un data.frame con datos de crecimiento de cultivos bacterianos en diferentes condiciones.
#Crea un data.frame crecimiento con las siguientes columnas: Cepa, Medio, TasaCrecimiento, Temperatura.
#Llena el data.frame con datos aleatorios para 10 cepas en 3 medios diferentes y 4 temperaturas distintas.
#Encuentra la media y la desviación estándar de la tasa de crecimiento por cada medio.
crecimiento_bact<-data.frame(Cepa=c("Cepa1","Cepa2","Cepa3","Cepa4","Cepa5","Cepa6","Cepa7","Cepa8","Cepa9","Cepa10"),
                             Medio=sample(paste("medio",1:3),10,replace = T),
                             Temperatira=sample(25:29,10,replace = T),
                             Tasa=sample(0.1:3,10,replace = T))
View(crecimiento_bact)
mean(crecimiento_bact$Tasa);sd(crecimiento_bact$Tasa)
#2 Perfil de resistencia antibiótica
#Descripción: Supón que tienes un data.frame con datos de resistencia antibiótica de diferentes cepas bacterianas.
#Crea un data.frame resistencia con las columnas: Cepa, Antibiótico, Resistencia (0 para sensible, 1 para resistente).
#Llena el data.frame con datos aleatorios para 5 cepas y 5 antibióticos diferentes.
#Calcula el porcentaje de resistencia para cada antibiótico.
resist_bact<-data.frame(Cepa=c("Cepa1","Cepa2","Cepa3","Cepa4","Cepa5"),
                        Antibiotico=c("Omeoprazol","Cefalosporinas","Penicilina","Naproxeno","Paracetamol"),
                        Resistencia=sample(0:1,5,replace = T))
resist_bact

