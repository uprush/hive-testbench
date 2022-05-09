create database if not exists ${DB};
use ${DB};

drop table if exists customer;

create external table customer
stored as ${FILE}
location "${DB_LOCATION}/customer"
as select * from ${SOURCE}.customer
CLUSTER BY c_customer_sk
;
