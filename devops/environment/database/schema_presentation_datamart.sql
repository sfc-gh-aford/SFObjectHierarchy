-- script to create env_presentation.datamart schema
-- env variable to be provided by snowflake-deployment.yml
create or alter schema {{env}}_presentation.datamart;
