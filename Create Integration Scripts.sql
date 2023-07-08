
---- Storage Integration Script Syntax ----

CREATE STORAGE INTEGRATION <integration_name>
	TYPE = EXTERNAL_STAGE
	STORAGE_PROVIDER = 'S3'
	ENABLED = TRUE
	STORAGE_AWS_ROLE_ARN = '<iam_role>'
	STORAGE_ALLOWED_LOCATIONS = ('s3://<bucket>/<path>/', 's3://<bucket>/<path>/') 
;


---- Storage Integration Script Example ----

CREATE OR REPLACE STORAGE INTEGRATION aws_int
	TYPE = EXTERNAL_STAGE
	STORAGE_PROVIDER = 'S3'
	ENABLED = TRUE
	STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::947344745710:role/Snowflake-Access-Role' -- replace the ARN of the AWS role 
	STORAGE_ALLOWED_LOCATIONS = ('s3://snowflake-s3-bucket-5710/') -- Replace the S3 bucket name.
;
