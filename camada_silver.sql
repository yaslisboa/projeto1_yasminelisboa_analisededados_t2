CREATE TABLE silver_viagem (
    id_viagem VARCHAR(20) PRIMARY KEY NOT NULL,
    num_proposta VARCHAR(20),
    situacao VARCHAR(50),
    viagem_urgente VARCHAR(5),
    cod_orgao_superior VARCHAR(20),
    nome_orgao_superior VARCHAR(255) NOT NULL,
    nome_viajante VARCHAR(255),
    cargo VARCHAR(255),
    data_inicio DATE,
    data_fim DATE,
    destinos VARCHAR(4000),
    motivo VARCHAR(4000),
    valor_diarias DECIMAL(10,2),
    valor_passagens DECIMAL(10,2),
    valor_devolucao DECIMAL(10,2),
    valor_outros_gastos DECIMAL(10,2),
    valor_total DECIMAL(12,2),
    duracao_dias INT,

    CONSTRAINT chk_valor_diarias
        CHECK (valor_diarias >= 0)
);

CREATE TABLE silver_pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_viagem VARCHAR(20) NOT NULL,
    num_proposta VARCHAR(20),
    nome_orgao_pagador VARCHAR(255),
    nome_ug_pagadora VARCHAR(255),
    tipo_pagamento VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2),

    CONSTRAINT fk_pagamento_viagem
        FOREIGN KEY (id_viagem)
        REFERENCES silver_viagem(id_viagem),

    CONSTRAINT chk_valor_pagamento
        CHECK (valor >= 0)
);

CREATE TABLE silver_passagem (
    id_passagem INT AUTO_INCREMENT PRIMARY KEY,
    id_viagem VARCHAR(20) NOT NULL,
    meio_transporte VARCHAR(50),
    pais_origem_ida VARCHAR(60),
    uf_origem_ida VARCHAR(40),
    cidade_origem_ida VARCHAR(80),
    pais_destino_ida VARCHAR(60),
    uf_destino_ida VARCHAR(40),
    cidade_destino_ida VARCHAR(80),
    valor_passagem DECIMAL(10,2),
    taxa_servico DECIMAL(10,2),
    data_emissao DATE,

    CONSTRAINT fk_passagem_viagem
        FOREIGN KEY (id_viagem)
        REFERENCES silver_viagem(id_viagem),

    CONSTRAINT chk_valor_passagem
        CHECK (valor_passagem >= 0),

    CONSTRAINT chk_taxa_servico
        CHECK (taxa_servico >= 0)
);
