create database if not exists ${DB};
use ${DB};

drop table if exists inventory;

create external table inventory
stored as ${FILE}
location "${DB_LOCATION}/inventory"
as select * from ${SOURCE}.inventory
CLUSTER BY inv_date_sk
;
