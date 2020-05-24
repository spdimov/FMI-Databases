SELECT DISTINCT MAKER
FROM PRODUCT
WHERE MODEL IN ( SELECT MODEL FROM PC WHERE SPEED >500)


SELECT code, model, price
FROM printer
WHERE price >= ALL(SELECT price FROM printer)


SELECT code,model,ram,hd,price,screen
FROM laptop
WHERE speed <= ALL(SELECT speed FROM laptop)




SELECT model,price
FROM LAPTOP
WHERE price >=ALL((SELECT price FROM laptop) UNION 
				  (SELECT price FROM pc) UNION 
				  (SELECT price FROM printer) )
UNION
SELECT model,price
FROM PC
WHERE price >=ALL((SELECT price FROM laptop) UNION 
				  (SELECT price FROM pc) UNION 
				  (SELECT price FROM printer) )
UNION
SELECT model,price
FROM Printer
WHERE price >=ALL((SELECT price FROM laptop) UNION 
				  (SELECT price FROM pc) UNION 
				  (SELECT price FROM printer) )


