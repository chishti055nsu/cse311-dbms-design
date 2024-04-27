create database agricompany ;
use agricompany ;




drop table seeds;
create table seeds(id int primary key  NOT NULL , name_veg varchar (50 ) NOT NULL, age_seed int );




drop table farmer ;
create table farmer (id_farmer varchar(30)  NOT NULL , seed_id int primary key  NOT NULL , quantity decimal(5,2) NOT NULL ,date_of_purchase  date NOT NULL, buying_ct decimal (10,2) NOT NULL,
 foreign key (seed_id) references seeds(id)
);




drop table crop_data ;
create table crop_data  ( name varchar (10)   not null ,  buyer_id varchar (30) primary key  not null, seller_id varchar(30) not null , harvest_date date not null,
 plantation_date date not null , bought_quantity decimal (10,2) not null
);




drop table distributors ;
create table distributors(distributor_id int not null  , receiver_id varchar(30) not null ,name_crop varchar (10) not null ,s_id int primary key  not null , crop_quantity decimal (12,3) not null ,
 seed_quantity decimal(12,3) not null , deliver_date_crop date not null ,deliver_date_seeds date not null , p_crops decimal (20,0) not null, p_seeds decimal (20,0) not null,
 foreign key (s_id) references seeds(id)
 );




drop table employee;
create  table employee  (id_employ int not null  , name varchar (20) not null ,buyer varchar(30),s2_id int primary key , cash_received decimal (20, 0 ) not null
    
  ) ; 




drop table delivery_service ;
create table delivery_service ( farmer_id varchar (30 ) primary key not null , deliver_seeds_quantity_to_farmer decimal (10 , 2 ) not null , deleivery_date datetime not null ,
 division varchar (50), disctrict varchar (20) not null  , upaziila varchar (50 ) not null , thana varchar ( 50 ) not null, village_name varchar (30) not null,
   foreign key (farmer_id) references crop_data(buyer_id)
 );




drop table advertising_agency;
create table advertising_agency ( company_name varchar (20 ) , product_name varchar (20) , cost_adv decimal (20 , 0 ));

 




