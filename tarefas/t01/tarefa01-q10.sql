SELECT projeto.nome, departamento.descricao, funcionario.nome FROM projeto, departamento, funcionario 
WHERE projeto.cod_responsavel = funcionario.codigo AND projeto.cod_depto = departamento.codigo;