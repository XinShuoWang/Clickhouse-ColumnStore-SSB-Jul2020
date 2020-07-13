# Data size
## Raw file
Raw file, lineorder table generated as ./dbgen 2500 -T l

```
ls -lah lineorder.tbl 
1.7T lineorder.tbl
```

## Database size
Directory sizes:

### ClickHouse
```
ClickHouse
root@nodesm:/data/sdd/clickhouse/data# du -sh default 
355G    default
```

### ColumnStore
```
ColumnStore
root@nodesm:/data/sdd/cs# du -sh data1 
625G    data1
```

# Load times

## ClickHouse
```
time  clickhouse-client --query "INSERT INTO lineorder FORMAT CSV" < lineorder.tbl

real    283m44.217s
user    557m13.079s
sys     17m28.207s
```
## ColumnStore
```
time cpimport -m1 -s","  -E '"' sbtest lineorder lineorder.tbl 
2020-07-09 10:58:52 (21514) INFO : Running distributed import (mode 1) on all PMs...
2020-07-10 00:19:02 (21514) INFO : For table sbtest.lineorder: 15000001484 rows processed and 15000001484 rows inserted.
2020-07-10 00:19:02 (21514) INFO : Bulk load completed, total run time : 48010 seconds

real    800m11.175s
user    767m50.866s
sys     22m22.703s
```
