INSERT INTO carts_by_user(user_id, cart_id, state, created_date, total) VALUES (1, 1, false,TODATE(NOW()), 620000);
INSERT INTO carts_by_user(user_id, cart_id, state, created_date, total) VALUES (1, 2, true, TODATE(NOW()), 0);
INSERT INTO carts_by_user(user_id, cart_id, state, created_date, total) VALUES (2, 3, false, TODATE(NOW()), 0);
INSERT INTO carts_by_user(user_id, cart_id, state, created_date, total) VALUES (2, 4, false, TODATE(NOW()), 0);
INSERT INTO carts_by_user(user_id, cart_id, state, created_date, total) VALUES (2, 5, false, TODATE(NOW()), 0);

INSERT INTO items_by_cart (cart_id, item_id, item_name, item_description, item_price, item_quantity, type_id, inserted_date, cart_subtotal) VALUES (1, 1, 'sach giao khoa lop 1', 'sach giao khoa duoc bo giao duc san xuat', 90000, 2, 1, TODATE(NOW()),180000);
INSERT INTO items_by_cart (cart_id, item_id, item_name, item_description, item_price, item_quantity, type_id , inserted_date, cart_subtotal) VALUES (1, 2, 'sach dao duc lop 1', 'sach dao duc ren dua dao duc tre em', 80000, 1, 1,TODATE(NOW()), 80000);
INSERT INTO items_by_cart (cart_id, item_id, item_name, item_description, item_price, item_quantity, type_id , inserted_date, cart_subtotal) VALUES (1, 3, 'sach toan lop 1', 'sach toan giup tre phat trien tri nao gap ba lan', 100000, 1, 1, TODATE(NOW()), 100000);
INSERT INTO items_by_cart (cart_id, item_id, item_name, item_description, item_price, item_quantity, type_id , inserted_date, cart_subtotal) VALUES (1, 4, 'Quan kaki danh cho nam', 'Ton len ve dep cua nam gioi', 110000, 1, 2, TODATE(NOW()), 110000);
INSERT INTO items_by_cart (cart_id, item_id, item_name, item_description, item_price, item_quantity, type_id , inserted_date, cart_subtotal) VALUES (1, 5, 'Ao mac voi quan kaki danh cho nam', 'Dep het xay', 150000, 1, 3, TODATE(NOW()), 150000);

INSERT INTO types_by_id(id, name, description) VALUES (1, 'Sach', 'Ngan hang sach da dang');
INSERT INTO types_by_id(id, name, description) VALUES (2, 'Quan', 'Mau ma da dang, hop thoi trang');
INSERT INTO types_by_id(id, name, description) VALUES (3, 'Ao', 'Ao rat dep, maizdo, maizdo');
INSERT INTO types_by_id(id, name, description) VALUES (4, 'Giay', 'Mau ma da dang');
INSERT INTO types_by_id(id, name, description) VALUES (5, 'Non', 'Mau ma da dang');

INSERT INTO types_by_name(id, name, description) VALUES (1, 'Sach', 'Ngan hang sach da dang');
INSERT INTO types_by_name(id, name, description) VALUES (2, 'Quan', 'Mau ma da dang, hop thoi trang');
INSERT INTO types_by_name(id, name, description) VALUES (3, 'Ao', 'Ao rat dep, maizdo, maizdo');
INSERT INTO types_by_name(id, name, description) VALUES (4, 'Giay', 'Mau ma da dang');
INSERT INTO types_by_name(id, name, description) VALUES (5, 'Non', 'Mau ma da dang');

INSERT INTO items_by_type (type_id, item_id,item_name, item_description, item_price) values (1,1,'sach giao khoa lop 1', 'sach giao khoa duoc bo giao duc san xuat', 90000);
INSERT INTO items_by_type (type_id, item_id,item_name, item_description, item_price) values (1,2,'sach dao duc lop 1', 'sach dao duc ren dua dao duc tre em', 80000);
INSERT INTO items_by_type (type_id, item_id,item_name, item_description, item_price) values (1,3,'sach toan lop 1', 'sach toan giup tre phat trien tri nao gap ba lan', 100000);
INSERT INTO items_by_type (type_id, item_id,item_name, item_description, item_price) values (2,4,'Quan kaki danh cho nam', 'Ton len ve dep cua nam gioi', 110000);
INSERT INTO items_by_type (type_id, item_id,item_name, item_description, item_price) values (3,5,'Ao mac voi quan kaki danh cho nam', 'Dep het xay', 150000);
INSERT INTO items_by_type (type_id, item_id,item_name, item_description, item_price) values (3,6,'Ao khac', 'Ao khoac nhap khau', 100000);

INSERT INTO items_by_id (item_id,type_id, item_name,item_description,item_price) values (1,1, 'sach giao khoa lop 1', 'sach giao khoa duoc bo giao duc san xuat', 90000 );
INSERT INTO items_by_id (item_id,type_id,item_name,item_description,item_price) values (2,1, 'sach dao duc lop 1', 'sach dao duc ren dua dao duc tre em', 80000 );
INSERT INTO items_by_id (item_id,type_id,item_name,item_description,item_price) values (3,1, 'sach toan lop 1', 'sach toan giup tre phat trien tri nao gap ba lan', 100000 );
INSERT INTO items_by_id (item_id,type_id,item_name,item_description,item_price) values (4,2, 'Quan kaki danh cho nam', 'Ton len ve dep cua nam gioi', 110000 );
INSERT INTO items_by_id (item_id,type_id,item_name,item_description,item_price) values (5,3, 'Ao mac voi quan kaki danh cho nam', 'Dep het xay', 150000 );
INSERT INTO items_by_id (type_id, item_id,item_name, item_description, item_price) values (3,6,'Ao khac', 'Ao khoac nhap khau', 100000);

INSERT INTO items_by_name (item_name,type_id, item_id, item_description, item_price) values ( 'Sach giao khoa lop 1',1, 1, 'sach giao khoa duoc bo giao duc san xuat', 90000);
INSERT INTO items_by_name (item_name,type_id, item_id,,item_description,item_price) values ('sach dao duc lop 1',1, 2, 'sach giao khoa duoc bo giao duc san xuat', 80000 );
INSERT INTO items_by_name (item_name,type_id,item_id,item_description,item_price) values ( 'sach toan lop 1',1, 3, 'sach toan giup tre phat trien tri nao gap ba lan', 100000 );
INSERT INTO items_by_name (item_name,type_id,item_id,item_description,item_price) values ('Quan kaki danh cho nam',2, 4, 'Ton len ve dep cua nam gioi', 110000);
INSERT INTO items_by_name (item_name,type_id,item_id,item_description,item_price) values ('Ao mac voi quan kaki danh cho nam',3,5,  'Dep het xay', 150000 );
INSERT INTO items_by_name (type_id, item_id,item_name, item_description, item_price) values (3,6,'Ao khac', 'Ao khoac nhap khau', 100000);
