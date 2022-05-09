SELECT funcionario.nome , departamento.descricao FROM funcionario, departamento
WHERE funcionario.SALARIO IN(SELECT MAX(funcionario.SALARIO)
				  FROM funcionario LEFT JOIN departamento
				  ON funcionario.COD_DEPTO = departamento.CODIGO GROUP BY departamento.CODIGO
) AND funcionario.COD_DEPTO = departamento.CODIGO
GROUP BY funcionario.SALARIO, funcionario.NOME, departamento.DESCRICAO
ORDER BY funcionario.SALARIO;