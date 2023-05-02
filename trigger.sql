-- TRIGGER ejecuta funcion "llamar_procedimiento_insertarLibro" cada vez que se inserta un libro
DELIMITER $$ CREATE TRIGGER llamar_procedimiento_insertarLibro
AFTER
INSERT ON `libros` FOR EACH ROW BEGIN
DECLARE total_libros INT;
SET total_libros = actualizar_total_libros();
END $$ DELIMITER;

-- TRIGGER ejecuta funcion "llamar_procedimiento_eliminarLibro" cada vez que se elimine un libro
DELIMITER $$ CREATE TRIGGER llamar_procedimiento_eliminarLibro
AFTER
DELETE ON `libros` FOR EACH ROW BEGIN
DECLARE total_libros INT;
SET total_libros = actualizar_total_libros();
END $$ DELIMITER;