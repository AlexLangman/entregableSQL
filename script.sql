DROP DATABASE IF EXISTS entregablesql;
CREATE DATABASE `entregablesql` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE entregablesql;

CREATE TABLE usuarios (
	id int unsigned primary key auto_increment,
    nombre varchar(30) not null,
    email varchar(40) not null);
    
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");
INSERT INTO usuarios (nombre,email) values ("Alex Langman", "alulang@hotmail.com");

    
CREATE TABLE categorias (
	id int unsigned primary key auto_increment,
    nombre varchar(30) not null);
    
INSERT INTO categorias (nombre) values ("musica");
INSERT INTO categorias (nombre) values ("deportes");
INSERT INTO categorias (nombre) values ("entretenimiento");
INSERT INTO categorias (nombre) values ("cultura");
INSERT INTO categorias (nombre) values ("cine");
INSERT INTO categorias (nombre) values ("arte");
INSERT INTO categorias (nombre) values ("cocina");
INSERT INTO categorias (nombre) values ("politica");
INSERT INTO categorias (nombre) values ("economia");
INSERT INTO categorias (nombre) values ("sociedad");

CREATE TABLE notas (
  id INT NOT NULL AUTO_INCREMENT primary key,
  titulo VARCHAR(100) NOT NULL,
  fecha_creacion DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  fecha_edicion DATETIME NULL,
  descripcion VARCHAR(100) not null,
  eliminar INT NOT NULL DEFAULT 1,
  id_usuario INT NULL,
  id_categoria INT NULL,
  --CONSTRAINT `id_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`));
  --CONSTRAINT `id_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`));
  
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 1","Descripcion nota 1",1,5);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 2","Descripcion nota 2",2,6);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 3","Descripcion nota 3",4,6);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 4","Descripcion nota 4",4,3);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 5","Descripcion nota 5",7,7);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 6","Descripcion nota 6",8,1);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 7","Descripcion nota 7",1,2);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 8","Descripcion nota 8",2,9);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 9","Descripcion nota 9",9,8);
INSERT INTO notas (titulo,descripcion,id_usuario,id_categoria) values ("Nota 10","Descripcion nota 10",2,8)