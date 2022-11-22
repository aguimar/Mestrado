### Universidade Federal do Ceará - UFC
### Departamento de Economia Aplicada - DEA
### Disciplina: Econometria II  	Período: 2022.1	
### Professor: Fabrício Linhares (flinhares@caen.ufc.br)


## Exemplo Equação de salário para dados do CE

# Observacao sobre diretorio

getwd()
setwd("C:/Users/homeuk/Desktop/Disciplinas 2022/Econometria II 2022-1/Topico 1/Laboratorio/")


load("wageCE.Rdata")

summary(data1.7CE)

d1 <- density(data1.7CE$sal_h)
plot(d1, main="Salario")
d2 <- density(log(data1.7CE$sal_h))
plot(d2, main="Salario")

boxplot(log(data1.7CE$sal_h))
boxplot(log(data1.7CE$sal_h)~data1.7CE$educ)
# Adicionar medias
# medias <- tapply(data1.7CE$educ, data1.7CE$sal_h, mean)
# points(medias, pch=20, cex=1.5)

# Com ggplot2
library(ggplot2)

ggplot(data1.7CE, aes(x = as.factor(educ), y = log(sal_h))) +
  geom_boxplot()

ggplot(data1.7CE, aes(x=as.factor(educ), y=log(sal_h), fill=as.factor(educ))) +
  geom_boxplot() +
  stat_summary(fun=mean, geom='point', shape=20, size=2)+
  theme(legend.position='none')

ggplot(data1.7CE, aes(x=as.factor(mulher), y=log(sal_h), fill=as.factor(mulher))) +
  geom_boxplot() +
  stat_summary(fun=mean, geom='point', shape=20)


ggplot(data1.7CE, aes(x=as.factor(branco), y=log(sal_h), fill=as.factor(branco))) +
  geom_boxplot() +
  stat_summary(fun=mean, geom='point', shape=20)


ggplot(data1.7CE, aes(x=as.factor(urbano), y=log(sal_h), fill=as.factor(urbano))) +
  geom_boxplot() +
  stat_summary(fun=mean, geom='point', shape=20)


## Subamostra para estimacao
## wage <- sample_n(data1.7CE, 5518, replace = F)

## Estimar as equacoes

modCE<-lm(log(sal_h)~poly(idade,2)+educ+mulher+branco+urbano,data=data1.7CE)
summary(modCE)


modCE2<-lm(log(sal_h)~poly(idade,2)+factor(educ)+mulher+branco+urbano,data=data1.7CE)
summary(modCE2)




