# wk-8a-Bongi-03

# Library Management System Database

## Project Description

This project is a relational database design for a **Library Management System**, built using **MySQL**. It manages information about members, books, authors, book categories, and loans. The system keeps track of which member borrowed which book, when it was borrowed, and its return date.

The database is structured with proper **Primary Keys**, **Foreign Keys**, and constraints like **NOT NULL** and **UNIQUE** to ensure data integrity and enforce relationships between entities.

---

## Project Structure

- `LibraryDB.sql` — Contains all the `CREATE TABLE` statements and constraints for the database.

---

## How to Set Up and Run

1. Install **MySQL Server** (if not already installed).
2. Open your MySQL Workbench or preferred SQL client.
3. Create a new database (optional):

    ```sql
    CREATE DATABASE LibraryDB;
    USE LibraryDB;
    ```

4. Run the SQL script:

    - Open `LibraryDB.sql`
    - Execute the script to create all tables and relationships.

---

## Entity Relationship Diagram (ERD)

*Note: You can draw this diagram using any tool like dbdiagram.io or Draw.io.*

**Entities:**
- Members
- Authors
- Books
- Loans
- Categories
- BookCategories (junction table for Many-to-Many)

**Key Relationships:**
- One Author ➝ Many Books
- One Member ➝ Many Loans
- One Book ➝ Many Loans
- Many Books ➝ Many Categories (via BookCategories)

---

## Technologies Used

- **MySQL 8+**
- **SQL (DDL Statements)**

---

## Author

Bongiwe Mavuso
