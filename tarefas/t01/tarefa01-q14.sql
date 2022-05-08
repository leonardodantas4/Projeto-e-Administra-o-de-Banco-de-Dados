CREATE VIEW atv_funcionarios(nome_funcionario, numero_atvs) as 
SELECT funcionario.nome, count(atividade.cod_responsavel) 
FROM funcionario, atividade
WHERE atividade.cod_responsavel = funcionario.codigo GROUP BY funcionario.nome;

SELECT nome_funcionario, numero_atvs FROM atv_funcionarios