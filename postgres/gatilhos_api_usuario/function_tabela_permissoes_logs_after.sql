-- Function: function_tabela_permissoes_logs()

-- DROP FUNCTION function_tabela_permissoes_logs();

CREATE OR REPLACE FUNCTION function_tabela_permissoes_logs()
  RETURNS trigger AS
$BODY$BEGIN
  IF (TG_OP = 'INSERT') THEN  
    --Não é ncessário apenas por questão de padronização, pois o id em INSERT sempre será IS NOT NULL
    IF NEW.id IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('permissoes',  'id',         NEW.id,  TG_OP,    now(),        NULL,         NEW.id,      NULL);
    END IF;
    IF NEW.nome IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('permissoes',  'nome',         NEW.id,  TG_OP,    now(),        NULL,         NEW.nome,      NULL);
    END IF;
   IF NEW.descricao IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('permissoes',  'descricao',         NEW.id,  TG_OP,    now(),        NULL,         NEW.descricao,      NULL);
    END IF;
   IF NEW.ativo IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('permissoes',  'ativo',         NEW.id,  TG_OP,    now(),        NULL,         NEW.ativo,      NULL);
    END IF;
   IF NEW.data_cadastro IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('permissoes',  'data_cadastro',         NEW.id,  TG_OP,    now(),        NULL,         NEW.data_cadastro,      NULL);
    END IF;
   IF NEW.data_operacao IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('permissoes',  'data_operacao',         NEW.id,  TG_OP,    now(),        NULL,         NEW.data_operacao,      NULL);
    END IF;
  END IF;
    IF (TG_OP = 'UPDATE') THEN  
      IF NEW.id <> OLD.id THEN
         RAISE EXCEPTION 'Não é permitido atualizar o campo Id';
      END IF;
      IF NEW.nome <> OLD.nome THEN
          INSERT INTO public.logs 
          (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
          VALUES 
          ('permissoes',  'nome',         NEW.id,  TG_OP,    now(),        OLD.nome,         NEW.nome,       NULL);
      END IF;
     IF NEW.descricao <> OLD.descricao THEN
          INSERT INTO public.logs 
          (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
          VALUES 
          ('permissoes',  'descricao',         NEW.id,  TG_OP,    now(),        OLD.descricao,         NEW.descricao,      NULL);
      END IF;
     IF NEW.ativo <> OLD.ativo THEN
          INSERT INTO public.logs 
          (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
          VALUES 
          ('permissoes',  'ativo',         NEW.id,  TG_OP,    now(),        OLD.ativo,         NEW.ativo,      NULL);
      END IF;
     IF NEW.data_cadastro <> OLD.data_cadastro THEN
          INSERT INTO public.logs 
          (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
          VALUES 
          ('permissoes',  'data_cadastro',         NEW.id,  TG_OP,    now(),        OLD.data_cadastro,         NEW.data_cadastro,      NULL);
      END IF;
     IF NEW.data_operacao <> OLD.data_operacao THEN
          INSERT INTO public.logs 
          (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
          VALUES 
          ('permissoes',  'data_operacao',         NEW.id,  TG_OP,    now(),        OLD.data_operacao,         NEW.data_operacao,      NULL);
      END IF;
    END IF;
  IF (TG_OP = 'DELETE') THEN  
    RAISE EXCEPTION 'Não é permitido remover registro.';
  END IF;  
  RETURN NULL;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION function_tabela_permissoes_logs()
  OWNER TO postgres;
