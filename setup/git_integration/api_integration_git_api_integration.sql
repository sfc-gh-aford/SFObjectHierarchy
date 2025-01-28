
  create or replace api integration git_api_integration
  api_provider = git_https_api
  api_allowed_prefixes = ('https://github.com/sfc-gh-aford/')
  allowed_authentication_secrets = (git_secret)
  enabled = TRUE;