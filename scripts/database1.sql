IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Database1')
  BEGIN
    CREATE DATABASE [Database1]

    END
    GO
       USE [Database1]
    GO
--You need to check if the table exists
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Users' and xtype='U')
BEGIN
    CREATE TABLE Users (
        Id INT PRIMARY KEY IDENTITY (1, 1),
        Name VARCHAR(100)
    )
END