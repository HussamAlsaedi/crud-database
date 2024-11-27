create database store;

use store;

create table countries(
    code int primary key ,
    name varchar(20) unique ,
    constraint_name varchar(20) not null

);

create table users (
    id int(10) not null primary key ,
    full_name varchar(20) ,
    email varchar(20) unique ,
    gander char(1) check ( gander between 'm' and  'f') ,
    data_of_birth varchar(15)  ,
    created_at datetime default (current_timestamp),
    country_code int,

    foreign key (country_code) references  countries (code)
);



create table orders (
    id int primary key ,
    user_ID int ,
    status varchar(6) check ( status = 'start' or 'finish' ) ,
    created_at datetime default (current_timestamp),
    foreign key (user_ID) references  users (id)
);


create table products (
    id int primary key ,
    name varchar(10) not null ,
    price int  default  0,
    status varchar(10) check ( status = 'valid' or 'expired' ),
    created_at datetime default (current_timestamp)
);

create table order_products (
   order_id int  primary key ,
    product_id int,
    quantity int default 0,

    foreign key (order_id) references orders (id),
    foreign key (product_id) references products(id)
)



