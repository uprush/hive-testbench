create database if not exists ${DB};
use ${DB};

drop table if exists reason;

create external table reason
stored as ${FILE}
location "${DB_LOCATION}/reason"
as select * from ${SOURCE}.reason;
