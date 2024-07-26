ALTER TABLE persons
ADD surname VARCHAR(150); /*ADD*/
-- Añadir un nuevo campo

ALTER TABLE persons
RENAME column surname TO apellidos;
-- renombrar los campos

ALTER TABLE persons
MODIFY COLUMN email VARCHAR(160);
-- Actuzalizacion de cmapos

ALTER TABLE persons
DROP COLUMN age;
-- Eliminar la columna

