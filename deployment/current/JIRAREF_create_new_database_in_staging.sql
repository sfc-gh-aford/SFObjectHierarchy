begin

  use database {{git_db}};
  use schema  {{git_sc}};
  execute immediate from '@git_repo/branches/main/devops/account_level/database_staging.sql'
  using (env => '{{env}}');

end;