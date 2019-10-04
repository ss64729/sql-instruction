drop database if exists prs;
create database prs;
use prs;

create table user (
	userid 			int 			not null primary key auto_increment,
	username		varchar(20) 	not null unique,
	password		varchar(10) 	not null,
	firstname 		varchar(20)  	not null,
	lastname 		varchar(50)		not null,
    phonenumber		varchar(12) 	not null,
	email			varchar(75) 	not null,
	isreviewer 		tinyint(1)	  	not null default 0,
	isadmin 		tinyint(1)		not null default 0  
   	);
 
  insert into user (username, password,firstname, lastname, phonenumber, email)
          values
  ('ss64729','max123','Sarah','Sizemore','513-444-2323','sarah.sizemore@test.com'),
  ('ss99999','max123','Susan','Smith','513-444-2325','susan.smith@test.com');      
 
  
  
  
create table request (
	requestid 				int 			not null primary key auto_increment,
    userid 					int 			not null,
	description 			varchar(100) 	not null,
	justification			varchar(255) 	not null,
    dateneeded    			date			not null ,
	deliverymode			varchar(25) 	not null,
    status					varchar(20)		not null,
    total					decimal(10,2)   not null,
	submitteddate     		datetime		not null ,
    reasonforrejection 		varchar(100) 
    
	);
    
    ALTER TABLE request
ADD FOREIGN KEY (userid) REFERENCES user(userid);



   



create table vendor (
	vendorid 	int 			not null primary key auto_increment,
	code 		varchar(10) 	not null unique,
	name		varchar(255) 	not null,
    address		varchar(255) 	not null,
    city		varchar(255) 	not null,
    state		varchar(2) 		not null, 
    zip 		varchar(5) 		not null,
    phonenumber	varchar(12) 	not null,
	email		varchar(75) 	not null
	
	);
Insert into vendor (code, name, address, city, state, zip, phonenumber, email) VALUES
    ('stpl','Staples','123 Main St','Mason','OH','45040','513-555-1234','customer@staples.com');
    
    
    create table product (
	productid 		int 			not null primary key auto_increment,
	vendorid 		int 			not null,
	partnumber		varchar(50) 	not null,
	name 			varchar(150)  	not null,
	price			decimal(10,2)   not null,
    unit			varchar(255),
	photopath		varchar(255),		
	 constraint vendor_part unique (vendorid, partnumber)   
	);
ALTER TABLE product
ADD FOREIGN KEY (vendorid) REFERENCES vendor(vendorid);



Insert into product (vendorid, partnumber, name, price, unit)
values
('1','A123','conpany logo pencils','49.99','gross'),
('1','A122','company logo pencils','5.99','24pk');


    
    
create table lineitem (
	lineitemid 		int 	not null primary key auto_increment,
	requestid		int 	not null,
	productid 		int		not null,
	quantity		int 	not null,
    constraint req_pdt unique (requestid, productid)
	);
ALTER TABLE lineitem
ADD FOREIGN KEY (requestid) REFERENCES request(requestid),
add foreign key (productid) references product(productid);



drop user  if exists psr_user@localhost ;
CREATE USER psr_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON psr.* TO psr_user@localhost;



