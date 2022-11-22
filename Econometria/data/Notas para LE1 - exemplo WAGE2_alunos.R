### Universidade Federal do Cear? - UFC
### Departamento de Economia Aplicada - DEA
### Disciplina: Econometria II  	Per?odo: 2021.2	
### Professor: Fabr?cio Linhares (flinhares@caen.ufc.br)


## Notas de Revisao: Exemplo WAGE2 (Wooldridge)

# Observacao sobre diretorio

getwd()
setwd("defina seu diretorio")

# Carregar a base de dados

install.packages('wooldridge')
library(wooldridge)
data("hprice1")

# Se o banco de dados estiver no seu diret?rio, voc? tamb?m pode usar o comando abaixo para acarregar os dados

load('wage2.Rdata')

# Visualizar base de dados

head(wage2,10)
summary(wage2)

library(ggplot2)
ggplot(wage2, aes(x = as.factor(educ), y = lwage)) +
  geom_boxplot()

### Questao 6.3

Model6.3 <- lm(lprice ~ lassess+llotsize+lsqrft+bdrms, data = hprice1)
summary(Model6.3)


# separadamente essas variáveis são estatísticamente insignificantes,
# vamos testar se a variável lassess sozinha explica o modelo
linearHypothesis(Model6.3, c("llotsize=0", "lsqrft=0", "bdrms=0"))


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

### Questao 7.2

# 7.2 (i)

Model7.2i <- lm(lwage ~ educ+exper+tenure+married+black+south+urban, data = wage2)
summary(Model7.2i)

# (1) Interpreta??o dos coeficientes
# (2) Interpreta??o do R^2
# (3) Teste de sigf individual: H0: beta j = 0 versus Ha: beta j ? dif de 0
# (4) Teste de sigf global


# 7.2 (ii)

library(dplyr)
wage2 <- wage2 %>% mutate(expersq = exper^2, tenuresq=tenure^2)

Model7.2ii <- lm(lwage ~ educ+exper+expersq+tenure+tenuresq+married+black+south+urban, data = wage2)
summary(Model7.2ii)

library(car) 
linearHypothesis(Model7.2ii, c("expersq=0", "tenuresq=0"))

# 7.2 (iii)

Model7.2iii <- lm(lwage ~ educ+educ:black+exper+tenure+married+black+south+urban, data = wage2)
summary(Model7.2iii)

#H? discrm por ra?a?  linearHypothesis(Model7.2iii, c("black=0", "educ:black=0"))
linearHypothesis(Model7.2iii, c("black=0", "educ:black=0"))

# 7.2 (iv)

Model7.2iv <- lm(lwage ~ educ+exper+tenure+married+black+married:black+south+urban, data = wage2)
summary(Model7.2iv)

# 1 casado, negro -> married=1 e black=1 -> 0.188915-0.240820+0.061354 = 0.009449 = 1%
# 2 casado, n?o negro -> married=1 e black=0 -> 0.188915 = 19%
# 3 solteiro, negro -> married=0 e black=1 -> -0.240820
# 4 solteiro, n?o negro -> married=0 e black=0 -> 0


