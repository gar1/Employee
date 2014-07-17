
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/17/2014 15:06:13
-- Generated from EDMX file: C:\Users\Grand\Documents\GitHub\Employee\EmpPay\EmpPay\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EmployeePayroll];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Payroll_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payroll] DROP CONSTRAINT [FK_Payroll_Employee];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee];
GO
IF OBJECT_ID(N'[dbo].[Payroll]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Payroll];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [EmployeeID] int IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(25)  NOT NULL,
    [LastName] varchar(25)  NOT NULL,
    [Address] varchar(30)  NOT NULL,
    [State] char(2)  NOT NULL,
    [City] varchar(25)  NOT NULL,
    [ZipCode] varchar(10)  NOT NULL
);
GO

-- Creating table 'Payrolls'
CREATE TABLE [dbo].[Payrolls] (
    [PayrollID] int IDENTITY(1,1) NOT NULL,
    [EmployeeID] int  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [EndTime] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [EmployeeID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC);
GO

-- Creating primary key on [PayrollID] in table 'Payrolls'
ALTER TABLE [dbo].[Payrolls]
ADD CONSTRAINT [PK_Payrolls]
    PRIMARY KEY CLUSTERED ([PayrollID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [EmployeeID] in table 'Payrolls'
ALTER TABLE [dbo].[Payrolls]
ADD CONSTRAINT [FK_Payroll_Employee]
    FOREIGN KEY ([EmployeeID])
    REFERENCES [dbo].[Employees]
        ([EmployeeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Payroll_Employee'
CREATE INDEX [IX_FK_Payroll_Employee]
ON [dbo].[Payrolls]
    ([EmployeeID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------