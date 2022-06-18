SELECT * 
FROM usuarios
left join post ON usuarios.id =post.usuario_id;

SELECT * 
FROM usuarios
left join post ON usuarios.id =post.usuario_id
where post.usuario_id IS NULL;

SELECT * 
FROM usuarios
right join post ON usuarios.id =post.usuario_id;

SELECT * 
FROM usuarios
right join post ON usuarios.id =post.usuario_id
where post.usuario_id IS NULL;

SELECT * 
FROM usuarios
INNER join post ON usuarios.id =post.usuario_id;-- EL QUE MAS SE UTILIZA ES ESTE 

SELECT * 
FROM usuarios
LEFT join post ON usuarios.id =post.usuario_id
UNION 
SELECT * 
FROM usuarios
RIGHT join post ON usuarios.id =post.usuario_id; -- ESTA VUELTA ES PARA HACER UN OUTER JOIN

SELECT * 
FROM usuarios
LEFT join post ON usuarios.id =post.usuario_id
WHERE post.usuario_id IS NULL
UNION 
SELECT * 
FROM usuarios
RIGHT join post ON usuarios.id =post.usuario_id
WHERE post.usuario_id IS NULL; -- ESTA VUELTA ES PARA HACER LA DIFERENCIA SIMETRICA





