-- script to create env_staging database
-- env variable to be provided by snowflake-deployment.yml
create or alter database {{env}}_staging;