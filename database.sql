CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;
CREATE TABLE IF NOT EXISTS `estanterias` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `descripcion` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `autores` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `estanterias` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `descripcion` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `bibliotecas` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `direccion` varchar(255) NOT NULL,
    `nombre` varchar(255) NOT NULL,
    `total_libros` int(11),
    `estanteria_id` bigint(20),
    PRIMARY KEY (`id`),
    KEY `FKghl05lfc9xofovn24l38kovnc` (`estanteria_id`),
    CONSTRAINT `FKghl05lfc9xofovn24l38kovnc` FOREIGN KEY (`estanteria_id`) REFERENCES `estanterias` (`id`)
);
CREATE TABLE IF NOT EXISTS `libros` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `titulo` varchar(255) NOT NULL,
    `autor_id` bigint(20) NOT NULL,
    `biblioteca_id` bigint(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `FKspm6r4x8iif19d9gjsrvwev65` (`autor_id`),
    KEY `FKlw6dg3l606ct267w0jrfn443g` (`biblioteca_id`),
    CONSTRAINT `FKlw6dg3l606ct267w0jrfn443g` FOREIGN KEY (`biblioteca_id`) REFERENCES `bibliotecas` (`id`),
    CONSTRAINT `FKspm6r4x8iif19d9gjsrvwev65` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`)
);