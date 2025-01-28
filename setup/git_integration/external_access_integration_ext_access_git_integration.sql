create or replace external access integration ext_access_git_integration
allowed_network_rules = ( external_access_rule )
allowed_authentication_secrets = (git_secret)
enabled = true
comment = 'External access for git api integration';