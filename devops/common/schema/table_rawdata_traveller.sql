
-- script to create tables in traveller schema in rawdata database
use database rawdata;
use schema traveller;

-- create voucher table
create or alter table voucher (
	v_number number,
    v_date_voucher date,
    v_firstname varchar,
    v_lastname varchar,
	v_passport_no varchar,
	v_pp_incl_vat number,
	v_pp_excl_vat number,
	v_br_id number,
	v_iso_id number,
	primary key (v_iso_id, v_number)
);