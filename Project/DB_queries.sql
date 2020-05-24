----Прости Заявки----

--Извежда имената на служители, които са сключили договор след определена дата(2019.10.10)--
SELECT name
FROM Staff
WHERE signed_on < '2019.10.10'

--Извежда имената на служители, които са под определена възраст(25)--
SELECT name
FROM staff
WHERE age < 25

--Извежда позициите, чиито заплата са над определен брой левове(6) на час--
SELECT position_name
FROM Position
WHERE salary_per_hour > 6

--Извежда имената на всички продукти, чиято цена е под дадена сума(1) за бройка--
SELECT name
FROM Product
WHERE price_per_unit < 1

--Извежда имената на продукти, чиято цена е намалена--
SELECT name
FROM Product
WHERE discount_in_percentage IS NOT NULL



----Заявки върху две и повече релации----

--Извежда имената на всички продукти,чиято нормална цена е под дадена сума(2лв) и също са намалени--
(SELECT name
FROM Product
WHERE discount_in_percentage IS NOT NULL)
INTERSECT
(SELECT name
FROM Product
WHERE price_per_unit<2)

--Извежда имената на всички служители, които са сключили договор след определена дата и са под определена възраст--
(SELECT name
FROM Staff
WHERE signed_on < '2019.10.10')
INTERSECT
(SELECT name
FROM staff
WHERE age < 25)

--Извежда имената на всички служители в даден възрастов диапазон--
(SELECT name,age
FROM Staff
WHERE age > 21)
INTERSECT
(SELECT name,age
FROM Staff
WHERE age < 30)

--Извежда имената на всички продукти, чиято наличност е над даден брой и цената за брой е под дадена сума--
(SELECT name
FROM Product
WHERE amount_left > 5 AND price_per_unit IS NOT NULL)
INTERSECT
(SELECT name
FROM Product
WHERE price_per_unit<2)

--Извежда имeната на всички продукти от даден тип, зададен по името на типа, и наличност под даден брой--
(SELECT Product.name
FROM Product
JOIN Type ON type_id=Type.id
WHERE Type.name='Sweets')
INTERSECT
(SELECT name
FROM Product
WHERE amount_left<25)


----Подзаявки----

--Извежда позицията с най-висока заплата за час--
SELECT position_name
FROM Position
WHERE salary_per_hour >= ALL (SELECT salary_per_hour
							  FROM Position)

--Извежда имената на всички служители на дадена позиция--
SELECT name
FROM Staff
WHERE position_id IN(SELECT id
					 FROM Position
					 WHERE position_name='Cashier')

--Извежда имената на продукти, които се доставят в определен ден--
SELECT name
FROM Product
WHERE supplier_id IN (SELECT supplier_id
					  FROM Supply
					  WHERE day_of_week=1)

--Извежда имената на доставчиците, които доставят в определен ден--
SELECT name
FROM Supplier
WHERE id IN (SELECT supplier_id
			 FROM Supply
			 WHERE day_of_week=1)

--Извежда имената на служителите, които са на работа в определен ден--
SELECT name
FROM Staff
WHERE id IN(SELECT staff_id
			FROM Shift
			WHERE day_of_month=1)
			
----Съединения----

--Извежда информация за доставчиците(име,ден за доставки,час на доставка)
SELECT name,day_of_week, FORMAT(CAST(time_of_delivery AS DATETIME),'HH:mm') as time_of_delivery
FROM Supplier
INNER JOIN Supply ON id=supplier_id

--Извежда информация за служителите(име,пол,възраст,адрес)--
SELECT name,gender,age,city,street,house_number
FROM Staff
LEFT JOIN Address ON id=staff_id_address

--Извежда информация за продукти(име,тип на продукта)--
SELECT Product.name, Type.name
FROM Product
LEFT JOIN Type ON type_id=Type.id

--Извежда информация за заплата на час за служители с определена позиция--
SELECT name, position_name, salary_per_hour
FROM Staff
JOIN Position ON position_id=Position.id
WHERE position_id IN(SELECT id
					 FROM Position
					 WHERE position_name='Accountant')

--Извежда графика за работа на определен служител по име--
SELECT day_of_month,FORMAT(CAST(start_work AS DATETIME),'HH:mm') as start_work,FORMAT(CAST(end_work AS DATETIME),'HH:mm') as end_work,datediff(HOUR,start_work,end_work) as work_time
FROM Shift
WHERE staff_id IN (SELECT id
FROM Staff
WHERE name='Petar Petrov')


----Групиране и агрегация----

--Извежда информация за цената на всеки касов бон--
SELECT receipt_id,SUM(price_per_unit*buy_amount) as price
FROM Receipt_products
JOIN Product ON product_id=id
GROUP BY receipt_id

--Извежда информация за месечното работно време на служителите в часове--
SELECT staff_id, SUM(datediff(HOUR,start_work,end_work)) as month_work_time
FROM Shift
JOIN Staff ON staff_id=id
GROUP BY staff_id
 
 --Извежда информация, колко доставки се очакват в определен ден от седмицата--
SELECT day_of_week, COUNT(*) as number_of_supplies
FROM Supply
GROUP BY day_of_week

--Извежда броя служители, работещи на дадена позиция--
SELECT COUNT(*) as number_of_cashiers
FROM Staff
WHERE position_id IN (SELECT id
					  FROM Position
					  WHERE position_name='Cashier')

--Извежда в намаляващ ред най-купуваните продукти--
SELECT product_id,SUM(buy_amount) as total_amount
FROM Receipt_products
GROUP BY product_id
ORDER BY total_amount DESC

--Извежда брой продукти за всички типове--
SELECT Type.name,COUNT(*) number_of_product_by_type
FROM Type
JOIN Product ON Type.id=type_id
GROUP BY Type.name

--Извежда заплатата, която служител трябва да получи спрямо позицията си и месечните си работни часове--
SELECT name, CASE WHEN month_work_time <= 40 THEN salary_per_hour*(month_work_time+1)
				  ELSE salary_per_hour*month_work_time + salary_per_hour*0.5*(month_work_time-40) 
				  END AS monthly_salary
FROM Staff
LEFT JOIN Position ON Staff.id=Position.id
JOIN(SELECT staff_id, SUM(datediff(HOUR,start_work,end_work)) as month_work_time
	 FROM Shift
	 GROUP BY staff_id) as Time ON staff_id=Staff.id






