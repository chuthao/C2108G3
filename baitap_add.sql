--Tao file database--
create database baitap_add
-- su dung file data--
use baitap_add
--tao bang Customer--
create table Customer(
	Cust_No int,
	Cust_Name nvarchar(50),
	PhoneNo nvarchar(20)
)
-- tao bang Items--
create table Items(
	Item_No nvarchar(10),
	Description nvarchar(50),
	Price int	
)
-- tao bang Order_Details--
create table Order_Details(
	Ord_No int,
	Item_No nvarchar(10),
	Qty int
)
-- tao bang Order_August--
create table Order_August(
	Ord_No int,
	Ord_Date Datetime,
	Cust_No int
)
--tao Primary key--
alter table Customer
	alter column Cust_No int NOT NULL
--fix loi Msg 811
alter table Customer
	add constraint PK_Customer  primary key (Cust_No)

alter table Items
	alter column Item_No nvarchar(10) NOT NULL
alter table Items
	add constraint PK_Items  primary key (Item_No)

--tao lien ket--
alter table Order_August
	add constraint FK_Customer foreign key (Cust_No) references Customer (Cust_No)

-- add du lieu vao bang Customer--
insert into Customer(Cust_No,Cust_Name,PhoneNo)
values
(1,'David Gordon','0231-5466356'),
(2,'Prince Fernandes','0221-5762382'),
(3,'Charles Yale','0321-8734723'),
(4,'Ryan Ford','0241-2343444'),
(5,'Bruce Smith','0241-8472198')

--add du lieu vao bang Items--
insert into Items(Item_No,Description,Price)
values
('HW1','Power Supply',4000),
('HW2','Keyboard',2000),
('HW3','Mouse',800),
('SW1','Office Suite',15000),
('SW2','Payroll Software',8000)
--add du lieu bang Order_Details--
insert into Order_Details(Ord_No,Item_No,Qty)
values
(101,'HW3',50),
(101,'SW1',150),
(102,'HW2',10),
(103,'HW3',50),
(104,'HW2',25),
(104,'HW3',100),
(105,'SW1',100)
--add du lieu bang Order_August--
insert into Order_August(Ord_No,Ord_Date,Cust_No)
values
(101,'2012-08-02',1),
(102,'2012-08-11',2),
(103,'2012-08-21',3),
(104,'2012-08-28',4),
(105,'2012-08-30',5)