
CREATE DATABASE store;


USE store;


CREATE TABLE countries (
    code INT PRIMARY KEY,
    name VARCHAR(20) UNIQUE NOT NULL
);


CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY,
    full_name VARCHAR(20) NOT NULL,
    email VARCHAR(20) UNIQUE NOT NULL,
    gender CHAR(1) CHECK (gender IN ('m', 'f')),
    date_of_birth DATE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    country_code INT,
    FOREIGN KEY (country_code) REFERENCES countries(code)
);


CREATE TABLE orders (
    id INT PRIMARY KEY,
    user_id INT NOT NULL,
    status VARCHAR(6) CHECK (status IN ('start', 'finish')),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    price INT DEFAULT 0 CHECK (price >= 0),
    status VARCHAR(10) CHECK (status IN ('valid', 'expired')),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE order_products (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT DEFAULT 0 CHECK (quantity >= 0),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    PRIMARY KEY (order_id, product_id)
);
