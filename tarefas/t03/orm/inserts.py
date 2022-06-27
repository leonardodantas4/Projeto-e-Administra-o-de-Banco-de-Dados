from models import *
from datetime import date
from conexao import *

connectDB()

def createAtividade (descricao, codProjeto, dataInicio, dataFim) :
    Atividade.create(
        descricao = descricao,
        codProjeto = codProjeto,
        dataInicio = dataInicio,
        dataFim = dataFim
    )
    
createAtividade(
    descricao = "Teste 03",
    codProjeto = 4,
    dataInicio = date(2022,9,29), 
    dataFim = date(2022, 7,19) 
)

closeConnect()