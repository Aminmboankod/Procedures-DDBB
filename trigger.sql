-- TRIGGER ejecuta funcion "actualizar_total_libros" cada vez que se inserta/elimina/modifica un libro
CREATE TRIGGER llamar_procedimiento
AFTER
INSERT ON `libros` FOR EACH ROW BEGIN
DECLARE total_libros INT;
SET total_libros = actualizar_total_libros();
END