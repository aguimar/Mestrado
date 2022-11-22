### Universidade Federal do Cear? - UFC
### Mestrado Profissionalizante em Economia
### Disciplina: ECONOMETRIA
### Professor: Fabr?cio Linhares (flinhares@caen.ufc.br)


## Notas de Revisao: Exemplo Salarios no Ceara (1o trimestre 2019, fonte: PNADC)

# Observacao sobre diretorio

## Setup inicial
getwd()
setwd("Definir diret?rio aqui")
options(scipen = 999) # para evitar nota??o cient?fica.

# Carregar a base de dados (OBS: a base ter? nome data1.7CE)
load("wageCE.Rdata")

# Visualizar base de dados

# Estat?sticas descritivas da base "data1.7CE"
summary(data1.7CE)

# Gr?fico do tipo boxplot do logar?timo do sal?rio (log(sal_h)) contra os anos de estudo (educ)
library(ggplot2)
ggplot(data1.7CE, aes(x = as.factor(educ), y = log(sal_h))) +
  geom_boxplot()

# OBS: Iremos usar "idade" como proxy para "exper"
# OBS: Vamos criar a vari?vel "idadesq" = idade^2
# OBS: Vamos criar a vari?vel lsal_h = log(sal_h)

library(dplyr)
data1.7CE <- data1.7CE %>% mutate(idadesq = idade^2, lsal_h = log(sal_h))

### Questao 7.2 (banco de dados do Ceara)

# 7.2 (i)

Model7.2i <- lm(lsal_h ~ educ + idade + branco + mulher + urbano, data = data1.7CE)
summary(Model7.2i)

# (1) Interpreta??o dos coeficientes
# (2) Interpreta??o do R^2
# (3) Teste de sigf individual: H0: beta j = 0 versus Ha: beta j ? dif de 0
# (4) Teste de sigf global


# 7.2 (iii)

Model7.2iii <- lm(lsal_h ~idade+educ+mulher+branco+ urbano + educ:branco , data = data1.7CE)
summary(Model7.2iii)


# OBS: H? discrimina??o por ra?a na equa??o de sal?rio?  
linearHypothesis(Model7.2iii, c("branco=0", "educ:branco=0")       )


# 7.2 (iv) Vamos analisar categorias diferentes para o caso do Cear? 

# intera??o branco-mulher

Model7.2iv <- lm(lsal_h ~idade+educ+mulher+branco+ urbano + mulher:branco , data = data1.7CE )
summary(Model7.2iv)
summary(Model7.2iv)

## Qual o valor do intercepto para esses casos?
# 1 branco, mulher -> branco=1 e mulher=1 -> 0.066139 + 0.113170 - 0.176090 + 0.003195 =
#                                          = 0.066139 -0.059725 = 0.006414 (-6% relativo ao caso base)
# 2 branco, homem -> branco=1 e mulher=0 -> 0.066139 + 0.113170 = 0.179309 (+11%  relativo ao caso base)
# 3 n?o branco, mulher -> branco=0 e mulher=1 -> 0.066139 - 0.176090 = -0,109951 (-18% relativo ao caso base)
# 4 n?o branco, homem -> branco=0 e mulher=0 -> 0.066139+0 (+0% relativo ao intercepto -> ? o caso base)


# intera??o mulher-urbano

Model7.2v <- lm(lsal_h ~ educ+idade+branco+mulher+urbano+mulher:urbano, data = data1.7CE)
summary(Model7.2v)

## Qual o valor do intercepto para esses casos?
# 1 urbano, mulher -> urbano=1 e mulher=1 -> 0.068746 - 0.195262 + 0.211598 + 0.023343 =
#                                          = 0.068746 + 0.039679 = 0.029067 (+4% relativo ao caso base)
# 2 urbano, homem -> urbano=1 e mulher=0 -> 0.068746 + 0.211598 = 0.280344 (+21%  relativo ao caso base)
# 3 rural, mulher -> urbano=0 e mulher=1 -> 0.068746 - 0.195262 = -0,126516 (-19% relativo ao caso base)
# 4 rural, homem -> urbano=0 e mulher=0 -> 0.068746+0 (+0% relativo ao intercepto -> ? o caso base)

