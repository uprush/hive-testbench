create database if not exists ${DB};
use ${DB};

drop table if exists household_demographics;

create external table household_demographics
stored as ${FILE}
location "s3a://${S3DIR}/household_demographics"
as select * from ${SOURCE}.household_demographics;
