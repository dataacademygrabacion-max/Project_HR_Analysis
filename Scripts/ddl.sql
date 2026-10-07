--Creacion de tablas 
-- -- -- -- -- -- --
-- DATA EXTRACCION --
-- -- -- -- -- -- --
/*
QUIERO QUECREES UNA TABLA EN SQL SERVER PARA PODER CAR MI CSV DE MI PROYECTO EL CUAL TIENE LAS SIGUIENTES 
COLUMNAS Y TE DOY LAS 4 PRIMERAS FILAS PARA QUE INFIERAS EL MEJOR TIPO DE DATO PERO A LA VES TENGA FEXIBILIDAD :

*/
---------------------------------
-- CARGA EMPLEADOS
---------------------------------


CREATE TABLE Employee (
    -- Alfanumérico por el formato '3012-1A41'
    EmployeeID              NVARCHAR(50) PRIMARY KEY, 
    FirstName               NVARCHAR(100),
    LastName                NVARCHAR(100),
    Gender                  NVARCHAR(50),
    Age                     INT,
    BusinessTravel          NVARCHAR(100),
    Department              NVARCHAR(100),
    [DistanceFromHome (KM)] INT, -- Entre corchetes por el espacio y paréntesis
    State                   NVARCHAR(10), 
    Ethnicity               NVARCHAR(100),
    Education               INT, -- Es un nivel (1-5)
    EducationField          NVARCHAR(100),
    JobRole                 NVARCHAR(100),
    MaritalStatus           NVARCHAR(50),
    Salary                  DECIMAL(18, 2), -- Para manejar montos grandes con decimales
    StockOptionLevel        INT,
    OverTime                NVARCHAR(10),
    HireDate                DATE, -- El formato YYYY-MM-DD es nativo de SQL
    Attrition               NVARCHAR(10),
    YearsAtCompany          INT,
    YearsInMostRecentRole   INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager    INT
);
