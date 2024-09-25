CREATE TABLE Transmision(
    id_transmision INT PRIMARY KEY,
    tipo_transmision VARCHAR(255) NOT NULL,
)

CREATE TABLE Color(
    id_color INT PRIMARY KEY,
    tipo_color VARCHAR(255) NOT NULL,
)

CREATE TABLE Marca(
    id_marca INT PRIMARY KEY. 
    marca VARCHAR(255) NOT NULL,
)

CREATE TABLE Combustible(
    id_combustible INT PRIMARY KEY,
    tipo_combustible VARCHAR(255) NOT NULL,
)
CREATE TABLE Estado(
    id_estado INT PRIMARY KEY,
    tipo_estado VARCHAR(255) NOT NULL,
)

CREATE TABLE Año(
    id_año INT PRIMARY KEY,
    año VARCHAR(255) NOT NULL,
)

CREATE TABLE Modelo(
    id_modelo INT PRIMARY KEY,
    precio INT NOT NULL,
    modelo VARCHAR(255) NOT NULL,
    serie VARCHAR(255) NOT NULL UNIQUE,
    FOREIGN KEY (id_año) REFERENCES Año(id_año),
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado),
    FOREIGN KEY (id_combustible) REFERENCES Combustible(id_combustible),
    FOREIGN KEY (id_marca) REFERENCES Marca(id_marca),
    FOREIGN KEY (id_color) REFERENCES Color(id_color),
    FOREIGN KEY (id_transmision) REFERENCES Transmision(id_transmision),
)

CREATE TABLE Clientes(
    id_clientes INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL UNIQUE,
    direccion VARCHAR(255) NOT NULL,
    telefono INT(10) NOT NULL UNIQUE,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
)

CREATE TABLE Ventas(
    id_venta INT PRIMARY KEY,
    Fecha INT NOT NULL,
    transaccion VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_clientes) REFERENCES Clientes(id_clientes),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor),
    FOREIGN KEY (id_metodo_pago) REFERENCES Metodo_pago(id_metodo_pago),

)

CREATE TABLE Vendedores(
    id_vendedor INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    fecha_contratacion INT NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
)

CREATE TABLE Metodo_pago(
    id_metodo_pago INT PRIMARY KEY,
    metodo VARCHAR(255) NOT NULL,
)

CREATE TABLE Mantenimiento(
    id_mantenimiento INT PRIMARY KEY,
    costo INT NOT NULL,
    fecha INT NOT NULL,
    FOREIGN KEY (id_modelo) REFERENCES Modelo(id_modelo),
    FOREIGN KEY (id_servicio) REFERENCES Servicio(id_servicio),
)

CREATE TABLE Servicio(
    id_servicio INT PRIMARY KEY,
    nombre_servicio VARCHAR(255) NOT NULL,
)