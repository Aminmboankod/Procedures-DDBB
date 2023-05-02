# Procedures


Vamos a trabajar sobre la base de datos que creamos con el siguiente script [database.sql](/database.sql).

Al ejecutar el script deberías tener las siguientes tablas:
```
+----------------------+
| Tables_in_biblioteca |
+----------------------+
| autores              |
| bibliotecas          |
| estanterias          |
| libros               |
+----------------------+

```

Posteriormente vamos a agregar los datos a las tablas:

```
Autores:
+----+----------------+
| id | nombre         |
+----+----------------+
|  1 | Gabriel Mamadu |
|  2 | Pepe Gerte     |
|  3 | Amador rivas   |
|  4 | Mario Vargas   |
|  5 | Mariana Rafana |
+----+----------------+

Bilbiotecas:
+----+-----------------------------------+-------------------------------+--------------+---------------+
| id | direccion                         | nombre                        | total_libros | estanteria_id |
+----+-----------------------------------+-------------------------------+--------------+---------------+
|  1 | Ciudad de Buenos Aires, Argentina | Biblioteca Nacional           |            0 |             1 |
|  2 | Washington D.C., Estados Unidos   | Biblioteca del Congreso       |            0 |             2 |
|  3 | Lima, Perú                        | Biblioteca Pública Municipal  |            0 |             3 |
|  4 | Calle Baja, Arriba                | Biblioteca Callejas           |            0 |             1 |
|  5 | Calle del olvido, Murcia          | Biblioteca de la Universidad  |            0 |             3 |
+----+-----------------------------------+-------------------------------+--------------+---------------+

Estanterias:
+----+-------------+
| id | descripcion |
+----+-------------+
|  1 | Matematicas |
|  2 | Historia    |
|  3 | Filosofia   |
|  4 | Literatura  |
|  5 | Informatica |
+----+-------------+

Libros:
+----+-----------------------------------------------+----------+---------------+
| id | titulo                                        | autor_id | biblioteca_id |
+----+-----------------------------------------------+----------+---------------+
|  1 | Cien años de soledad                          |        1 |             1 |
|  2 | El Aleph                                      |        2 |             2 |
|  3 | La ciudad y los perros                        |        3 |             3 |
|  4 | El retrato de Dorian Gray                     |        1 |             2 |
|  5 | 1984                                          |        2 |             1 |
|  6 | La metamorfosis                               |        3 |             3 |
|  7 | Mujercitas                                    |        4 |             4 |
|  8 | El ingenioso hidalgo Don Quijote de la Mancha |        5 |             5 |
+----+-----------------------------------------------+----------+---------------+

```
A continuación podemos ejecutar la función que hemos preparado para que en la tabla `Bibliotecas` se actualice la columna de `total_libros`. Simplemente ejecutamos el contenido del script [function](/function.sql):

```
al ejecutar la funcion con:

SELECT actualizar_total_libros();

nos muestra por consola:

+---------------------------+
| actualizar_total_libros() |
+---------------------------+
|                         8 |
+---------------------------+

Podemos comprobar que se ha actualizado la columna:

+----+-----------------------------------+-------------------------------+--------------+---------------+
| id | direccion                         | nombre                        | total_libros | estanteria_id |
+----+-----------------------------------+-------------------------------+--------------+---------------+
|  1 | Ciudad de Buenos Aires, Argentina | Biblioteca Nacional           |            2 |             1 |
|  2 | Washington D.C., Estados Unidos   | Biblioteca del Congreso       |            2 |             2 |
|  3 | Lima, Perú                        | Biblioteca Pública Municipal  |            2 |             3 |
|  4 | Calle Baja, Arriba                | Biblioteca Callejas           |            1 |             1 |
|  5 | Calle del olvido, Murcia          | Biblioteca de la Universidad  |            1 |             3 |
|  6 | Ciudad de Buenos Aires, Argentina | Biblioteca Nacional           |            0 |             1 |
|  7 | Washington D.C., Estados Unidos   | Biblioteca del Congreso       |            0 |             2 |
|  8 | Lima, Perú                        | Biblioteca Pública Municipal  |            0 |             3 |
|  9 | Calle Baja, Arriba                | Biblioteca Callejas           |            0 |             1 |
| 10 | Calle del olvido, Murcia          | Biblioteca de la Universidad  |            0 |             3 |
+----+-----------------------------------+-------------------------------+--------------+---------------+

```
Ahora usaremos el procedimiento creado en [procedimiento.sql](/procedimiento.sql) en el que podemos actualizar el nombre de un autor usando el CALL update_autor( ID, 'Nuevo nombre');
```
Estos son los datos antes de actualizar:
+----+----------------+
| id | nombre         |
+----+----------------+
|  1 | Gabriel Mamadu |
|  2 | Pepe Gerte     |
|  3 | Amador rivas   |
|  4 | Mario Vargas   |
|  5 | Mariana Rafana |
|  6 | Gabriel Mamadu |
|  7 | Pepe Gerte     |
|  8 | Amador rivas   |
|  9 | Mario Vargas   |
| 10 | Mariana Rafana |
+----+----------------+

después puedes ejecutar CALL update_autor( 2, 'Pepito Los Palotes');

MariaDB [biblioteca]> CALL update_autor( 2, 'Pepito Los Palotes');
Query OK, 1 row affected (0,009 sec)

MariaDB [biblioteca]> select * from autores;
+----+--------------------+
| id | nombre             |
+----+--------------------+
|  1 | Gabriel Mamadu     |
|  2 | Pepito Los Palotes |
|  3 | Amador rivas       |
|  4 | Mario Vargas       |
|  5 | Mariana Rafana     |
|  6 | Gabriel Mamadu     |
|  7 | Pepe Gerte         |
|  8 | Amador rivas       |
|  9 | Mario Vargas       |
| 10 | Mariana Rafana     |
+----+--------------------+

```

Ahora añadimos el cursor que hemos creado [cursor.sql](/cursor.sql).
Después de crearlo lo ejecutamos de la siguiente manera:


```
OPEN autor_cursor;
CALL contar_libros_autor();
MariaDB [biblioteca]> CALL contar_libros_autor();
+-----------------------------------------------+
| mensaje                                       |
+-----------------------------------------------+
| El autor Gabriel Mamadu ha escrito 2 libro/s. |
+-----------------------------------------------+
1 row in set (0,003 sec)

+---------------------------------------------------+
| mensaje                                           |
+---------------------------------------------------+
| El autor Pepito Los Palotes ha escrito 2 libro/s. |
+---------------------------------------------------+
1 row in set (0,003 sec)

+---------------------------------------------+
| mensaje                                     |
+---------------------------------------------+
| El autor Amador rivas ha escrito 2 libro/s. |
+---------------------------------------------+
1 row in set (0,004 sec)

+---------------------------------------------+
| mensaje                                     |
+---------------------------------------------+
| El autor Mario Vargas ha escrito 1 libro/s. |
+---------------------------------------------+
1 row in set (0,004 sec)

+-----------------------------------------------+
| mensaje                                       |
+-----------------------------------------------+
| El autor Mariana Rafana ha escrito 1 libro/s. |
+-----------------------------------------------+
1 row in set (0,004 sec)

+-----------------------------------------------+
| mensaje                                       |
+-----------------------------------------------+
| El autor Gabriel Mamadu ha escrito 0 libro/s. |
+-----------------------------------------------+
1 row in set (0,005 sec)

+-------------------------------------------+
| mensaje                                   |
+-------------------------------------------+
| El autor Pepe Gerte ha escrito 0 libro/s. |
+-------------------------------------------+
1 row in set (0,005 sec)

+---------------------------------------------+
| mensaje                                     |
+---------------------------------------------+
| El autor Amador rivas ha escrito 0 libro/s. |
+---------------------------------------------+
1 row in set (0,005 sec)

+---------------------------------------------+
| mensaje                                     |
+---------------------------------------------+
| El autor Mario Vargas ha escrito 0 libro/s. |
+---------------------------------------------+
1 row in set (0,006 sec)

+-----------------------------------------------+
| mensaje                                       |
+-----------------------------------------------+
| El autor Mariana Rafana ha escrito 0 libro/s. |
+-----------------------------------------------+
1 row in set (0,006 sec)

Query OK, 10 rows affected (0,006 sec)

```

Además para automatizar el procedimiento anteriormente creado hemos creado un trigger [trigger.sql](/trigger.sql) que ejecuta el procedimiento para actualizar el total de libros cada vez que se elimina añade o actualiza un libro.

