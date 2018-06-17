USE rabdulov;

DELETE FROM purchase 
WHERE product_category IS NULL OR
 product_name IS NULL OR
 product_price IS NULL OR 
 purchase_datetime IS NULL OR 
 client_ip IS NULL OR 
 purchase_date IS NULL;

