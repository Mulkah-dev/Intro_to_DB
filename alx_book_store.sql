CREATE DATABASE alx_book_store;
USE alx_book_store;

CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215),
)
CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130),
    author_id, 
    foreign key(author_id) REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
)



CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT 
)

CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    foreign key(customer_id) REFERENCES Customers(customer_id),
    order_date DATE
)

CREATE TABLE Order_Details(
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    foreign key(order_id) REFERENCES Orders(order_id),
    foreign key(book_id) REFERENCES Books(book_id),
    quantity DOUBLE 
)