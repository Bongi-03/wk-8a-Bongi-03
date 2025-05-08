
CREATE DATABASE LibraryDB;

USE LibraryDB;

-- Members Table
CREATE TABLE Members (
  MemberID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL,
  Phone VARCHAR(20)
);

-- Authors Table
CREATE TABLE Authors (
  AuthorID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100) NOT NULL
);

-- Books Table
CREATE TABLE Books (
  BookID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(100) NOT NULL,
  ISBN VARCHAR(20) UNIQUE NOT NULL,
  AuthorID INT,
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Loans Table
CREATE TABLE Loans (
  LoanID INT PRIMARY KEY AUTO_INCREMENT,
  MemberID INT,
  BookID INT,
  LoanDate DATE NOT NULL,
  ReturnDate DATE,
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
  FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Categories Table
CREATE TABLE Categories (
  CategoryID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL UNIQUE
);

-- BookCategories Junction Table (Many-to-Many)
CREATE TABLE BookCategories (
  BookID INT,
  CategoryID INT,
  PRIMARY KEY (BookID, CategoryID),
  FOREIGN KEY (BookID) REFERENCES Books(BookID),
  FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
