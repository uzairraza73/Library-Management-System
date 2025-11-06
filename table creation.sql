create database Library_DB

create table member (
member_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) unique not null,
phone varchar(15),
address varchar(50),
joinDate date
);

create table author (
author_id int primary key,
author_name varchar(50),
author_book varchar(50)
);

create table publisher (
pub_id int primary key,
pub_name varchar(50),
pub_address varchar(50),
pub_phone varchar(50)
);

create table book (
book_id int primary key,
title varchar(50),
author_id int,
pub_id int,
genre varchar(50),
yearPublished int,
copiesAvailable int default 1,
foreign key (author_id) references author (author_id),
foreign key (pub_id) references publisher (pub_id)
);

create table issueBook (
issue_id int primary key,
book_id int,
member_id int,
issue_date date,
due_date date,
fine decimal (8,2),
return_date date,
foreign key (book_id) references book (book_id),
foreign key (member_id) references member (member_id)
);

