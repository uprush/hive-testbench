create database if not exists ${DB};
use ${DB};

drop table if exists warehouse;

create external table warehouse
stored as ${FILE}
location "${DB_LOCATION}/warehouse"
as select * from ${SOURCE}.warehouse;
