CREATE DATABASE IF NOT EXISTS alx_book_store;


#create a book table with its rows and columns

CREATE TABLE Books (
book_id  PRIMARY KEY,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE,
Foreign Key (author_id) REFERENCES (Authors)
);

CREATE Table Authors (
author_id PRIMARY KEY,
author_name VARCHAR(215)
);

CREATE TABLE Customers (
customer_id PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);

CREATE TABLE Orders (
order_id PRIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
);

CREATE Table Order_Details (
orderdetailid PRIMARY KEY,
order_id INT,
book_id INT,
quantity DOUBLE,
FOREIGN KEY (order_id) REFERENCES (Orders),
FOREIGN KEY (book_id) REFERENCES (Books)
); 