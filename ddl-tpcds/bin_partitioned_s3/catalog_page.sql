create database if not exists ${DB};
use ${DB};

drop table if exists catalog_page;

create external table catalog_page
stored as ${FILE}
location "s3a://${S3DIR}/catalog_page"
as select * from ${SOURCE}.catalog_page;
