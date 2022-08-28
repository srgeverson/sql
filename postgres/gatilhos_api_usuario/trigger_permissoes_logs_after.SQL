-- Trigger: trigger_permissoes_logs_after on permissoes

-- DROP TRIGGER trigger_permissoes_logs_after ON permissoes;

CREATE TRIGGER trigger_permissoes_logs_after
  AFTER INSERT OR UPDATE
  ON permissoes
  FOR EACH ROW
  EXECUTE PROCEDURE function_tabela_permissoes_logs();
