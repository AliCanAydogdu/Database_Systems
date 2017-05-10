#Create BookStore DB

Create database BookStore;

#Create tables

create table BOOK(
BookID int,
BookName varchar(45)
);

create table AUTHOR(
AuthorID int,
AuthorName varchar(45)
);

create table AUTHORBOOK(
BookID int,
AuthorID int
);

#Add primary key and foreign key constraints

alter table author
add constraint AuthorPK primary key (AuthorID)

alter table book
add constraint BookPK primary key (BookID);

alter table authorbook
add constraint BookFK foreign key (BookID) References  Book(BookID);

alter table authorbook
add constraint AuthorFK foreign key (AuthorID) References  Author(AuthorID);

#Add ‘PublishDate’ column to BOOK table.

alter table book
add column PublishDate numeric;

#Add check constraints on PublishDate column which publish date must consisting of four integers

alter table book
add constraint PublishDateCheck check(PublishDate like '[0-2][0-9][0-9][0-9]');

#Insert data to each table

Insert into values ………

#Drop PublishDate column

alter table book
drop PublishDate

#Empty AUTHOR table

truncate author;
IMPORTANT : we cannot run this command because it was been referenced. If we want to empty this table first we have to delete references 

#Copy BOOK table to BOOKEMPTY table without data

create table If not exists BOOKEMPTY like BOOK;
