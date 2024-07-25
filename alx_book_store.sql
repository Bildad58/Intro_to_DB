CREATE DATABASE IF NOT EXISTS alx_book_store;


#create a book table with its rows and columns

CREATE TABLE Books (
book_id INT AUTO_INCREMENT Primary Key,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE,
Foreign Key (author_id) REFERENCES (Authors)
);

CREATE Table Authors (
author_id (Primary Key),
author_name VARCHAR(215)
);

CREATE TABLE Customers (
customer_id Primary Key,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);

CREATE TABLE Orders (
order_id INT Primary Key,
customer_id INT,
order_date DATE,
Foreign Key (customer_id) REFERENCES (Customers)
);

CREATE Table Order_Details (
orderdetailid Primary Key,
order_id INT,
book_id INT,
quantity DOUBLE,
Foreign Key (order_id) REFERENCES (Orders),
Foreign Key (book_id) REFERENCES (Books)
); 