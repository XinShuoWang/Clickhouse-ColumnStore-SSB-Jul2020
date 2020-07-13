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

# Execution times

Query | ColumnStore | ClickHouse
------|------------|------------
Q1.1 | 5 min 28.143 sec | 0 min 2.842 sec
Q1.2 | 5 min 31.673 sec | 0 min 0.308 sec
Q1.3 | 5 min 30.432 sec | 0 min 0.110 sec
Q2.1 | 7 min 55.025 sec | 1 min 44.627 sec
Q2.2 | 7 min 55.755 sec | 1 min 42.514 sec
Q2.3 | 7 min 58.477 sec | 0 min 52.810 sec
Q3.1 | 6 min 50.582 sec | 7 min 33.786 sec
Q3.2 | 6 min 48.448 sec | 1 min 16.433 sec
Q3.3 | 6 min 48.719 sec | 0 min 40.619 sec
Q3.4 | 14 min 11.523 sec | 0 min 0.769 sec
Q4.1 | 11 min 33.389 sec | 6 min 45.782 sec
Q4.2 | 11 min 21.001 sec | 1 min 14.263 sec
Q4.3 | 11 min 23.088 sec | 1 min 14.291 sec

