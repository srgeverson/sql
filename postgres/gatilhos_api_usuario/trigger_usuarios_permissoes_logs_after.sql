-- Trigger: trigger_usuarios_permissoes_logs_after on usuarios_permissoes

-- DROP TRIGGER trigger_usuarios_permissoes_logs_after ON usuarios_permissoes;

CREATE TRIGGER trigger_usuarios_permissoes_logs_after
  AFTER INSERT OR UPDATE
  ON usuarios_permissoes
  FOR EACH ROW
  EXECUTE PROCEDURE function_tabela_usuarios_permissoes_logs();
