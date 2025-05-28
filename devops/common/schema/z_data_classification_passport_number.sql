-- script to classify passport number in raw_data database

-- create a tag for passport number
create or alter tag common.governance.passport_number_tag;

-- create masking poilicy to mask passport number
create or replace masking policy common.governance.passport_number_mask
as (val string) returns string ->
  case
    when system$get_tag_on_current_column('common.governance.passport_number_tag') = 'visible' then val
    else '***MASKED***'
  end;

-- associate tag with masking policy for passport number
alter tag common.governance.passport_number_tag set masking policy common.governance.passport_number_mask;

-- tag passport number column
alter table rawdata.traveller.voucher 
    modify column v_passport_no 
    set tag common.governance.passport_number_tag = 'sensitive_passport';