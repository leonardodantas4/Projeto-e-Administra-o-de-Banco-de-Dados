insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto)
values ('Geraldo', 'M', '1988-05-07', 5000.00, null);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto)
values ('Anne', 'F', '1990-05-12', 10000.00, null);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto)
values ('Lucas', 'M', '2000-12-05', 3500.00, null);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto)
values ('Jobson', 'M', '1988-02-22', 7500.00, null);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto)
values ('Luana', 'F', '2003-09-17', 10000.00, null);

insert into departamento(descricao, cod_gerente)
values ('Dep História', null);
insert into departamento(descricao, cod_gerente)
values ('Dep Geografia', null);
insert into departamento(descricao, cod_gerente)
values ('Dep Tecnologia', null);
insert into departamento(descricao, cod_gerente)
values ('Dep Ciências', null);
insert into departamento(descricao, cod_gerente)
values ('Dep Computação', null);

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Analisador de Ponto de Função', null, null, '2022-02-26', '2022-06-30');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('Monitoria', 'Projeto de Monitoria 2022.1', null, null, '2022-02-26', '2022-12-30');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('BD', 'Projeto de Banco de Dados', null, null, '2022-02-26', '2022-06-30');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('ES', 'Projeto de Engenharia de Software', null, null, '2022-02-26', '2022-06-30');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('Tutoria', 'Projeto de Tutoria 2022.1', null, null, '2022-02-26', '2022-12-30');

insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Atividade 1 APF', null, '2022-02-26', '2022-03-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('Monitoria', 'Atividade 1 Monitoria', null, '2022-03-26', '2022-04-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('BD', 'Atividade 1 BD', null, '2022-04-26', '2022-05-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('ES', 'Atividade 1 ES', null, '2022-05-26', '2022-06-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('Tutoria', 'Atividade 1 Tutoria', null, '2022-06-26', '2022-07-30');

insert into atividade_projeto(cod_projeto, cod_atividade)
values (null, null);