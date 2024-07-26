-- Creamos un idice, abituzalmente los indices tiene este formato "idx_xxx"
CREATE INDEX idx_name ON users(name);

CREATE UNIQUE INDEX idx_name ON users(name);
-- Indice unico
-- da mejor resultados en tiempos de busueda cuando son muchos los usuarios que estan en la tabla

--ELIMINAR EL INDICE
CREATE INDEX idx_name ON users