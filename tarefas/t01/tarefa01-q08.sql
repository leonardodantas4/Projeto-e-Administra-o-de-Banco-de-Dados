CREATE VIEW depto_projetos(gerente, descricao, projetos) as SELECT departamento.cod_gerente, departamento.descricao, count(projeto.cod_depto) 
FROM projeto RIGHT OUTER JOIN departamento ON projeto.cod_depto = departamento.codigo GROUP BY departamento.cod_gerente, departamento.descricao;

SELECT funcionario.nome, depto_projetos.descricao, depto_projetos.projetos FROM depto_projetos LEFT OUTER JOIN funcionario ON funcionario.codigo = depto_projetos.gerente;