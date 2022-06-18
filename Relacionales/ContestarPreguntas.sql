select post.titulo, count(*) as num_etiquetas
from post
	inner join post_etiquetas on post.id = post_etiquetas.post_id
    inner join etiquetas on etiquetas.id = post_etiquetas.etiqueta_id
group by post_id
order by num_etiquetas desc; -- cuantas etiquetas existen en cada post 

select post.titulo,group_concat(nombre_etiqueta) as Nombre_Etiqueta -- etiquetas.nombre_etiqueta solo me trae 1 dato 
from post
	inner join post_etiquetas on post.id = post_etiquetas.post_id
    inner join etiquetas on etiquetas.id = post_etiquetas.etiqueta_id
group by post_id; -- cuales son esas etiquetas

select * 
from etiquetas
	left join post_etiquetas on etiquetas.id = post_etiquetas.etiqueta_id
	where post_etiquetas.etiqueta_id is null; -- Etiquetas que aun no se han utilizado
    
select nombre_categoria, count(*) as num_posts
from categorias
	inner join post on categorias.id = post.categoria_id
group by categorias.id
order by num_posts desc;

select u.login, count(*) as Cantidad_Publicaciones
from usuarios as u
	inner join post as p on u.id = p.usuario_id
group by u.id
order by Cantidad_Publicaciones desc;

select u.login, count(*) as Cantidad_Publicaciones, group_concat(distinct(nombre_categoria))
from usuarios as u
	inner join post as p on u.id = p.usuario_id
    inner join categorias as c on p.categoria_id = c.id
group by u.id
order by Cantidad_Publicaciones desc;

select * 
from usuarios
	left join post on usuarios.id = post.usuario_id
	where post.usuario_id is null
group by usuarios.id;

select usuarios.nickname, post.titulo, post.fecha_publicacion, post.contenido, post.estatus, categorias.nombre_categoria
from usuarios
	inner join post on usuarios.id = post.usuario_id
    inner join categorias on post.categoria_id = categorias.id
order by fecha_publicacion;