-- Encerra todas as conexões com o banco de dados
SELECT pg_terminate_backend(pid)
FROM pg_stat_get_activity(NULL::integer)
WHERE datid = (SELECT oid FROM pg_database WHERE datname = 'portuary');

-- Deleta o banco de dados se existir
DROP DATABASE IF EXISTS portuary;