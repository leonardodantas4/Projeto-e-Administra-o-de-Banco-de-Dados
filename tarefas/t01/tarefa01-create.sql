drop table if exists funcionario cascade;
drop table if exists departamento cascade;
drop table if exists projeto cascade;
drop table if exists atividade cascade;
drop table if exists atividade_projeto cascade;

CREATE TABLE funcionario (
	codigo serial,
	nome varchar(50),
	sexo char(1),
	dt_nasc date,
	salario decimal(10,2),
	cod_depto int,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_depto) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE departamento (
	codigo serial,
	descricao varchar(50),
	cod_gerente int,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE projeto (
	codigo serial,
	nome varchar(50),
	descricao varchar(250),
	cod_responsavel int,
	cod_depto int,
	data_inicio date, 
	data_fim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) on delete set null on update cascade,
	FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) on delete set null on update cascade
);

CREATE TABLE atividade (
	codigo serial,
 	nome varchar(50),
	descricao varchar(250),
	cod_responsavel int,
	data_inicio date, 
	data_fim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE atividade_projeto (
	cod_projeto int,
 	cod_atividade int,
	FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo) on delete set null on update cascade,
  	FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo) on delete set null on update cascade
);