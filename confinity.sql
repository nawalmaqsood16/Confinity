CREATE DATABASE confinity
use confinity

DROP TABLE  Login_ 
DROP TABLE  Users_
DROP TABLE  Admin_
DROP TABLE  Transactions
DROP TABLE  Loan_Type
DROP TABLE  Loan_request
DROP TABLE  Feedback
DROP TABLE  Book_appointment
DROP TABLE  Services_type
DROP TABLE  Services_request_
DROP TABLE IncomeStatement

select* from Login__ 
select* from Users__
select* from Admin__
select* from Transactions
select* from Loan_Type
select* from Loan_request
select* from Feedback
select* from Book_appointment
select* from Services_type
select* from Services_request
select* from Appointment_
select* from appSchedule
select* from IncomeStatement
select* from Services_requests


CREATE TABLE Login__ (
	email NVARCHAR(30) PRIMARY KEY NOT NULL,
	password NVARCHAR(30) NOT NULL,
	Phone_number nvarchar(30)  NOT NULL,
);

insert into Login__
values
('hania@gmail.com','hania789',03317835682),
('ali@gmail.com','ali459', 03457735785),
('nawal@gmail.com' , 'nawal789', 03162456739);



CREATE TABLE Users6__ (
   
	username NVARCHAR(15) NOT NULL,	
	password_ nvarchar(15) not null,
	email NVARCHAR(30) unique not null, --fk login (email)
	address_ varchar(50),
	Phone_number nvarchar(30)NOT NULL ,
	Account_number INT Primary key NOT NULL,
	amount int unique,
	
	
);
select*from Users6__



CREATE TABLE Admin__(
	email NVARCHAR(30) PRIMARY KEY NOT NULL, 
	Admin_id int NOT NULL,
	Phone_number nvarchar(11)  NOT NULL,
);

insert into Admin__
values
('ali@gmail.com',2,033152635889),
('hania@gmail.com', 1,  '03317835682');
select* from Admin__


create table Appointment_(
 
	 email_ NVARCHAR(30) Primary key,
     date_ NVARCHAR(30),
     stime NVARCHAR(30),
     eTime NVARCHAR(30),
     
);

select* from Appointment_

drop table Appointment_

create table appSchedule(
	aptId int primary key,
    date_ nvarchar(30),
	sTime nvarchar(30),
    eTime nvarchar(30),
    _email nvarchar(30) ,
    Foreign key(_email) references Admin__(email)
);
drop table appSchedule
insert into appSchedule
values
(1,'Monday' , '11:00:00' , '01:00:00' , 'hania@gmail.com'),
(2,'Monday' ,'08:30:00' , '10:00:00' , 'ali@gmail.com'),
(3,'Wednesday' , '01:30:00' , '3:00:00' ,'hania@gmail.com' );

CREATE TABLE Transactions 
(		
	Transaction_number INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Account_number_sender INT FOREIGN KEY REFERENCES Users6__(Account_number),	
	Account_number INT FOREIGN KEY REFERENCES Users6__(Account_number),	
	Amount int not null,
	Balance INT NOT NULL,
	date_ date,	
);

drop table Transactions
CREATE TABLE Loan_Type(
    loan_type INT Primary key NOT NULL,
	loan_desc NVARCHAR(30) NOT NULL,
	
);

CREATE TABLE Loan_request (
	Request_number INT PRIMARY KEY NOT NULL,
	Account_number INT FOREIGN KEY REFERENCES Users6__(Account_number),
	Loan_amount INT NOT NULL,
	loan_type INT FOREIGN KEY REFERENCES Loan_Type(loan_type),
	
);

CREATE TABLE Feedback (
		Account_number INT FOREIGN KEY REFERENCES Users6__(Account_number),
	   feedback NVARCHAR(100),
	
);

CREATE TABLE Services_type (
	service_id INT Primary KEY NOT NULL,		
	service_type NVARCHAR(15) NOT NULL,			
	
);
insert into Services_type
values
(1, 'debit card'),
(2, 'creditcard'),
(3, 'cheque book');


CREATE TABLE Services_requests (
    requestID int PRIMARY KEY,
	service_type nvarchar(15),
	Account_number INT FOREIGN KEY REFERENCES Users6__(Account_number),		
	service_id INT FOREIGN KEY REFERENCES Services_type(service_id) ,

);

select* from Services_requests
insert into Services_requests
values
(1, 'debit card',56789 ,3);

drop table Services_requests

CREATE TABLE IncomeStatement
(
  incID int PRIMARY KEY not null,
  Account_number int,
  revenue int,
  expenses int,
  net_income int,
  sources nvarchar(50),
  foreign key(Account_number) references Users6__(Account_number) 
);

insert into IncomeStatement
values
(1, 56789 , 30800,10650,21350,'merchandise sale');
select* from IncomeStatement
drop table IncomeStatement

--------------Signup----------------
CREATE PROCEDURE SignupUser
@username varchar(30),
@password nvarchar(30),
@email nvarchar(30),
@address nvarchar(50),
@phno nvarchar(30),
@Account_number int,
@Amount int

as begin
declare @Account_numbers int
	select @Account_numbers = max(@Account_number) + 1
	from Users6__ u

	insert into Users6__ values (@username,@password,@email,@address,@phno,@Account_number,@Amount );
end

exec SignupUser @username = 'Ahmed',@password = '1234567', @email = 'ahmed@gmail.com',@address ='pia', @phno = '03304556565' ,@Account_number = 1234

drop procedure SignupUser


-------------------LOGIN-----------------
create procedure LoginUser
@email nvarchar(30),
@password nvarchar(15),
@flag int output
as begin
declare @pass nvarchar(15)
set @flag = 0
select @pass = u.password_
from Users6__ u
where u.email = @email

if(@pass = @password)
begin
set @flag = 1
end
if(@flag = 0)
begin
print 'invalid credentials'
end

end

declare @out int;
exec LoginUser
@email='hania.imtisal234@gmail.com',
@password='hania',
@flag = @out output
select @out as 'return_value'
 drop procedure LoginUser

select* from Users6__

--------------Transaction-------------
CREATE  procedure do_transaction
@acc_no_sender int ,
@acc_no int ,
@amount int ,
@balance int,
@date varchar(30)
AS begin
insert  into Transactions values(@acc_no_sender , @acc_no, @amount ,@balance, @date)
end

---------------Admin service approval(10)----------
CREATE PROCEDURE serviceApproval
@requestid int,
@requesttype nvarchar(15),
@status int output
AS BEGIN
declare @reqid int
 SET @status = 1;
 select @reqid = s.requestID
 from Services_requests s
 where s.service_type = @requesttype
 if(@reqid = @requestid)
 begin
 set @status = 1
 end
 if(@status = 0)
begin
print 'service not approved'
end

 end


declare @Approval int
execute serviceApproval 1 ,'debit card', @Approval output
select @Approval as aproval

DROP PROCEDURE serviceApproval
------------View Income Statement(11)-----------

CREATE PROCEDURE viewIncomeStatement
@acc_no int
AS 
BEGIN
 if exists(select Account_number from IncomeStatement i where Account_number=@acc_no)
 Begin
 select revenue,expenses, net_income , sources from IncomeStatement where Account_number= @acc_no;
 end
 else
 begin 
 print ' user have no income statement'
 end

end

execute viewIncomeStatement 2
drop procedure viewIncomeStatement


---------------Book an Appointment(12)--------------

CREATE  VIEW upcomingappointmentss_
AS
    SELECT 
        ap.appId AS appId,
        a.email AS email,
        u.username AS name_,
        ap.date_ AS date_,
        ap.stime AS sTime,
        ap.eTime AS eTime,
        asd.day_ AS day_,
        asd.sTime AS AdminSTime,
        asd.eTime AS AdmineTime
		
    FROM
        (((Appointment_ ap
        JOIN Admin__ a ON ((ap.email_ = a.email)))
        JOIN Users6__ u ON ((a.email = u.email)))
        JOIN appSchedule asd ON ((a.email = asd._email)))
    
select* from upcomingappointmentss_



   