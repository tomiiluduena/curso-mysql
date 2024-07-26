-- mOSTRAR DOS TABLAS CON RELACION 1:1
SELECT * FROM users /*seleccona la tbala users*/
INNER JOIN dni /*selecciona la tabla dni*/
ON users.users_id = dni.user_id /*se le indica los campos que deberan tener en comun, y solo mostrara esos usuarios*/

SELECT name, dni_number FROM users
INNER JOIN dni
ON users.users_id = dni.user_id
ORDER BY age DESC
-- Mismo ejemplo solo que se pide que se muestre solo el nombre y el dni, y ordenados por edad desencente

-- MOSREAR ARCHIVOS DE DOS TABLAS CON RELACION 1:N
SELECT companies.name,users.name FROM companies
INNER JOIN users
ON companies.company_id = users.users_id
-- selecicona lo que quiero que se mustre aunque esten en dos tablas distintas y tengan el mimso nombre

-- MOSTRAR DOS TABLAS CON RELACION N:M
SELECT * FROM users_languages
INNER JOIN users ON users_languages.users_id = users.users_id
INNER JOIN languages ON users_languages.users_language_id = languages.language_id

SELECT users.name,languages.name FROM users_languages
INNER JOIN users ON users_languages.users_id = users.users_id
INNER JOIN languages ON users_languages.users_language_id = languages.language_id
-- Muestra una respuesta mas limpia selecionando los names de cada tabla