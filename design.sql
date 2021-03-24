CREATE DATABASE store_management COLLATE 'utf8mb4_unicode_ci';

CREATE TABLE governorate  (
	ID integer unsigned AUTO_INCREMENT not null,
    name varchar(50) not null,
    PRIMARY KEY (ID)
);

CREATE TABLE store (
	ID integer unsigned AUTO_INCREMENT not null,
	gov_id integer unsigned not null,
    name varchar(50) not null,
    address text not null,
    PRIMARY KEY (ID),
    FOREIGN KEY (gov_id) REFERENCES governorate(ID)
);

CREATE TABLE supplier  (
	ID integer unsigned AUTO_INCREMENT not null,
    name varchar(50) not null,
    phone varchar(50) not null,
    email varchar(250) not null,
    prief_date datetime not null DEFAULT NOW(),
    PRIMARY KEY (ID)
);

CREATE TABLE product  (
	product_code integer unsigned AUTO_INCREMENT not null,
    name varchar(50) not null,
    descreption text ,
    price integer unsigned not null,
    sup_id integer unsigned not null,
    PRIMARY KEY (product_code),
    FOREIGN KEY (sup_id) REFERENCES supplier(ID)
);

CREATE TABLE product_store  (
	product_code integer unsigned not null,
    store_id integer unsigned not null,
    FOREIGN KEY (product_code) REFERENCES product(product_code ),
    FOREIGN KEY (store_id) REFERENCES store(ID ),
    PRIMARY KEY (product_code,store_id)
);