from models import  Atividade, Projeto
from conexao import closeConnect, connectDB

connectDB()

def selectProjetoEAtividades():
    return Projeto.select(Projeto.codigo, Projeto.descricao, Atividade.descricao).join(Atividade).where(Projeto.codigo == Atividade.codProjeto)


consulta = selectProjetoEAtividades()

for projeto in consulta:
    print(projeto.codigo, "-", projeto.descricao,":", projeto.atividade.descricao)