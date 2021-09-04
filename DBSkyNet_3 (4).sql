-- Programador: Gary Garcia--
-- 				2017070--
-- 				IN5AM--
-- Creacion: 01/09/2021--
-- Modificaciones: 01/09/2021--				
DROP DATABASE IF EXISTS DBProyectoVentas;
CREATE DATABASE DBProyectoVentas;

USE DBProyectoVentas;

CREATE TABLE Cliente(
	codigoCliente INT NOT NULL AUTO_INCREMENT,
    DPICliente VARCHAR(15) NOT NULL,
    nombreCliente VARCHAR(200) NOT NULL,
    direccionCliente VARCHAR(150) NOT NULL,
    estadoCliente VARCHAR(150) NOT NULL,
    PRIMARY KEY PK_codigoCliente(codigoCliente)
);

CREATE TABLE Empleado(
	 codigoEmpleado INT NOT NULL AUTO_INCREMENT,
     DPIEmpleado VARCHAR(15) NOT NULL,
     nombreEmpleado VARCHAR(200) NOT NULL,
     telefonoEmpleado VARCHAR (8),
     estadoEmpleado VARCHAR(1) NOT NULL,
     user VARCHAR(8) NOT NULL,
     PRIMARY KEY PK_codigoEmpleado(codigoEmpleado)
);

CREATE TABLE Producto(
	codigoProducto INT NOT NULL AUTO_INCREMENT,
    nombresProducto VARCHAR(200) NOT NULL,
    precioProducto DOUBLE (10,2) NOT NULL,
    stock INT,
    estadoProducto VARCHAR(1) NOT NULL,
    PRIMARY KEY PK_codigoProducto(codigoProducto)
);

CREATE TABLE Ventas(
	codigoVenta INT NOT NULL AUTO_INCREMENT,
    codigoCliente INT NOT NULL,
    codigoEmpleado INT NOT NULL,
    numeroSerie VARCHAR(255) NOT NULL,
    fechaVenta DATE NOT NULL,
    monto DOUBLE(10,2) NOT NULL,
    estadoVenta VARCHAR(1) NOT NULL,
    PRIMARY KEY PK_codigoVenta(codigoVenta),
    CONSTRAINT fk_Ventas_Clientes FOREIGN KEY (codigoCliente) REFERENCES Cliente (codigoCliente),
    CONSTRAINT fk_Ventas_Empleados FOREIGN KEY (codigoEmpleado) REFERENCES Empleado (codigoEmpleado)
);

CREATE TABLE DetalleVenta(
	codigoDetalleVenta INT NOT NULL AUTO_INCREMENT,
	codigoVenta INT NOT NULL,
    codigoProducto INT NOT NULL,
    cantidad INT,
    precioVenta INT NOT NULL,
    PRIMARY KEY PK_codigoDetalleVenta(codigoDetalleVenta),
    CONSTRAINT fk_DetalleVenta_Productos FOREIGN KEY (codigoProducto) REFERENCES Producto (codigoProducto),
    CONSTRAINT fk_DetalleVenta_Ventas FOREIGN KEY (codigoVenta) REFERENCES Ventas (codigoVenta)
);

INSERT INTO Empleado(DPIEmpleado,nombreEmpleado,telefonoEmpleado,estadoEmpleado,user)
	VALUES ('1234 56789 0123', 'Pedro Armando Martinez Rojas', '12451267', '1', 'PRojas');
    
INSERT INTO Empleado(DPIEmpleado,nombreEmpleado,telefonoEmpleado,estadoEmpleado,user)
	VALUES ('8774 12566 0235', 'Raul Jaime Flores Paredes', '54369843', '1', 'RFlores');

INSERT INTO Empleado (DPIEmpleado, nombreEmpleado,telefonoEmpleado,estadoEmpleado,user)
	VALUES ('6548 91238 9823', 'Carlos Manuel Lopez Obrador', '92481823', '1', 'CLopez');
    
INSERT INTO Cliente(DPICliente,nombreCliente, direccionCliente,estadoCliente)
	VALUES ('6234 18972 8723', 'Juan Pedro Fernandez Campos', '14 calle 33 av Zona 2','1');

INSERT INTO Cliente (DPICliente,nombreCliente, direccionCliente,estadoCliente)
	VALUES ('9273 91237 2392', 'Raymundo Smith', '10 calle 1 av Zona 11', '1');
    
INSERT INTO Cliente (DPICLiente, nombreCliente, direccionCliente, estadoCliente)
	VALUES ('1827 75671 9123', 'Alejandro Jose Hernandez Paz','14 calle 9 av Residenciales "Las Lomas" Zona 3','1');
    
INSERT INTO Producto (nombresProducto, precioProducto, stock, estadoProducto)
	VALUES ('Refrigerador LG "Three Freeze"',15000, '150','1');
    
INSERT INTO Producto (nombresProducto, precioProducto, stock, estadoProducto)
	VALUES ('Televisor Samsung 56" SmartTv',10000, '64','1');

INSERT INTO Producto (nombresProducto, precioProducto, stock, estadoProducto)
	VALUES ('Computador Dell Procesador Intel i3 4gb de RAM', '3500', '200', '1');
    
INSERT INTO Ventas (codigoCliente, codigoEmpleado, numeroSerie, fechaVenta, monto, estadoVenta)
	VALUES (1, 1, '1111 1111', '2021-04-15', 10000, '1');
    
INSERT INTO Ventas (codigoCliente, codigoEmpleado, numeroSerie, fechaVenta, monto, estadoVenta)
	VALUES (2, 2, '2222 2222', '2021-05-20', 15000, '1');
    
INSERT INTO Ventas (CodigoCliente, codigoEmpleado, numeroSerie, fechaVenta, monto, estadoVenta)
	VALUES (3, 3, '3333 3333', '2021-06-10', '3500', '1');
    
INSERT INTO DetalleVenta (codigoVenta, codigoProducto, cantidad, precioVenta)
	VALUES (1, 2, '3', 30000.00);

INSERT INTO DetalleVenta (codigoVenta, codigoProducto, cantidad, precioVenta)
	VALUES (2, 1, '1', 15000.00);
    
INSERT INTO DetalleVenta (codigoVenta, codigoProducto, cantidad, precioVenta)
	VALUES (3, 3, '5', 17500);
    
    select * from empleado;
    select * from cliente;
    select * from ventas;
    select * from detalleventa;
    select * from producto;
