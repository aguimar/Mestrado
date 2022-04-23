links [[Matemática]]

Aluno: Aguimar Mendonça Neto
## 1. Considere as funções receita e custo de uma empresa, $R(Q)=1200Q-2Q^2$ e $C(Q)=Q^3-61,25Q^2+1528,5Q+2000$. Determine a produção que maximiza o lucro.

### Dado que uma empresa produz o produto Q, o lucro é dado pela diferença entre a Receita e Despesa gerados por esse produto. Temos a seguinte condição algébrica:  $π=R(Q)-C(Q)$

$R(Q)=1200Q-2Q^2$ 
$C(Q)=Q^3-61,25Q^2+1528,5Q+2000$

$\pi=1200Q-2Q^2-(Q^3-61,25Q^2+1528,5Q+2000)$
$π=-Q^3+59,25Q^2-328,5Q-2000$

$\frac{d\pi}{dQ}=-3Q^2+118,5Q-328,5$

### C.P.O --> $\frac{d\pi}{dQ}=0$

 $-3Q^2+118,5Q-328,5=0$

 $Q=\frac{-118,5\pm\sqrt{118,5^2-4*(-3)*(-328,5)}}{2.(-3)}=\frac{118,5\pm100,5}{6}$ 

$Q'=219/6=36,5$
$Q''=18/6=3$

### C.S.O --> $[\frac{d\pi}{dQ}]''<0$

$[\frac{d\pi}{dQ}]''=-6Q+118,5$

qdo $Q=36,5$ $[\frac{d\pi}{dQ}]''=-110,5$ ($<0$)
qdo $Q=3$ $[\frac{d\pi}{dQ}]''=110,5$ ($>0$)

logo para $Q=36,5$ teremos o lucro máximo




## 2 . Uma empresa tem as seguintes funções custo total e demanda: $C=\frac{1}{3}Q^3-7Q^2+111Q+50$ e $Q=100-P$.

### (a) Formule a função de lucro total L em termos de Q.
**$\pi=R(Q)-C(Q)$

Tomando $R(Q)=Q*P$, temos que $R(Q)=Q(100-Q)$

$\pi=100Q-Q^2-\frac{1}{3}Q^3+7Q^2-111Q-50$

$\pi=-\frac{1}{3}Q^3+6Q^2-11Q-50$

### (b) Encontre o nível de produção Q* que maximiza o lucro.

$\frac{d\pi}{dQ}=-Q^2+12Q-11$=0

$Q=\frac{-12\pm\sqrt{12^2-4(-1)(-11)}}{2(-1)}=\frac{-12\pm10}{-2}$

$Q'=11$

$Q''=1$

$[\frac{d\pi}{dQ}]''=-2Q+12$

para $Q''=1$ $[\frac{d\pi}{dQ}]''>0$ 

para $Q''=11$ $[\frac{d\pi}{dQ}]''<0$

logo para $Q=11$ teremos o lucro máximo

### (c) Qual o lucro máximo ?
$\pi=-\frac{1}{3}*11^3+6.11^2-11.11-50$

$\pi=-\frac{1}{3}*1331+6*121-121-50$

$\pi=111.3$

## 3. Calcule os valores extremos. Verifique se são máximos ou mínimos.

### (a) $f(x,y,z)=xz+x^2-y+yz+y^2+3z^2$

C.P.O $\nabla f(x,y,z)=(\frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z}) = (0,0,0)$

$\frac{\partial f}{\partial x}=z+2x=0$

$\frac{\partial f}{\partial y}=-1+z+2y=0$

$\frac{\partial f}{\partial z}=x+y+6z=0$

$x=-\frac{z}{2}$

$y = \frac{1-z}{2}$

$\frac{-z+1-z}{2}+6z=0$

$1-2z+12z=0$

$z = -\frac{1}{10}$ , $x=\frac{1}{20}$ , $y=\frac{11}{20}$ <-- ponto crítico

### Teste matriz Hessiana

$H=\begin{bmatrix}\frac{\partial^2 f}{\partial x\partial x} &\frac{\partial^2 f}{\partial^2 x\partial y} & \frac{\partial^2 f}{\partial x \partial z} \\ \frac{\partial^2 f}{\partial y\partial x} & \frac{\partial^2 f}{\partial y \partial y} & \frac{\partial^2 f}{\partial y \partial z} \\ \frac{\partial^2 f}{\partial z \partial x} & \frac{\partial^2 f}{\partial z \partial y} & \frac{\partial^2 f}{\partial z \partial z}\end{bmatrix}$ 

$H_1 = \frac{\partial^2 f}{\partial x \partial x} = 2 (>0)$ 

$H_2=\begin{bmatrix}\frac{\partial^2 f}{\partial x \partial x} & \frac{\partial^2 f}{\partial x \partial y} \\\frac{\partial^2 f}{\partial y \partial x} & \frac{\partial^2 f}{\partial y \partial y} \end{bmatrix}$ = $\begin{bmatrix}2 & 0 \\0 & 2 \end{bmatrix} = 4 (>0)$$

$H_3 =\begin{bmatrix}2 & 0 & 1\\0 & 2 & 1\\1 & 1 & 6\end{bmatrix}=2*2*6+0*1*1+0*1*1-1*2*1-0*0*6-1*1*2=20 (>0)$

a função tem um mínimo dado que $H_1$, $H_2$ e $H_3$ são maiores que 0.

### (b) $f(x,y,z)=x^2+3y^2-3xy+4yz+6z^2$

C.P.O $\nabla f(x,y,z)=(\frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}, \frac{\partial f}{\partial z}) = (0,0,0)$

$f_x=2x-3y=0$ --> $2x=3y$ --> $x=\frac{3}{2}y$

$f_y=6y-3x+4z=0$ --> $3x=6y+4z$ --> $z=(3*\frac{3}{2}*{-3z})-(6*{-3z})$

$z=-\frac{27}{2}z+18z$ --> z = 0 --> y =0 e z = 0

$f_z=4y+12z=0$ --> $4y=-12z$ --> $y=-3z$


Ponto crítico (0,0,0)

### Teste matriz Hessiana

$H=\begin{bmatrix}f_{xx} & f_{xy} & f_{xz}\\f_{yx}&f_{yy}&f_{yz}\\f_{zx}&f_{zy}&f_{zz}\end{bmatrix}$


$f_{xx}=2$

$f_{xy}=-3$

$f_{xz}=0$

$f_{yy} = 6$

$f_{yz}=4$

$f_{zz}=12$

$H_1=2 (>0)$

$H_2=\begin{bmatrix}2&&-3\\-3&&6\end{bmatrix}=3 (>0)$

$H_3=\begin{bmatrix}2&-3&0\\-3&6&4\\0&4&12\end{bmatrix}=4(>0)$

logo, o ponto crítico (0,0,0) trata-se de um mínimo, uma vez que $H_1$, $H_2$ e $H_3$ são maiores que 0

## 4. A função lucro de uma loja foi determinada como sendo $L(x,y)=-x^3-x^2-y^2+2xy+3x+10$, em que $x$ e $y$ são quantidades de dois produtos negociados. Quais os valores de $x$ e $y$ que maximizam o lucro?

C.P.O $\nabla f(x,y)=(f_x, f_y)= (0,0)$

$f_x(x) = -3x^2-2x+2y+3=0$ 

$f_y(x) = -2y+2x=0$

$x=y$

$-3y^2-2y+2y+3=0$ --> $-3y^2=-3$ --> $y=1$ e $x=1$

CSO 2 variáveis

$f_{xx}=-6x-2$ ; $f_{xy}=2$
$fyx=2$; $f_{yy}=-2$

$H_1=-8 (<0)$

$H_2=\begin{bmatrix}-8&&2\\2&-2\end{bmatrix}=12 (>0)$


Portanto x=y=1 maximizam o lucro

# 5. Seja $U=4xy+3x-x^3-y^2$ a função que da a utilidade de um consumidor de dois produtos de quantidades $x$ e $y$.

### (a) Determine a combinação $(x,y)$ que lhe proporciona a utilidade máxima.

C.P.O $\nabla f(x,y)=(f_x, f_y)= (0,0)$

$f_x=4y+3-3x^2=0$
$f_y=4x-2y=0$

$y=2x$

$-3x^2+8x+3=0$

$\Delta=8^2-4(-3)3=100$

$x'=-\frac{1}{3}$
$x''=3$

a combinação que proporciona a utilidade máxima é $x =3$ e $y=6$

### (b) Teste o ponto encontrado para verificar se realmente se trata de um ponto de máximo.

C.S.O

$f_{xx}=-6x$ ; $f_{xy}=4$
$f_{yx}$=4 ; $f_{yy}=-2$

$H_1 = f_{xx} = -18 <0$
$H_2=\begin{bmatrix}-18&4\\4&-2\end{bmatrix}=36-16=20>0$

De acordo com o teste da matrix _hessiana_ temos que o (3,6) trata-se de um máximo

### (c) Determine a utilidade máxima do consumidor.

 $U=4.3.6+3.3-3^3-6^2=72+9-27-36=18$

A utilidade máximo do consumidor é 18.

# 6. Sabendo que $U(x)=xy$ é uma função de utilidade do consumidor e que sua restrição orçamentária é $2x+3y=36$, determine as quantidades $x$ e $y$ que maximizam $U$.

Utilizando multiplicador de Lagrange

$\mathcal{L}(x,y,\lambda)=xy+\lambda(36-2x-3y)$

CPO $\nabla\mathcal{L}(x,y,\lambda)=(\mathcal{L}_x,\mathcal{L}_y, \mathcal{L}_\lambda)=(0,0,0)$

$\mathcal{L}_x=y-2\lambda=0$ ; $\lambda=\frac{y}{2}$

$\mathcal{L}_y=x-3\lambda=0$ ; $\lambda=\frac{x}{3}$; $y=\frac{2}{3}x$

$\mathcal{L}_\lambda=36-2x-3y=0$

$2x+3.\frac{2}{3}x=36$; $x= 9$ e $y=6$


# 7. Suponha que a função de produção para uma empresa é $z=x^\frac{1}{2}y^\frac{1}{2}$ e que a função custo associada é $C=2x+2y+10$. Suponha, ainda, que o fabricante limita seu custo em 46. Em que ponto se tem a produção máxima com o custo fixado de 46 ?

Fixando a função $C=46$ temos a nova restrição 2x+2y-36

$\mathcal{L}(x,y,\lambda)=x^\frac{1}{2}y^\frac{1}{2}+\lambda(-36+2x+2y)$

CPO $\nabla\mathcal{L}(x,y,\lambda)=(\mathcal{L}_x,\mathcal{L}_y, \mathcal{L}_\lambda)=(0,0,0)$


$\mathcal{L}_x=\frac{1}{2\sqrt{x}}y^\frac{1}{2}+2\lambda=0$ ; $\lambda=-\frac{1}{4}\sqrt{\frac{y}{x}}$

$\mathcal{L}_y=x^\frac{1}{2}\frac{1}{2\sqrt{y}}+2\lambda=0$ ; $\lambda=-\frac{1}{4}\sqrt{\frac{x}{y}}$ --> $y=x$

$\mathcal{L}_\lambda=2x+2y-36=0$

$2x+2x=36$ ; $x = 9$ e $y = 9$

CSO

$\mathcal{L}_{xx}=-\frac{1}{4}x^{-\frac{3}{2}}y^\frac{1}{2}$

$\mathcal{L}_{xy}=\frac{1}{4}x^{-\frac{1}{2}}y^{-\frac{1}{2}}$

$\mathcal{L}_{x\lambda}=-2$

$\mathcal{L}_{yy}=-\frac{1}{4}x^\frac{1}{2}y^{-\frac{3}{2}}$

$\mathcal{L}_{y\lambda}=-2$

$\mathcal{L}_{\lambda\lambda}=0$

$|\bar H|=\begin{bmatrix}-\frac{1}{4}x^{-\frac{3}{2}}y^\frac{1}{2}&\frac{1}{4}x^{-\frac{1}{2}}y^{-\frac{1}{2}}&-2\\\frac{1}{4}x^{-\frac{1}{2}}y^{-\frac{1}{2}}&-\frac{1}{4}x^\frac{1}{2}y^{-\frac{3}{2}}&-2\\-2&-2&0 \end{bmatrix}=\frac{16}{36}>0$

Obs.: substituindo os valores de x e y e calculando o determinante, verificamos que o ponto encontrado trata-se do máximo.

 
























