create database if not exists ${DB};
use ${DB};

drop table if exists web_site;

create external table web_site
stored as ${FILE}
location "${DB_LOCATION}/web_site"
as select * from ${SOURCE}.web_site;
