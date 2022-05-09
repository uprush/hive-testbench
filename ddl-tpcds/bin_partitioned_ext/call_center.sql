create database if not exists ${DB};
use ${DB};

drop table if exists call_center;

create external table call_center
stored as ${FILE}
location "${DB_LOCATION}/call_center"
as select * from ${SOURCE}.call_center;
