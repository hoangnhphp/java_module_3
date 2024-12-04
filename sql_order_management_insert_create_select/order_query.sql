create table Customer(
	cID int auto_increment primary key,
    `Name` varchar(25),
    cAge tinyint
);
insert into Customer (`Name`, cAge) values ("Minh Quan", 10), ("Ngoc Oanh", 20), ("Hong Ha", 50);

create table `Order` (
	oID int auto_increment primary key,
    cID int not null,
    oDate datetime not null,
    oTotalPrice int,
    foreign key (cID) references Customer(cID)
); 
insert into `Order` (cID, oDate, oTotalPrice) values (1 , "2006-03-21", null), (2 , "2006-03-23", null), (1 , "2006-03-16", null);

create table `Product` (
	pID int auto_increment primary key,
    pName varchar(25),
    pPrice int
); 
insert into `Product` (pName, pPrice) values ("May Giat", 3), ("Tu Lanh", 5), ("Dieu Hoa", 7), ("Quat", 1), ("Bep Dien", 2);

create table OrderDetail (
	oID int not null,
    pID int not null,
    odQTY int,
    foreign key (oID) references `Order`(oID),
    foreign key (pID) references Product(pID)
); 
insert into OrderDetail values
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);


#1 Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
Select * from `Order`;

#2 Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    customer.*, product.*
FROM
    customer
        JOIN
    `order` AS o ON o.cID = customer.cID
        JOIN
    orderdetail ON orderdetail.oID = o.oID
        JOIN
    product ON product.pID = orderdetail.pID;
    
#3 Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    customer.*
FROM
    customer
        LEFT JOIN
    `order` AS o ON o.cID = customer.cID
WHERE
    o.oID IS NULL;
#4 Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT 
    o.oID,
    o.oDate,
    sum(orderdetail.odQTY * product.pPrice) as tong_tien
FROM
    `order` AS o
        JOIN
    orderdetail ON orderdetail.oID = o.oID
        JOIN
    product ON product.pID = orderdetail.pID
group by o.oID;