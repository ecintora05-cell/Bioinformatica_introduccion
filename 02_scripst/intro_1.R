x<-rnorm(1000)
hist(x)
#Se selecciona desde pdf para que se crea y se ocupa el comando dev.off() 
#para parar lo que se envia en el archivo pdf
pdf("03_resultados/histograma.pdf")
hist(x,col="tomato")
boxplot(x)
dev.off()
#| eval: false
usethis::use_git()
