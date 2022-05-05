create database if not exists ${DB};
use ${DB};

drop table if exists reason;

create external table reason
stored as ${FILE}
location "s3a://${S3DIR}/reason"
as select * from ${SOURCE}.reason;
