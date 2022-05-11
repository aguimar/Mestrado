---
title: Macroeconomia
subtitle: Lista de exercícios
author: Aguimar Mendonça Neto
thanks: aguimar@gmail.com
date: \today
numbersections: true
lang: pt-br
pdf-engine: lualatex
---

[[Macroeconomia]]

# Considere a seguinte função de utilidade $U(C_1,C_2)=ln(C_1)+ln(C_2)$. Considere a restrição orçamentária no primeiro período seja dada por $C_1+S_1=Y_1$, onde $C_1$ é o consumo corrente, $S$ é a poupança e $Y_1$ é a renda corrente. Já a restrição orçamentária no segundo período é dada por $C_2=(1+R)S_1+Y_2$. Calcule a escolha ótima de poupança do consumidor em função da renda corrente e a renda futura.

$$
\begin{cases}
\begin{aligned} 
\max _{C_1,C_2,S_1}\;U(C_1,C_2)=ln(C_1)+ln(C_2)
\\
 S.t.\;  
\begin{cases}
C_1+S_1&=Y_1\\
C_2&=(1+R)S_1+Y_2
\end{cases}
\end{aligned}
\end{cases}
$$

Resolvendo por Langrange

$$
\mathcal{L}=ln(C_1)+ln(C_2)+\lambda_1(Y_1-C_1-S_1)+\lambda_2(Y_2+(1+R)-C_2)\\
$$
$$
\begin{cases}
\frac{\partial L}{\partial C_1}=\frac{1}{C_1}+\lambda_1(-1)=0\\
\frac{\partial L}{\partial C_2}=\frac{1}{C_2}+\lambda_2(-1)=0\\
\frac{\partial L}{\partial S_1}=\lambda_1(-1)+\lambda_2(1+R)=0
\end{cases}
$$

Do sistema de equações temos que:
$$
\frac{\lambda_1}{\lambda_2}=\frac{C_2}{C_1} \Leftrightarrow \frac{\lambda_1}{\lambda_2}=1+R
$$

$C_2=(1+R)C_1$

Da restrição $C_2=(1+R)S_1+Y_2$, temos que:

$C_1=S_1+\frac{Y_2}{1+R}$

Por fim, da retrição $C_1+S_1=Y_1$, temos que:

$$
\begin{aligned}
S_1+\frac{Y_2}{1+R}+S_1&=Y_1\\
2S_1&=Y_1-\frac{Y_2}{1+R}\\
\therefore \boxed{S_1=\frac{Y_1}{2}-\frac{1}{2}(\frac{Y_2}{1+R})}
\end{aligned}
$$

# Determine o valor da poupança de um consumidor dadas as seguintes informações: $U=ln(C_1)+ln(C_2)$, em que $C_1=consumo presente$, $C_2=consumo futuro$, ta de juros é $0\%$ e não há imperfeições no mercado de crédito. Além disso: $Y_1=100$ e $Y_2=50$.
*Dica 1:* utilize a restrição orçamentária intertemporal:
$C_1+\frac{C_2}{1+r}=Y_1+\frac{Y_2}{1+r}$

*Dica 2:* poupança no 1o período = despoupança no 2o período

a) Usando o valor de $S_1$ encontrado na questão anterior.

$$
\begin{aligned}
S_1&=\frac{Y_1}{2}-\frac{1}{2}(\frac{Y_2}{1+R})\\
S_1&=\frac{100}{2}-\frac{1}{2}(\frac{50}{1+0})\\
\therefore \boxed{S_1=25}
\end{aligned}
$$

# O consumidor representativo vive por dois períodos. Ele recebe renda $y$ no período corrente $y'$ no período futuro, além de consumir $c$ e $c'$, nos períodos respectivos. A poupança do consumidor no período corrente é denotada por $s$.

a) Considere um consumidor que é credor à taxa de juros real $r^1$ e devedor à taxa de juros real $r^2$, onde $r^2>r^1$. Quando a taxa de juros real ao endividar-se é maior que a taxa de juros real ao credor, a restrição orçamentária toma um formato diferente. Esboce o gráfico da restrição orçamentária.

$$
\begin{cases}
\begin{aligned}
\max _{C,C',S}=U(C)+\beta U(C')\\
sujeito\;a 
\begin{cases}
C+S&=Y\\
C'&=Y'+(1+r)S
\end{cases}
\end{aligned}
\end{cases}
$$
Substituindo $S$ na segundo restrição temos:
$\boxed{C'=Y'+(1+r)Y-(1+r)C}$

![Questão 3 - Fig. 1](Pasted image 20220508170235.png)




A restrição orçamentária do consumidor é dada pelo segmento AEF (Fig 1).

* Qualquer ponto no segmento AE, o consumidor será credor ($S>0$)

* Qualquer ponto no segmento EF, o consumidor será devedor ($S<0$)


b) Qual o impacto de um aumento permanente na renda futura ? Qual o impacto de um aumento permanente tanto na renda presente quando na renda futura ?

A reta orçamentária sofrerá um deslocamente para cima e para a direita.

\newpage

# Qual o impacto de um aumento nos gastos do governo sobre a fronteira de possibilidades de produção ? Esboçe a conclusão graficamente.

Dica: Como T aumenta na mesma proporção do aumento em $G$, teremos, como resultado, uma queda na renda disponível dos consumidores (lembre que $C=w(h-l)+\pi-T)$. Assim, é de se esperar uma queda em $C$ e $l$ - Efeito Renda

Dado que:
$$
\begin{aligned}
Y&=C+G \\
\Delta_Y&=\Delta_C+\Delta_G\\
\Delta_C&=\Delta_Y-\Delta_G
\end{aligned}
$$
Considerando $\Delta Y =0$ então $\boxed{\Delta G=-\Delta C}$

![Fig. 2](Pasted image 20220508171449.png)

*Efeito Crowding-out*

