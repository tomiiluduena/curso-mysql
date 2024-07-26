-- es una especia de limite basado en uno o varios elemntos que nosotros conocemos

SELECT * FROM users WHERE name IN ('ToMaS')
-- importante las comillas simples, buscara en todos los usuarios de la tabla users, en el name "tomas" sin importar mayusculas o minisculas

SELECT * FROM users WHERE name IN ('pablo', 'ToMaS')
-- se muenden agregar otros criterios