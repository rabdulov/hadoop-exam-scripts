CREATE DATABASE IF NOT EXISTS rabdulov;

USE rabdulov;

CREATE EXTERNAL TABLE IF NOT EXISTS Purchase(
  Product_Category STRING,
  Product_Name STRING, 
  Product_Price DECIMAL,
  Purchase_DateTime TIMESTAMP,    
  Client_IP STRING
)

PARTITIONED BY(
  Purchase_Date DATE
)
ROW FORMAT serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH serdeproperties (
   "separatorChar" = ",",
   "quoteChar" = "\"",
   "escapeChar" = "\\",
   "timestamp.formats" = "yyyy-MM-dd'T'HH:mm:ss"
)  
STORED AS textfile;


ALTER TABLE Purchase ADD IF NOT EXISTS PARTITION(
  Purchase_Date = '2018-02-12'
)
LOCATION '/user/rabdulov/events/2018/02/12';

ALTER TABLE Purchase ADD IF NOT EXISTS PARTITION(
  Purchase_Date = '2018-02-13'
)
LOCATION '/user/rabdulov/events/2018/02/13';

ALTER TABLE Purchase ADD IF NOT EXISTS PARTITION(
  Purchase_Date = '2018-02-14'
)
LOCATION '/user/rabdulov/events/2018/02/14';

ALTER TABLE Purchase ADD IF NOT EXISTS PARTITION(
  Purchase_Date = '2018-02-15'
)
LOCATION '/user/rabdulov/events/2018/02/15';

ALTER TABLE Purchase ADD IF NOT EXISTS PARTITION(
  Purchase_Date = '2018-02-16'
)
LOCATION '/user/rabdulov/events/2018/02/16';

ALTER TABLE Purchase ADD IF NOT EXISTS PARTITION(
  Purchase_Date = '2018-02-17'
)
LOCATION '/user/rabdulov/events/2018/02/17';

ALTER TABLE Purchase ADD IF NOT EXISTS PARTITION(
  Purchase_Date = '2018-02-18'
)
LOCATION '/user/rabdulov/events/2018/02/18';




