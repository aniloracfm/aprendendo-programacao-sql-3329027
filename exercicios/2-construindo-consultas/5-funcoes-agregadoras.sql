-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT
  BillingCountry  AS pais,
  SUM(Total)      AS soma_compra,
  COUNT(Total)    AS qt_compras,
  MIN(Total),
  MAX(Total),
  ROUND(AVG(Total),2)
FROM
  invoices
WHERE
  BillingCountry = 'Austria';