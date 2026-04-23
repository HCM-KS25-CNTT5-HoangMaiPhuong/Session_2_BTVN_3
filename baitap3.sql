CREATE TABLE CUSTOMERS (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE ORDERS (
    order_id INT PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    total_amount DECIMAL(10,2) NOT NULL,
    customer_id INT,
    
    CONSTRAINT fk_customer
    FOREIGN KEY (customer_id)
    REFERENCES CUSTOMERS(customer_id)
);
