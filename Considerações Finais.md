### Fonte dos dados
Banco de Dados Meteorológicos para Ensino e Pesquisa do Instituto Nacional de Meteorologia (BDMEP - INMET).
http://www.inmet.gov.br/portal/index.php?r=bdmep/bdmep

### Dados
Precipitações diárias das capitais referente ao período entre 01/01/1987 e 01/01/2017.

###Tratamento dos dados
Os dados colhidos eram exibidos por dia, percorremos todas as linhas  adicionando a um dicionário os dados de dia e mês (como keys), e ignoramos 
os anos visto que a aplicação solicita apenas o dia e o mês ao usuário. Fizemos uma soma com todas as precipitações ocorridas 
conjuntamente com um contador de ocorrências totais, fracas, moderadas e fortes. Ao finalizar a última linha, a precipitação era dividida
pela quantidade de ocorrências e gerava o campo de precipitações médias. O dicinário ficava com os values precipitação média, ocorrências, fracas
médias e moderadas.
A classificação de fracas, moderadas e fortes foram baseadas em médias estimadas pela própria equipe baseada em artigos científicos 
e seus respectivos valores em mm³ foram: <= 15; >15 e <=30; > 30.

###Problemas encontrados
As capitais Campo Grande (MT) e Porto Velho (RO) não possuem estações monitoradas pelo INMET e portanto não haviam dados.
Algumas capitais não tinham os dados de 30 anos exatamente porque as estações não estavam em funcionamento desde a data inicial
utilizada, como por exemplo Fortaleza (CE) que teve inicio de coleta em 1990.

### Pontos de melhoria
O BDMEP-INMET possui alguns outros dados que podem ser relevantes para pessoas que realizam viagens constantemente (ou não) para diversas
regiões do país como:
* temperaturas média, máxima e mínima - para escolher as vestimentas e o lugar de hospedagem;
* umidade relativa do ar - para levar medicação em caso de asma, usar hidratantes e evitar aglomerações nos casos em que ela estiver baixa;
* insolação - para proteção da pele;
Esses pontos poderiam ser desenvolvidos como funcionalidades extras para a aplicação.