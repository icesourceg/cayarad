#/bin/bash

mysql -f  -u root -h 127.0.0.1 -pcayapsql-19 < ../data/raddb-schema.sql
mysql -f -u root -h 127.0.0.1 -pcayapsql-19 < ../data/dalodb-schema.sql