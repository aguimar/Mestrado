### Universidade Federal do Cear? - UFC
### Mestrado Profissionalizante em Economia
### Disciplina: ECONOMETRIA
### Professor: Fabr?cio Linhares (flinhares@caen.ufc.br)

## Notas de Revisao: Exemplo da Rede de Lanchonetes 
## Big Andy's Burger Barn (Similar ao exemplo Gastos com Propaganda)

###### Setup inicial  ######
getwd()
setwd("C:/Users/aguim/Documents/Mestrado - CAEN/Econometria/data")
options(scipen = 999) # para evitar nota??o cient?fica.

###### Carregar os dados  ######

load('andy.Rdata')

###### Visualizar as vari?veis  ######

# Comando para mostrar nome das variaveis em na base andy
names(andy)
# Comando para mostrar os cinco primeiros registros... 
# de todas as variaveis na base andy
head(andy,5)
# Comando para computar estatisticas descritivas das variaveis
summary(andy)

### Inspecionar as relacoes por meio de graficos

# Comando para gerar grafico de dos pontos (sales,price)
plot(sales ~ price, data = andy)

library(ggplot2)

ggplot(andy, aes(x = price, y = sales)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
#  scale_x_continuous(limits = c(0, 45), expand = c(0, 0)) +
  theme_bw()


# Comando para gerar grafico de dos pontos (sales,advert)
plot(sales ~ advert, data = andy)

###### Estimando o Modelo de Regressao Multipla - vers?o 1 (slide 15) ######

# Comando para estimar modelo RT=b1+b2.p+b3.a
sales1 <- lm(sales ~ price+advert, data = andy)
# Comando para visualizar resultados
summary(sales1)

###### Exemplo: Rede de Lanchonetes 1 ######  
###   Testar se a receita est? relacionada com ...
###   os gastos com propaganda (slide 15)

# Cria a matriz 3x4 "test_info" com os principais... 
# resultados do modelo estimado "sales1"
test_info = summary(sales1)$coefficients

# Fixa o n?vel de significancia
niv_sigf=0.05

# Fixa o valor do parametro sob a hip?tese nula
beta0=0

# Define qual parametro sera testado (beta3 -> k=3)
k=3

# Computa os graus de liberdade (N-k)
gl=sales1$df.residual

# Calcula o valor da estatistica de teste t
# t*=(betak-beta0)/e.p.(betak)
t_stat=(test_info[k, 1]-beta0)/test_info[k, 2]

# Calcula o valor absoluto do t critico do teste bicaudal
t_critico2 <-qt((1-(niv_sigf/2)), gl)

# Calcula o valor-p associado a estatistica do teste, t*
vp_t <-2*pt(-t_stat, gl)


###### Exemplo: Rede de Lanchonetes 2 (slide 18) ######
### Testando a elasticidade da demanda 
### OBS: Vamos usar a matriz "test_info" do modelo "sales1"

# Fixa o n?vel de significancia
niv_sigf=0.05

# Fixa o valor do parametro sob a hip?tese nula
beta0=0

# Define qual parametro sera testado (beta2 -> k=2)
k=2

# Computa os graus de liberdade (N-k)
gl=sales1$df.residual

# Calcula o valor da estatistica de teste t
# t*=(betak-beta0)/e.p.(betak)
t_stat=(test_info[k, 1]-beta0)/test_info[k, 2]

# Calcula o valor absoluto do t critico do 
# teste unicaudal a esquerda 
t_critico2 <-qt(niv_sigf, gl)

# Calcula o valor-p associado a estatistica do teste, t*
vp_t <-pt(t_stat, gl)


###### Exemplo: Rede de Lanchonetes 3 (slide 20) ######
### Testando se os gastos com propaganda est?o compensando os custos
### OBS: Vamos usar a matriz "test_info" do modelo "sales1"

# Fixa o n?vel de significancia
niv_sigf=0.05

# Fixa o valor do parametro sob a hip?tese nula
beta0=1

# Define qual parametro sera testado (beta3 -> k=3)
k=3

# Computa os graus de liberdade (N-k)
gl=sales1$df.residual

# Calcula o valor da estatistica de teste t
# t*=(betak-beta0)/e.p.(betak)
t_stat=(test_info[k, 1]-beta0)/test_info[k, 2]

# Calcula o valor absoluto do t critico do 
# teste unicaudal a direita 
t_critico2 <-qt((1-niv_sigf), gl)

# Calcula o valor-p associado a estatistica do teste, t*
vp_t <-(1-pt(t_stat, gl))


###### Estimando o Modelo de Regressao Multipla-  - vers?o 2 (Slide 33)###### 

library(dplyr)
andy <- andy %>% mutate(advertsq = advert^2)

sales2 <- lm(sales ~ price+advert+advertsq, data = andy)
summary(sales2)

###### Exemplo: Rede de Lanchonetes 4 (slide 35) ######
### Teste para n?vel ?timo do gastos com propaganda
### O gasto ?timo com propaganda seria R$1.600?
### Ho: beta3+2.beta4.(-1,6)=1
## Instalando e carregando o pacote para teste F

install.packages("car")
library(car) 

## Executando o teste
linearHypothesis(sales2, c("advert-3.2*advertsq=1"))

###### Exemplo: Rede de Lanchonetes 5 (slide 40) ######
### Qual o valor previsto da RT quando price=3 e advert=2?

RT_p=109.7-(7.6*3)+(12.1*2)-(2.7*4)

### Testar se Ho: beta3+2.beta4.(-1,6)=1 e beta1+beta2*3+beta3*4+beta4*4=100.3

linearHypothesis(sales2, c("advert-3.2*advertsq=1", "(Intercept)+3*price+4*advert+4*advertsq=100.3"))


###### Exemplo: Rede de Lanchonetes 6 (slide 44) ######
### Teste de Significancia Global
### Testar Ho: beta2=0, beta3=0, beta4=0

linearHypothesis(sales2, c("price=0", "advert=0", "advertsq=0"))


###### Exemplo Extra: Rede de Lanchonetes ###### 
## Hipotese: Reduzir pre?o em 20 centavos (-0,2) ? mais efetivo
## para aumentar a receita do que aumentar os gastos em
## propaganda em 500

## Ho: -0.2*beta2>0.5*beta3

install.packages("multcomp")
library(multcomp)
teste_extra <- glht(model = sales2, linfct = c("-0.2*price-0.5*advert >= 0"))
summary(teste_extra)



###### Exemplos no livro 5a Edi??o ###### 











