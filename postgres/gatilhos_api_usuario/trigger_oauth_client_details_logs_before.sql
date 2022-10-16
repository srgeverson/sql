-- Trigger: trigger_oauth_client_details_logs_before

-- DROP TRIGGER IF EXISTS trigger_oauth_client_details_logs_before ON public.oauth_client_details;

CREATE TRIGGER trigger_oauth_client_details_logs_before
    BEFORE DELETE
    ON public.oauth_client_details
    FOR EACH ROW
    EXECUTE FUNCTION public.function_tabela_oauth_client_details();