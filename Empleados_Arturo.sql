DROP DATABASE IF EXISTS empleados;
CREATE DATABASE empleados CHARACTER SET utf8mb4;
USE empleados;

CREATE TABLE departamento (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  presupuesto DOUBLE UNSIGNED NOT NULL,
  gastos DOUBLE UNSIGNED NOT NULL
);

CREATE TABLE empleado (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nif VARCHAR(9) NOT NULL UNIQUE,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  id_departamento INT UNSIGNED,
  FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamento VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamento VALUES(7, 'Publicidad', 0, 1000);

INSERT INTO empleado VALUES(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleado VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleado VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES(4, '77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleado VALUES(6, '38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleado VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES(9, '56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleado VALUES(10, '46384486H', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleado VALUES(11, '67389283A', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleado VALUES(12, '41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES(13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero', NULL);

-- Ejercicio 1: (Fase Refuerzo).
SELECT nombre, apellido1, apellido2 FROM empleado;

-- Ejercicio 2 (Fase Refuerzo).
SELECT DISTINCT apellido1 FROM empleado;

-- Ejercicio 3 (Fase Refuerzo).
SELECT * from empleado;

-- Ejercicio 4 (Fase Refuerzo).
SELECT id_departamento FROM empleado;

-- Ejercicio 5 (Fase Refuerzo).
SELECT DISTINCT id_departamento FROM empleado;

-- Ejercicio 6 (Fase Refuerzo).
SELECT CONCAT(nombre, ' ', apellido1, ' ', apellido2) AS 'Nombre' FROM empleado;

-- Ejercicio 7 (Fase Refuerzo).
SELECT LOWER(CONCAT(nombre, ' ', apellido1, ' ', apellido2)) AS 'Nombre Minúsculas' FROM empleado;

-- Eericicio 8 (Fase Refuerzo). 
SELECT id_empleado,
       SUBSTRING(nif, 1, LENGTH(nif) - 1) AS nif_digitos,
       SUBSTRING(nif, LENGTH(nif), 1) AS nif_letra
FROM empleado;

-- Ejercicio 9. (Fase Refuerzo).
SELECT nombre_departamento, (presupuesto - gastos) AS presupuesto_actual
FROM departamento;

-- Ejercicio 10. (Fase Refuerzo).
SELECT nombre_departamento, (presupuesto - gastos) AS presupuesto_actual
FROM departamento
ORDER BY presupuesto_actual ASC;

-- Ejercicio 11
SELECT nombre FROM departamento ORDER BY nombre DESC;

-- Ejercicio 12.
SELECT apellido1, apellido2, nombre FROM empleado ORDER BY apellido1, apellido2, nombre;

-- Ejercicio 13. 
SELECT nombre AS nombre_departamento, presupuesto FROM departamento ORDER BY presupuesto DESC LIMIT 3;

-- Ejercicio 14. 
SELECT nombre AS nombre_departamento, presupuesto FROM departamento ORDER BY presupuesto ASC LIMIT 3;

-- Ejercicio 15.
SELECT nombre AS nombre_departamento, gastos FROM departamento ORDER BY d.gastos DESC LIMIT 2;









