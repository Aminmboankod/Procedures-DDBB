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

```


