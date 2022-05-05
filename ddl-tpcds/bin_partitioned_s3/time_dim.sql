create database if not exists ${DB};
use ${DB};

drop table if exists time_dim;

create external table time_dim
stored as ${FILE}
location "s3a://${S3DIR}/time_dim"
as select * from ${SOURCE}.time_dim;
