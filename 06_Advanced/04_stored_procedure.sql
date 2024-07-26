-- Es una QUERY que se guarda

--CREACION DEL PROCEDIMIENTO ALMACENADO
delimiter //
CREATE PROCEDURE p_all_users() /*Indicamos el nombre p_xxxx*/
BEGIN
	SELECT * FROM users; /*indicamos la funcion que ejecutara*/
END//


-- EJECUTAMOS EL PROCEDIMIENTO ALMACENADO
call p_all_users();

-- SEGUNDO EJEMPLO 
delimiter //
CREATE PROCEDURE p_age_users(IN age_param INT)
BEGIN
	SELECT * FROM users WHERE age=age_param;
END//
-- mostrara los usuarios con la edad que coinsidan con el parametro que se le idique

--ejecutar el procedimiento
CALL p_age_users(18)


-- ELIMINAR UN PROCEDIMINETO ALMACENADO
DROP PROCEDURE p_age_users;