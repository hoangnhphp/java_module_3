create database quanlybanhang;

use quanlybanhang;

create table customer (
	cID int AUTO_INCREMENT primary key,
    cName varchar(100),
    cAge int
);

create table product (
	pID int AUTO_INCREMENT primary key,
    pName varchar(100),
    pPrice int
);

create table donhang (
	oID int AUTO_INCREMENT primary key,
    cID int not null,
    oDate datetime,
    oTotalPrice int,
    foreign key (cID) references customer(cID)
);

create table OrderDetail(
	oID int not null,
    pID int not null,
    odQTY varchar(255),
    
    foreign key (oID) references donhang(oID),
    foreign key (pID) references product(pID)
);