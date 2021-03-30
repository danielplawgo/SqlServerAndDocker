IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Database2')
  BEGIN
    CREATE DATABASE [Database2]


    END
    GO
       USE [Database2]
    GO
--You need to check if the table exists
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Products' and xtype='U')
BEGIN
    CREATE TABLE Products (
        Id INT PRIMARY KEY IDENTITY (1, 1),
        Name VARCHAR(100)
    )
END