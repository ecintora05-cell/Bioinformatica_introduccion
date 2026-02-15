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
#Para seleccionar elementos o acceder 