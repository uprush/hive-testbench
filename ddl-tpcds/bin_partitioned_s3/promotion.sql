create database if not exists ${DB};
use ${DB};

drop table if exists promotion;

create external table promotion
stored as ${FILE}
location "s3a://${S3DIR}/promotion"
as select * from ${SOURCE}.promotion;
