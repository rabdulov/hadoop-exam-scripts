USE rabdulov;

DROP TABLE IF EXISTS top_categories;

CREATE TABLE top_categories
ROW FORMAT delimited
fields terminated by ','
--STORED AS textfile
AS
  SELECT Product_Category, count(*) cnt
  FROM Purchase
  GROUP BY Product_Category
  ORDER BY cnt DESC
  LIMIT 10;

DROP TABLE IF EXISTS top_products_per_category;

CREATE TABLE top_products_per_category
ROW FORMAT delimited
fields terminated by ','
--STORED AS textfile
AS
SELECT Product_Category, Product_Name, cnt
FROM (
  SELECT Product_Category, Product_Name, cnt, ROW_NUMBER() OVER (PARTITION BY Product_Category ORDER BY cnt DESC) rank
  FROM (
    SELECT Product_Category, Product_Name, count(*) cnt
    FROM Purchase
    GROUP BY Product_Category, Product_Name
  ) grouped
) ranked
WHERE rank <= 10;
