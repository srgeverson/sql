-- Trigger: trigger_usuarios_logs_before on usuarios

-- DROP TRIGGER trigger_usuarios_logs_before ON usuarios;

CREATE TRIGGER trigger_usuarios_logs_before
  BEFORE DELETE
  ON usuarios
  FOR EACH ROW
  EXECUTE PROCEDURE function_tabela_usuarios_logs();
