from peewee import *

database = PostgresqlDatabase('AtividadesBD', **{'host': 'localhost', 'user': 'postgres', 'password': 'postgres'})

class Departamento(BaseModel):
    codGerente = ForeignKeyField(column_name='codGerente', field='codigo', model=Funcionario, null=True)
    codigo = AutoField()
    descricao = CharField(null=True)
    sigla = CharField(null=True, unique=True)

    class Meta:
        table_name = 'departamento'
        schema = 'public'

class UnknownField(object):
    def __init__(self, *_, **__): pass

class BaseModel(Model):
    class Meta:
        database = database

class Projeto(BaseModel):
    codDepto = ForeignKeyField(column_name='codDepto', field='codigo', model=Departamento, null=True)
    codigo = AutoField()
    codResponsavel = ForeignKeyField(column_name='codResponsavel', field='codigo', model=Funcionario, null=True)
    dataFim = DateField(null=True)
    dataInicio = DateField(null=True)
    descricao = CharField(null=True)
    nome = CharField(null=True, unique=True)

    class Meta:
        table_name = 'projeto'
        schema = 'public'

class Atividade(BaseModel):
    codigo = AutoField()
    codProjeto = ForeignKeyField(column_name='codProjeto', field='codigo', model=Projeto, null=True)
    dataFim = DateField(null=True)
    dataInicio = DateField(null=True)
    descricao = CharField(null=True)

    class Meta:
        table_name = 'atividade'
        schema = 'public'

class Funcionario(BaseModel):
    codDepto = IntegerField(null=True)
    codigo = AutoField()
    codSupervisor = ForeignKeyField(column_name='codSupervisor', field='codigo', model='self', null=True)
    dtNasc = DateField(null=True)
    nome = CharField(null=True)
    salario = DecimalField(null=True)
    sexo = CharField(null=True)

    class Meta:
        table_name = 'funcionario'
        schema = 'public'