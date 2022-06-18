Select new_table_projection.primera_fecha, count(*) as Post_count
from(
	select date(min(fecha_publicacion)) as primera_fecha, year(fecha_publicacion) as Post_year
    from post
    group by Post_year
) as new_table_projection
group by new_table_projection.primera_fecha
order by new_table_projection.primera_fecha ;

select *
from post
where fecha_publicacion = (
	select max(fecha_publicacion)
    from post
);