-- buen practica es usarlo junto a un alias

SELECT CONCAT(name, surname) FROM users
-- concatenara el valor de name con el valor de surname

SELECT CONCAT(name," ", sername,".") FROM users
-- se le pueden agregr string de esta manera

SELECT CONCAT(name," ", sername,".") AS 'Nombre completo' FROM users
-- esta es la correcta manera de usarlo
-- la concatenacion quedara identificada con el nombre "NoSmbre completo"

