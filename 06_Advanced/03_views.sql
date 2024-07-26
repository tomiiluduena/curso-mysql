-- es una representacion virtual de una o mas tabla
-- La vista se dbe regenerar en el momento en el que las tablas ea la cual se relacionan se modifican.
-- se utiliza: si se desea consultar (nombre y edad) regularmente, antes de hacer todo el procedimiento para optenerlo, 
--se realiza una vista donde contendra el procedimiento, y al citar la vista se optendra el reultado requerido

--CREAMOS LA VISTA
CREATE VIEW v_adult_users AS 
SELECT name, age
FROM users
WHERE age>=18;
-- Esta vista mostrara los usuerios y su edad de los wue sean mayor de edad

-- MOSTRAR LOS ARCHIVOS DE LA VISTA
SELECT * FROM v_adult_users

--ELIMINAR UNA VISTA
DROP VIEW v_adult_users;