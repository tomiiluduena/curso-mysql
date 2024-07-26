-- son eventos pogramados
-- Ejemplo creamos un trigger que guarde un histial de los email en un eventual cambio de email

--1 creamos un tabla 
CREATE TABLE email_history (
email_history INT PRIMARY KEY NOT NULL UNIQUE,
user_id INT NOT NULL,
email VARCHAR(100)
);

-- 2 Creamos el trigger
delimiter |
CREATE TRIGGER tg_email /*buena paractica usar el nombre tg_xxxx*/
AFTER UPDATE ON users/*Se indica cuando se quiere hacer el tigger respecto a la accion (BEFORE/AFTER)*/ /*se indica la acion que se espera (INSERT,UPDATE,DELETE)*/ /*donde lo quiero aplicar (ON table)*/
FOR EACH ROW /*Le inico que se ejecute ne todas las lineas*/
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email) 
    END IF;
END;
|
delimiter ;

--3 probamos el funcionamiento del tigger
UPDATE users SET email = "tomas0ludu@gmail.com" WHERE users_id = 1 /*Cambiamos el email del usurario 1*/
SELECT * from users /*Verificamos el cmabio en l atabla users*/
SELECT * from email_history /*verificamos los cmabios en email_history*/ 

--ELIMINAR UN TRIGGER
DROP TRIGGER tg_email;

