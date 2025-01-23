-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS salesperson;

-- CREATE TABLES
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    email TEXT, 
    phone_number TEXT,
    company_id INTEGER,
    salesperson_id INTEGER

);
Create TABLE activity (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    type TEXT,
    activity_on TEXT,
    activity_at TEXT, 
    notes TEXT,
    contact_id INTEGER,
    salesperson_id INTEGER
); 
CREATE TABLE company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    salesperson_id INTEGER

);
Create TABLE salesperson (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT, 
    email TEXT,
    phone TEXT
);