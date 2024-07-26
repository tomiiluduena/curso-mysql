SELECT users.users_id AS u_user_id, dni.user_id AS d_user_id
FROM  users
LEFT JOIN dni
ON users.users_id = dni.user_id
UNION
SELECT users.users_id AS user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.users_id = dni.user_id;
-- es la union de LEFR JOIN y RIGHT JOIN