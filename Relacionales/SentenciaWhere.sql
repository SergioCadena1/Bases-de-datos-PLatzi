SELECT *
FROM post
where id != 50;

SELECT *
FROM post
where titulo like '%roja%';

SELECT *
FROM post
where id between 50 and 60;

SELECT *
FROM post
where fecha_publicacion between '2023-01-01'and '2025-12-31';

select *
from post
where month(fecha_publicacion) between 01 and 03;

select *
from post
where usuario_id is not null
    AND estatus = 'activo'
    AND id < 50
    AND categoria_id = 2
    and year(fecha_publicacion) = 2025;
