CREATE TABLE persons (
	id  INT NOT NULL AUTO INCREMENT, /*(NOT NULL) no se puede insertar un dato en esta esta base de datos con el indentificador igual a null*/
	name VARCHAR(100),
    age INT,
    email VARCHAR(50),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(), /*el campo no puede ser null, de sere asi por defaul (DEFAULT), se pondra la fecha y joa del sistema (CURRENT_TIMESTAMP())*/
    UNIQUE(email) /*(UNIQUE(id)) se indica el que campo "email" es un campo unico, no se puede repetir*/
    PRIMARY KEY(id) /*(PRIMARY KEY(id)) esta indicando que la clave primaria es el "id" y es el indentificador principal de la tabla, */
    CHECK(age>=18) /*(CHECK(age>=18)) chequear que age sea igual o myor a 18*/
);

/**/