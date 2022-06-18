select estatus, count(*) as Post_Quantity
from post
group by estatus;

select year(fecha_publicacion) as Year_post, count(*) as Post_Quantity 
from post
group by Year_post;

select estatus, monthname(fecha_publicacion) as Post_Month, count(*) as Post_Quantity 
from post
group by estatus, Post_Month;