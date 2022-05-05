create database if not exists ${DB};
use ${DB};

drop table if exists inventory;

create external table inventory
stored as ${FILE}
location "s3a://${S3DIR}/inventory"
as select * from ${SOURCE}.inventory
CLUSTER BY inv_date_sk
;
