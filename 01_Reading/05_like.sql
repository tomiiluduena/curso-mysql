LIKE
-- Es un criterio de busqueda variable
-- la sintaxis determina que debe llevar un (WHERE xxxx LIKE "xxxx")

SELECT * FROM users WHERE email LIKE "%gmail.com"
-- "SELECT" slecciona, todo los archivos "*",de la tabla users (FROM users), asignara un criterio de exclusion "WHERE" que sera "email", donde se buscara algo que se paresca "LIKE" a ...xxxxgmail.com "%gmail.com"

SELECT * FROM users WHERE email LIKE "tomas%"
-- "SELECT" slecciona, todo los archivos "*",de la tabla users (FROM users), asignara un criterio de exclusion "WHERE" que sera "email", donde se buscara algo que se paresca "LIKE" a tomasxxxx... "tomas%"

SELECT * FROM users WHERE email LIKE "%@%"
-- "SELECT" slecciona, todo los archivos "*",de la tabla users (FROM users), asignara un criterio de exclusion "WHERE" que sera "email", donde se buscara algo que se paresca "LIKE" a ...xx@xx... "%@%"
