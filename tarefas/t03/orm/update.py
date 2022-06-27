from models import *
from conexao import closeConnect, connectDB

connectDB()

def AttResponsavel(codProjeto, NovoResponsavel):
    projeto = Projeto.select().where(Projeto.codigo == codProjeto).get()
    projeto.codresponsavel = NovoResponsavel
    projeto.save()

AttResponsavel(codProjeto=int(1), NovoResponsavel=3)

closeConnect()