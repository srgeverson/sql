-- Trigger: trigger_usuarios_permissoes_logs_before on usuarios_permissoes

-- DROP TRIGGER trigger_usuarios_permissoes_logs_before ON usuarios_permissoes;

CREATE TRIGGER trigger_usuarios_permissoes_logs_before
  BEFORE DELETE
  ON usuarios_permissoes
  FOR EACH ROW
  EXECUTE PROCEDURE function_tabela_usuarios_permissoes_logs();