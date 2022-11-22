### Universidade Federal do Ceará - UFC
### Mestrado Profissionalizante em Economia
### Disciplina: ECONOMETRIA
### Professor: Fabrício Linhares (flinhares@caen.ufc.br)


## Setup inicial
getwd()
setwd("C:/Users/homeuk/Desktop/Disciplinas 2022/Econometria PEP 2022-1/R_Introducao/")
options(scipen = 999) # para evitar notação científica.

coca<-read.delim("coca.txt", header = TRUE, sep = "\t")
