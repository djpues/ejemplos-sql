-- Ejemplo de modificación masiva
-- UPDATE NOMBRE_TABLA SET CAMPO=VALOR
-- Modificación selectiva o con criterio
-- UPDATE NOMBRE_TABLA SET CAMPO=VALOR WHERE ID=algo
-- Modificación de un usuario
UPDATE `user`
  SET `created_at` = '2019-10-17 00:00:00'
  WHERE `user`.`id_user` = 4;
-- Modificación selectiva de varios campos
UPDATE `user`
  SET `is_admin` = '1', `active` = '1', `id_user_update` = '1'
  WHERE `user`.`id_user` = 4;
-- Modificación típica de tabla
UPDATE `user`
  SET `updated_at` = '2019-10-17 12:21:27',` id_user_update` = '1'
  WHERE `user`.`id_user` = 4;
