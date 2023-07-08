

---- Upload the data into the tables using COPY INTO commands example ----

COPY INTO REGIONS FROM @my_s3_stage_retail pattern ='REGIONS.*' FORCE = TRUE;

COPY INTO COUNTRIES FROM @my_s3_stage_retail pattern ='COUNTRIES.*' FORCE = TRUE;