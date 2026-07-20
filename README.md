# projeto1_yasminelisboa_analisededados_t2
Projeto ETL Portal Transparencia

# Analise de Viagens Governamentais

Este projeto trabalha com dados publicos de viagens realizadas a servico do governo federal.

A proposta foi organizar esses dados e transforma-los em informacoes mais claras, utilizando Python, SQL e um banco de dados relacional.

---

## Como executar

1. Criar o banco de dados no MySQL  
2. Executar os scripts das camadas Raw, Silver e Gold  
3. Rodar o notebook com o processo de ETL e as analises 

---

## Estrutura do projeto

O projeto foi dividido em tres etapas principais:

### Raw

Os dados foram carregados no banco exatamente como foram obtidos, sem alteracoes. Essa camada serve como base para todo o restante.

### Silver

Nesta etapa, os dados passaram por tratamento e organizacao. Foram feitas:

- conversoes de tipo (valores e datas)
- padronizacao de colunas
- criacao de campos como valor total e duracao das viagens

### Gold

Aqui os dados foram combinados para analise. Foram utilizados JOIN e GROUP BY para cruzar informacoes e gerar uma visao mais completa.

---

## Analises realizadas

Foram feitas analises para entender melhor o comportamento das viagens:

## Perguntas respondidas

### Camada Silver

- Pergunta 1 — Quais sao os viajantes com maior numero de viagens  
- Pergunta 2 — Quais sao os destinos com maior custo medio de viagem  
- Pergunta 3 — Qual a viagem com maior duracao e qual foi o custo associado  
- Pergunta 4 — Qual o meio de transporte mais utilizado  
- Pergunta 5 — Qual a UF de destino mais frequente  
- Pergunta 6 — Qual o tipo de pagamento com maior valor medio  
- Pergunta 7 — Qual o orgao que mais gastou no total  

---

### Camada Gold

- Pergunta 1 — Quais viajantes concentram o maior valor total de gastos  
- Pergunta 2 — Quais orgaos possuem maior volume total de gastos  
- Pergunta 3 — Quais destinos concentram o maior volume de gastos  



Os resultados foram apresentados em tabelas e graficos.

---

## Observacoes sobre os dados

Durante a analise, foram encontrados registros como "Sigiloso" e "Sem informacao".

Esses casos foram tratados ou removidos quando necessario, pois nao representam dados completos e podem afetar os resultados.

---

## Tecnologias utilizadas

- Python (Pandas, Matplotlib)  
- SQL (MySQL)  
- Jupyter Notebook   

---

## Conclusao

Brasilia aparece com bastante destaque, o que faz sentido por ser o principal centro administrativo do pais. Outros destinos como Rio de Janeiro e Sao Paulo tambem apresentam valores relevantes, indicando concentracao de deslocamentos para polos economicos e institucionais.

Tambem foi possivel observar diferencas no custo medio entre orgaos, indicando que alguns realizam viagens mais caras que outros.

Outro ponto importante foi a concentracao de gastos em determinados destinos, o que sugere maior frequencia de deslocamentos para locais especificos.

A presenca de dados como "Sigiloso" e "Sem informacao" tambem mostrou a importancia da etapa de limpeza, ja que esses registros poderiam distorcer os resultados.


No geral, o projeto mostra como dados brutos podem ser organizados e transformados em informacoes mais uteis.

---

Projeto desenvolvido como parte dos meus estudos no curso de Analise de Dados no SCTEC.