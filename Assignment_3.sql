
create table customer
( customer_id int Primary key,
   first_name varchar(10),
   last_name varchar(10),
   email varchar(25),
   address varchar(50),
   city varchar(15),
   state varchar(10),
   zip int
)

Values
(10, 'Kaustav', 'Dey', 'imkd2019@gmail.com' , 'Siliguri , Shaktigarh' , 'Siliguri' , 'W.B', 734005),
(20,'Debjit','Dutta','debjitnunku@gmail.com','Bonkers , Birbhum','Birbhum','W.B',736005),
(30,'Soumyadip','Das','soumyaisnoob@gmail.com','DumDum , Kolkata','Kolkata','W.B',730005),
(40,'Avi','Paul','hero@gmail.com','Kachrapra , Kolkata','Kolkata','W.B',738005),
(50,'Godfrey','Elden Lord','firsteldenlord@gmail.com','San Jose California','San Jose','U.S.A',12345)

--1. Create an ‘Orders’ table which comprises of these columns: ‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’. 
create table Orders
( order_id int Primary key,
  order_date date,
  amount decimal(10,2),
  customer_id int references customer(customer_id)
 )

--2. Insert 5 new records. 
Insert into  Orders
Values
(1,'10-Mar-2023',2299, 10),
(2,'26-Aug-2023',2050,20),
(3,'12-Sep-2023',1499,30),
(4,'17-Sep-2023',2499,40),
(5,'27-Sep-2023',1999,50)

select * from orders
--3. Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.
select * from Orders 
inner join Customer 
on Orders.customer_id=Customer.customer_id

--4. Make left and right joins on ‘Customer’ and ‘Orders’ tables on the‘customer_id’ column.
select * from Orders
left join Customer
on Orders.customer_id=Customer.customer_id

select * from Orders
right join Customer
on Orders.customer_id=Customer.customer_id

--5. Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column.
select * from Orders 
full outer join Customer
on Orders.customer_id=Customer.customer_id


--6. Update the ‘Orders’ table and set the amount to be 100where‘customer_id’ is 3. Insert into customer 
 select * from Orders
 Update Orders
 set Orders.amount=100
 where Orders.customer_id=3