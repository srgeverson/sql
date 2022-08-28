-- Trigger: trigger_permissoes_logs_before on permissoes

-- DROP TRIGGER trigger_permissoes_logs_before ON permissoes;

CREATE TRIGGER trigger_permissoes_logs_before
  BEFORE DELETE
  ON permissoes
  FOR EACH ROW
  EXECUTE PROCEDURE function_tabela_permissoes_logs();
