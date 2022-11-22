### Universidade Federal do Cear? - UFC
### Mestrado Profissionalizante em Economia
### Disciplina: ECONOMETRIA
### Aula 03 monitoria 
#####Importante saber na prova##############################################
# (1) Interpreta??o dos coeficientes
# (2) Interpreta??o do R?
# (3) Teste de sigf individual: H0: beta j = 0 versus Ha: beta j ? dif de 0
# (4) Teste de sigf global: H0: todos beta j = 0 versus Ha: alguns beta j dif de 0
#Quais s?o as hip?teses nula e alternativa?
#Ho:b1=b2=0
#H1:b1=b2 diferente de zero
#Qual ? o valor da estat?stica de teste?
#p-valor
#Qual a regra de decis?o?
# regra 1: Se |t_stat|>t_critico, rejeito H0
# regra 2: Se vp_t<niv_sigf, rejeito H0
#Qual a conclus?o?
#? estatisticamente significante ou n?o?
#Definindo o Diret?rio de Trabalho
getwd()
setwd("C:/Users/Marcus Vinicius/Documents/Curso Econometria - MESP")
options(scipen = 999)
## Notas de Revisao: Exemplo WAGE2 (Wooldridge)#################################
install.packages('wooldridge')
library(wooldridge)
data("wage2")

# Se o banco de dados estiver no seu diret?rio, voc? tamb?m pode usar o comando abaixo para carregar os dados

load('wage2.Rdata')

# Visualizar base de dados
head(wage2,10)
summary(wage2)
install.packages("ggplot2")
library(ggplot2)

pairs(wage2[c("lwage", "educ", "exper")])

ggplot(wage2, aes(x = as.factor(educ), y = lwage)) +
  geom_boxplot()


ggplot(wage2, aes(x = lwage, y = educ+exper+educ:exper)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  #  scale_x_continuous(limits = c(0, 45), expand = c(0, 0)) +
  theme_bw()


### Questao 6.3

Model6.3 <- lm(lsal_h ~ educ+idade+branco+mulher+urbano, data = salarios)
#lwage = logar?tmo do sal?rio
#educ = anos de estudo
#exper = anos de experi?ncia
summary(Model6.3)
#i)
# Em m?dia, um ano a mais de educa??o tem um retorno salarial de 0.0440 pontos
#percentuais.

# (ii) H0: beta 3 = 0, Ha: beta 3 differente 0

# 6.3 (iii)
test_info = summary(Model6.3)$coefficients
niv_sigf=0.05
gl=Model6.3$df.residual
k=4
beta0=0
t_stat=(test_info[k, 1]-beta0)/test_info[k, 2]
t_critico <-qt((1-niv_sigf/2), gl)
vp_t <-2*(1-pt(t_stat, gl))
# regra 1: Se |t_stat|>t_critico, rejeito H0
# regra 2: Se vp_t<niv_sigf, rejeito H0
#Como o p valor ? menor do que 5%, rejeitamos a hipotese nula de que educ 
#n?o depende de exper. Ou seja concluimos pelo teste de hip?tese que existe
#rela??o entre anos de educa??o e experi?ncia.

### Questao 7.2
# 7.2 (i)
Model7.2i <- lm(lwage ~ educ+exper+tenure+married+black+south+urban, data = wage2)
#lwage = logar?tmo do sal?rio
#educ = anos de estudo
#exper = anos de experi?ncia
#tenure = anos de perman?ncia no trabalho atual
#married = 1 para casados
#black = 1 para negros
#south = 1 se reside na regi?o sul do pa?s (nos EUA ? a regi?o mais pobre)
#urban = 1 se reside em uma regi?o urbana
summary(Model7.2i)
#i)
# (1) Interpreta??o dos coeficientes e # (3) Teste de sigf individual: 
# H0: beta j = 0 versus Ha: beta j ? dif de 0
#educ = Em m?dia, um ano a mais de educa??o aumenta o sal?rio em 0.065 pontos
#percentuais. Educ ? estatisticamente significante ao n?vel de 5%.
#exper = Em m?dia, um ano a mais de experi?ncia aumenta o sal?rio em 0.014 pontos
#percentuais. Exper ? estatisticamente significante ao n?vel de 5%.
#tenure = Em m?dia, um ano a mais de perman?ncia no trabalho atual aumenta o sal?rio
# em 0.011 pontos percentuais.Tenure ? estat?sticamente significante ao n?vel de 5%.
#married = Em m?dia, um indiv?duo casado tem retorno de 0.1994 pontos percentuais
# a mais no sal?rio.
#black = Em m?dia, um indiv?duo negro tem retorno de (-0.1883) pontos percentuais
# a menos no sal?rio.
#south = Em m?dia, um indiv?duo que reside na regi?o Sul tem retorno de (-0.09) pontos
# percentuais a menos no sal?rio.
#urban = Em m?dia, um indiv?duo que reside na regi?o em uma regi?o urbana tem retorno
# de 0.1839 pontos percentuais a mais no sal?rio.

# (4) Teste de sigf global
# Pelo teste F, podemos analisar que o p valor < 5%. Logo rejeitamos a hip?tese nula
# de que os coeficientes conjuntamente s?o iguais a 0. Ou seja, conclu?mos que os
# coeficientes estimados s?o conjuntamente globalmente significantes (pelo menos um
#coeficiente ? diferente de 0).

# (2) Interpreta??o do R^2
# De acordo com o coeficiente de determina??o, R?, as vari?veis explicativas: educ,
#exper, tenure, married, black, south e urban explicam, em m?dia, 25% da varia??o 
# no log(sal?rio).

#Vimos para vari?vel black que, em m?dia, um indiv?duo negro tem retorno de (-0.1883) 
#pontos percentuais a menos no sal?rio comparado h? um indiv?duo n?o negro. Ou seja,
# esta ? a diferen?a salarial aproximada, h? uma discrimina??o salarial de ra?a nesta
# economia e ela ? estat?sticamente significante ao n?vel de 5%.

# 7.2 (ii)

Model7.2ii <- lm(lwage ~ educ+poly(exper,2)+poly(tenure,2)+married+black+south+urban, data = wage2)
summary(Model7.2ii)
install.packages("car")
library(car) 
#Teste F:
#Ho: exper?=tenure?=0
#H1: exper?=tenure?=>pelo menos uma das vari?veis diferente de 0
linearHypothesis(Model7.2ii, c("poly(exper, 2)2=0", "poly(tenure, 2)2=0"))
# Pelo teste F, como p-valor > 5%. Logo, n?o podemos rejeitar a hip?tese nula de que
# as vari?veis exper? e tenure? s?o conjuntamente n?o significantes, mesmo ao n?vel de
# 20%.

# 7.2 (iii)
Model7.2iii <- lm(lwage ~ educ+educ:black+exper+tenure+married+black+south+urban, data = wage2)
#educ:black = intera??o entre educa??o e ra?a, h? rela??o?
summary(Model7.2iii)

#H? discrm por ra?a?  
#Teste F com educ e black:
#H0: educ=black=0
#H1: educ=black diferente de zero.

linearHypothesis(Model7.2iii, c("black=0", "educ:black=0"))
#Pelo teste F, como p-valor < 5%, podemos concluir que as vari?veis educ e black s?o
#conjuntamente estat?sticamente significantes ao n?vel de 5%. Ou seja, h? uma rela??o
# entre retorno da educa??o com a ra?a do indiv?duo. 

# 7.2 (iv)
Model7.2iv <- lm(lwage ~ educ+exper+tenure+married+black+married:black+south+urban, data = wage2)
#adicionado a intera??o entre casado e negro: married:black
#Observe que so teremos essa intera??o quando married = 1 se casado
#                                             black = 1 se negro
#caso contr?rio married:black ser? 0.
summary(Model7.2iv)
# 1 casado, negro -> married=1 e black=1 -> 0.188915-0.240820+0.061354 = 0.009449 = 1%
# 2 casado, n?o negro -> married=1 e black=0 -> 0.188915 = 19%
# 3 solteiro, negro -> married=0 e black=1 -> -0.240820 = -24%
# 4 solteiro, n?o negro -> married=0 e black=0 -> 0 
# A diferen?a entre negros casados e n?o negros casado ? de: 1% p.p - 19% p.p.= -18% p.p
#Ou seja,em m?dia, um indiv?duo casado e negro tem retorno de -18% p.p. a 
#menos no sal?rio comparado a um indiv?duo casado e n?o negro.

## Notas de Revisao: Exemplo NBAsal ##################################################
options(scipen = 999)
#### Carregar dados
load("nbasal.Rdata")

# Inspecionar vari?veis (10 primeiras observa??es)
head(nbasal,10)

#### Questao 6.9(i) ####

Model6.9i <- lm(points ~ exper+expersq +age+coll, data = nbasal)
#points=pontos por jogo
#exper=anos como jogador profissional
#expersq=termo quadr?tico a anos como jogador profissional
#age=idade
#coll=anos jogados na faculdade
summary(Model6.9i)

## Descreva os resultados de forma habitual

# (1) Interpreta??o dos coeficientes e # (3) Teste de sigf individual: H0: beta 
# j = 0 versus Ha: beta j ? dif de 0
#exper: Em m?dia, a cada ano a mais como jogador profissional impacta em um aumento
# de 2.36 pontos percentuais em pontos por jogo. Exper ? estat?sticamente significante
# ao n?vel de 5%.
#expersq:Em m?dia, em termos quadr?ticos a cada ano a mais como jogador profissional
#impacta em uma queda de -0.07 pontos percentuais em pontos por jogo. Expersq ? 
#estat?sticamente significante ao n?vel de 5%.
#age: Em m?dia, a cada ano a mais de idade impacta em uma queda de -1.07 pontos 
#percentuais em pontos por jogo. Age ? estat?sticamente significante ao n?vel de 5%.
#coll: Em m?dia, a cada ano a mais jogado na faculdade impacta em uma queda de -1.28
#pontos percentuais em pontos por jogo. Coll ? estat?sticamente significante ao n?vel
#de 5%.

# (4) Teste de sigf global
# Pelo teste F, podemos analisar que o p valor < 5%. Logo rejeitamos a hip?tese nula
# de que os coeficientes conjuntamente s?o iguais a 0. Ou seja, conclu?mos que os
# coeficientes estimados s?o conjuntamente globalmente significantes (pelo menos um
#coeficiente ? diferente de 0).

# (2) Interpreta??o do R?
# De acordo com o coeficiente de determina??o, R?, as vari?veis explicativas: points,
#exper, expersq, age e coll, explicam, em m?dia, 14% da varia??o dos pontos por jogo.


#### Questao 6.9(ii) ####

# Estatisticas descritivas da variavel exper

summary(nbasal$exper) #min-1 e max=18

# Gerando o gr?fico da relacao estimada entre pontos e experiencia
install.packages("ggplot2")
library("ggplot2")
eq = function(x){2.36363*x-0.07703*x^2}
ggplot(data.frame(x=c(1, 18)), aes(x=x)) + 
  stat_function(fun=eq)

# Gerando o gr?fico da relacao estimada entre pontos e experiencia
# para valores de exper de 1 a 35 (OBS: curva cruza o zero em aproximadamente x=30.7)

ggplot(data.frame(x=c(1, 35)), aes(x=x)) + 
  stat_function(fun=eq) +
  geom_point(aes(x=30.7,y=0),colour="red")
# Ou seja, a partir de aproximadamente 30 anos de experi?ncia, a cada ano adicional
# ter? impacto negativo sobre o saldo de pontos. 

#### Questao 6.9(iii) ####

# A hip?tese para esse coeficiente negativo pode ser dado pelo fato de que um bom 
# jogador iniciante de basquete nos EUA ? sondado pelos olheiros (os treinadores dos 
# grandes times de basquete) nos times universit?rios em poucos anos e em alguns 
#casos meses.Enquanto jogadores medianos s?o convocados por times profissionais
#ap?s passarem uma maior temporada no time da sua faculdade, pois levou mais 
#tempo para mostrar bons resultados aos olheiros. Ou seja, por isso a rela??o negativa
#entre anos jogado na faculdade e pontos por jogo. 

#### Questao 6.9(iv) ####

Model6.9iv <- lm(points ~ exper+expersq +age+agesq+coll , data =nbasal )
summary(Model6.9iv)
# Ao adicionar um termo quadr?tico na idade, observamos que ele ? estatisticamente
#insignificante da mesma forma idade fica estat?sticamente insignificante.Ou seja,
#n?o faz sentido que um jogador mais velho traga aumentos na pontua??o m?dia de um 
#jogo.
library(car)
linearHypothesis(Model6.9iv,c("age=0","agesq=0"))
#Apesar do teste individual idade e idade? serem estat?sticamente insignificantes,
#globalmente eles sao estat?sticamente significantes, pois p-valor < 5%. Ou seja, 
#eles mantem uma rela??o um com outro.
#### Questao 6.9(v) ####
options(scipen = 999)
Model6.9v <- lm(lwage ~ points + exper+expersq +age+coll , data =nbasal )
#lwage=log(sal?rio)
summary(Model6.9v)


## Descreva os resultados de forma habitual 
# (1) Interpreta??o dos coeficientes e # (3) Teste de sigf individual: 
# H0: beta j = 0 versus Ha: beta j ? dif de 0
#points:Em m?dia,a cada ponto realizado em um jogo, aumenta o sal?rio dos jogadores
# em 0.07 pontos percentuais. Points ? estat?sticamente significante ao n?vel de 5%.
#exper: Em m?dia, a cada ano a mais como jogador profissional, aumenta o sal?rio dos
#jogadores em 0.2178 pontos percentuais. Exper ? estat?sticamente significante ao
#n?vel de 5%.
#expersq:Em m?dia, em termos quadr?ticos,a cada ano a mais como jogador profissional
#reduz o sal?rio em -0.007 pontos percentuais.
#age: Em m?dia, a cada ano a mais de idade, reduz o sal?rio em -0.04 pontos percentuais.
#Age n?o ? estat?sticamente significante ao nivel de 5%.
#coll:Em m?dia, a cada ano a mais jogado na faculdade reduz o sal?rio em -0.04
#pontos percentuais. Coll n?o ? estat?sticamente significante ao n?vel de 5%.
# (4) Teste de sigf global
# Pelo teste F, podemos analisar que o p valor < 5%. Logo rejeitamos a hip?tese nula
# de que os coeficientes conjuntamente s?o iguais a 0. Ou seja, conclu?mos que os
# coeficientes estimados s?o conjuntamente globalmente significantes (pelo menos um
#coeficiente ? diferente de 0).
# (2) Interpreta??o do R?
# De acordo com o coeficiente de determina??o, R?, as vari?veis explicativas: points,
#exper, expersq, age e coll, explicam, em m?dia, 48% da varia??o do log(sal?rio).


#### Questao 6.9(vi) ####

library(car)
linearHypothesis(Model6.9v,c("age=0","coll=0"))
#Pelo teste F, como p-valor > 5%, n?o rejeitamos a hip?tese nula,
#logo, age e coll s?o conjuntamente estat?sticamente n?o significantes. 
#Ou seja, age e coll, n?o possuem rela?ao significativa. 
#Quando se considera points e exper, observe que esses coeficientes s?o 
#estat?sticamente insignificantes. Ou seja idade e anos jogados na faculdade n?o 
#afetam o log(sal?rio).
cor(nbasal$age,nbasal$coll)
