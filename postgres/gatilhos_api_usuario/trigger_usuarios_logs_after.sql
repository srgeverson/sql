
CREATE TRIGGER trigger_usuarios_logs_after
  AFTER INSERT OR UPDATE
  ON usuarios
  FOR EACH ROW
  EXECUTE PROCEDURE function_tabela_usuarios_logs();