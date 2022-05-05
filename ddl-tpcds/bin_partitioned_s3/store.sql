create database if not exists ${DB};
use ${DB};

drop table if exists store;

create external table store
stored as ${FILE}
location "s3a://${S3DIR}/store"
as select * from ${SOURCE}.store
CLUSTER BY s_store_sk
;
