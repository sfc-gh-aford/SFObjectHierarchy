-- script to create tasks in env_presentation.curated schema
-- env variable to be provided by snowflake-deployment.yml

-- create test task
create or alter task {{env}}_presentation.curated.test_task
  schedule = 'USING CRON 0 0 1 * * UTC' 
  user_task_managed_initial_warehouse_size = 'XSMALL'
  as
    select current_timestamp;

-- resume test task
alter task {{env}}_presentation.curated.test_task suspend;