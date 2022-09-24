
select * from sf_visao_sintetica_tabelas();
DROP FUNCTION IF EXISTS sf_visao_sintetica_tabelas();
CREATE OR REPLACE FUNCTION sf_visao_sintetica_tabelas()
RETURNS TABLE (
   QuantidadeTabelas bigint, Atualizações bigint, Cadastros bigint 
)AS $$
BEGIN
    RETURN QUERY SELECT 
	(select count(t1.tabelas) from (select l.tabela_nome as tabelas from logs as l group by l.tabela_nome) t1),
	(select count(l.operacao) as tabelas from logs as l where l.operacao = 'UPDATE' group by l.operacao),
	(select count(l.operacao) as tabelas from logs as l where l.operacao = 'INSERT' group by l.operacao);
END;
$$ LANGUAGE plpgsql;