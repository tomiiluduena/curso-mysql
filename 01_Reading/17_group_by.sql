SELECT MAX(age) FROM users GROUP BY age
-- Separara los usuarios por gruo de edades

SELECT COUNT(age) FROM users GROUP BY age
-- contara cunatos usuarios hay en cada grupo de eddes

SELECT COUNT(age) FROM users GROUP BY age ORDER BY age ASC
-- contara cunatos usuarios hay en cada grupo de eddes y los ordenra de forma ascendente

SELECT age FROM users WHERE age>25 GROUP BY age ORDER BY age ASC
-- se agrega el condicional WHERE ahoa solo los mayores a 25