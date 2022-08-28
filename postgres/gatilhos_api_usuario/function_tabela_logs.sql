-- Function: function_tabela_logs()

-- DROP FUNCTION function_tabela_logs();

CREATE OR REPLACE FUNCTION function_tabela_logs()
  RETURNS trigger AS
$BODY$BEGIN
    IF (TG_OP = 'UPDATE') THEN  
        RAISE EXCEPTION 'Não é permitido atualizar registro.';
    END IF;
    IF (TG_OP = 'DELETE') THEN  
        RAISE EXCEPTION 'Não é permitido remover registro.';
    END IF;
    RETURN NULL;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION function_tabela_logs()
  OWNER TO postgres;
