insert into outlet values
('London_Main', 'Picadilly Street', 'London'), ('London_Branch', 'Harry Street', 'London'),
('Egham_Branch', 'Kings Street', 'Egham'), ('Manchester_Branch', 'Queens Street', 'Manchester'),
('York_Branch', 'Castle Street', 'York'), ('Brighton_Branch', 'Fish and Chips Street', 'Brighton');

insert into customer values
(001, 'John', 'Ealing Main Street', 'London'), (002, 'Max', 'Egham Main Street', 'Egham'),
(003, 'Susan', 'Queens Road Street', 'Egham'), (004, 'Hunter', 'Green Street', 'Brighton'),
(005, 'Brooke', 'Queensway Street', 'London'), (006, 'Amy', 'Paddington Street', 'London'),
(007, 'Jisung', 'Manchester United Street', 'Manchester'), (008, 'Ariana', 'Soft Street', 'London');

insert into product values
('PR001', 'Chicken Breast', 'Food', 5.20), ('PR002', 'Banana', 'Fruit', 1.10),
('PR003', 'Bounty', 'Chocolate', 0.80), ('PR004', 'Volvic', 'Bottled Water', 0.50),
('PR005', 'Evian', 'Bottled Water', 1.50), ('PR006', 'Rose Wine', 'Bottled Wine', 5.35),
('PR007', 'Chopping Board', 'Kitchen Utensils', 7.10),
('PR008', 'Spoon', 'Spoon - Kitchen Utensils', 1.20),
('PR009', 'Hair Dryer', 'Hair Dryer for Women', 9.99),
('PR010', 'Kettle', 'Small Kettle', 8.99), ('PR011', 'Rose', 'Red, White, Pink Rose', 2.10),
('PR012', 'Sunflower', 'Flowers', 1.50);

insert into category values
('CA001', 'Food'), ('CA002', 'Beverages'), ('CA003', 'Kitchen Utensils'),
('CA004', 'Electronics'), ('CA005', 'Flowers');

insert into product_category values
('PR001', 'CA001'), ('PR002', 'CA001'), ('PR003','CA001'), ('PR004','CA002'),
('PR005', 'CA002'), ('PR006', 'CA002'), ('PR007','CA003'), ('PR008','CA003'),
('PR009', 'CA004'), ('PR010', 'CA004'), ('PR011','CA005'), ('PR012','CA005');

insert into purchase values
('PAID1', '2021-01-01 07:33:12', 'London_Main', 005),
('PAID2', '2021-02-21 17:23:52', 'Manchester_Branch', 007),
('PAID3', '2021-01-14 11:32:19', 'London_Branch', 001),
('PAID4', '2021-01-02 02:11:11', 'Egham_Branch', 002),
('PAID5', '2021-02-06 13:01:02', 'London_Main', 008),
('PAID6', '2021-03-03 20:38:52', 'London_Main', 006),
('PAID7', '2021-01-01 09:00:01', 'Egham_Branch', 003),
('PAID8', '2021-01-15 08:41:02', 'Brighton_Branch', 004),
('PAID9', '2021-03-14 19:38:13', 'London_Main', 008);

insert into purchaseitem values
('PAID1', 'PR003', 5, 0.80), ('PAID1', 'PR012', 10, 1.50), ('PAID1', 'PR001', 2, 5.20),
('PAID2', 'PR010', 1, 8.99), ('PAID2', 'PR008', 5, 1.20), ('PAID3', 'PR005', 20, 1.50),
('PAID4', 'PR001', 5, 5.20), ('PAID4', 'PR002', 3, 1.10), ('PAID4', 'PR004', 3, 0.50),
('PAID4', 'PR009', 1, 9.99), ('PAID5', 'PR006', 10, 5.35), ('PAID5', 'PR007', 10, 7.10),
('PAID6', 'PR006', 20, 5.35), ('PAID7', 'PR011', 100, 2.10), ('PAID8', 'PR001', 2, 5.20),
('PAID8', 'PR002', 5, 1.10), ('PAID8', 'PR003', 5, 0.80), ('PAID8', 'PR008', 5, 1.20),
('PAID9', 'PR010', 15, 8.99), ('PAID9', 'PR003', 50, 0.80);

insert into stock values
('London_Main', 'PR001', 100), ('London_Main', 'PR003', 200), ('London_Main', 'PR012', 50),
('London_Main', 'PR006', 20), ('London_Main', 'PR007', 10),
('Manchester_Branch', 'PR008', 150), ('Manchester_Branch', 'PR010', 30),
('London_Branch', 'PR005', 100), ('Egham_Branch', 'PR009', 10), ('Egham_Branch', 'PR011', 300),
('Egham_Branch', 'PR001', 500), ('Egham_Branch', 'PR002', 60), ('Egham_Branch', 'PR004', 100),
('Brighton_Branch', 'PR003',10), ('Brighton_Branch', 'PR008', 20);

