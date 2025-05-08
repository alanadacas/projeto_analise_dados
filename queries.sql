-- ANÁLISES DE DADOS COM SQL utilizando:

-- Agrupamentos
-- Filtragem em agrupamentos
-- Subqueries
-- Criação de Views

-- Lembrando das tabelas do banco de dados...

SELECT * FROM alugueis;
SELECT * FROM atores;
SELECT * FROM atuacoes;
SELECT * FROM clientes;
SELECT * FROM filmes;

# =======  CRIANDO AGRUPAMENTOS  =======#

-- Caso 1. Análise para descobrir o preço médio de aluguel dos filmes.

SELECT AVG(preco_aluguel) FROM filmes;

-- Caso 2. Sabendo o preço médio para se alugar filmes, análise descobrir qual é o preço médio para cada gênero de filme.

SELECT
	genero,
    ROUND (AVG(preco_aluguel), 2) AS preco_medio,
    COUNT(*) AS qtd_filmes
FROM filmes
GROUP BY genero;

# =======       FILTROS EM AGRUPAMENTOS       =======#

-- Para alterar a consulta do Caso 2 e considerar o seguinte cenário:

-- Caso 3: Fazer a mesma análise, mas considerando apenas os filmes com ANO_LANCAMENTO igual a 2011.

SELECT
	genero,
    ROUND (AVG(preco_aluguel), 2) AS preco_medio,
    COUNT(*) AS qtd_filmes
FROM filmes
WHERE ano_lancamento = 2011
GROUP BY genero;

# =======  SUBQUERIES: SELECT DENTRO DE OUTRO SELECT   =======#

-- Caso 4. Análise de desempenho dos alugueis. Para isso, uma análise comum é identificar quais aluguéis tiveram nota acima da média.

SELECT AVG(nota) FROM alugueis; -- 7.94

SELECT 
	*
FROM alugueis
WHERE nota >= (SELECT AVG(nota) FROM alugueis);

# =======  Criando Views - CREATE VIEW   =======#

-- CREATE/DROP VIEW: Guardando o resultado de uma consulta no nosso banco de dados

-- Caso 5. View para guardar o resultado do SELECT abaixo.

CREATE VIEW resultado AS
SELECT
	genero,
	ROUND(AVG(preco_aluguel), 2) AS media_preco,
    COUNT(*) AS qtd_filmes
FROM filmes
GROUP BY genero;

SELECT * FROM resultado;
