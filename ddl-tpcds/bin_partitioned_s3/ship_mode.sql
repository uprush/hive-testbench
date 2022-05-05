create database if not exists ${DB};
use ${DB};

drop table if exists ship_mode;

create external table ship_mode
stored as ${FILE}
location "s3a://${S3DIR}/ship_mode"
as select * from ${SOURCE}.ship_mode;
