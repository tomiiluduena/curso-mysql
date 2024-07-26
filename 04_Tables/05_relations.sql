-- RELACION 1:1

CREATE TABLE dni (
dni_id INT AUTO_INCREMENT PRIMARY KEY,
dni_number INT not null,
user_id INT ,
UNIQUE(dni_number),
FOREIGN KEY(user_id) REFERENCES users(users_id)
-- la clave foraneana sera (FOREIGN KEY(user_id)) y se le indica en que tabla se encuentra (REFERENCES users(users_id))
);

-- RELACION 1:N
-- en este ejemplo se creara la tabla y se asociara a una tabla ya existente

--1 creamos la tabla
CREATE TABLE companies (
company_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR not null,
);

--2 En la tabla existente creamos un capo que funcionara como  clave foranea entre estas 
ALTER TABLE users
ADD company_id INT NOT NULL

--3 Modificamos el campo creado para volverlo la clave foranea
ALTER TABLE users
ADD CONSTRAINT dni_ibfk_1 /*Estevalor se encuntra en la pestaña "Foreing Keys" de las tablas*/
FOREIGN KEY(company_id) REFERENCES companies(company_id)

-- RELACION N:M
-- Se cre una tabla intermedia que guardara las relaciones de N:M, se le suele dar el nombre de las dos tablas que relacionan
-- en este ejemplo se creara una tabla de lenguajes y se la relacionara a la tabla users

--1 creamos la tabla languajes
CREATE TABLE languages (
language_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

--2 Se crea la tabla intermedia con las claves foraneas hcia las dos tablas
CREATE TABLE users_languages (
users_language_id INT AUTO_INCREMENT PRIMARY KEY,
users_id INT NOT NULL,
language_id INT NOT NULL,
FOREIGN KEY(users_id) REFERENCES users(users_id),
FOREIGN KEY(language_id) REFERENCES languages(language_id),
UNIQUE (users_id,language_id)
);
-- Forma de cargar esta tabla
INSERT INTO users_languages (users_id, language_id) VALUE (1, 1);
-- (users_id: 1, estara relacionado con, language_id:1)