
----Position----
INSERT INTO Position (id,position_name,salary_per_hour)
VALUES (1,'Manager',9);

INSERT INTO Position (id,position_name,salary_per_hour)
VALUES (2,'Cashier',6);

INSERT INTO Position (id,position_name,salary_per_hour)
VALUES (3,'Hygienist',5);

INSERT INTO Position (id,position_name,salary_per_hour)
VALUES (4,'Accountant',9);

INSERT INTO Position (id,position_name,salary_per_hour)
VALUES (5,'HR',7.5);

----Staff----
INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (1,'Stanislav Dimov','0889047433','M','20','2018-07-07',2);

INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (2,'Georgi Kovachev','0889047436','M','21','2019-01-14',2);

INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (3,'Georgi Katsarski','0889327433','M','20','2019-10-28',2);

INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (4,'Petar Petrov','0889047444','M','40','2015-02-15',1);

INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (5,'Mincho Minchev','0889047343','M','60','2018-12-03',3);

INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (6,'Cristiano Ronaldo','0889047458','M','35','2020-03-14',4);

INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (7,'Georgi Iliev','0889247433','M','29','2017-05-12',5);

INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (8,'Vasil Iliev','0889947433','M','30','2017-11-10',3);

INSERT INTO Staff (id,name,phone_number,gender,age,signed_on,position_id)
VALUES (9,'Ginka Varbakova','0880147433','F','40','2016-04-05',4);

----Address----
INSERT INTO Address (staff_id_address,city,street,house_number)
VALUES (1,'Varna','Ul. Tsar Boris',12);

INSERT INTO Address (staff_id_address,city,street,house_number)
VALUES (2,'Varna','Ul. Perperikon',8);

INSERT INTO Address (staff_id_address,city,street,house_number)
VALUES (3,'Varna','Bul. Tsar Osvoboditel',154);

INSERT INTO Address (staff_id_address,city,street,house_number)
VALUES (4,'Varna','Bul. Slivnica',14);

INSERT INTO Address (staff_id_address,city,street,house_number)
VALUES (5,'Varna','Bul. Tsar Osvoboditel',54);

INSERT INTO Address (staff_id_address,city,street,house_number)
VALUES (6,'Varna','Bul. 3ti mart',40);

INSERT INTO Address (staff_id_address,city,street,house_number)
VALUES (7,'Varna','Bul. Tsar Osvoboditel',100);

INSERT INTO Address (staff_id_address,city,street,house_number)
VALUES (8,'Varna','Ul. Prespa',1);

----Shift----
INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (1,1,'08:00:00','16:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (2,1,'16:00:00','22:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (3,2,'08:00:00','16:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (1,2,'16:00:00','22:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (5,5,'08:00:00','12:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (5,10,'08:00:00','12:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (4,4,'10:00:00','18:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (4,5,'10:00:00','16:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (6,8,'08:00:00','16:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (7,8,'08:00:00','16:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (8,10,'08:00:00','16:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)
VALUES (9,11,'08:00:00','16:00:00');

INSERT INTO Shift (staff_id,day_of_month,start_work,end_work)

VALUES (1,1,'08:00:00','16:00:00');

  ----Type----
INSERT INTO Type (id, name)
VALUES
(1, 'Bakery products'),
(2, 'Sweets'),
(3, 'Fruits'),
(4, 'Vegetables'),
(5, 'Soft drinks'),
(6, 'Alcohol'),
(7, 'Basic food'),
(8, 'Milk products'),
(9, 'Other');

----Supplier----
 INSERT INTO Supplier(id, name)
 VALUES
 (10, 'Vita'),
 (11, 'Dobruja'),
 (12, 'Makao'),
 (13, 'Aro'),
 (14, 'Svoge'),
 (15, 'Nestle'),
 (16, 'Naya'),
 (17, 'Pepsi'),
 (18, 'Coca Cola'),
 (19, 'Devin'),
 (20, 'Savoy'),
 (21, 'Krina'),
 (22, 'Sofia Mel'),
 (23, 'Kristal'),
 (24, 'Elena'),
 (25, 'Alfatar'),
 (26, 'Vedrare'),
 (27, 'Oranjeria');

----Product----
INSERT INTO Product (id, barcode, name, price_per_kg, price_per_unit, amount_left,  type_id, supplier_id)
 VALUES
 (1000, 81932, 'Vita Bread', 4, 2, 30, 1, 10),
 (1001, 81930, 'Dobruja Bread', 2, 1.50, 15, 1, 11),
 (1002, 81929, 'Makao Bread', 1.50, 1.10, 3, 1, 12),
 (1003, 81915, 'Croissant with butter Makao', 3, 1.50, 18, 1, 12),
 (1004, 81923, 'Arabic bread', 4, 1.50, 30, 1, 13), 
 (1005, 82930, 'Svoge Chocolate', 2, 1.50, 20, 2, 14),
 (1006, 82932, 'Bounty dessert', 29, 1.15, 26, 2, 15),
 (1007, 82934, 'Twix dessert', 30, 1.15, 32, 2, 15),
 (1008, 82933, 'Waffles Naya', 10, 2.50, 30, 2, 16),
 (1009, 82936, 'Waffles Makao', 7, 1.50, 30, 2, 12),
 (1010, 83930, 'Pepsi', 2, 1, 30, 5, 17),
 (1011, 83932, 'Coca Cola', 2, 1, 30, 5, 18),
 (1012, 83934, 'Fanta Baobab', 2, 1, 30,5 , 18),
 (1013, 83936, 'Water', 1, 0.50, 30, 5,19 ),
 (1014, 83937, 'Soda', 1, 0.50, 30,5, 19),
 (1015, 81938, 'Vodka Savoy', 10, 10, 30,6, 20),
 (1016, 81939, 'Rum Savoy', 10, 10, 30, 6, 20),
 (1017, 81940, 'Whiskey Savoy', 10, 10, 30, 6, 20),
 (1018, 81941, 'Tequila Savoy', 10, 10, 30, 6 , 20),
 (1019, 81942, 'Gin Savoy', 10, 10, 30, 6, 20),
 (1020, 81943, 'Beans', 2, 2, 30, 7, 21),
 (1021, 81944, 'Lentils', 1.80, 1.80, 30, 7, 21),
 (1022, 81945, 'Rice', 1.50, 1.50, 30, 7, 21),
 (1023, 81946, 'Flour', 1, 1, 30, 7, 22),
 (1024, 81947, 'Salt', 0.90, 0.90, 30, 7, 23),
 (1025, 81948, 'Yoghurt', 2, 1.15, 30, 8, 24),
 (1026, 81949, 'Milk', 2, 2, 30, 8, 25),
 (1027, 81950, 'Cheese', 10, 5, 30, 8, 24),
 (1028, 81951, 'Yellow Cheese', 14, 7, 30, 8, 24),
 (1029, 81952, 'Curd', 2, 1.5, 30, 8, 26);
 INSERT INTO Product  (id, barcode, name, price_per_kg, amount_left, type_id, supplier_id) /* no price per unit, amount in kg*/
 VALUES
 (1030,81953, 'Apples', 1.20, 20, 3, 27),
 (1031,81954,'Pear', 3.50, 20, 3, 27),
 (1032,81955, 'Orange', 2, 20, 3, 27),
 (1033,81956, 'Banana', 2.60, 20, 3, 27),
 (1034,81957, 'Strawberry', 5, 20, 3, 27),
 (1035,81959, 'Tomato', 3.50, 20, 4, 27),
 (1036,81962, 'Cucumber', 2.90, 4, 4, 27),
 (1037,81960, 'Potato', 1.10, 30, 4, 27),
 (1038,81961, 'Carrot', 0.80, 15, 4, 27),
 (1039,81963, 'Cabbage', 2, 20, 3, 27);

 

 ----Supply---
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (10,1,'10:30:00');

 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (11,1,'11:00:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (12,1,'11:30:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (13,1,'12:00:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (14,2,'09:00:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (15,3,'09:30:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (16,3,'10:30:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (17,3,'10:30:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (18,4,'10:00:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (11,4,'11:00:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (19,5,'12:00:00');
 INSERT INTO Supply (supplier_id,day_of_week,time_of_delivery)
 VALUES (20,5,'12:00:00');

----Receipt----
INSERT INTO Receipt(id,staff_id)
VALUES (1,1);

INSERT INTO Receipt(id,staff_id)
VALUES (2,1);

INSERT INTO Receipt(id,staff_id)
VALUES (3,2);

INSERT INTO Receipt(id,staff_id)
VALUES (4,2);

INSERT INTO Receipt(id,staff_id)
VALUES (5,3);

INSERT INTO Receipt(id,staff_id)
VALUES (6,3);

----Receipt_products
INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (1,1001,3)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (1,1002,1)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (1,1004,2)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (2,1005,3)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (2,1007,3)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (2,1009,2)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (3,1011,5)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (4,1020,3)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (5,1015,1)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (5,1016,2)

INSERT INTO Receipt_products(receipt_id,product_id,buy_amount)
VALUES (6,1005,3)









