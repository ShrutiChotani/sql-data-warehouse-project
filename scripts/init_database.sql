USE master;
go

if exists(select 1 from sys.databases where name = 'DataWarehouse')
begin
	alter database DataWarehouse set SINGLE_USER with rollback immediate;
	drop database DataWarehouse;
end
go

CREATE DATABASE DataWarehouse;
go

USE DataWarehouse;
go

create schema bronze;
go

create schema silver;
go

create schema gold;
go
