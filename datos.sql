-- Insertar Estanterías
INSERT INTO estanterias (descripcion)
VALUES ('Matematicas');
INSERT INTO estanterias (descripcion)
VALUES ('Historia');
INSERT INTO estanterias (descripcion)
VALUES ('Filosofia');
INSERT INTO estanterias (descripcion)
VALUES ('Literatura');
INSERT INTO estanterias (descripcion)
VALUES ('Informatica');
-- Insertar Autores
INSERT INTO autores (nombre)
VALUES ('Gabriel Mamadu');
INSERT INTO autores (nombre)
VALUES ('Pepe Gerte');
INSERT INTO autores (nombre)
VALUES ('Amador rivas');
INSERT INTO autores (nombre)
VALUES ('Mario Vargas');
INSERT INTO autores (nombre)
VALUES ('Mariana Rafana');
-- Insertar Bibliotecas
INSERT INTO bibliotecas (nombre, direccion, estanteria_id, total_libros)
VALUES (
        'Biblioteca Nacional',
        'Ciudad de Buenos Aires, Argentina',
        1,
        0
    );
INSERT INTO bibliotecas (nombre, direccion, estanteria_id, total_libros)
VALUES (
        'Biblioteca del Congreso',
        'Washington D.C., Estados Unidos',
        2,
        0
    );
INSERT INTO bibliotecas (nombre, direccion, estanteria_id, total_libros)
VALUES (
        'Biblioteca Pública Municipal',
        'Lima, Perú',
        3,
        0
    );
INSERT INTO bibliotecas (nombre, direccion, estanteria_id, total_libros)
VALUES (
        'Biblioteca Callejas',
        'Calle Baja, Arriba',
        1,
        0
    );
INSERT INTO bibliotecas (nombre, direccion, estanteria_id, total_libros)
VALUES (
        'Biblioteca de la Universidad',
        'Calle del olvido, Murcia',
        3,
        0
    );
-- Insertar Libros
-- Insertar Libros
INSERT INTO libros (titulo, autor_id, biblioteca_id)
VALUES ('Cien años de soledad', 1, 1);
INSERT INTO libros (titulo, autor_id, biblioteca_id)
VALUES ('El Aleph', 2, 2);
INSERT INTO libros (titulo, autor_id, biblioteca_id)
VALUES ('La ciudad y los perros', 3, 3);
INSERT INTO libros (titulo, autor_id, biblioteca_id)
VALUES ('El retrato de Dorian Gray', 1, 2);
INSERT INTO libros (titulo, autor_id, biblioteca_id)
VALUES ('1984', 2, 1);
INSERT INTO libros (titulo, autor_id, biblioteca_id)
VALUES ('La metamorfosis', 3, 3);
INSERT INTO libros (titulo, autor_id, biblioteca_id)
VALUES ('Mujercitas', 4, 4);
INSERT INTO libros (titulo, autor_id, biblioteca_id)
VALUES (
        'El ingenioso hidalgo Don Quijote de la Mancha',
        5,
        5
    );