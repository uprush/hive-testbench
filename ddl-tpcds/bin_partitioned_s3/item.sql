create database if not exists ${DB};
use ${DB};

drop table if exists item;

create external table item
stored as ${FILE}
location "s3a://${S3DIR}/item"
as select * from ${SOURCE}.item
CLUSTER BY i_item_sk
;
