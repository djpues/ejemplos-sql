-- Sintaxis básica
-- INSERT INTO nombre_tabla
--  (Campos a rellenar separados por comas) VALUES
--   (Valores a rellenar separados por comas);
-- Ejemplo funcional de Inserción en tabla
INSERT INTO `user` (
  `id_user`,
  `nombre_usuario`,
  `password`,
  `is_admin`,
  `active`,
  `created_at`,
  `updated_at`,
  `id_user_update`,
  `version`
  ) VALUES (
    NULL,
    'admin',
    '1234',
    '1',
    '1',
    '2019-10-17 09:50:22', NULL, NULL, '1');
-- Aunque el id_user es NULL la bbdd pondrá un número al id
-- Si es la primera vez será

-- Otro ejemplo de Inserción
INSERT INTO `user` (
  `id_user`, `nombre_usuario`, `password`, `is_admin`,
  `active`, `created_at`, `updated_at`, `id_user_update`,
  `version`) VALUES (
    NULL, 'pepesan', '1234', '0', '1', '2019-10-17 00:00:00',
    NULL, '1', '1');

-- Ejemplo de inserción "sencillo"
INSERT INTO `user` (
  `nombre_usuario`, `password`) VALUES (
    'mery', '1234');

-- Ejemplo de inserción "sencillo"
INSERT INTO `user` (
  `nombre_usuario`, `password`, `created_at`) VALUES (
  'bea', '1234', '2019-10-17 00:00:00');
