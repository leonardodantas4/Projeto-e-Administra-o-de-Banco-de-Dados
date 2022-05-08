SELECT projeto.nome, projeto.data_inicio, projeto.data_fim, atividade.descricao, atividade.data_inicio, atividade.data_fim 
FROM projeto, atividade, atividade_projeto
WHERE projeto.codigo = atividade_projeto.cod_projeto AND atividade.codigo = atividade_projeto.cod_projeto;