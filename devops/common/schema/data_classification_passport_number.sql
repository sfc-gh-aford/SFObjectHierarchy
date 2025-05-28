-- script to classify passport number in raw_data database

-- unset dependant objects using the tag
alter table rawdata.traveller.voucher 
    modify column v_passport_no 
    unset tag common.governance.passport_number_tag;

drop masking policy common.governance.passport_number_mask;

-- create a tag for passport number
create or alter tag common.governance.passport_number_tag;

-- create masking poilicy to mask passport number
create masking policy common.governance.passport_number_mask
as (val string) returns string ->
  case
    when system$get_tag_on_current_column('common.governance.passport_number_tag') = 'visible' then val
    else '***MASKED***'
  end;

-- associate tag with masking policy for passport number
alter tag common.governance.passport_number_tag set masking policy common.governance.passport_number_mask;
