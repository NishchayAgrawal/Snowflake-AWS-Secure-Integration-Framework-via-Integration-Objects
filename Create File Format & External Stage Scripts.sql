
---- File Format Script Example ----

CREATE OR REPLACE file format AWS_S3_CSV_Fileformat
    type = csv
    field_delimiter = ','
    skip_header = 1
    null_if = ('NULL','null')
    empty_field_as_null = TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
;
	

---- External Stage Script Example ----


CREATE or replace STAGE my_s3_stage_retail
	STORAGE_INTEGRATION = aws_int 
	URL = 's3://snowflake-s3-bucket-5710/'
	FILE_FORMAT = AWS_S3_CSV_Fileformat
;

---- To list all the files available in the S3 bucket ----


list @my_s3_stage_retail;
