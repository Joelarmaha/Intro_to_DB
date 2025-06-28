create database alx_book_store;
use alx_book_store;

create table books(
	book_id INT primary key not null,
	title VARCHAR(130),
	author_id int,
    foreign key(author_id) references Authors(author_id),
	price DOUBLE,
	publication_date DATE); 

create table Authors(
	author_id int primary key,
    author_name VARCHAR(215)
    );    
create table Customers(
	customer_id int primary key,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
    );
    
create table Orders(
	order_id int Primary Key,
    customer_id int,
    foreign key(customer_id) references Customers(customer_id));
    
create table Order_Details(
	orderdetailid int primary key,
    order_id int,
    foreign key(order_id) references Orders(order_id),
    book_id int,
    foreign key(book_id) references books(book_id),
    quantity DOUBLE);
    

