./clickhouse-client --query "INSERT INTO customer FORMAT CSV" < customer.tbl
./clickhouse-client --query "INSERT INTO part FORMAT CSV" < part.tbl
./clickhouse-client --query "INSERT INTO supplier FORMAT CSV" < supplier.tbl
./clickhouse-client --query "INSERT INTO lineorder FORMAT CSV" < lineorder.tbl
