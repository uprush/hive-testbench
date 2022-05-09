create database if not exists ${DB};
use ${DB};

drop table if exists store;

create external table store
stored as ${FILE}
location "${DB_LOCATION}/store"
as select * from ${SOURCE}.store
CLUSTER BY s_store_sk
;
