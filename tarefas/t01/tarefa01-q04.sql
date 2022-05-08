UPDATE departamento SET cod_gerente = 5  WHERE codigo = 1;

CREATE VIEW gerentes(codigo, nome, salario, cod_depto) AS SELECT codigo, nome, salario, cod_depto FROM funcionario WHERE codigo IN (SELECT cod_gerente FROM departamento);

SELECT nome, salario, cod_depto FROM funcionario WHERE codigo NOT IN (SELECT codigo FROM gerentes) ORDER BY cod_depto