UPDATE users SET age=11 WHERE users_id = 6
-- el UPDATE siempre se utiliza con el WHERE para evitar errores
-- se delecciona el user 6 (WHERE users_id=6) y se actuliza el age a 11 (SET age=11)

UPDATE users SET age=20,init_date="2020-10-12" WHERE users_id = 9
-- en este caso de actualizara el age end init_date del user 9