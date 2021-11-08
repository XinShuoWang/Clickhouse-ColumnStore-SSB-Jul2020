./clickhouse-client --query "INSERT INTO customer FORMAT CSV" < /home/ubuntu/ssb-dbgen/customer.tbl
./clickhouse-client --query "INSERT INTO part FORMAT CSV" < /home/ubuntu/ssb-dbgen/part.tbl
./clickhouse-client --query "INSERT INTO supplier FORMAT CSV" < /home/ubuntu/ssb-dbgen/supplier.tbl
./clickhouse-client --query "INSERT INTO lineorder FORMAT CSV" < /home/ubuntu/ssb-dbgen/lineorder.tbl
