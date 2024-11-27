USE store;


INSERT INTO countries (code, name)
VALUES
(1, 'KAS'),
(2, 'UAE'),
(3, 'Sudan');


INSERT INTO users (id, full_name, email, gender, date_of_birth, country_code)
VALUES
(1, 'Hussam Alsaedi', 'h@h.com', 'm', '1990-02-04', 1),
(2, 'ahmed Alhrbi', 'a.a@a.com', 'm', '1987-04-09', 2),
(3, 'noura', 'sn@s.com', 'f', '1787-08-20', 3);


INSERT INTO products (id, name, price, status)
VALUES
(1, 'Laptop', 1000, 'valid'),
(2, 'Phone', 4000, 'expired'),
(3, 'Tablet', 300, 'expired');


INSERT INTO orders (id, user_id, status)
VALUES
(1, 1, 'finish'),
(2, 2, 'start'),
(3, 3, 'start');


INSERT INTO order_products (order_id, product_id, quantity)
VALUES
(1, 1, 15),
(1, 2, 20),
(2, 3, 54),
(3, 1, 14),
(3, 2, 23);

UPDATE countries SET name = 'Qatar' WHERE code = 3;

DELETE FROM products WHERE id = 1