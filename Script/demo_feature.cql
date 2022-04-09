-- INDEX
CREATE INDEX priceFilter ON items_by_id (item_price);
--Thực hiện query sản phẩm trong khoảng giá 80000 - 100000
SELECT * FROM items_by_id WHERE item_price>80000 and item_price<100000 allow filtering;

-- Lightweight transaction
INSERT INTO types_by_id (id, name, description) VALUES (1, 'Sach', 'Ngan hang sach da dang') IF NOT EXISTS;
INSERT INTO types_by_name(id, name, description) VALUES (5, 'Den dien', 'Thap sang trai tim') IF NOT EXISTS;

-- materialized view
--batch statement
--Security
CREATE USER user1 WITH PASSWORD 'user1';
CREATE USER owner WITH PASSWORD 'owner';

GRANT MODIFY ON KEYSPACE demodb to owner
GRANT SELECT ON KEYSPACE demodb to owner
GRANT SELECT ON KEYSPACE demodb to user1

--Backup and restore data
-- tạo snapshot
nodetool -u cassandra -pw cassandra snapshot --table types_by_name demodb -t type_by_name-1
----delete
--chạy script schema.cql trong snapshot
cqlsh -u cassandra -p casandra -f schema.cql

-- copy file trong snapshot/snapshot_name vào thư mục ../demodb/keysapce/table
copy C:\Cassandra\apache-cassandra-3.11.11\data\data\demodb\types_by_name-aee76a505db811ecadee9130e4da0c4a\snapshots\1640272010260\* C:\Cassandra\apache-cassandra-3.11.11\data\data\demodb\types_by_name-aee76a505db811ecadee9130e4da0c4a\

-- chạy nodetool refresh
nodetool refresh demodb types_by_name