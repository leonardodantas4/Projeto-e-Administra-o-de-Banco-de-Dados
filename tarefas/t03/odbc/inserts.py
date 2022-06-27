from datetime import date
from conexao import connectDB

connect1 = connectDB()
cursor1 = connect1.cursor()

def CreateAtividade(codProjeto, dataFim, dataInicio, descricao):
    insert = '''
        INSERT INTO atividade(codprojeto, datafim, datainicio, descricao) 
        VALUES (%s, %s, %s, %s);
    '''
    value = (codProjeto, dataFim, dataInicio, descricao)
    cursor1.execute(insert, value)
    connect1.commit()

CreateAtividade(
    codProjeto = 4,
    dataFim = date(2022, 7,19), 
    dataInicio = date(2022,8,29), 
    descricao = "Teste",
)

cursor1.close()
connect1.close()