---
title: Políticas públicas
subtitle: Análise da progressividade da carga tributária sobre a população brasileira
author: Aguimar Mendonça Neto
thanks: aguimar@gmail.com
date: \today
numbersections: true
lang: pt-br
pdf-engine: lualatex
---

# Introdução

O objetivo do artigo é estimar a carga tributária para os estratos de renda selecionados em cada Unidade da Federação (UF). Ele busca analisar a progressividade da carga tributária direta e indireta de cada região.
A carga tributária é apurada tomando como base a renda familiar, a renda familiar *per capita* e a despesa familiar. Os impostos são separados em duas categorias: diretos e indiretos. Assim é possível identificar e sugerir medidas que busquem amenizar o problema.

# Base de Dados e Método

A base de dados para estimar a carga tributária é composta pelo arquivo de microdados da POF 2002-2003 e pela legislação tributária federal, dos estados e municípios. Os dados incompatíveis foram excluídos, considerando-se como incompatíveis as informações em que a carga tributária indireta era maior do que a renda familiar.
No cálculo das medidas de progressividade será considerada a ordenação das pessoas conforme a renda familiar *per capita*.
Para tornar factível a proposta de analisar a carga em UF, foi preciso adotar o pressuposto simplificador de que incide sobre o produto apenas a alíquota determinada no estado, ou seja, supôs-se que o produto é produzido e vendido dentro do estado.
Embora as simplificações consideradas possam dar a impressão de que a carga tributária por faixa de renda será subestimada, é importante lembrar que está sendo levado em conta que todos os produtos adquiridos pelas famílias foram comercializados regularmente, sendo que há projeções de que a sonegação de impostos no Brasil chega a 30% do total arrecadado (CHIARA, 2007).


## Análise da progressividade

Para determinar se um tributo é progressivo ou regressivo, foi utilizado o índice desenvolvido por Lerman e Yitzhaki (1995). O índice desenvolvido por estes autores toma como base o ordenamento da renda final, isto é, a renda após a incidência do imposto ou do benefício.
Valores positivos do índice indicam que o imposto é progressivo e valores negativos indicam que o imposto é regressivo.

# Estimação da carga tributária: a situação atual

No estudo há dois tipos de impostos indiretos: aqueles para os quais a alíquota prevista em lei coincide com a taxa efetiva, *a* e aqueles para os quais a alíquota é diferente da taxa efetiva, *A*. Quando a alíquota prevista em lei é aplicada sobre o valor da nota fiscal, há uma diferença entre alíquota e taxa. Dos impostos indiretos considerados, apenas no caso do IPI a alíquota coincide com a taxa, pois a alíquota é aplicada sobre o valor livre de impostos.
Há uma diferença na forma com que está sendo apurada a tributação direta e indireta. A direta, por se basear nas informações da POF de 2002-2003, além de seguir as regras tributárias da época, é uma estimação da carga tributária efetiva. Já a carga tributária indireta é a potencial, ou seja, a que deveria ser paga seguindo regras mais atuais dos impostos indiretos.  

## Carga tributária direta

A carga tributária direta sobre as famílias brasileiras tem uma taxa média de 6,83%. O imposto relacionado com a previdência pública foi o que apresentou maior carga média, 2,58%. O IR é o que apresenta maior progressividade, chegando a 4,12% para a classe mais rica do estudo.
O IPTU, que é um imposto sobre patrimônio, onera proporcionalmente mais as famílias da primeira classe do que as famílias da última, mostrando-se regressivo quando comparadas essas duas faixas. O IR foi o único imposto que cresceu ao longo de todas as classes.
A carga tributária é progressiva, isto é, os impostos diretos contribuem para reduzir a desigualdade.
Uma observação quanto à carga tributária direta diz respeito às diferenças regionais. As cargas de impostos diretos no Norte e no Nordeste são, em média, muito próximas, com pouco mais de 5%, enquanto as outras regiões tiveram percentuais médios acima de 7%. Para saber se essa diferença é decorrente de políticas tributárias focalizadas, foi estimado um modelo no qual a variável dependente é a carga direta média para cada UF e as variáveis explicativas são as respectivas rendas médias e uma variável binária com valor 1 apenas para as regiões Norte e Nordeste. O resultado mostra que o coeficiente da variável binária não é significativo, indicando que as diferenças dos impostos diretos entre as regiões devem-se, basicamente, às diferenças do nível de renda.

## Carga tributária indireta

Os grupos de despesa que tiveram maior participação no orçamento das famílias podbres foram regressivos, cabendo destaque para os grupos alimentos e habitação. Já transporte é progressivo, este que é um grupo de despesa com grande participação no orçamento das famílias mais ricas. A carga tributária indireta sobre alimentos e sobre habitação cai invariavelmente do primeiro estrato até o último.
O ICMS, que é um imposto estadual, é o que tem maior participação na carga tributária indireta sobre as famílias, seguido de PIS e da Confins, que são impostos federais. O ISS, que é municipal, representa uma taxa menos variável conforme estratos de renda.
Em todas as regiões o imposto mais regressivo foi o ICMS. O ISS só apresentou índice de progressividade negativo no Norte, mas está muito próximo de zero; nas outras regiões o índice de Lerman-Yitzhaki associado ao ISS é positivo.
A má seleção dos impostos indiretos no Brasil, no que se refere à progressividade dos impostos, é comprovada pelo índice de progressividade de -0,075 para a tributação indireta quando tomada a despesa familiar *per capita* como base. Os impostos indiretos deveriam ser lineares ou algo próximo disto quando tomada esta base como referência.

## Carga tributária total

Quando tomada a renda como base, nota-se que o sistema tributário é regressivo. Neste caso, o índice de Lerman-Yitzhaki para a carga tributária total é -0,099. O índice de Gini aumenta de 0,5896 para 0,60 após incidência da tributação do Brasil.
Ao considerarmos a despesa familiar, verifica-se que há um aumento da carga quando se compara a primeira faixa à última. Apesar disso, o índice de Lerman-Yitzhaki foi negativo, indicando que a carga tributária é regressiva, mesmo quando tomada a despesa familiar *per capita* como base. Os resultados sugerem que a carga tributária no Brasil contribui para o aumento da desigualdade.

# Considerações finais

A carga tributária total no Brasil é regressiva quando tomada a renda como base. Destacam-se dois motivos:

a) Os impostos indiretos, apesar de progressivos, têm baixa participação na renda.

b) Não é feita uma seleção satisfatória dos produtos na hora de tributar o consumo das famílias no Brasil.

Quando tomada a despesa como base, a carga tributária total apresentou índice de Lerman-Yitzhaki negativo, mas muito próximo de zero, o que indica um sistema quase neutro quando tomada a despesa como base.

Uma forma de diminuir a regressividade dos sistema tributário brasileiro é a redução dos impostos sobre alimentos, o que pode servir como um complemento dos programas de renda mínima do governo na busca de um melhor bem-estar da população pobre.
 
