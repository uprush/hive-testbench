create database if not exists ${DB};
use ${DB};

drop table if exists warehouse;

create external table warehouse
stored as ${FILE}
location "s3a://${S3DIR}/warehouse"
as select * from ${SOURCE}.warehouse;
