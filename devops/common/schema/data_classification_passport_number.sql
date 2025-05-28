-- script to classify passport number in raw_data database

-- create masking poilicy to mask passport number
create or replace masking policy common.governance.passport_number_mask
as (val string) returns string ->
  case
    when system$get_tag_on_current_column('common.governance.passport_number_tag') = 'visible' then val
    else '***MASKED***'
  end;

-- create a tag for passport number
create or replace tag common.governance.passport_number_tag;

-- associate tag with masking policy for passport number
alter tag common.governance.passport_number_tag set masking policy common.governance.passport_number_mask;