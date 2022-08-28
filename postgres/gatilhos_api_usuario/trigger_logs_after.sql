-- Trigger: trigger_logs_after on logs

-- DROP TRIGGER trigger_logs_after ON logs;

CREATE TRIGGER trigger_logs_after
  AFTER UPDATE
  ON logs
  FOR EACH ROW
  EXECUTE PROCEDURE function_tabela_logs();