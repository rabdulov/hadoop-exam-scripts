USE rabdulov;

DROP TABLE IF EXISTS top_countries;

CREATE TABLE top_countries
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
--STORED AS textfile
AS
SELECT cn.country, round(sum(p.product_price), 2) money_spent
FROM Purchase p, Country_Network cn
WHERE addr_from_subnet(p.client_ip, cn.network)
GROUP BY country
ORDER BY money_spent DESC
LIMIT 10;


