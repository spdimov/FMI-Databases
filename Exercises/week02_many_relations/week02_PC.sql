SELECT  maker,speed
FROM laptop
INNER JOIN product ON product.model=laptop.model
WHERE  HD>9


(SELECT laptop.model,price
FROM laptop,product
WHERE maker='B' AND laptop.model=product.model)
UNION
(SELECT pc.model,price
FROM pc,product
WHERE maker='B' AND pc.model=product.model)
UNION
(SELECT printer.model,price
FROM printer,product
WHERE maker='B' AND printer.model=product.model)

(SELECT DISTINCT maker
FROM laptop,product
WHERE laptop.model=product.model)
EXCEPT
(SELECT DISTINCT maker
FROM pc,product
WHERE pc.model=product.model)

SELECT hd
FROM PC
GROUP BY hd
HAVING count(hd) > 1

SELECT pc1.model, pc2.model
FROM pc as pc1, pc as pc2
WHERE pc1.ram = pc2.ram AND pc1.speed = pc2.speed AND  pc1.model < pc2.model;

SELECT  DISTINCT maker
FROM product
WHERE model IN(
SELECT model
FROM pc
WHERE speed>400
GROUP BY model
HAVING count(model)>1)




