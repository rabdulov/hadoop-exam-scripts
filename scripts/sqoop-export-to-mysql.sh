HIVE_DB=rabdulov
MYSQL_DRIVER=com.mysql.jdbc.Driver
MYSQL_CONNECT=jdbc:mysql://10.0.0.21:3306/rabdulov
MYSQL_USER=root

sqoop export --connect $MYSQL_CONNECT --driver $MYSQL_DRIVER --username $MYSQL_USER --table top_categories --hcatalog-database $HIVE_DB --hcatalog-table top_categories --input-fields-terminated-by ',' --bindir ./scoop

sqoop export --connect $MYSQL_CONNECT --driver $MYSQL_DRIVER --username $MYSQL_USER --table top_countries --hcatalog-database $HIVE_DB --hcatalog-table top_countries --input-fields-terminated-by ',' --bindir ./scoop

sqoop export --connect $MYSQL_CONNECT --driver $MYSQL_DRIVER --username $MYSQL_USER --table top_products_per_category --hcatalog-database $HIVE_DB --hcatalog-table top_products_per_category --input-fields-terminated-by ',' --bindir ./scoop

