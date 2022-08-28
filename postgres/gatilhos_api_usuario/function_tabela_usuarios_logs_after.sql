-- Function: function_tabela_usuarios_logs()

-- DROP FUNCTION function_tabela_usuarios_logs();

CREATE OR REPLACE FUNCTION function_tabela_usuarios_logs()
  RETURNS trigger AS
$BODY$BEGIN
  IF (TG_OP = 'INSERT') THEN  
    --Não é ncessário apenas por questão de padronização, pois o id em INSERT sempre será IS NOT NULL
    IF NEW.id IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'id',         NEW.id,  TG_OP,    now(),        NULL,         NEW.id,      NULL);
    END IF;
    IF NEW.nome IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'nome',         NEW.id,  TG_OP,    now(),        NULL,         NEW.nome,      NULL);
    END IF;
   IF NEW.email IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'email',         NEW.id,  TG_OP,    now(),        NULL,         NEW.email,      NULL);
    END IF;
   IF NEW.senha IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'senha',         NEW.id,  TG_OP,    now(),        NULL,         NEW.senha,      NULL);
    END IF;
   IF NEW.ativo IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'ativo',         NEW.id,  TG_OP,    now(),        NULL,         NEW.ativo,      NULL);
    END IF;
   IF NEW.codigo_acesso IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'codigo_acesso',         NEW.id,  TG_OP,    now(),        NULL,         NEW.codigo_acesso,      NULL);
    END IF;
   IF NEW.data_cadastro IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'data_cadastro',         NEW.id,  TG_OP,    now(),        NULL,         NEW.data_cadastro,      NULL);
    END IF;
   IF NEW.data_operacao IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'data_operacao',         NEW.id,  TG_OP,    now(),        NULL,         NEW.data_operacao,      NULL);
    END IF;
   IF NEW.data_ultimo_acesso IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'data_ultimo_acesso',         NEW.id,  TG_OP,    now(),        NULL,         NEW.data_ultimo_acesso,      NULL);
    END IF;
  END IF;
  IF (TG_OP = 'UPDATE') THEN  
    IF NEW.id <> OLD.id THEN
       RAISE EXCEPTION 'NÃo é permitido atualizar o campo Id';
    END IF;
    IF NEW.nome <> OLD.nome THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'nome',         NEW.id,  TG_OP,    now(),        OLD.nome,         NEW.nome,       NULL);
    END IF;
   IF NEW.email <> OLD.email THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'email',         NEW.id,  TG_OP,    now(),        OLD.email,         NEW.email,      NULL);
    END IF;
   IF NEW.senha <> OLD.senha THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'senha',         NEW.id,  TG_OP,    now(),        OLD.senha,         NEW.senha,      NULL);
    END IF;
   IF NEW.ativo <> OLD.ativo THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'ativo',         NEW.id,  TG_OP,    now(),        OLD.ativo,         NEW.ativo,      NULL);
    END IF;
   IF NEW.codigo_acesso <> OLD.codigo_acesso THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'codigo_acesso',         NEW.id,  TG_OP,    now(),        OLD.codigo_acesso,         NEW.codigo_acesso,      NULL);
    END IF;
   IF NEW.data_cadastro <> OLD.data_cadastro THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'data_cadastro',         NEW.id,  TG_OP,    now(),        OLD.data_cadastro,         NEW.data_cadastro,      NULL);
    END IF;
   IF NEW.data_operacao <> OLD.data_operacao THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'data_operacao',         NEW.id,  TG_OP,    now(),        OLD.data_operacao,         NEW.data_operacao,      NULL);
    END IF;
   IF NEW.data_ultimo_acesso <> OLD.data_ultimo_acesso THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('usuarios',  'data_ultimo_acesso',         NEW.id,  TG_OP,    now(),        OLD.data_ultimo_acesso,         NEW.data_ultimo_acesso,      NULL);
    END IF;
  END IF; 
  IF (TG_OP = 'DELETE') THEN  
    RAISE EXCEPTION 'NÃo é permitido remover registro.';
  END IF;  
  RETURN NULL;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION function_tabela_usuarios_logs()
  OWNER TO postgres;
