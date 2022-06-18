select * 
from post
order by fecha_publicacion desc; -- asc es para poner los datos de menor a mayor y desc de mayor a menor

select *
from post
order by titulo desc;

select *
from post
order by usuario_id
limit 5;

select monthname(fecha_publicacion) as Post_month, estatus, count(*) as post_quantity
from post
group by estatus, Post_month
having post_quantity > 1            -- Esto es como un where
order by Post_month;