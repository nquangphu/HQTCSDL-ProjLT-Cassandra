--Hiển thị giỏ hàng của người dùng
SELECT * FROM carts_by_user WHERE user_id=2 AND cart_id=4;
SELECT * FROM carts_by_user WHERE user_id=4;

--Hiển thị tất cả giỏ hàng của một người dùng theo ngày
SELECT * FROM carts_by_user_by_date WHERE user_id=2 AND created_date='2021-12-15';

--Hiển thị các sản phẩm trong giỏ hàng
SELECT * FROM items_by_cart WHERE cart_id=1;

--Hiển thị danh sách loại sản phẩm theo id loại sản phẩm
SELECT * FROM types_by_id WHERE id=1;

--Hiển thị danh sách loại sản phẩm theo tên loại sản phẩm
SELECT * FROM types_by_name WHERE name='Ao';

--Hiển thị danh sách các sản phẩm trong một loại sản phẩm
SELECT * FROM items_by_type WHERE type_id=1;

--Tìm kiếm sản phẩm theo id sản phẩm
SELECT * FROM items_by_id WHERE item_id=1;

--Tìm kiếm sản phẩm theo tên sản phẩm
SELECT * FROM types_by_name WHERE name='Ao mac voi quan kaki danh cho nam';

--U1: cập nhật một giỏ hàng đang hoạt động thành giỏ hàng được lưu, hoặc một giỏ hàng đang được lưu thành một giỏ hàng đang hoạt động.
BEGIN BATCH
  UPDATE carts_by_user 
  SET state = false
  WHERE user_id = 1
    AND cart_id = 2
  IF state = true;
  UPDATE carts_by_user 
  SET state = true
  WHERE user_id = 1
    AND cart_id =1;
APPLY BATCH;

SELECT *
FROM carts_by_user
WHERE user_id =1;

--U2: thêm một item vào giỏ hàng.
BEGIN BATCH
  INSERT INTO items_by_cart (
    cart_id, item_id, item_name, item_description, item_price, item_quantity, type_id , inserted_date)
  VALUES (1, 6, 'Ao khoac', 'Ao khoac nhap khau', 100000, 2, 1, TODATE(NOW()));
    
  UPDATE items_by_cart 
  SET cart_subtotal = 200000
  WHERE cart_id = 1 and item_id=6;

  UPDATE carts_by_user
  set total=820000
  WHERE user_id=1 and cart_id=1;
APPLY BATCH;

SELECT * 
FROM items_by_cart
WHERE cart_id = 1









-- ->Khách hàng có thể xem danh sách giỏ hàng của mình ,Khách hàng có thể chọn giỏ hàng đã lưu
SELECT * FROM carts_by_user WHERE user_id=1;
SELECT * FROM carts_by_user_by_date WHERE user_id=1 AND created_date='2021-12-15';

-- ->sau đó chỉ định một giỏ hàng sang trạng thái đang hoạt động, 
BEGIN BATCH
  UPDATE carts_by_user 
  SET state = false
  WHERE user_id = 1
    AND cart_id = 2
  IF state = true;
  UPDATE carts_by_user 
  SET state = true
  WHERE user_id = 1
    AND cart_id =1;
APPLY BATCH;

SELECT *
FROM carts_by_user
WHERE user_id =1;

-- -> sau đó xem các sản phẩm trong giỏ hàng.
SELECT * FROM items_by_cart WHERE cart_id=1;
-- -> Khách hàng xem danh sách hàng
SELECT * FROM items_by_name;
-- -> Khách hàng có thể tìm kiếm sản phẩm theo id/tên của sản phẩm
SELECT * FROM items_by_id WHERE item_id=1;
SELECT * FROM items_by_name WHERE item_name='Ao mac voi quan kaki danh cho nam';
-- Xem danh sach loại sản phẩm
SELECT * from types_by_id;
-- Tìm kiểm loại sản phẩm theo tên
SELECT * FROM types_by_name WHERE name='Ao';
-- -> sau đó có thể thêm sản phẩm vào giỏ hàng đang hoạt động.
BEGIN BATCH
  INSERT INTO items_by_cart (
    cart_id, item_id, item_name, item_description, item_price, item_quantity, type_id , inserted_date)
  VALUES (1, 6, 'Ao khoac', 'Ao khoac nhap khau', 100000, 2, 1, TODATE(NOW()));
    
  UPDATE items_by_cart 
  SET cart_subtotal = 820000
  WHERE cart_id = 1;

  UPDATE carts_by_user
  set total=820000
  WHERE user_id=1 and cart_id=1;
APPLY BATCH;

SELECT * 
FROM items_by_cart
WHERE cart_id = 1;

