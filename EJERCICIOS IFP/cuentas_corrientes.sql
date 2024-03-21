create schema banco;

CREATE TABLE cuentas_corrientes (
    numero_cuenta INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    saldo DECIMAL(10, 2)
);

INSERT INTO cuentas_corrientes (numero_cuenta, nombre, apellido1, apellido2, saldo) VALUES
(1, 'Juan', 'García', 'López', 1500.00),
(2, 'María', 'Martínez', 'Pérez', 2000.00),
(3, 'Pedro', 'Gómez', 'Rodríguez', 1800.00),
(4, 'Laura', 'Díaz', 'Sánchez', 2500.00),
(5, 'Carlos', 'Fernández', 'Gutiérrez', 3000.00),
(6, 'Ana', 'López', 'Martínez', 1700.00),
(7, 'Javier', 'Sánchez', 'Ruiz', 2200.00),
(8, 'Elena', 'Pérez', 'Gómez', 2700.00),
(9, 'Sara', 'Muñoz', 'Díaz', 1900.00),
(10, 'David', 'Rodríguez', 'Jiménez', 2300.00);




