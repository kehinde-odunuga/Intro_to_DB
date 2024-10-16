-- Create database
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use database
USE alx_book_store;

-- Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY, 
    title VARCHAR(130), author_id INT, 
    FOREIGN KEY (author_id) REFERENCES authors(id), 
    price DOUBLE, 
    publication_date DATE
);

-- Create Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY, 
    author_name VARCHAR(215)
);

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY, 
    customer_name VARCHAR(215), 
    email VARCHAR(215), 
    address TEXT
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY, 
    customer_id INT, 
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id), 
    order_date DATE
);

-- Create Order_Details table
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY, 
    order_id INT, 
    FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
    book_id INT, 
    FOREIGN KEY (book_id) REFERENCES Books(book_id), 
    quantity DOUBLE
);
