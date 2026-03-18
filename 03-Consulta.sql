-- SQL - Consulta para obter o total movimentado por cliente

SELECT 
    c.nome,
    COUNT(t.id_transacao) AS total_transacoes,
    SUM(t.valor) AS total_movimentado
FROM 
    fintech_lab.clientes c
JOIN 
    fintech_lab.contas co ON c.id_cliente = co.id_cliente
JOIN 
    fintech_lab.transacoes t ON co.id_conta = t.id_conta
GROUP BY 
    c.nome
ORDER BY 
    c.nome;