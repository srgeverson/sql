-- Trigger: trigger_usuarios_permissoes_logs_before on logs

-- DROP TRIGGER trigger_usuarios_permissoes_logs_before ON logs;

CREATE TRIGGER trigger_logs_before
  BEFORE DELETE
  ON logs
  FOR EACH ROW
  EXECUTE PROCEDURE function_tabela_logs();