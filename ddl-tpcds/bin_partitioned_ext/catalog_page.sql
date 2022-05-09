create database if not exists ${DB};
use ${DB};

drop table if exists catalog_page;

create external table catalog_page
stored as ${FILE}
location "${DB_LOCATION}/catalog_page"
as select * from ${SOURCE}.catalog_page;
