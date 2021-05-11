create table outlet
(outlet_name varchar(30),
address_street varchar(30),
address_city varchar(15),
primary key (outlet_name));

create table customer
(customer_nr int,
customer_name varchar(10),
address_street varchar(30),
address_city varchar(15),
primary key (customer_nr));

create table product
(product_id char(5),
product_name varchar(20),
description varchar(30),
standard_price numeric(3,2),
primary key (product_id));

create table category
(category_id char(5),
description varchar(30),
primary key (category_id));

create table product_category
(product_id char(5),
category_id char(5),
primary key (product_id, category_id),
foreign key (product_id) references product,
foreign key (category_id) references category);

create table purchase
(purchase_id char(5),
date_time timestamp,
outlet_name varchar(30),
customer_nr int,
primary key (purchase_id),
foreign key (outlet_name) references outlet,
foreign key (customer_nr) references customer);

create table purchaseitem
(purchase_id char(5),
product_id char(5),
copies int,
price_per_copy numeric(3,2),
primary key (purchase_id, product_id),
foreign key (purchase_id) references purchase,
foreign key (product_id) references product);

create table stock
(outlet_name varchar(30),
product_id char(5),
copies int,
primary key (outlet_name, product_id),
foreign key (outlet_name) references outlet,
foreign key (product_id) references product);

