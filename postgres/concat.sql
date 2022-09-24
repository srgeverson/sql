select concat(
	'INSERT INTO logs (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao,valor_anterior, valor_atual, usuarios_id) values(',
	l.id,',"',l.tabela_nome,'","',l.tabela_coluna,'","',l.tabela_id,'","',l.operacao,'","',l.data_operacao,'","',l.valor_anterior,'","',l.valor_atual,'")'
) from logs as l where id=1