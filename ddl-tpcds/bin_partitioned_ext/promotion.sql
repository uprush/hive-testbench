create database if not exists ${DB};
use ${DB};

drop table if exists promotion;

create external table promotion
stored as ${FILE}
location "${DB_LOCATION}/promotion"
as select * from ${SOURCE}.promotion;
