
drop table RealEstateOffice cascade;

drop table Employee cascade;
drop table EstateLocation cascade;
drop table PropertyOwner cascade;
drop table Property cascade;
drop table Customer cascade;
drop table Rent cascade;
drop table Buy cascade;
drop table payFor cascade;
drop table giveCommission cascade;
CREATE TABLE RealEstateOffice (
    estateID int not null,
    budget int,
    phoneNum varchar(255),
    numOfEmployee int,
    PRIMARY KEY (estateID) 
);

INSERT INTO RealEstateOffice
VALUES(1, 8000,   '05327250847', 1 );

INSERT INTO RealEstateOffice  
VALUES(2, 7000,   '05323416780', 1 );

INSERT INTO RealEstateOffice 
VALUES(3, 6000, '05409821092', 1 );

INSERT INTO RealEstateOffice  
VALUES(4, 9000, '05317913458', 1 );

INSERT INTO RealEstateOffice
VALUES(5,8000, '05451110088', 1 ); 

INSERT INTO RealEstateOffice 
VALUES(6, 10000, '05321232145', 1 ); 

INSERT INTO RealEstateOffice 
VALUES(7, 5000, '05416019982', 1 );  

INSERT INTO RealEstateOffice 
VALUES(8, 9000, '05409670122', 1 );

INSERT INTO RealEstateOffice 
VALUES(9, 7500, '05327250863', 1 );

INSERT INTO RealEstateOffice 
VALUES(10, 12000, '05055482134', 1 );

update RealEstateOffice
set budget = '9000'
where estateID = 1;

delete from realestateoffice 
where estateID = 1;
CREATE TABLE Employee (
    employeeID int,
    LastName varchar(255),
    FirstName varchar(255),
    phoneNum varchar(255),
    gender varchar(255),
    birthDate date,
    estateID int,
    PRIMARY KEY (employeeID),
    FOREIGN KEY (estateID) REFERENCES RealEstateOffice(estateID) on delete cascade
    
    
);

	
	insert into Employee 
	values (101, 'Çiçeq', 'Beybin', 
	'05334671289', 'female', '1980-07-20', 1);
	
	insert into Employee 
	values (102, 'Dökmen', 'Selin', 
	'05309198734', 'female', '1971-10-14', 2);
	
	insert into Employee 
	values (103, 'Þamlý', 'Umay', 
	'05346234982', 'male', '1987-10-08', 3);
	
	insert into Employee 
	values (104, 'Bulgurluoðlu', 'Tan', 
	'05395234984', 'male', '1989-11-03', 4);

	insert into Employee 
	values (105, 'Yýldýz', 'Uzay', 
	'05317230982', 'male', '1960-01-22', 5);

	insert into Employee 
	values (106, 'Bozdemir', 'Melisa', 
	'05336234987', 'female', '1965-08-24', 6);
	
	insert into Employee 
	values (107, 'Sezer', 'Aslý', 
	'05321239082', 'female', '1992-04-17', 7);	

	insert into Employee 
	values (108, 'Torun', 'Gökçe', 
	'05327134982', 'female', '1991-11-04', 8);	

	insert into Employee 
	values (109, 'Aktaþ', 'Mehmet', 
	'05300039982', 'male', '1976-06-19', 9);	

	insert into Employee 
	values (110, 'Afþar', 'Mert', 
	'05337234911', 'male', '1988-10-08', 10);

 update Employee
 set LastName = 'Çiçek'
 where employeeID = 101;

delete from Employee 
where employeeID = 104;
	


CREATE TABLE EstateLocation (
    estateID int,
    EstateLocation varchar(255),
    PRIMARY KEY (estateID),
    FOREIGN KEY (estateID) REFERENCES RealEstateOffice(estateID) on delete cascade 
   

);

Insert into EstateLocation
Values(1, 'Ankara/Baðlýca/Umut');

Insert into EstateLocation
Values(2, 'Ankara/Kecioren/utkuSokak');

Insert into EstateLocation
Values(3, 'Ankara/Cankaya/Maksen');

Insert into EstateLocation
Values(4, 'Ankara/Çankaya/OyaSokak');

Insert into EstateLocation
Values(5, 'Ankara/Cincin/SuriyeliMahallesi');

Insert into EstateLocation
Values(6, 'Ankara/Ettimesgut/Altay');

Insert into EstateLocation
Values(7, 'Ankara/Çankaya/YeniMahalle');

Insert into EstateLocation
Values(8, 'Ankara/Çankaya/IncekPrestij');

Insert into EstateLocation
Values(9, 'Istanbul/Bagcilar/Baglama');

Insert into EstateLocation
Values(10, 'Istanbul/Bogazici/KolePazarýMahallesi');

 update EstateLocation
 set EstateLocation = 'Ankara/Gölbaþý/GölbaþýPrestij'
 where estateID = 8
 
delete from EstateLocation 
where estateID = 3;

CREATE TABLE PropertyOwner (
    ownerID int,
    birthDate date,
    firstname varchar(255),
    lastname varchar(255),
    phoneNum varchar(255),
    gender varchar(255),
    PRIMARY KEY (ownerID)    
);


insert into PropertyOwner
values(11, '1999-11-04', 'Ege', 'Alptekin', '05387659812', 'female');

insert into PropertyOwner
values(12, '1998-12-04', 'Elif', 'Alptekin', '05324523498', 'female');

insert into PropertyOwner
values(13, '1999-01-17', 'Simay', 'Kanýcý', '05344159812', 'female');

insert into PropertyOwner
values(14, '1997-10-14', 'Aksoy', 'Can', '05338959811', 'male');

insert into PropertyOwner
values(15, '1998-02-04', 'Özcan', 'Kerem', '05387657645', 'male');

insert into PropertyOwner
values(16, '1999-03-12', 'Öztaþ', 'Ýpek', '05467432698', 'female');

insert into PropertyOwner
values(17, '1999-07-21', 'Yüzbaþý', 'Ömer', '05018973256', 'male');

insert into PropertyOwner
values(18, '1999-09-11', 'Yanýkömer', 'Duygu', '05326659812', 'female');

insert into PropertyOwner
values(19, '1999-06-21', 'Baðcý', 'Ali', '05547659812', 'male');

insert into PropertyOwner
values(20, '1995-05-05', 'Çakmak', 'Lara', '05432459871', 'female');

update PropertyOwner
set phoneNum = '05338959812'
where ownerID = 14;

 delete from EstateLocation 
where estateID = 1;

CREATE TABLE Property (
    ownerID int,
    employeeID int,
    type_of varchar(255),
    numberOfRooms int,
    propertyLocation varchar(255),
    PRIMARY KEY (ownerID,employeeID),
    FOREIGN KEY (ownerID) references PropertyOwner(ownerID) on delete cascade ,
    FOREIGN KEY (employeeID) references Employee(employeeID) on delete cascade
   
);



Insert Into Property
Values(11,101,'Flat',3,'Ankara/Cankaya/DilekKonutlari/A2/25');  

Insert Into Property 
Values(12,102,'Villa',2,'Istanbul/Bagcilar/UmutKonutlari/B5/27');

Insert Into Property 
Values(13,103,'Residence',5,'Ankara/Kecioren/DilekKonutlari/A2/22'); 

Insert Into Property 
Values(14,104,'Flat',2,'Ankara/Cincin/BilgikKonutlari/A1/25'); 

Insert Into Property 
Values(15,105, 'Farm House',3,'Ankara/Cankaya/Atabilge/C2/29');  

Insert Into Property 
Values(16,106,'Mansion',5,'Ankara/Cankaya/MahallKonutlarý/O2/5'); 

Insert Into Property 
Values(17,107,'Mansion',4,'Ankara/Cankaya/ZenginKonutlarý/A5/25'); 

Insert Into Property 
Values(18,108,'Summer House',3,'Ankara/Kecioren/ZilliKonutlarý/T5/22');

Insert Into Property
Values(19,109,'Villa',7,'Ankara/Cankaya/ZilliKonutlarý/A2/24');

Insert Into Property
Values(20,110,'Prefabricated House',3,'Ankara/Cankaya/DilekKonutlarý/B4/21');

update Property
set numberOfRooms = 8
where ownerID = 19;

delete from Property 
where ownerID = 11;


CREATE TABLE Customer (
    CustomerID int,
    firstname varchar(255),
    lastname varchar(255),
    birthDate date,
    gender varchar(255),
    price int,
    phoneNum varchar(255),
    numOfChildren int,
    PRIMARY KEY (customerID)  
);

insert into Customer 
values(1001, 'Irana', 'Vlistan', '1999-02-21', 'female', 100000000, '05328324567',3 );

insert into Customer 
values(1002, 'Dasha', 'Germani', '1995-04-19', 'female', 300000000, '05357458899',2 );

insert into Customer 
values(1003, 'Zeynep', 'Aslan', '1980-09-20', 'female', 800000000, '05417201134',4 );

insert into Customer 
values(1004, 'Yaðýz', 'Dinç', '1987-08-12', 'male', 600000000, '05557990012',1 );

insert into Customer 
values(1005, 'Oya', 'Arad', '1982-11-11', 'female', 900000000, '05409996786',0 );

insert into Customer 
values(1006, 'Cenk', 'Seza', '1981-06-14', 'male', 200000000, '05055321789',3 );

insert into Customer 
values(1007, 'Dila', 'Ersoy', '1994-06-10', 'female', 100000000, '05309871621',2 );

insert into Customer 
values(1008, 'Aysu', 'Karaca', '1996-02-21', 'female', 800000000, '05327831870',5 );

insert into Customer 
values(1009, 'Ayça', 'Yýlmaz', '1991-07-22', 'female', 400000000, '05316358133',2);

insert into Customer 
values(1010, 'Su', 'Iþýk', '1983-12-30', 'female', 500000000, '05459998855',0 );

update Customer
set lastname = 'Aras'
where CustomerID = 1005;

delete from Customer 
where CustomerID = 1001;


CREATE TABLE Rent (
    ownerID int not null,
    employeeID int not null,
    customerID int not null,
    rentDate date,
    rentalPeriod int,
    price int,
    PRIMARY KEY (ownerID,employeeID,customerID),
    FOREIGN KEY (employeeID) references Employee(employeeID) on delete cascade,
    FOREIGN KEY (ownerID) references PropertyOwner(ownerID) on delete cascade, 
 	FOREIGN KEY (customerID) references Customer(customerID) on delete cascade
    
);

Insert into Rent
Values(11, 101, 1001, '2021-03-12', 3, 2000);

Insert into Rent
Values(12, 102, 1002, '2020-12-18', 12, 4000);

Insert into Rent
Values(13, 103, 1003, '2021-04-12', 8, 3500);

Insert into Rent
Values(14, 104, 1004, '2020-05-13',7, 2500);

Insert into Rent
Values(15, 105, 1005, '2019-09-07', 9, 4500);

Insert into Rent
Values(16, 106, 1006, '2020-06-12', 12, 2500);

Insert into Rent
Values(17, 107, 1007, '2021-02-19', 3, 3000);

Insert into Rent
Values(18, 108, 1008, '2020-11-12', 6, 2000);

Insert into Rent
Values(19, 109, 1009, '2021-01-11', 14, 3000);

Insert into Rent
Values(20, 110, 1010, '2021-01-08', 12, 2000);


update Rent
set rentalPeriod = 4
where customerID = 1003;

delete from Rent 
where CustomerID = 1006;

CREATE TABLE Buy (
    ownerID int,
    employeeID int,
    customerID int,
    buyDate date,
    price int,
    PRIMARY KEY (ownerID,employeeID,customerID),
    FOREIGN KEY (ownerID)references PropertyOwner (ownerID) ON DELETE CASCADE,
    FOREIGN KEY (ownerID) references PropertyOwner(ownerID) ON DELETE CASCADE,
    FOREIGN KEY (customerID) references customer (customerID) ON DELETE CASCADE 
);

insert into Buy  
values (11, 101,1001,'2021-03-20',200000); 

insert into Buy 
values (12,102,1002,'2020-08-08',600500); 

insert into Buy 
values (13,103,1003,'2020-08-08',600500); 

insert into Buy  
values (14, 104,1003,'2009-11-24',400800);  

insert into Buy 
values (15, 105,1004,'2001-10-19',700000);

insert into Buy  
values (16, 106,1005,'2010-05-11',200000); 

insert into Buy  
values (17, 107,1006,'2000-12-10',300750); 

insert into Buy  
values (18, 108,1007,'2007-02-12',930000);

insert into Buy
values (19, 109,1008,'2020-07-18',100900);  

insert into Buy  
values (20, 110,1009,'2021-06-20',660000);

update Buy
set buyDate = '2013-11-12'
where employeeID = 101;

delete from Buy 
where ownerID = 12;

CREATE TABLE payFor (
    ownerID int,
    customerID int,
    price int,
	paymentType varchar(255),
    PRIMARY KEY (ownerID,customerID),
    FOREIGN KEY (ownerID) references PropertyOwner(ownerID) ON DELETE CASCADE,
    FOREIGN KEY (customerID) references customer(customerID) ON DELETE CASCADE

);

insert into payFor 
values (11, 1001, 200000, 'buy');

insert into payFor 
values (12, 1002, 600500, 'buy');

insert into payFor 
values (13, 1003, 3500, 'rent');

insert into payFor 
values (14, 1004, 700000, 'buy');

insert into payFor 
values (15, 1005, 4500, 'rent');

insert into payFor 
values (16, 1006, 2500, 'rent');

insert into payFor 
values (17, 1007, 930000, 'buy');

insert into payFor 
values (18, 1008, 2000, 'rent');

insert into payFor 
values (19,1009, 3000, 'rent');

insert into payFor 
values (20, 1010, 900000, 'buy');

UPDATE payFor
SET price = 900000
Where ownerID = 11;

delete from payFor 
where ownerID = 13;

CREATE TABLE giveCommission (
    ownerID int,
    estateID int,
    price int,
	paymentType varchar(255),
    PRIMARY KEY (ownerID,estateID),
    FOREIGN KEY (ownerID) references PropertyOwner (ownerID) ON DELETE CASCADE,
    FOREIGN KEY (estateID) references RealEstateOffice(estateID) ON DELETE CASCADE

);

INSERT INTO giveCommission
VALUES(11, 1, 1000, 'rent');

INSERT INTO giveCommission
VALUES(12, 2, 1000, 'buy');

INSERT INTO giveCommission
VALUES(13, 3, 1000, 'rent');

INSERT INTO giveCommission
VALUES(14, 4, 1000, 'rent');

INSERT INTO giveCommission
VALUES(15, 5, 1000, 'buy');

INSERT INTO giveCommission
VALUES(16, 6, 1000, 'buy');

INSERT INTO giveCommission
VALUES(17, 7, 1000, 'buy');

INSERT INTO giveCommission
VALUES(18, 8, 1000, 'rent');

INSERT INTO giveCommission
VALUES(19, 9, 1000, 'rent');

INSERT INTO giveCommission
VALUES(20, 10, 1000, 'rent');

UPDATE giveCommission
SET paymentType = 'rent'
Where ownerID = 12;

delete from giveCommission 
where ownerID = 19;

CREATE VIEW Property_INFO as 
SELECT  ownerID ,employeeID,type_of, numberOfRooms, propertyLocation
FROM Property;

UPDATE Property_INFO
SET numberOfRooms = 4
Where ownerID = 12;

delete from Property_INFO 
where ownerID = 19;

ALTER TABLE Customer
ADD Email varchar(255);