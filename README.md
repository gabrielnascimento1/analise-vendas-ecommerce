# analise-vendas-ecommerce
Projeto de Análise de Dados de E-commerce utilizando SQL no BigQuery e Power BI


# 📊 Análise de Vendas Globais de E-commerce

Projeto de análise de dados voltado para o setor de comércio eletrônico, utilizando consultas SQL avançadas no **Google BigQuery** para extração de insights de faturamento, volume de vendas e ticket médio por país.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas
* **SQL / BigQuery**: Manipulação de grandes volumes de dados públicos (bigquery-public-data.thelook_ecommerce), utilizando junções relacionais (INNER JOIN), agregações (SUM, `AVG`, COUNT), filtros condicionais (WHERE, HAVING) e ordenações.
* **Power BI** *(Próxima etapa)*: Construção de dashboard interativo para visualização de KPIs de negócio.
* **GitHub**: Versionamento de código e documentação de portfólio.

---

## 📂 Estrutura do Repositório
* query_vendas.sql: Consulta SQL desenvolvida para extrair o ranking dos principais mercados globais filtrando apenas os pedidos concluídos com faturamento superior a meio milhão.

---

## 💡 Destaques da Consulta SQL
A query aplicada neste projeto realiza as seguintes operações de negócio:
1. **Conexão de Tabelas**: Cruza os dados de clientes e itens de pedidos (users e order_items).
2. **Filtragem de Qualidade**: Considera estritamente o status de entrega Complete` para garantir precisão financeira.
3. **Agregação e Agrupamento**: Agrupa os resultados por país, calculando o total de itens entregues, o faturamento bruto arredondado e o ticket médio por transação.
4. **Filtro de Relevância (`HAVING`)**: Destaca mercados estratégicos com faturamento superior a `500.000`.
