x<-rnorm(1000)
hist(x)
#Se selecciona desde pdf para que se crea y se ocupa el comando dev.off() 
#para parar lo que se envia en el archivo pdf
pdf("03_resultados/histograma.pdf")
hist(x,col="tomato")
boxplot(x, col="purple")
dev.off()
#| eval: false
usethis::use_git() #Guarda los cmabios hechos en los scribs, puedes agregar notas
#desde el comando git-> comit, no se conecta todavía
usethis::create_github_token()
#| eval: false
gitcreds::gitcreds_set()
#| eval: false
usethis::use_git_config(
  user.name = "ecintora05-cell",
  user.email = "ecintora05@alumnos.uaq.mx")
#| eval: false
usethis::use_github(private = TRUE)

