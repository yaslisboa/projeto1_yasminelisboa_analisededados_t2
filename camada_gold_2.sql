SELECT 
    nome_viajante,
    SUM(total_pago) AS total_gasto
FROM gold_viagens
GROUP BY nome_viajante
ORDER BY total_gasto DESC
LIMIT 10;


SELECT 
    nome_viajante,
    SUM(total_pago) AS total_gasto
FROM gold_viagens
WHERE nome_viajante NOT IN (
    'Informações protegidas por sigilo',
    'Sem Informação'
)
GROUP BY nome_viajante
ORDER BY total_gasto DESC
LIMIT 10;