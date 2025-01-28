-- script to create env_staging.appflow schema
-- env variable to be provided by snowflake-deployment.yml
create or alter schema {{env}}_staging.appflow;
