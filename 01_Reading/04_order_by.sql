SELECT * FROM users ORDER BY age ASC
-- "SELECT" slecciona, todo los archivos "*" de la tabla users (FROM users), y los ordena "ORDER BY" por "age" de fotrma acendente "ASC" viene por defoul no hace flata ponerlo

SELECT * FROM users ORDER BY age DESC
-- "SELECT" slecciona, todo los archivos "*"de la tabla users (FROM users), y los ordena "ORDER BY" por "age" de fotrma DESCENDENTE "DESC"

SELECT name FROM users WHERE email="tomas@gmail.com" ORDER BY age DESC
-- las ordenes de busqueda se pueden ir mezclando y ejecutarce juntas, aunque unas restringen a otras