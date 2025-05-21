create role secgov_role;
grant usage on database common to secgov_role;
grant ownership on role secgov_role to useradmin;
