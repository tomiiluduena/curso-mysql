-- una logica concreta en funciion de una condicion

SELECT *, 
CASE
	WHEN age>17 THEN "Es mayor de edad"  --si age es mayor que 17 (WHEN age>1), entonces (THEN), ("Es mayor de edad")
    ELSE "Es menor de edad" -- de otro modo (ELSE), (Es menor de edad)
END AS "agetext" --Indica el fin del case (END), Se creara un Alias llamado "agentext" (AS "agetext")
FROM users; -- De la tabla users (FROM users)
-- Se creara una columna llamada "agetext", donde en cada fila se colocara el texto correspondiente segunda la edad del usuario

SELECT *,
CASE
	WHEN age>17 THEN True
    ELSE False
END AS "agetext"
FROM users;
-- en este caso en la columna "agetext", se guardaron valor booleanos (1,0)

SELECT *,
CASE
	WHEN age =18 THEN "Edad justa"
	WHEN age>18 THEN "Es mayor de edad"
    ELSE "Es menor de edad"
END AS "agetext"
FROM users;
-- se le agregan unas condicionas mas
