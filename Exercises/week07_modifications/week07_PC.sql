/*INSERT INTO product (type,model,maker) VALUES ('pc','1100','C')
INSERT INTO pc (speed,ram,hd,cd,price,code,model) VALUES (2400,2048,500,'52x',299,12,'1100')
*/

/*DELETE FROM PC
WHERE MODEL='1100'
*/

SELECT *
FROM LAPTOP
WHERE MODEL IN(SELECT MODEL
				FROM product
				WHERE maker IN(SELECT DISTINCT MAKER
								FROM PRODUCT
								WHERE MODEL NOT IN (SELECT  MODEL FROM PRINTER)))


/* UPDATE product
SET maker='A'
WHERE maker='B'
*/

/*UPDATE pc
SET price=price/2, hd=hd+20
*/
