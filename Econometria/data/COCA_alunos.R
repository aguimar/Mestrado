### Universidade Federal do Ceará - UFC
### Mestrado Profissionalizante em Economia
### Disciplina: ECONOMETRIA
### Professor: Fabrício Linhares (flinhares@caen.ufc.br)


## Setup inicial
getwd()
setwd("Defina seu diretorio de trabalho aqui")
options(scipen = 999) # para evitar notação científica.

## coca<-read.delim("coca.txt", header = TRUE, sep = "\t")
## save("coca",file="coca.Rdata")

#### Carregar dados
load("coca.Rdata")

# Inspecionar variáveis (10 primeiras observações)
head(coca,10)

### Estimar modelo (item a e b)
cocaModel <- lm(PRICE ~ QUANT + QUAL + TREND, data = coca)
summary(cocaModel)

#### Teste Unicaudal (item c) #### 
#### A variável QUANT tem efeito negativo dobre o preço?
#### Ho: beta2>0 vs Ha: beta2<0


# Cria a matriz 4x4 "test_info" com os principais... 
# resultados do modelo estimado "cocaModel"
test_info = summary(cocaModel)$coefficients

# Fixa o nível de significancia
niv_sigf=0.05

# Fixa o valor do parametro sob a hipótese nula
beta0=0

# Define qual parametro sera testado (beta2 -> k=2)
k=2

# Computa os graus de liberdade (N-k)
gl=cocaModel$df.residual

# Calcula o valor da estatistica de teste t
# t*=(betak-beta0)/e.p.(betak)
t_stat=(test_info[k, 1]-beta0)/test_info[k, 2]

# Calcula o valor absoluto do t critico do 
# teste unicaudal a esquerda 
t_critico2 <-qt(niv_sigf, gl)

# Calcula o valor-p associado a estatistica do teste, t*
vp_t <-pt(t_stat, gl)


#### Teste Bicaudal (item d) #### 
#### A variável QUAL tem efeito o preço?
#### Ho: beta3=0 vs Ha: beta3!=0


# Fixa o nível de significancia
niv_sigf=0.05

# Fixa o valor do parametro sob a hipótese nula
beta0=0

# Define qual parametro sera testado (beta3 -> k=3)
k=3

# Computa os graus de liberdade (N-k)
gl=cocaModel$df.residual

# Calcula o valor da estatistica de teste t
# t*=(betak-beta0)/e.p.(betak)
t_stat=(test_info[k, 1]-beta0)/test_info[k, 2]

# Calcula o valor absoluto do t critico do teste bicaudal
t_critico2 <-qt((1-(niv_sigf/2)), gl)

# Calcula o valor-p associado a estatistica do teste, t*
vp_t <-2*pt(-t_stat, gl)



