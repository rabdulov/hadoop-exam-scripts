#!/bin/bash

HDFS_PREFIX=hdfs:///user/rabdulov/

MYSQL_DRIVER=com.mysql.jdbc.Driver
MYSQL_CONNECT=jdbc:mysql://10.0.0.21:3306/rabdulov
MYSQL_USER=root


APP_JAR=./sparkquery_2.11-0.1.jar

spark2-submit --class $MAIN_CLASS --master yarn --jars ~/mysql/mysql-connector-java-6.0.6.jar,jars/opencsv-4.1.jar --conf spark.executor.memory=512m $APP_JAR $HDFS_PREFIX $MYSQL_DRIVER $MYSQL_CONNECT $MYSQL_USER

