-- Crear la base de datos
CREATE DATABASE customer_analysis;

-- Usar la base de datos
\c customer_analysis;

-- Crear la tabla clients
CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY, -- Identificador único
    client_name VARCHAR(100) NOT NULL, -- Nombre del cliente
    industry VARCHAR(100), -- Industria a la que pertenece
    contact_info VARCHAR(255) -- Información de contacto del cliente
);

-- Crear la tabla interactions
CREATE TABLE interactions (
    interaction_id SERIAL PRIMARY KEY, -- Identificador único de interacción
    client_id INTEGER REFERENCES clients(client_id), -- Relación con la tabla clients
    date DATE, -- Fecha de la interacción
    interaction_type VARCHAR(100) -- Tipo de interacción (llamada, correo, etc.)
);

-- Crear la tabla sales
CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY, -- Identificador único de venta
    client_id INTEGER REFERENCES clients(client_id), -- Relación con la tabla clients
    sale_amount DECIMAL(10,2) NOT NULL, -- Monto de la venta
    sale_date DATE NOT NULL -- Fecha de la venta
);
