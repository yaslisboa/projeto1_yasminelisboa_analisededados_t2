CREATE TABLE gold_viagens AS
SELECT
    v.id_viagem,
    v.nome_viajante,
    v.destinos,
    p.nome_orgao_pagador,
    SUM(CAST(REPLACE(p.valor, ',', '.') AS DECIMAL(10,2))) AS total_pago
FROM raw_viagem v
JOIN raw_pagamento p
    ON v.id_viagem = p.id_viagem
GROUP BY 
    v.id_viagem,
    v.nome_viajante,
    v.destinos,
    p.nome_orgao_pagador;
    
CREATE VIEW vw_gold_viagens AS
SELECT
    v.id_viagem,
    v.nome_viajante,
    v.destinos,
    p.nome_orgao_pagador,
    SUM(CAST(REPLACE(p.valor, ',', '.') AS DECIMAL(10,2))) AS total_pago
FROM raw_viagem v
JOIN raw_pagamento p
    ON v.id_viagem = p.id_viagem
GROUP BY 
    v.id_viagem,
    v.nome_viajante,
    v.destinos,
    p.nome_orgao_pagador;