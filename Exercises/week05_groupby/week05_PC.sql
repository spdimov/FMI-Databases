SELECT ROUND(AVG(speed),2)
FROM PC


SELECT maker,AVG(screen)
FROM LAPTOP
JOIN product ON laptop.model=product.model
GROUP BY(maker)


SELECT ROUND(AVG(speed),2)
FROM LAPTOP
WHERE price>1000


SELECT ROUND(AVG(price),2)
FROM PC
JOIN product ON PC.model=product.model
WHERE maker='A'


SELECT maker,AVG(price)
FROM (SELECT price,maker
FROM PC
JOIN product ON PC.model=product.model
UNION ALL
SELECT price,maker
FROM laptop
JOIN product ON laptop.model=product.model) d
WHERE d.maker='B'
GROUP BY maker


SELECT speed,AVG(price)
FROM PC
GROUP BY(speed)


SELECT maker,COUNT(maker) as number_of_pc
FROM PC
JOIN product ON product.model=pc.model
GROUP BY maker
HAVING COUNT(maker)>=3


SELECT maker,price
FROM PC
JOIN product ON product.model=pc.model
WHERE price>= ALL(SELECT price FROM pc)


SELECT speed,AVG(price)
FROM PC
WHERE speed> 800
GROUP BY(speed)


SELECT maker,AVG(hd)
FROM PC
INNER JOIN product ON pc.model=product.model
WHERE maker IN (SELECT maker
FROM product
WHERE product.model IN (SELECT printer.model FROM printer))
GROUP BY maker


 




