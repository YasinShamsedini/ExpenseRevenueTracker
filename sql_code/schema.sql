-- Create the database if it doesn't exist (SQL Server T-SQL)
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'FinDB')
BEGIN
    CREATE DATABASE FinDB;
END;
GO  -- GO is a batch separator in SQL Server Management Studio (SSMS)

-- Use the database
USE FinDB;
GO

-- Drop tables if they exist (SQL Server T-SQL)
IF OBJECT_ID('revenues', 'U') IS NOT NULL
    DROP TABLE revenues;
GO

IF OBJECT_ID('expenses', 'U') IS NOT NULL
    DROP TABLE expenses;
GO

-- revenues table
CREATE TABLE revenues (
    revenue_id INT IDENTITY(1,1) PRIMARY KEY,
    revenue_amount DECIMAL(15, 2) NOT NULL,  
    revenue_type VARCHAR(50) NOT NULL,      
    payment_method VARCHAR(50) NOT NULL,
    income_source VARCHAR(50) NOT NULL,
    revenue_date DATE NOT NULL,            
    revenue_description TEXT NULL,          
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE()
);
GO

-- expenses table
CREATE TABLE expenses (
    expense_id INT IDENTITY(1,1) PRIMARY KEY,
    expense_amount DECIMAL(15, 2) NOT NULL, 
    expense_type VARCHAR(50) NOT NULL,       
    payment_method VARCHAR(50) NOT NULL,
    expense_source VARCHAR(50) NOT NULL,  
    expense_date DATE NOT NULL,             
    expense_description TEXT NULL,         
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE()
);
GO

  
-- Add CHECK constraints (SQL Server T-SQL)
ALTER TABLE revenues ADD CONSTRAINT CK_revenues_revenue_type CHECK (revenue_type IN ('Sales', 'Service Fee', 'Interest', 'Donation', 'Rent', 'Other'));
GO

ALTER TABLE revenues ADD CONSTRAINT CK_revenues_payment_method CHECK (payment_method IN ('Cash', 'Credit Card', 'Debit Card', 'Bank Transfer', 'PayPal', 'Else'));
GO

ALTER TABLE revenues ADD CONSTRAINT CK_revenues_income_source CHECK (income_source IN ('Main Business', 'Side Hustle', 'Investment', 'Other'));
GO

ALTER TABLE expenses ADD CONSTRAINT CK_expenses_expense_type CHECK (expense_type IN ('Rent', 'Utilities', 'Salary', 'Supplies', 'Marketing', 'Other'));
GO

ALTER TABLE expenses ADD CONSTRAINT CK_expenses_payment_method CHECK (payment_method IN ('Cash', 'Credit Card', 'Debit Card', 'Bank Transfer', 'PayPal', 'Else'));
GO

ALTER TABLE expenses ADD CONSTRAINT CK_expenses_expense_source CHECK (expense_source IN ('Checking Account', 'Savings Account', 'Credit Card', 'Other'));
GO

