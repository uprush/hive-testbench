create database if not exists ${DB};
use ${DB};

drop table if exists web_page;

create external table web_page
stored as ${FILE}
location "s3a://${S3DIR}/web_page"
as select * from ${SOURCE}.web_page;
