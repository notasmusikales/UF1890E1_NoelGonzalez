CREATE TABLE dim_cliente (
	id_cliente SERIAL PRIMARY KEY,
	nombre TEXT,
	ciudad TEXT
);

CREATE TABLE dim_producto (
	id_producto SERIAL PRIMARY KEY,
	nombre TEXT,
	categoria TEXT
);

CREATE TABLE fact_ventas (
	id_venta SERIAL PRIMARY KEY,
	id_cliente INT,
	id_producto INT,
	fecha DATE,
	cantidad INT,
	precio NUMERIC,
	total NUMERIC
)