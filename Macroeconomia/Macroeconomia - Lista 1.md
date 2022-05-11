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

# Considere que:
$y=f(l)=Al^\alpha$ e $U(c,l)=c^\gamma(1-l)^{(1-\gamma)}$

Determine as escolhas ótimas de Crusoé, resolvendo:

$$
\begin{cases}
\begin{split} \max _{c,l} \; c^\gamma(1-l)^{(1-\gamma)} \\
S.T. \; c=y=Al^\alpha
\end{split}
\end{cases}
$$

Colocando a restrição dentro da função objetivo temos um problema de maximização sem restrição

$$\begin{split}
\max _l\; \{(Al^\alpha)^\gamma (1-l)^{1-\gamma})\}
\end{split}
$$

A função de utilidade agora pode ser derivada em função do fator trabalho.

$\frac{dU(l)}{dl}=0$

$$
\begin{aligned}
\alpha\gamma A^\gamma l^{\alpha\gamma-1}+(1-y)A^\gamma l^{\alpha \gamma}(1-l)^{-\gamma}(-1)&=0 \\
(1-y)\textcolor{red} {A^\gamma l^{\alpha \gamma}(1-l)^{-\gamma}}&= \alpha \gamma \textcolor{red}{A^\gamma l^{\alpha\gamma -1}(1-l)^{-\gamma}}(1-l) \\
1-\gamma&=\alpha\gamma\frac{(1-l)}{l} \\
(1-\gamma)l&=\alpha\gamma(1-l) \\
(1-\gamma)l+\alpha\gamma l&=\alpha\gamma l\\
\therefore \boxed{ l^{*}=\frac{\alpha\gamma}{1-y+\alpha\gamma} }\\ 
\boxed{c^*=A(\frac{\alpha\gamma}{1-y+\alpha\gamma})^\alpha}
\end{aligned}
$$

# Considere o modelo de dois períodos. Seja $U(c_t)=ln(c_t)$. Determine:
a) A equação de Euler.
a) As escolhas ótimoas $c_1^*, c_2^*$ e $b_1^*$.
a) A taxa de juros de equilíbrio $R^*$
a) Qual o impacto sobre $R^*$ de um choque permanente negativo na renda ($y_1$ e $y_2$) reduzem no mesmo montante)? Compare com o cenário $U(c_t)=c^\frac{1}{2}$.

$$
\begin{cases}
\begin{aligned}
\max _{c_1, c_2, b_1} U(c_1, c_2)=ln(c_1)+\beta ln(c_2)\\
s.t. \; \begin{cases}i) \;Py_1&=Pc_1+b_1 \\
ii) \;Py_2+b_1(1+R)&=Pc_2 \end{cases}
\end{aligned}
\end{cases}
$$

 $\mathcal{L}=ln(c_1)+\beta ln(c_2) + \lambda_1(Py_1-Pc_1-b_1)+\lambda_2(Py_2+b_1(1+R)-Pc_2)$


$\frac{\partial \mathcal{L}(c_1, c_2, b_1, \lambda_1, \lambda_2)}{\partial c_1}=0 \Leftrightarrow \frac{1}{c_1}+\lambda_1(-P)=0 \Leftrightarrow \frac{1}{c_1}=\lambda_1P$ (1)

$\frac{\partial \mathcal{L}(c_1, c_2, b_1, \lambda_1, \lambda_2)}{\partial c_2}=0 \Leftrightarrow \frac{\beta}{c_2}+\lambda_2(-P)=0 \Leftrightarrow \frac{\beta}{c_2}= \lambda_2P$ (2)

$\frac{\partial \mathcal{L}(c_1, c_2, b_1, \lambda_1, \lambda_2)}{\partial b_1}=0 \Leftrightarrow \lambda_1(-1)+\lambda_2(1+R)=0 \Leftrightarrow \lambda_1=\lambda_2(1+R) \Leftrightarrow \frac{\lambda_1}{\lambda_2}=1+R$ (3)

$\frac{\partial \mathcal{L}(c_1, c_2, b_1, \lambda_1, \lambda_2)}{\partial \lambda_1}=0 \Leftrightarrow Py_1=Pc_1+b_1$

$\frac{\partial \mathcal{L}(c_1, c_2, b_1, \lambda_1, \lambda_2)}{\partial \lambda_2}=0 \Leftrightarrow Py_2+b_1(1+R)=Pc_2$

Dividindo (1) por (2) temos:

$\frac{\frac{1}{c_1}}{\frac{\beta}{c_2}}=\frac{\lambda_1}{\lambda_2}$

a razão $\frac{\lambda_1}{\lambda_2}$ é dada por (3)

$\therefore \boxed{\frac{c_2}{c_1}=\beta(1+R)}$

(b)

$$
\begin{cases}
\begin{aligned}
b_1&=Py_1-Pc_1 \\
b_1&=\frac{Pc_2-Py_2}{1+R}
\end{aligned}
\end{cases}
$$

$$
\begin{split}
Py_1-Pc_1&=\frac{Pc_2-Py_2}{1+R} \\
\textcolor{red}P(y_1-c_1)&=\textcolor{red}P(\frac{c_2-y_2}{1+R}) \\
y_1-c_1&=\frac{c_2-y_2}{1+R} \\
(1+R)(y_1-c_1)&=c_2-y_2 \\
c_2&=y_2+(1+R)(y_1-c_1)
\end{split}
$$

Substituindo $c_2$ na equação encontrada no item (a), temos:

$$
\begin{split}
\frac{y_2+(1+R)(y_1-c_1)}{c_1}&=\beta(1+R) \\
y_2+(1+R)(y_1-c_1)&=c_1\beta(1+R) \\
y_2+(1+R)y_1-(1+R)c_1&=c_1\beta(1+R) \\
y_2+(1+R)y_1&=c_1(1+\beta)(1+R) \\
\therefore \boxed{c_1^*=\frac{y_2+(1+R)y_1}{(1+\beta)(1+R)}}
\end{split}
$$

Voltando para equação de $c_2$, temos:

$$
\begin{aligned}
c_2&=y_2+(1+R)(y_1-c_1)\\
c_2&=y_2+(1+R)(y_1-\frac{y_2+(1+R)y_1}{(1+\beta)(1+R)})\\
c_2&=y_2+(1+R)-\frac{y_2+(1+R)y_1}{(1+\beta)}\\
c_2&=y_2+(1+R)-\frac{y_2}{1+\beta}-\frac{y_1(1+R)}{1+\beta}\\
c_2&=y_2-\frac{y_2}{1+\beta}+y_1(1+R)-\frac{y_1(1+R)}{1+\beta}\\
c_2&=y_2(\frac{1+\beta-1}{1+\beta})+y_1(1+R)(\frac{1+\beta-1}{1+\beta})\\
c_2&=y_2(\frac{\beta}{1+\beta})+y_1(1+R)(\frac{\beta}{1+\beta})\\
\therefore \boxed{c_2^*=[y_2+y_1(1+R)](\frac{\beta}{1+\beta})}
\end{aligned}
$$

Em $b_1=Py_1-Pc_1$ encontraremos o $b_1^*$

$\boxed{b_1^*=Py_1-P[\frac{y_2+(1+R)y_1}{(1+\beta)(1+R)}]}$

(c) no equilíbrio, teremos que para N indíviduos: $Nb_1^*=0$ e que $Ny_t^*=Nc_t^*$.


$$
\begin{aligned}
\textcolor{red}Py_1-\textcolor{red}P[\frac{y_2+(1+R^*)y_1}{(1+\beta)(1+R^*)}]&=0\\
y_1&=\frac{y_2+(1+R^*)y_1}{(1+\beta)(1+R^*)}\\
y_1(1+\beta)(1+R^*)&=y_2+(1+R^*)y_1\\
y_1(1+\beta)(1+R^*)-(1+R^*)y_1&=y_2\\
y_1(1+R^*)(1+\beta-1)&=y_2\\
(1+R^*)&=\frac{y_2}{y_1\beta}\\
\therefore \boxed{R^*=\frac{y_2}{y_1\beta}-1}
\end{aligned}
$$
(d) Se $y_1$ e $y_2$ diminuirem no mesmo montante não haverá impacto sobre a $R^*$ a proporcionalidade $\frac{y_2}{y_1}$ permanecerá inalterada.

# Considere $y=f(l)=Al^\alpha$ e $U(c,l)=ln(c)+ln(1-l)$.
Determine as escolhas ótimas no problema de um único período, i.e.,
$$
\begin{cases}
\begin{split}
\max _{c,l}\;U(c,l)=ln(c)+ln(1-l)\\
s.t.\; 
\begin{split}
i)\; c &\le y\\
ii)\;y&=f(l)
\end{split}
\end{split}
\end{cases}
$$

Podemos transformar o problema num problema de maximização livre de restrições substituindo as restrições na função de utilidade:

$$
\begin{split}
\max_l U(l)=ln(Al^\alpha)+ln(1-l)
\end{split}
$$
$$
\begin{aligned}
\frac{dU(l)}{dl}=0 \Leftrightarrow \alpha\frac{Al^{\alpha-1}}{Al^\alpha}+\frac{-1}{1-l}=0 \\
\alpha\textcolor{red}{\frac{Al^\alpha}{Al^\alpha}}l^{-1}&=\frac{1}{1-l}\\
\frac{\alpha}{l}&=\frac{1}{1-l}\\
\alpha(1-l)&=l\\
\alpha-\alpha l&=l\\
\alpha&=l+\alpha l\\
\alpha&=l(1+\alpha)\\
\therefore \boxed{l^*=\frac{\alpha}{1+\alpha}}
\end{aligned}
$$
Sabendo que $c=f(l)$, então:
$\boxed{c^*=A(\frac{\alpha}{1+\alpha})^\alpha}$

# Os ciclos econômicos estão relacionados, de um grosso modo, às flutuações em torno da tendência do PIB real ao longo dos anos. Pede-se:
a) Diferencie choque de mecanismo de propagação, citando alguns exemplos.

Via de regra, os choques são distúrbios que dão início ao ciclo econômico. Para que esses distúrbios iniciais ganhem força e perdurem ao longo do tempo deve existir algum mecanismo de propagação.

Exemplos de choque: 

* Choques tecnológicos

- Choques climáticos e Desastres Naturais

- Choques monetários

- Choques políticos

- Choques nas preferências

- Choques de notícias


Exemplos de mecanismo:

* Substituição intertemporal

* Preços rígidos (Sticky prices)

* Fricções no mercado financeiro

b) Os modelos de ciclos econômicos estão divididos em dois grupos. Cite-os, explicitando suas principais características.


1. _New Keynesian Cycles_
Ciclo oriundo de falhas de funcionamento do sistema econômico. Os choques monetários e tecnológicos são as causas da flutuação.

1. _Real Business Cycles_
O ciclo é uma resposta da economia a choques indesejados. Os choques tecnológicos são os grandes responsáveis pelo ciclo.

# Em alguns países, há o controle de preços de alguns bens, quando é definido um preço máximo ou mínimo para o qual determinado produto possa ser vendido. Os Estados Unidos, na administração de Nixon em 1971, passaram pelo controle de preços e salários. Geralmente, a existência de controle de preços leva ao crescimento dos mercados paralelos, onde produtos são trocados com preços acima do máximo legal permitido. Cuidadosamente, explique como o controle de preços se apresenta como um problema para o cálculo do PIB e para mensurar o nível de preços e inflação.

Os preços controlados refletem uma medida imprecisa dos valores de escassez, desta forma o PIB nominal é distorcido.
Os preços no mercado paralelo aumentam, e se, em grandes proporções os efeitos da inflação são subestimados.
Sob controle de preço as mudanças no PIB real exageram a extensão dos aumentos na produção real dado que a inflação tem índices baixos (subestimados).

# Suponha que o governo impõe um imposto de renda proporcional sobre a renda salarial do consumidor representativo. Ou seja, a renda salarial do consumidor é $w(1-t)(h-l)$, onde $t$ é a taxa de imposto. Qual o efeito do imposto sobre o rendimento no consumo e na oferta de mão-de-obra? Explique seus resultados em termos de efeitos de renda e substituição.

Quando o governo impões uma taxa proporcional ao salário, a restrição orçamentária do consumidor fica:
$C=w(1-t)(h-l)+\pi-T$,

Note que, inicialmente, a inclinação da restrição orçamentária é dada por $-w$, uma vez que qdo $t=0$ a reta é a FGH.

Ao assumir $t>0$  a reta desloca para baixo representada pelo ponto E e inclinação $-1(1-t)w$

O efeito *substituição* leva a escolha do consumidor de A a D na curva de indiferença $I_1$.

O efeito *renda* é representado pela mudança de D a B uma vez que a introdução do imposto diminue a utilidade do consumidor $I_1>I_2$


![resposta](Pasted image 20220507173918.png)

