from conexao import connectDB

connect1 = connectDB()
cursor1 = connect1.cursor()

def AtualizarResponsavelProjeto(codProjeto, novoResponsavel):
    update = '''
        UPDATE projeto SET codresponsavel = %s
        WHERE codigo = %s;
    '''
    value = (novoResponsavel, codProjeto)
    cursor1.execute(update,value)
    connect1.commit()

AtualizarResponsavelProjeto(codProjeto = 2, novoResponsavel = 4)

cursor1.close()
connect1.close()