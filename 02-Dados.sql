-- Popular tabela de clientes
INSERT INTO fintech_lab.clientes (nome, email) VALUES
('Ana Souza', 'ana.souza@email.com'),
('Bruno Lima', 'bruno.lima@email.com'),
('Carla Mendes', 'carla.mendes@email.com'),
('Daniel Rocha', 'daniel.rocha@email.com'),
('Eduarda Alves', 'eduarda.alves@email.com'),
('Felipe Costa', 'felipe.costa@email.com'),
('Gabriela Martins', 'gabriela.martins@email.com'),
('Henrique Gomes', 'henrique.gomes@email.com'),
('Isabela Ribeiro', 'isabela.ribeiro@email.com'),
('Joao Fernandes', 'joao.fernandes@email.com');

-- Popular tabela de contas
INSERT INTO fintech_lab.contas (id_cliente, tipo_conta, saldo, criada_em) VALUES
(1, 'conta digital', 1850.00, '2026-01-10 09:00:00'),
(2, 'conta digital', 920.50, '2026-01-10 09:15:00'),
(3, 'conta corrente', 3400.75, '2026-01-10 09:30:00'),
(4, 'conta digital', 615.20, '2026-01-10 09:45:00'),
(5, 'conta corrente', 4890.00, '2026-01-10 10:00:00'),
(6, 'conta digital', 250.90, '2026-01-10 10:15:00'),
(7, 'conta digital', 1325.40, '2026-01-10 10:30:00'),
(8, 'conta corrente', 2780.00, '2026-01-10 10:45:00'),
(9, 'conta digital', 560.80, '2026-01-10 11:00:00'),
(10, 'conta corrente', 7200.00, '2026-01-10 11:15:00');

-- Popular tabela de transacoes
INSERT INTO fintech_lab.transacoes (id_conta, tipo_transacao, valor, data_transacao) VALUES
(1, 'deposito', 2000.00, '2026-03-01 08:10:00'),
(1, 'pix_enviado', 150.00, '2026-03-02 14:20:00'),
(1, 'pagamento_boleto', 320.00, '2026-03-03 10:05:00'),

(2, 'deposito', 1200.00, '2026-03-01 09:00:00'),
(2, 'saque', 100.00, '2026-03-02 11:40:00'),
(2, 'compra_cartao', 179.50, '2026-03-04 16:15:00'),

(3, 'deposito', 3500.00, '2026-03-01 10:30:00'),
(3, 'pix_recebido', 250.75, '2026-03-03 13:25:00'),
(3, 'compra_cartao', 350.00, '2026-03-05 18:00:00'),

(4, 'deposito', 900.00, '2026-03-01 12:00:00'),
(4, 'pix_enviado', 120.00, '2026-03-02 15:45:00'),
(4, 'saque', 80.00, '2026-03-06 09:20:00'),

(5, 'deposito', 5000.00, '2026-03-01 08:50:00'),
(5, 'pagamento_boleto', 110.00, '2026-03-04 10:10:00'),
(5, 'compra_cartao', 250.00, '2026-03-06 19:05:00'),

(6, 'deposito', 400.00, '2026-03-02 09:35:00'),
(6, 'pix_enviado', 90.00, '2026-03-03 17:10:00'),
(6, 'saque', 50.00, '2026-03-05 11:00:00'),

(7, 'deposito', 1500.00, '2026-03-01 13:10:00'),
(7, 'compra_cartao', 99.90, '2026-03-04 20:20:00'),
(7, 'pix_recebido', 120.00, '2026-03-05 08:40:00'),

(8, 'deposito', 3000.00, '2026-03-01 14:00:00'),
(8, 'pagamento_boleto', 220.00, '2026-03-03 09:50:00'),
(8, 'pix_enviado', 150.00, '2026-03-06 12:30:00'),

(9, 'deposito', 800.00, '2026-03-02 10:25:00'),
(9, 'compra_cartao', 120.20, '2026-03-04 14:45:00'),
(9, 'saque', 60.00, '2026-03-06 16:10:00'),

(10, 'deposito', 7500.00, '2026-03-01 07:55:00'),
(10, 'pix_enviado', 200.00, '2026-03-02 18:15:00'),
(10, 'compra_cartao', 100.00, '2026-03-05 21:00:00');