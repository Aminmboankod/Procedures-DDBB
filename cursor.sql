-- CURSOR que cuenta todos los libros escritos por cada autor
CREATE PROCEDURE contar_libros_autor () BEGIN
DECLARE autor_id INT;
DECLARE autor_name VARCHAR(255);
DECLARE total_libros INT;
DECLARE done INT DEFAULT FALSE;
DECLARE autor_cursor CURSOR FOR
SELECT id,
    nombre
FROM autores;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET done = TRUE;
OPEN autor_cursor;
FETCH NEXT
FROM autor_cursor INTO autor_id,
    autor_name;
WHILE NOT done DO
SELECT COUNT(*) INTO total_libros
FROM libros
WHERE autor_id = autor_id
    AND autor_id = libros.autor_id;
SELECT CONCAT(
        'El autor ',
        autor_name,
        ' ha escrito ',
        total_libros,
        ' libro/s.'
    ) as mensaje;
FETCH NEXT
FROM autor_cursor INTO autor_id,
    autor_name;
END WHILE;
CLOSE autor_cursor;
END;
-- Ejecutar PROCEDMIENTO
-- CALL contar_libros_autor();