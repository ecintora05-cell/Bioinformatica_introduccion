#Introducción a R
#Saber que paquetes he descargado
library()
#Se prosiguió a cargar el paquete ggnetwok
library(ggnetwork)
#Se escribe el siguiende comando para observar los paquetes ya cargados
search()
#Se visualizará las funciones del paquete ggnetwork con Num 2
ls(2)
#Se visualizarán un ejemplo de gráficos a continuación usansdo el comando
demo(graphics)
#Ejercicio, se instalaran las siguientes librerias markdown y ggplot2
library()
#Ya tengo instalado ggplot2, por lo que solo instalaré markdown
install.packages("markdown")
#Se instalara Bioconductor
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.22")
#instalar paquetes principales
BiocManager::install(c("GenomicFeatures", "AnnotationDbi"))
#instalar paquete ggtree de biocondictor
BiocManager::install("ggtree")
#Para tener ayuda se utilizan los comandos hepl o ? y (nombre_comando)
help("solve")
#El siguiente comando te brinda información mas detallada de los paquetes en formato HTML
help.search("ggplot2")
#El siguiente comando despliega información basada en la red de la versión más 
#actualizada de R
help.start()
#El siguiente comando se utiliza para ver ejemplos de como se ejecuta algún 
#comando en particular
example("hclust")
#Se utiliza el siguiente comando para ver todo lo relacionado a un termino
apropos("clust")
#la siguiente función te da opciones de paqueterias que puedes usar a partir de 
#una palabra clave, solo funciona si se autocompleta
??DNase
usethis::use_git(message = "Terminación del primer capitulo de Introduccion a R")
