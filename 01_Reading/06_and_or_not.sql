SELECT * FROM users WHERE NOT email="pablo@gmail.com"
-- se busca un usuario donde el email no sea "pablo@gmail.com" (WHERE NOT email="pablo@gmail.com") 

SELECT * FROM users WHERE NOT email="pablo@gmail.com" AND age=22
-- se busca un usuario donde el email no sea "pablo@gmail.com" (WHERE NOT email="pablo@gmail.com") y su edad se de 22 (AND age=22)

SELECT * FROM users WHERE NOT email="tomas@gmail.com" OR age=22
-- se busca un usuario donde el email no sea "tomas@gmail.com" (WHERE NOT email="pablo@gmail.com") o su edad se de 22 (OR age=22)