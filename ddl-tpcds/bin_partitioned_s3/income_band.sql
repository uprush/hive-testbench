create database if not exists ${DB};
use ${DB};

drop table if exists income_band;

create external table income_band
stored as ${FILE}
location "s3a://${S3DIR}/income_band"
as select * from ${SOURCE}.income_band;
