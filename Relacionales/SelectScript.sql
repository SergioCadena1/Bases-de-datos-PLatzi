SELECT *
FROM post
WHERE month(fecha_publicacion) = 09;

ALTER TABLE post 
CHANGE status estatus char(8); -- Esto sirve para cambiarle el nombre a una columna.

SELECT titulo as Encabezado, fecha_publicacion as Publicado_en, estatus as estado
from post;

SELECT count(*) as Numero_posts
FROM post;
