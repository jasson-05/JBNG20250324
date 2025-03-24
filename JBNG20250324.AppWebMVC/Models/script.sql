-- Creaci�n de la base de datos (Creaci�n de la base de datos)
CREATE DATABASE Test20250324DB;
GO

USE Test20250324DB;
GO

-- Tabla: Warehouses (Tabla: Bodegas)
CREATE TABLE Warehouses (
    Id INT PRIMARY KEY IDENTITY(1,1), -- ID de la bodega (ID de la bodega)
    WarehouseName VARCHAR(255) NOT NULL,       -- Nombre de la bodega (Nombre de la bodega)
    Notes TEXT                                 -- Notas adicionales (Notas adicionales)
);
GO

-- Tabla: Brands (Tabla: Marcas)
CREATE TABLE Brands (
    Id INT PRIMARY KEY IDENTITY(1,1), -- ID de la marca (ID de la marca)
    BrandName VARCHAR(255) NOT NULL,       -- Nombre de la marca (Nombre de la marca)
    Country VARCHAR(255)                   -- Pa�s de origen de la marca (Pa�s de origen de la marca)
);
GO

-- Tabla: Products (Tabla: Productos)
CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),  -- ID del producto (ID del producto)
    ProductName VARCHAR(255) NOT NULL,      -- Nombre del producto (Nombre del producto)
    Description TEXT,                       -- Descripci�n del producto (Descripci�n del producto)
    Price DECIMAL(10, 2) NOT NULL,          -- Precio del producto (Precio del producto)
    PurchasePrice DECIMAL(10, 2) NOT NULL,  -- Precio compra del producto
    WarehouseID INT FOREIGN KEY REFERENCES Warehouses(Id), -- ID de la bodega (ID de la bodega)
    BrandID INT FOREIGN KEY REFERENCES Brands(Id),              -- ID de la marca (ID de la marca)
    Notes TEXT                                 -- Notas adicionales (Notas adicionales)
);
GO

-- Tabla: Users (Tabla: Usuarios)
CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),     -- ID del usuario (ID del usuario)
    Username VARCHAR(255) NOT NULL,         -- Nombre de usuario (Nombre de usuario)
    Email VARCHAR(255) UNIQUE NOT NULL,     -- Correo electr�nico del usuario (Correo electr�nico del usuario)
    Password CHAR(32) NOT NULL,     -- Hash de la contrase�a del usuario (Hash de la contrase�a del usuario)
    Role VARCHAR(50) NOT NULL,               -- Rol del usuario (Rol del usuario)
    Notes TEXT                               -- Notas adicionales (Notas adicionales)
);
GO