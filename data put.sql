use Library_DB

insert into member (member_id, first_name, last_name, email, phone, address, joinDate)
values
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '9876543210', '123 Maple Street', '2024-01-15'),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '9123456789', '45 Oak Avenue', '2024-02-10'),
(3, 'Charlie', 'Brown', 'charlie.brown@example.com', '9988776655', '78 Pine Road', '2024-03-05'),
(4, 'Diana', 'Miller', 'diana.miller@example.com', '9001122334', '56 Willow Lane', '2024-03-22'),
(5, 'Ethan', 'Williams', 'ethan.williams@example.com', '9099887766', '101 Cedar Blvd', '2024-04-01'),
(6, 'Fiona', 'Davis', 'fiona.davis@example.com', '9876501234', '22 Birch Street', '2024-05-12'),
(7, 'George', 'Clark', 'george.clark@example.com', '9765432109', '89 Elm Drive', '2024-06-07'),
(8, 'Hannah', 'Lewis', 'hannah.lewis@example.com', '9654321098', '11 Cherry Lane', '2024-07-19'),
(9, 'Ian', 'Hall', 'ian.hall@example.com', '9543210987', '34 Poplar Avenue', '2024-08-03'),
(10, 'Julia', 'Young', 'julia.young@example.com', '9432109876', '77 Spruce Court', '2024-09-15');

select * from member


insert into author (author_id, author_name, author_book)
values
(11, 'J.K. Rowling', 'Harry Potter and the Sorcerer''s Stone'),
(12, 'George R.R. Martin', 'A Game of Thrones'),
(13, 'J.R.R. Tolkien', 'The Lord of the Rings'),
(14, 'Agatha Christie', 'Murder on the Orient Express'),
(15, 'Stephen King', 'The Shining'),
(16, 'Jane Austen', 'Pride and Prejudice'),
(17, 'Dan Brown', 'The Da Vinci Code'),
(18, 'Mark Twain', 'Adventures of Huckleberry Finn'),
(19, 'Ernest Hemingway', 'The Old Man and the Sea'),
(20, 'Paulo Coelho', 'The Alchemist');

select * from author;


insert into publisher (pub_id, pub_name, pub_address, pub_phone)
values
(21, 'Penguin Random House', '1745 Broadway, New York, NY', '212-782-9000'),
(22, 'HarperCollins', '195 Broadway, New York, NY', '212-207-7000'),
(23, 'Simon & Schuster', '1230 Avenue of the Americas, NY', '212-698-7000'),
(24, 'Hachette Book Group', '1290 Avenue of the Americas, NY', '212-364-1100'),
(25, 'Macmillan Publishers', '120 Broadway, New York, NY', '646-307-5151'),
(26, 'Scholastic Inc.', '557 Broadway, New York, NY', '212-343-6100'),
(27, 'Oxford University Press', 'Great Clarendon St, Oxford, UK', '+44-1865-556767'),
(28, 'Cambridge University Press', 'University Printing House, Cambridge, UK', '+44-1223-358331'),
(29, 'Bloomsbury Publishing', '50 Bedford Square, London, UK', '+44-20-7631-5600'),
(30, 'Pearson Education', '80 Strand, London, UK', '+44-20-7010-2000');

select * from publisher;


insert into book (book_id, title, author_id, pub_id, genre, yearPublished, copiesAvailable)
values
(31, 'Harry Potter and the Sorcerer''s Stone', 11,21, 'Fantasy', 1997, 5),
(32, 'A Game of Thrones', 12, 22, 'Fantasy', 1996, 3),
(33, 'The Lord of the Rings', 13, 23, 'Fantasy', 1954, 4),
(34, 'Murder on the Orient Express', 14, 24, 'Mystery', 1934, 2),
(35, 'The Shining', 15, 25, 'Horror', 1977, 6),
(36, 'Pride and Prejudice', 16, 26, 'Romance', 1813, 3),
(37, 'The Da Vinci Code', 17, 27, 'Thriller', 2003, 5),
(38, 'Adventures of Huckleberry Finn', 18, 28, 'Adventure', 1884, 4),
(39, 'The Old Man and the Sea', 19, 29, 'Fiction', 1952, 2),
(40, 'The Alchemist', 20, 30, 'Philosophical Fiction', 1988, 7);

select * from book;


insert into issueBook (issue_id, book_id, member_id, issue_date, due_date, fine, return_date)
values
(41, 31, 1, '2024-09-01', '2024-09-15', 0.00, '2024-09-10'),
(42, 32, 2, '2024-09-05', '2024-09-20', 10.00, '2024-09-25'),
(43, 33, 3, '2024-09-07', '2024-09-21', 0.00, '2024-09-19'),
(44, 34, 4, '2024-09-10', '2024-09-24', 5.00, '2024-09-26'),
(45, 35, 5, '2024-09-12', '2024-09-27', 0.00, '2024-09-22'),
(46, 36, 6, '2024-09-15', '2024-09-30', 0.00, '2024-09-28'),
(47, 37, 7, '2024-09-18', '2024-10-03', 15.00, '2024-10-10'),
(48, 38, 8, '2024-09-20', '2024-10-05', 0.00, '2024-10-01'),
(49, 39, 9, '2024-09-25', '2024-10-10', 20.00, '2024-10-20'),
(50, 40, 10, '2024-09-28', '2024-10-13', 0.00, '2024-10-11');

select * from issueBook;

