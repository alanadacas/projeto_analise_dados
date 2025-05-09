# 🎬 Análise de Dados de Locadora em SQL

📌 Objetivo:
Um pequeno projeto para identificar oportunidades de negócio através da análise de preços médios, disponibilidade por gênero e desempenho no catálogo.

## 📊 Insights Estratégicos

 ###   Arte: 

        📈 Maior preço médio 

        ⚠️ Apenas 1 filme no catálogo

    Recomendações de Negócio: Aumentar catálogo de Arte.
    Justificativa: Margem alta com baixa concorrência.

        

   ### Drama:

        💰 Menor preço médio

        🎬 Maior quantidade disponível 

        Recomendações de Negócio: Investigar demanda por Drama. Se há alta procura, vale expandir opções com preços baixos.
        Justificativa: Mais opções com preços competitivos por conta da alta demanda.
       
       

  ### Ficção Científica:

        ⚖️ Preço médio balanceado

        🚀 X filmes no catálogo

        Recomendações de Negócio: Monitorar, manter equilíbrio entre preço e variedade.
        Justificativa: Quantidade moderada de títulos e potencial de alta procura.


## 🛠 Técnicas SQL Utilizadas


| Técnica               | Exemplo no Projeto                          | Finalidade                     |
|-----------------------|---------------------------------------------|--------------------------------|
| `ROUND()`             | Arredondar preços médios                    | Precisão em análises financeiras |
| `GROUP BY` + `AVG()`  | Calcular preço médio por gênero             | Identificar tendências         |
| Subqueries            | Filtrar aluguéis acima da média            | Benchmarking                   |
| `CREATE VIEW`         | Salvar resultados de agrupamentos          | Reutilização em relatórios     |
| `AS`                  | Para nomes claros em colunas               | Melhor entendimento     |

      

