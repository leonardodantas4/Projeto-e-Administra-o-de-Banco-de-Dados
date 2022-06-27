from conexao import connectDB

connect1 = connectDB()
cursor1 = connect1.cursor()

def selectProjetoJoinAtividades():
    select = '''
        SELECT PROJETO.CODIGO, PROJETO.DESCRICAO, ATIVIDADE.DESCRICAO
        FROM PROJETO INNER JOIN ATIVIDADE     
        ON PROJETO.CODIGO = ATIVIDADE.CODPROJETO;
    '''
    
    cursor1.execute(select)
    connect1.commit()

selectProjetoJoinAtividades()

cursor1.close()
connect1.close()