execute immediate from '@git_repo/branches/main/devops/account_level/database_core.sql'
using (env => '{{env}}');
execute immediate from '@git_repo/branches/main/devops/database_level/schema_core_preparation.sql'
using (env => '{{env}}');
--execute immediate from '@git_repo/branches/main/devops/database_level/schema_core_transformation.sql'
--using (env => '{{env}}');