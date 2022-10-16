-- FUNCTION: public.function_tabela_oauth_client_details()

-- DROP FUNCTION IF EXISTS public.function_tabela_oauth_client_details();

CREATE OR REPLACE FUNCTION public.function_tabela_oauth_client_details()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
  IF (TG_OP = 'INSERT') THEN  
    --Não é ncessário apenas por questão de padronização, pois o id em INSERT sempre será IS NOT NULL
    IF NEW.id IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'id',         NEW.id,  TG_OP,    now(),        NULL,         NEW.id,      NULL);
    END IF;
    IF NEW.client_id IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'client_id',         NEW.id,  TG_OP,    now(),        NULL,         NEW.client_id,      NULL);
    END IF;
    IF NEW.resource_ids IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'resource_ids',         NEW.id,  TG_OP,    now(),        NULL,         NEW.resource_ids,      NULL);
    END IF;    
    IF NEW.scope IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'scope',         NEW.id,  TG_OP,    now(),        NULL,         NEW.scope,      NULL);
    END IF;
    IF NEW.authorized_grant_types IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'authorized_grant_types',         NEW.id,  TG_OP,    now(),        NULL,         NEW.authorized_grant_types,      NULL);
    END IF;
    IF NEW.web_server_redirect_uri IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'web_server_redirect_uri',         NEW.id,  TG_OP,    now(),        NULL,         NEW.web_server_redirect_uri,      NULL);
    END IF;
    IF NEW.authorities IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'authorities',         NEW.id,  TG_OP,    now(),        NULL,         NEW.authorities,      NULL);
    END IF;
    IF NEW.access_token_validity IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'access_token_validity',         NEW.id,  TG_OP,    now(),        NULL,         NEW.access_token_validity,      NULL);
    END IF;
    IF NEW.refresh_token_validity IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'refresh_token_validity',         NEW.id,  TG_OP,    now(),        NULL,         NEW.refresh_token_validity,      NULL);
    END IF;
    IF NEW.additional_information IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'additional_information',         NEW.id,  TG_OP,    now(),        NULL,         NEW.additional_information,      NULL);
    END IF;
    IF NEW.ativo IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'ativo',         NEW.id,  TG_OP,    now(),        NULL,         NEW.ativo,      NULL);
    END IF;
    IF NEW.data_cadastro IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'data_cadastro',         NEW.id,  TG_OP,    now(),        NULL,         NEW.data_cadastro,      NULL);
    END IF;
    IF NEW.data_operacao IS NOT NULL THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'data_operacao',         NEW.id,  TG_OP,    now(),        NULL,         NEW.data_operacao,      NULL);
    END IF;
  END IF;
  IF (TG_OP = 'UPDATE') THEN  
    IF NEW.id <> OLD.id THEN
       RAISE EXCEPTION 'Não é permitido atualizar o campo Id';
    END IF;
    IF NEW.client_id <> OLD.client_id THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'client_id',         NEW.id,  TG_OP,    now(),        OLD.client_id,         NEW.client_id,       NULL);
    END IF;
    IF NEW.resource_ids <> OLD.resource_ids THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'resource_ids',         NEW.id,  TG_OP,    now(),        OLD.resource_ids,         NEW.resource_ids,      NULL);
    END IF;
    IF NEW.scope <> OLD.scope THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'scope',         NEW.id,  TG_OP,    now(),        OLD.scope,         NEW.scope,      NULL);
    END IF;      
    IF NEW.authorized_grant_types <> OLD.authorized_grant_types THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'authorized_grant_types',         NEW.id,  TG_OP,    now(),        OLD.authorized_grant_types,         NEW.authorized_grant_types,      NULL);
    END IF;      
    IF NEW.web_server_redirect_uri <> OLD.web_server_redirect_uri THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'web_server_redirect_uri',         NEW.id,  TG_OP,    now(),        OLD.web_server_redirect_uri,         NEW.web_server_redirect_uri,      NULL);
    END IF;      
    IF NEW.authorities <> OLD.authorities THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'authorities',         NEW.id,  TG_OP,    now(),        OLD.authorities,         NEW.authorities,      NULL);
    END IF;
    IF NEW.access_token_validity <> OLD.access_token_validity THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'access_token_validity',         NEW.id,  TG_OP,    now(),        OLD.access_token_validity,         NEW.access_token_validity,      NULL);
    END IF;
    IF NEW.refresh_token_validity <> OLD.refresh_token_validity THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'refresh_token_validity',         NEW.id,  TG_OP,    now(),        OLD.refresh_token_validity,         NEW.refresh_token_validity,      NULL);
    END IF;      
    IF NEW.additional_information <> OLD.additional_information THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'additional_information',         NEW.id,  TG_OP,    now(),        OLD.additional_information,         NEW.additional_information,      NULL);
    END IF;
    IF NEW.autoapprove <> OLD.autoapprove THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'autoapprove',         NEW.id,  TG_OP,    now(),        OLD.autoapprove,         NEW.autoapprove,      NULL);
    END IF;      
    IF NEW.ativo <> OLD.ativo THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'ativo',         NEW.id,  TG_OP,    now(),        OLD.ativo,         NEW.ativo,      NULL);
    END IF;
    IF NEW.data_cadastro <> OLD.data_cadastro THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'data_cadastro',         NEW.id,  TG_OP,    now(),        OLD.data_cadastro,         NEW.data_cadastro,      NULL);
    END IF;
    IF NEW.data_operacao <> OLD.data_operacao THEN
        INSERT INTO public.logs 
        (tabela_nome, tabela_coluna, tabela_id, operacao, data_operacao, valor_anterior, valor_atual, usuarios_id)
        VALUES 
        ('oauth_client_details',  'data_operacao',         NEW.id,  TG_OP,    now(),        OLD.data_operacao,         NEW.data_operacao,      NULL);
    END IF;
  END IF;
  IF (TG_OP = 'DELETE') THEN  
    RAISE EXCEPTION 'Não é permitido remover registro.';
  END IF;  
  RETURN NULL;
END
$BODY$;

ALTER FUNCTION public.function_tabela_oauth_client_details()
    OWNER TO postgres;
