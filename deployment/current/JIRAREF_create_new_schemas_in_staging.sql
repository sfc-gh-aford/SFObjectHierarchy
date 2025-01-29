execute immediate from '@git_repo/branches/main/devops/database_level/schema_staging_appflow.sql'
using (env => '{{env}}');