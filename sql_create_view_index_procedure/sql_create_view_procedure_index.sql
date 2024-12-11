create database demo;

use demo;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    productCode VARCHAR(10),
    productName VARCHAR(100),
    productPrice INT,
    productAmount INT,
    productDescription TEXT,
    productStatus VARCHAR(100)
);

insert into products (productCode, productName, productPrice, productAmount, productDescription, productStatus) values 
("SP01", "Laptop", 27000000, 24, "Laptop", "còn hàng"),
("SP02", "Desktop", 30000000, 25, "Desktop", "còn hàng"),
("SP03", "Mouse", 600000, 27, "Mouse", "còn hàng"),
("SP04", "Speakers", 500000, 31, "Speakers", "còn hàng"),
("SP05", "Smart Phone", 33000000, 33, "Smart Phone", "còn hàng"),
("SP06", "Ipad", 27000000, 9, "Ipad", "còn hàng"),
("SP07", "AirPod", 2000000, 14, "AirPod", "còn hàng"),
("SP08", "Tablet", 16000000, 6, "Tablet", "còn hàng"),
("SP10", "Mac Book", 39000000, 9, "Mac Book", "còn hàng");

EXPLAIN SELECT * FROM products where productName = "SP08";

create unique index product_code_unique on products(productCode);

create index idx_product_name_product_price on products(productName, productPrice);

EXPLAIN SELECT * FROM products where productName = "SP08" and productPrice = 16000000;

create view products_view as 
select productCode, productName, productPrice, productStatus from products;

select * from products_view;

CREATE OR REPLACE VIEW products_view AS
select productCode, productName, productAmount, productPrice, productStatus from products;

update products_view set productAmount = 4, productStatus = "còn hàng" where productCode = "SP08";

DROP VIEW products_view;

#Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
Delimiter //
DROP PROCEDURE IF EXISTS get_all_product_sp;
create procedure get_all_product_sp()
begin
		select * from products;
end //

DELIMITER ; 
call get_all_product_sp();

#Tạo store procedure thêm một sản phẩm mới
Delimiter //
DROP PROCEDURE IF EXISTS add_product_sp;
create procedure add_product_sp()
begin
		insert into products (productCode, productName, productPrice, productAmount, productDescription, productStatus) values
        ("SP11", "Laptop Gaming", 100000000, 10, "Laptop Gaming", "còn hàng");
end //

DELIMITER ; 
call add_product_sp();
call get_all_product_sp();

#Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER //
DROP PROCEDURE IF EXISTS update_product_sp;

-- Tạo stored procedure
CREATE PROCEDURE update_product_sp()
BEGIN
    UPDATE products 
    SET productAmount = 10, productStatus = "còn hàng" 
    WHERE id = 4;
END //

DELIMITER ;
CALL update_product_sp();
call get_all_product_sp();

#Tạo store procedure xóa thông tin sản phẩm theo id
Delimiter //
DROP PROCEDURE IF EXISTS delete_product_sp;
create procedure delete_product_sp()
begin
		delete from products where id = 10;
end //

DELIMITER ; 
call delete_product_sp();
call get_all_product_sp();