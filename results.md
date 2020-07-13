# Data size
Raw file, lineorder table generated as ./dbgen 2500 -T l

```
ls -lah lineorder.tbl 
1.7T lineorder.tbl
```

Directory sizes:
```
ClickHouse
root@nodesm:/data/sdd/clickhouse/data# du -sh default 
355G    default

ColumnStore
root@nodesm:/data/sdd/cs# du -sh data1 
625G    data1
```
