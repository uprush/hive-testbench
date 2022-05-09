create database if not exists ${DB};
use ${DB};

drop table if exists web_page;

create external table web_page
stored as ${FILE}
location "${DB_LOCATION}/web_page"
as select * from ${SOURCE}.web_page;
