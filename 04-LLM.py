import csv
import psycopg2
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from langchain_ollama import OllamaLLM

llm = OllamaLLM(model = "llama3")

output_parser = StrOutputParser()

def gera_insights():

    conn = psycopg2.connect(
        dbname="namedb",
        user="username",
        password="password1245",
        host="localhost",
        port="5959"
    )

    cursor = conn.cursor()
    
    query = """
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
    """
    
    cursor.execute(query)

    rows = cursor.fetchall()
    
    insights = []

    prompt = ChatPromptTemplate.from_messages(
        [
            ("system", "Você é um analista de dados especializado. Analise os dados sobre os padrões de transações dos clientes e forneça feedback em português do Brasil."),
            ("user", "question: {question}")
        ]
    )

    chain = prompt | llm | output_parser

    for row in rows:
        
        nome, total_transacoes, total_movimentado = row
        
        consulta_cliente = f"Cliente {nome} fez {total_transacoes} transações totalizando ${total_movimentado:.2f}."
        
        response = chain.invoke({'question': consulta_cliente})
        
        insights.append(response)
    
    conn.close()

    with open('fintech-insights.csv', mode='w', newline='', encoding='utf-8') as file:
        writer = csv.writer(file)
        writer.writerow(["Insight"])
        for insight in insights:
            writer.writerow([insight])

    return insights

insights = gera_insights()

# Imprime cada insight gerado
for insight in insights:
    print(insight)
