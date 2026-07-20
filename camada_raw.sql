CREATE DATABASE IF NOT EXISTS transparencia;
USE transparencia;

CREATE TABLE raw_viagem (
    id_viagem VARCHAR(20),
    num_proposta VARCHAR(20),
    situacao VARCHAR(50),
    viagem_urgente VARCHAR(5),
    justificativa_urgencia VARCHAR(4000),
    cod_orgao_superior VARCHAR(20),
    nome_orgao_superior VARCHAR(255),
    cod_orgao_solicitante VARCHAR(20),
    nome_orgao_solicitante VARCHAR(255),
    cpf_viajante VARCHAR(20),
    nome_viajante VARCHAR(255),
    cargo VARCHAR(255),
    funcao VARCHAR(100),
    descricao_funcao VARCHAR(255),
    data_inicio VARCHAR(10),
    data_fim VARCHAR(10),
    destinos VARCHAR(4000),
    motivo VARCHAR(4000),
    valor_diarias VARCHAR(50),
    valor_passagens VARCHAR(50),
    valor_devolucao VARCHAR(50),
    valor_outros_gastos VARCHAR(50)
);

CREATE TABLE raw_pagamento (
    id_viagem VARCHAR(20),
    num_proposta VARCHAR(20),
    cod_orgao_superior VARCHAR(20),
    nome_orgao_superior VARCHAR(255),
    cod_orgao_pagador VARCHAR(20),
    nome_orgao_pagador VARCHAR(255),
    cod_ug_pagadora VARCHAR(20),
    nome_ug_pagadora VARCHAR(255),
    tipo_pagamento VARCHAR(50),
    valor VARCHAR(50)
);

CREATE TABLE raw_passagem (
    id_viagem VARCHAR(20),
    num_proposta VARCHAR(20),
    meio_transporte VARCHAR(50),

    pais_origem_ida VARCHAR(60),
    uf_origem_ida VARCHAR(40),
    cidade_origem_ida VARCHAR(80),

    pais_destino_ida VARCHAR(60),
    uf_destino_ida VARCHAR(40),
    cidade_destino_ida VARCHAR(80),

    pais_origem_volta VARCHAR(60),
    uf_origem_volta VARCHAR(40),
    cidade_origem_volta VARCHAR(80),

    pais_destino_volta VARCHAR(60),
    uf_destino_volta VARCHAR(40),
    cidade_destino_volta VARCHAR(80),

    valor_passagem VARCHAR(50),
    taxa_servico VARCHAR(50),

    data_emissao VARCHAR(10),
    hora_emissao VARCHAR(8)
);

CREATE TABLE raw_trecho (
    id_viagem VARCHAR(20),
    num_proposta VARCHAR(20),
    sequencia_trecho VARCHAR(10),

    origem_data VARCHAR(10),
    origem_pais VARCHAR(60),
    origem_uf VARCHAR(40),
    origem_cidade VARCHAR(80),

    destino_data VARCHAR(10),
    destino_pais VARCHAR(60),
    destino_uf VARCHAR(40),
    destino_cidade VARCHAR(80),

    meio_transporte VARCHAR(50),
    numero_diarias VARCHAR(50),

    missao VARCHAR(10)
);