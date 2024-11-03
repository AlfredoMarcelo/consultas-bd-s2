CREATE TABLE CLIENTE (
    customer_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    fecha_registro DATE,
    email VARCHAR(100),
    telefono VARCHAR(15)
);

CREATE TABLE PRODUCTO (
    product_id INT PRIMARY KEY,
    nombre_producto VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT
);

CREATE TABLE VENTA (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    cantidad INT,
    fecha_venta DATE,
    total_venta DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES CLIENTE(customer_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCTO(product_id)
);

CREATE TABLE PERSONAL (
    staff_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(15)
);


-- INSERTAR DATOS EN LA TABLA CLIENTE
INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (1, 'Juan', 'Pérez', '2024-01-01', 'juan.perez@mail.com', '123456789');

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (2, 'Ana', 'López', '2024-01-05', 'ana.lopez@mail.com', '987654321');

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (3, 'Carlos', 'González', '2024-02-10', 'carlos.gonzalez@mail.com', '555123456');

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (4, 'María', 'Ramírez', '2024-03-15', 'maria.ramirez@mail.com', '555987654');

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (5, 'Luis', 'Martínez', '2024-04-20', 'luis.martinez@mail.com', '123123123');

-- INSERTAR DATOS EN LA TABLA PRODUCTO
INSERT INTO PRODUCTO (product_id, nombre_producto, categoria, precio, stock) 
VALUES (1, 'Laptop', 'Electrónica', 1200.50, 10);

INSERT INTO PRODUCTO (product_id, nombre_producto, categoria, precio, stock) 
VALUES (2, 'Mouse', 'Accesorios', 25.75, 50);

INSERT INTO PRODUCTO (product_id, nombre_producto, categoria, precio, stock) 
VALUES (3, 'Teclado', 'Accesorios', 45.00, 30);

INSERT INTO PRODUCTO (product_id, nombre_producto, categoria, precio, stock) 
VALUES (4, 'Monitor', 'Electrónica', 300.99, 20);

INSERT INTO PRODUCTO (product_id, nombre_producto, categoria, precio, stock) 
VALUES (5, 'Audífonos', 'Accesorios', 99.99, 15);

-- INSERTAR DATOS EN LA TABLA VENTA
INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (1, 1, 1, 1, '2024-05-01', 1200.50);

INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (2, 2, 3, 2, '2024-05-03', 90.00);

INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (3, 3, 2, 3, '2024-05-05', 77.25);

INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (4, 4, 5, 1, '2024-05-10', 99.99);

INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (5, 5, 4, 2, '2024-05-15', 601.98);

-- INSERTAR DATOS EN LA TABLA PERSONAL
INSERT INTO PERSONAL (staff_id, nombre, apellido, email, telefono) 
VALUES (1, 'Pedro', 'Gómez', 'pedro.gomez@mail.com', '321321321');

INSERT INTO PERSONAL (staff_id, nombre, apellido, email, telefono) 
VALUES (2, 'Laura', 'Mendoza', 'laura.mendoza@mail.com', '654654654');

INSERT INTO PERSONAL (staff_id, nombre, apellido, email, telefono) 
VALUES (3, 'Andrés', 'Castillo', 'andres.castillo@mail.com', '789789789');

INSERT INTO PERSONAL (staff_id, nombre, apellido, email, telefono) 
VALUES (4, 'Sofía', 'Vargas', 'sofia.vargas@mail.com', '456456456');

INSERT INTO PERSONAL (staff_id, nombre, apellido, email, telefono) 
VALUES (5, 'Miguel', 'López', 'miguel.lopez@mail.com', '987987987');

select * from cliente;

-- INSERTAR DATOS EN LA TABLA VENTA CON TO_DATE
INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (1, 1, 1, 1, TO_DATE('01-05-2024', 'DD-MM-YYYY'), 1200.50);

INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (2, 2, 3, 2, TO_DATE('03-05-2024', 'DD-MM-YYYY'), 90.00);

INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (3, 3, 2, 3, TO_DATE('05-05-2024', 'DD-MM-YYYY'), 77.25);

INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (4, 4, 5, 1, TO_DATE('10-05-2024', 'DD-MM-YYYY'), 99.99);

INSERT INTO VENTA (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) 
VALUES (5, 5, 4, 2, TO_DATE('15-05-2024', 'DD-MM-YYYY'), 601.98);


select * from cliente;

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (1, 'Juan', 'Pérez', TO_DATE('01-01-2024', 'DD-MM-YYYY'), 'juan.perez@mail.com', '123456789');

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (2, 'Ana', 'López', TO_DATE('05-01-2024', 'DD-MM-YYYY'), 'ana.lopez@mail.com', '987654321');

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (3, 'Carlos', 'González', TO_DATE('10-02-2024', 'DD-MM-YYYY'), 'carlos.gonzalez@mail.com', '555123456');

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (4, 'María', 'Ramírez', TO_DATE('15-03-2024', 'DD-MM-YYYY'), 'maria.ramirez@mail.com', '555987654');

INSERT INTO CLIENTE (customer_id, nombre, apellido, fecha_registro, email, telefono) 
VALUES (5, 'Luis', 'Fernández', TO_DATE('20-03-2024', 'DD-MM-YYYY'), 'luis.fernandez@mail.com', '555654321');


UPDATE CLIENTE
SET fecha_registro = TO_DATE('01-11-2024', 'DD-MM-YYYY')  -- Cambia la fecha al primer día del mes actual
WHERE customer_id = 5;



SELECT CONCAT(nombre, ' ') || apellido AS "Nombre Completo",
       fecha_registro AS "Fecha de Registro"
FROM cliente
WHERE EXTRACT(YEAR FROM fecha_registro) = EXTRACT(YEAR FROM SYSDATE)
AND EXTRACT(MONTH FROM fecha_registro) = EXTRACT(MONTH FROM SYSDATE)
ORDER BY fecha_registro DESC;

select * from producto;

SELECT nombre_producto,
       ROUND(precio * 1.15, 1) AS "Precio con incremento del 15%"
FROM producto
WHERE nombre_producto LIKE '%e'
AND stock > 10
ORDER BY "Precio con incremento del 15%" ASC;

select * from personal;


SELECT 
    CONCAT(nombre, ' ', apellido) AS "Nombre Completo", 
    email AS "Correo Electrónico", 
    SUBSTR(nombre,1,4) || LENGTH(email) || SUBSTR(apellido, -3) AS "Contraseña por Defecto"
FROM 
    personal
ORDER BY 
    apellido DESC, 
    nombre ASC;

SELECT 
    nombre || ' ' || apellido AS "Nombre Completo", 
    email AS "Correo Electrónico", 
    SUBSTR(nombre, 1, 4) || LENGTH(email) || SUBSTR(apellido, -3) AS "Contraseña por Defecto"
FROM 
    personal
ORDER BY 
    apellido DESC, 
    nombre ASC;

