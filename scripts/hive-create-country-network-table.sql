USE rabdulov;


CREATE TEMPORARY TABLE temp_ips (
  network STRING, 
  geoname_id INT, 
  temp1 STRING, 
  temp2 STRING, 
  temp3 STRING,
  temp4 STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

LOAD DATA INPATH 'hdfs:/user/rabdulov/GeoLite2-Country-Blocks-IPv4.csv' INTO TABLE temp_ips;


CREATE TEMPORARY TABLE temp_loc (
geoname_id INT, 
temp1 STRING, 
temp2 STRING, 
temp3 STRING,
temp4 STRING,
country STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

LOAD DATA INPATH 'hdfs:/user/rabdulov/GeoLite2-Country-Locations-en.csv' INTO TABLE temp_loc;


CREATE TABLE Country_Network
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
AS 
SELECT temp_ips.network, temp_loc.country from temp_ips JOIN temp_loc ON temp_ips.geoname_id = temp_loc.geoname_id;

