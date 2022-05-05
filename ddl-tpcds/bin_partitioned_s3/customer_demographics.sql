create database if not exists ${DB};
use ${DB};

drop table if exists customer_demographics;

create external table customer_demographics
stored as ${FILE}
location "s3a://${S3DIR}/customer_demographics"
as select * from ${SOURCE}.customer_demographics;
