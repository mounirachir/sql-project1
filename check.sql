CREATE TABLE customer (
    customer_id VARCHAR2(20) PRIMARY KEY,
    customer_name VARCHAR2(20) NOT NULL,
    customer_tel INT
);

CREATE TABLE product (
    product_id VARCHAR2(20) PRIMARY KEY,
    product_name VARCHAR2(20) NOT NULL,
    price INT CHECK (price > 0)
);

CREATE TABLE orders (
    customer_id VARCHAR2(20),
    product_id VARCHAR2(20),
    quantity INT,
    total_amount INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    PRIMARY KEY (customer_id, product_id)
);

ALTER TABLE product
ADD COLUMN category VARCHAR2(20);

ALTER TABLE orders
ADD COLUMN order_date DATE DEFAULT SYSDATE;
