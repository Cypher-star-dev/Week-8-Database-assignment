# Week-8-Database-assignment
Week 8 Database Assignment



Simple Library Database Setup
This code is a set of instructions (written in SQL) to create a simple database for a library. A database as a digital filing cabinet where you store information. This set of instructions creates different "folders" (called tables) to keep track of important library stuff.

Here are the folders or tables this code creates:

Authors: A list of all the people who wrote books. It stores their first and last names.
Categories: A list of different types of books (like Science Fiction, History, Kids).
Books: A list of all the books the library has. For each book, it records its special number (ISBN), title, what type of book it is (from the Categories list), when it was published, and how many copies the library has.
BookAuthors: This helps us know which author wrote which book. Some books have more than one author, and one author writes many books, so this table links them together.
Members: A list of everyone who has joined the library. We keep their names, contact info (email, phone) and when they joined.
Staff: A list of the people who work at the library. We keep their names, contact info, job title, and when they started working.
Loans: This table keeps track of who borrowed which book and when. It records when the book is due back and when it was actually returned.

When you run this code, it builds this structure in your database system so you can start adding library information.

 How to Use This Code (Import SQL).

To make this library database on your computer, you need a program that understands SQL (like MySQL).

The code above is a script for MySQL to follow.

1.  Save the Code: Copy the entire code in answers.sql and save it in a plain text file. You can name it something simple like “library_setup.sql”. Make sure it ends with “.sql”.
2.  Open your MySQL tool (like MySQL Workbench, or the command line).
3.  Run the Script:
    In most MySQL tools, you can find an option like "Run SQL Script" or "Open SQL File". Use this to select the `library_setup.sql` file you saved.
    Click the button to execute or run the code (often looks like a lightning bolt or "Execute").
This script will first create a new database space called `LibraryDB` and then create all the tables (Authors, Books, etc.) inside it.

Once it finishes without errors, your basic library database structure will be ready to go.


