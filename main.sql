-- 1. Crear una base de datos con nombre “Posts”
CREATE DATABASE posts;
-- se una el siguiente comando para conectarse a la base de datos posts
\c posts 
-- 2. Crear una tabla “post”, con los atributos id, nombre de usuario, fecha de creación, contenido y descripción.
CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    nombre_de_usuario VARCHAR(25),
    fecha_de_creacion DATE,
    contenido VARCHAR(120),
    descripcion VARCHAR(255)
);

-- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos".
INSERT INTO
    post (
        nombre_de_usuario,
        fecha_de_creacion,
        contenido,
        descripcion
    )
VALUES
    (
        'Pamela',
        '2022-04-23',
        'dia sabado',
        'trabajando el dia sabado'
    );

INSERT INTO
    post (
        nombre_de_usuario,
        fecha_de_creacion,
        contenido,
        descripcion
    )
VALUES
    (
        'Pamela',
        '2022-04-23',
        'pensamiento',
        'me gusta mi trabajo'
    );

INSERT INTO
    post (
        nombre_de_usuario,
        fecha_de_creacion,
        contenido,
        descripcion
    )
VALUES
    (
        'Carlos',
        '2022-04-23',
        'programacion',
        'estoy aprendiendo bases de datos'
    );

-- 4. Modificar la tabla post, agregando la columna título.
ALTER TABLE
    post
ADD
    titulo VARCHAR(25);

-- 5. Agregar título a las publicaciones ya ingresadas.
UPDATE
    post
SET
    titulo = 'primer post'
WHERE
    id = 1;

UPDATE
    post
SET
    titulo = 'segundo post'
WHERE
    id = 2;

UPDATE
    post
SET
    titulo = 'programando'
WHERE
    id = 3;

-- Insertar 2 post para el usuario "Pedro".
INSERT INTO
    post (
        nombre_de_usuario,
        fecha_de_creacion,
        contenido,
        descripcion,
        titulo
    )
VALUES
    (
        'Pedro',
        '2022-04-23',
        'amor',
        'san valentin',
        'enamorado'
    );

INSERT INTO
    post (
        nombre_de_usuario,
        fecha_de_creacion,
        contenido,
        descripcion,
        titulo
    )
VALUES
    (
        'Pedro',
        '2022-04-23',
        'traicinadoo',
        'cupido me fallo',
        'despechado'
    );

-- 7. Eliminar el post de Carlos.
DELETE FROM
    post
WHERE
    nombre_de_usuario = 'Carlos';

-- 8. Ingresar un nuevo post para el usuario "Carlos".
INSERT INTO
    post (
        nombre_de_usuario,
        fecha_de_creacion,
        contenido,
        descripcion,
        titulo
    )
VALUES
    (
        'Carlos',
        '2022-04-23',
        'viajes',
        'recoriendo el mundo',
        'muy bueno mi viaje por NY'
    );

-- Parte 2
--  1. Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de
--     creación y contenido, que se relacione con la tabla posts.
CREATE TABLE comentario(
    id SERIAL PRIMARY KEY,
    post_id INT,
    fecha DATE,
    hora_de_creacion TIME,
    contenido VARCHAR(255),
    FOREIGN KEY (post_id) REFERENCES post(id)
);

-- 2. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos".
INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (
        1,
        '2022-04-23',
        '20:00:00',
        'me gusta mi trabajo'
    );

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (2, '2022-04-23', '20:02:00', 'wna felicidades');

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (6, '2022-04-24', '16:02:00', 'wn esta buenisimo');

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (
        6,
        '2022-04-24',
        '16:03:00',
        'viste la estatua de la libertad?'
    );

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (6, '2022-04-24', '17:55:10', 'maquina');

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (
        6,
        '2022-04-24',
        '18:22:00',
        'no mientas estas en arica xD'
    );

-- 3. Crear un nuevo post para "Margarita"
INSERT INTO
    post (
        nombre_de_usuario,
        fecha_de_creacion,
        contenido,
        descripcion,
        titulo
    )
VALUES
    (
        'Margarita',
        '2022-04-23',
        'restaurant',
        'el rincon de chile',
        'comer alegra el alma'
    );

-- 4. Ingresar 5 comentarios para el post de Margarita.
INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (7, '2022-04-24', '17:55:10', 'es buena?');

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (7, '2022-04-24', '17:55:11', 'si yo comi ahi');

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (7, '2022-04-24', '17:55:15', 'es riquisima');

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (
        7,
        '2022-04-24',
        '17:55:22',
        'no me gusta tanto esa comida'
    );

INSERT INTO
    comentario (post_id, fecha, hora_de_creacion, contenido)
VALUES
    (
        7,
        '2022-04-24',
        '17:59:21',
        'la mejor comida de chile'
    );