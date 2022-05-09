create database if not exists ${DB};
use ${DB};

drop table if exists time_dim;

create external table time_dim
stored as ${FILE}
location "${DB_LOCATION}/time_dim"
as select * from ${SOURCE}.time_dim;
