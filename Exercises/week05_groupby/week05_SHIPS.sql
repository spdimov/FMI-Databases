SELECT COUNT(class) as NO_Classes
FROM classes
WHERE type='bb'


SELECT class,AVG(numguns)
FROM CLASSES
WHERE type='bb'
GROUP BY class


SELECT classes.class,min(launched),max(launched)
FROM Classes
JOIN Ships ON CLASSES.class=SHIPS.class
GROUP BY classes.class


SELECT class,COUNT(*)
FROM OUTCOMES
JOIN SHIPS ON OUTCOMES.ship=SHIPS.name
WHERE RESULT='sunk'
GROUP BY class


SELECT class,COUNT(*)
FROM OUTCOMES
JOIN SHIPS ON OUTCOMES.ship=SHIPS.name
WHERE RESULT='sunk' AND class IN (SELECT class
FROM SHIPS
GROUP BY CLASS
HAVING COUNT(*)>2)
GROUP BY class


SELECT country,avg(bore) 
FROM ships
JOIN classes ON ships.class=classes.class
GROUP BY COUNTRY



