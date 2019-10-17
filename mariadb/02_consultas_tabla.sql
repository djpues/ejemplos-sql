-- Consulta básica de tablas
SELECT * FROM `nombre_tabla`

-- Ejemplo funcional
SELECT * FROM `user`
-- Debería devolver todas las filas o registros de la tabla

SELECT * FROM `user` WHERE id_user=1

-- Busca sólo usuarios activos
SELECT * FROM `user` WHERE active=1
-- Criterios con AND
SELECT * FROM `user` WHERE active=1 AND password="1234"

-- Proyecciones, selecciona sólo esos campos

SELECT id_user, nombre_usuario FROM `user`

-- Criterios de Ordenación
-- Ascendente
SELECT * FROM `user` ORDER BY `nombre_usuario` ASC
-- Descendente
SELECT * FROM `user` ORDER BY `nombre_usuario` DESC

-- Limitaciones de resultados
SELECT * FROM `user` LIMIT 0, 2
-- Me devuelve los dos primeros registros
SELECT * FROM `user` LIMIT 2, 2
-- Paginación número de página (np) concreto dependiendo
-- del número de registros por página (rp)
-- para presentar la primera página de 10 elemementos
-- np 0 rp 10
SELECT * FROM `user` LIMIT 0,10
-- Segunda página de 10 elemementos np=1, rp=10
SELECT * FROM `user` LIMIT 10,10
-- Tercera página de 10 elemementos np=2, rp=10
SELECT * FROM `user` LIMIT 20,10
-- Cuarta página de 10 elemementos  np=3, rp=10
SELECT * FROM `user` LIMIT 30,10
-- Enésima página
-- SELECT * FROM `user` LIMIT (np*rp),rp
-- Consulta compleja sobre una tabla
SELECT
  id_user, nombre_usuario
FROM `user`
WHERE
  password="1234"
 ORDER BY `id_user` ASC
 LIMIT 0,2
