SELECT maker,model,type
FROM Product
WHERE model NOT IN ((SELECT printer.model 
					FROM printer)
					UNION
					(SELECT pc.model 
					FROM pc)
					UNION
					(SELECT laptop.model 
					FROM laptop))


 (SELECT DISTINCT maker 
FROM product
JOIN printer ON printer.model=product.model)
INTERSECT
(SELECT DISTINCT maker 
FROM product
JOIN laptop ON laptop.model=product.model)

SELECT DISTINCT l1.hd
FROM laptop l1
INNER JOIN laptop l2 ON l1.hd=l2.hd AND l1.model> l2.model


