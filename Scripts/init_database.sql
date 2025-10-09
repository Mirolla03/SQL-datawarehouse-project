-- Ctreate Database 'Datawarehouse'

USE master;
GO
-- Drop and reCreate the 'DataWarehouse' database
IF EXISTS ( SELECT 1 FROM sys.database WHERE name= 'Darawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
GO
-- Ctreate Database 'Datawarehouse'

USE DataWarehouse;

CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO
