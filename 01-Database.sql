-- Deleta o schema se já existir
DROP SCHEMA IF EXISTS fintech_lab CASCADE;

-- Cria o schema
CREATE SCHEMA fintech_lab AUTHORIZATION dsa;

-- Cria as tabelas

CREATE TABLE fintech_lab.clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(101),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE fintech_lab.contas (
    id_conta SERIAL PRIMARY KEY,
    id_cliente INTEGER REFERENCES fintech_lab.clientes(id_cliente),
    tipo_conta VARCHAR(30),
    saldo DECIMAL(12, 2) DEFAULT 0.00,
    criada_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE fintech_lab.transacoes (
    id_transacao SERIAL PRIMARY KEY,
    id_conta INTEGER REFERENCES fintech_lab.contas(id_conta),
    tipo_transacao VARCHAR(30),
    valor DECIMAL(12, 2),
    data_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);