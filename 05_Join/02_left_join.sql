SELECT * FROM users
LEFT JOIN dni 
ON users.users_id = dni.user_id
-- mostrara todos los usuarios de la tabla "users" y los que no contecngan refrencia en "dni" los rellenara con null,
-- simpre toma como referencia la tabla de la izq, la que esta en el FROM

