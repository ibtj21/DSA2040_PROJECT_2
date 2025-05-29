-- Insert Customers
INSERT INTO dbo.customers (name, email, registered_date)
VALUES
('Alice Wanjiku', 'alice.wanjiku@example.com', '2025-01-10'),
('Brian Otieno', 'brian.otieno@example.com', '2025-01-15'),
('Cynthia Wangari', 'cynthia.wangari@example.com', '2025-01-20'),
('David Kamau', 'david.kamau@example.com', '2025-02-01'),
('Emma Njeri', 'emma.njeri@example.com', '2025-02-05'),
('Felix Mwangi', 'felix.mwangi@example.com', '2025-02-10'),
('Grace Chebet', 'grace.chebet@example.com', '2025-02-15'),
('Henry Kipkoech', 'henry.kipkoech@example.com', '2025-02-20'),
('Irene Moraa', 'irene.moraa@example.com', '2025-02-25'),
('John Ouma', 'john.ouma@example.com', '2025-03-01'),
('Kathy Nduta', 'kathy.nduta@example.com', '2025-03-05'),
('Liam Kimani', 'liam.kimani@example.com', '2025-03-10'),
('Mercy Achieng', 'mercy.achieng@example.com', '2025-03-15'),
('Nathan Gikonyo', 'nathan.gikonyo@example.com', '2025-03-20'),
('Olivia Kendi', 'olivia.kendi@example.com', '2025-03-25');

-- Insert Products
INSERT INTO dbo.products (name, category, price)
VALUES
('Bluetooth Speaker', 'Electronics', 49.99),
('Running Shoes', 'Apparel', 79.50),
('Backpack', 'Accessories', 39.99),
('Smartphone', 'Electronics', 699.00),
('Sunglasses', 'Accessories', 25.00);

-- Insert Stores
INSERT INTO dbo.stores (name, region)
VALUES
('City Centre', 'Nairobi'),
('Thika Road Mall', 'Kiambu'),
('Nyali Complex', 'Mombasa');

-- Insert Transactions
INSERT INTO dbo.transactions (customer_id, product_id, store_id, quantity, transaction_date)
VALUES
(1, 1, 1, 2, '2025-03-01'),
(2, 2, 2, 1, '2025-03-05'),
(3, 3, 3, 3, '2025-03-10'),
(4, 4, 1, 1, '2025-03-15'),
(5, 5, 2, 2, '2025-03-20'),
(6, 1, 3, 1, '2025-04-01'),
(7, 2, 1, 2, '2025-04-05'),
(8, 3, 2, 1, '2025-04-10'),
(9, 4, 3, 3, '2025-04-15'),
(10, 5, 1, 1, '2025-04-20'),
(11, 1, 2, 2, '2025-05-01'),
(12, 2, 3, 1, '2025-05-05'),
(13, 3, 1, 1, '2025-05-10'),
(14, 4, 2, 2, '2025-05-15'),
(15, 5, 3, 3, '2025-05-20');
