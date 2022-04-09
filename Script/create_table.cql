CREATE KEYSPACE finalProject with replication = {'class':'SimpleStrategy', 'replication_factor':1};
----------------------------------------------------------------
-- lưu thông tin của giỏ hàng với khóa phân vùng là user_id
----------------------------------------------------------------
CREATE TABLE carts_by_user (
	user_id BIGINT,
	cart_id BIGINT,
	state BOOLEAN,
	total DECIMAL,
	created_date DATE,
	PRIMARY KEY ((user_id), cart_id)
) WITH CLUSTERING ORDER BY (cart_id ASC);

----------------------------------------------------------------
--Lưu thông tin giỏ hàng của khách hàng theo ngày
----------------------------------------------------------------
CREATE MATERIALIZED VIEW carts_by_user_by_date 
  AS 
    SELECT * FROM carts_by_user
    WHERE created_date IS NOT NULL 
      AND user_id IS NOT NULL
       AND cart_id IS NOT NULL
  PRIMARY KEY ((user_id,created_date),cart_id);

----------------------------------------------------------------
--Lưu thông tin các items trong một giỏ hàng
----------------------------------------------------------------
	CREATE TABLE items_by_cart (
		cart_id BIGINT,
		inserted_date DATE,
		item_id BIGINT,
		item_name TEXT,
		item_description TEXT,
		item_price DECIMAL,
		item_quantity INT,
		type_id BIGINT,
		cart_subtotal DECIMAL,
		PRIMARY KEY ((cart_id), item_id)
	) WITH CLUSTERING ORDER BY (item_id ASC);


----------------------------------------------------------------
--Bảng lưu thông tin các loại hàng, với khóa phân vùng là mã loại
----------------------------------------------------------------
CREATE TABLE types_by_id (
	id BIGINT,
	name TEXT,
	description TEXT,
PRIMARY KEY (id)
);


----------------------------------------------------------------
--Bảng lưu thông tin các loại hàng, với khóa phân vùng là tên loại
----------------------------------------------------------------

CREATE TABLE types_by_name (
	name TEXT,
	id BIGINT,
	description TEXT,
	PRIMARY KEY ((name), id)
) WITH CLUSTERING ORDER BY (id ASC);


----------------------------------------------------------------
--Bảng lưu thông tin các items theo loại
----------------------------------------------------------------
CREATE TABLE items_by_type (
	type_id BIGINT,
	item_name TEXT,
	item_id BIGINT,
	item_description TEXT,
	item_price DECIMAL,
	PRIMARY KEY ((type_id), item_id)
) WITH CLUSTERING ORDER BY (item_id ASC);


----------------------------------------------------------------
--Lưu thông tin items theo id
----------------------------------------------------------------
CREATE TABLE items_by_id (
	item_id BIGINT, 
	item_name TEXT,
	type_id BIGINT,
	item_description TEXT,
	item_price DECIMAL,
	PRIMARY KEY ((item_id)));


----------------------------------------------------------------
--Lưu thông tin items theo tên
----------------------------------------------------------------
CREATE TABLE items_by_name 
	(item_name TEXT, 
	 item_id BIGINT,
	 type_id BIGINT,
	 item_description TEXT,
	 item_price DECIMAL,
	 PRIMARY KEY ((item_name),item_id));


