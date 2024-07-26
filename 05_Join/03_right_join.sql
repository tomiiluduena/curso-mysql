SELECT * FROM users
RIGHT JOIN dni 
ON users.users_id = dni.user_id
-- IGUAL QUE EL "left join" pero esta vez tomara como referencia la tabla de la derecha,
-- en este caso "dni"