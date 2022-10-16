-- Trigger: trigger_oauth_client_details_logs_after

-- DROP TRIGGER IF EXISTS trigger_oauth_client_details_logs_after ON public.oauth_client_details;

CREATE TRIGGER trigger_oauth_client_details_logs_after
    AFTER INSERT OR UPDATE 
    ON public.oauth_client_details
    FOR EACH ROW
    EXECUTE FUNCTION public.function_tabela_oauth_client_details();