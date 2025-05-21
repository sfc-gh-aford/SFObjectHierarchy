-- script to create env_core database
-- env variable to be provided by snowflake-deployment.yml
create or alter database {{env}}_core;