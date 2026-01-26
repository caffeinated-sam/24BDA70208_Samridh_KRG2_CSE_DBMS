Library Management System Database
Student Name: Samridh Srivastava
UID: 24BDA70208
Section: 24_AIT_KRG-G2

Aim
To design and implement a Library Management System database using appropriate tables, primary keys, foreign keys, and constraints, and to perform DML operations along with DCL commands such as role creation, privilege granting, and revoking to ensure database security.

Software Requirements
Database Management System
PostgreSQL
Database Administration Tool
pgAdmin
Objective
To gain practical experience in implementing Data Definition Language (DDL), Data Manipulation Language (DML), and Data Control Language (DCL) operations in a real database environment. This will also include implementing role-based privileges to secure data.

Problem Statement
A Library wants to develop a Library Management System database to manage information about books, members, and book issue records efficiently. The database should be designed using appropriate tables, primary keys, foreign keys, and constraints to ensure data integrity.

The system must support basic database operations such as inserting records, updating existing data, and deleting obsolete entries. To ensure database security, a database role named Librarian must be created. This role should be password protected and granted SELECT, INSERT, and DELETE permissions on the required tables. The system administrator (pgAdmin) should also have the ability to revoke these permissions when required using role-based access control.

Learning Outcomes
Learned how to operate pgAdmin 4
Learned how to execute SQL queries
Learned how to create tables in SQL and insert data in tables
Procedures and Steps
Step 1: Database Setup
Install PostgreSQL and pgAdmin 4 on your system
Open pgAdmin 4 and connect to the PostgreSQL server
Create a new database named "LibraryManagement"
Verify the database is created successfully
Step 2: Table Design and Creation
Create the following tables:

Books Table
BookID (Primary Key)
Title (NOT NULL)
Author (NOT NULL)
ISBN (UNIQUE)
PublishedYear
Availability (Boolean)
Members Table
MemberID (Primary Key)
Name (NOT NULL)
Email (UNIQUE)
PhoneNumber
MembershipDate
Status (Active/Inactive)
Issue Records Table
IssueID (Primary Key)
BookID (Foreign Key → Books.BookID)
MemberID (Foreign Key → Members.MemberID)
IssueDate
ReturnDate
ActualReturnDate
Step 3: Data Manipulation Language (DML) Operations
INSERT Operations: Add sample records to each table
UPDATE Operations: Modify member information and book availability status
DELETE Operations: Remove obsolete or damaged book records and inactive members
Step 4: Data Control Language (DCL) Operations
Create Role
CREATE ROLE librarian WITH PASSWORD 'secure_password';

Grant Privileges
GRANT SELECT, INSERT, DELETE ON Books TO librarian; GRANT SELECT, INSERT, DELETE ON Members TO librarian; GRANT SELECT, INSERT, DELETE ON IssueRecords TO librarian;

Revoke Privileges
REVOKE DELETE ON Books FROM librarian; REVOKE DELETE ON Members FROM librarian; REVOKE DELETE ON IssueRecords FROM librarian;

Step 5: Query Execution and Verification
Execute SELECT queries to retrieve and verify all table data
Test INSERT operations by adding new records
Test UPDATE operations by modifying existing records
Verify role-based access control by switching to librarian user
Test privilege revocation and verify restricted access
Step 6: Documentation and Analysis
Document all SQL commands used
Verify data integrity constraints are enforced
Analyze the effectiveness of role-based access control
Create a summary of security measures implemented
