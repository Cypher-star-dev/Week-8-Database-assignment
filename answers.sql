create database LibraryDB;
use LibraryDB;

create table Authors (
  author_id int auto_increment primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  unique (first_name, last_name)
);

create table Categories (
  category_id int auto_increment primary key,
  category_name varchar(100) not null unique
);

create table Books (
  isbn varchar(13) primary key,
  title varchar(255) not null,
  category_id int not null,
  published_year year,
  copies_available int not null default 1,
  foreign key (category_id) references Categories(category_id)
);

create table BookAuthors (
  isbn varchar(13) not null,
  author_id int not null,
  primary key (isbn, author_id),
  foreign key (isbn) references Books(isbn),
  foreign key (author_id) references Authors(author_id)
);

create table Members (
  member_id int auto_increment primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  email varchar(100) not null unique,
  phone varchar(20),
  membership_date date not null default current_timestamp
);

create table Staff (
  staff_id int auto_increment primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  email varchar(100) not null unique,
  position varchar(50),
  hire_date date not null
);

create table Loans (
  loan_id int auto_increment primary key,
  member_id int not null,
  isbn varchar(13) not null,
  loan_date date not null default current_timestamp,
  due_date date not null,
  return_date date,
  foreign key (member_id) references Members(member_id),
  foreign key (isbn) references Books(isbn)
);
