CREATE DATABASE IF NOT EXISTS tucodigopro;

use tucodigopro;

CREATE TABLE IF NOT EXISTS comentarios(
id              int(10) auto_increment not null,
nombre          varchar(20) not null,
comentario      TEXT not null,
CONSTRAINT pk_comentarios PRIMARY KEY (id)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS ejercicios(
id              int(10) auto_increment not null,
titulo          varchar(20) not null,
descripcion     varchar(255) not null,
respuestaA      varchar(255) not null,
respuestaB      varchar(255) not null,
respuestaC      varchar(255) not null,
clave           varchar(5)   not null,
respuesta       varchar(5)   not null,
codigo          varchar(255) not null,

CONSTRAINT pk_ejercicios PRIMARY KEY (id)
)ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS articulos(
id              int(10) auto_increment not null,

titulo1         varchar(255) not null,
descripcion1    MEDIUMTEXT not null,

titulo2         varchar(255) not null,
descripcion2    MEDIUMTEXT not null,

titulo3         varchar(255) not null,
descripcion3    MEDIUMTEXT not null,

codigo          varchar(255) not null,

CONSTRAINT pk_articulos PRIMARY KEY (id)
)ENGINE=InnoDB;