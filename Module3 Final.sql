create database library;
use library;

create table Branch(
	Branch_no int primary key,
    Manager_id int,
    Branch_address varchar(100),
    Contact_no varchar(15)
);

create table Employee(
    Emp_id int primary key,
    Emp_name varchar(50),
    Position varchar(50),
    Salary float,
    Branch_no int,
   foreign key (Branch_no) references Branch(Branch_no)
);

create table Books (
    ISBN varchar(20) primary key,
    Book_title varchar(100),
    Category varchar(50),
    Rental_Price float,
    Status_ enum('yes', 'no'),
    Author varchar(100),
    Publisher varchar(100)
);

create table Customer (
    Customer_id int primary key,
    Customer_name varchar(100),
    Customer_address varchar(100),
    Reg_date date
);

create table IssueStatus (
    Issue_id int primary key,
    Issued_cust int,
    Issued_book_name varchar(100),
    Issue_date date,
    Isbn_book varchar(20),
    foreign key (Issued_cust) references Customer(Customer_id),
    foreign key (Isbn_book) references Books(ISBN)
);

create table ReturnStatus (
    Return_id int primary key,
    Return_cust int,
    Return_book_name varchar(100),
    Return_date date,
    Isbn_book2 varchar(20),
    foreign key (Isbn_book2) references Books(ISBN)
    );
    
insert into Branch (Branch_no, Manager_id, Branch_address, Contact_no) values
(1, 101, "Lanestreet A, City A", "1234567890"),
(2, 102, "Lanestreet B, City B", "2345678901"),
(3, 103, "Lanestreet C, City C", "3456789012"),
(4, 104, "Lanestreet D, City D", "4567890123"),
(5, 105, "Lanestreet E, City E", "5678901234"),
(6, 106, "Lanestreet F, City F", "1234999890"),
(7, 107, "Lanestreet G, City G", "2634999890"),
(8, 108, "Lanestreet H, City H", "4562999890");

insert into Employee (Emp_id , Emp_name, Position, Salary, Branch_no) values
(101, "Alice Johnson", "Manager", 60000.00, 1),
(102, "Baby Smith", "Assistant", 40000.00, 2),
(103, "Raghav Raj", "Librarian", 45000.00, 3),
(104, "David Siwzz", "Librarian", 47000.00, 4),
(105,  "Lenna salo" , "Assistant", 42000.00, 5),
(106, "Mike Jackson", "Manager", 70000.00, 6),
(106, "Melvin kob", "Assistant", 45000.00, 7),
(106, "Jack Will", "Liberian", 50000.00, 8);

insert into Books(ISBN, Book_title, Category, Rental_Price, Status_ , Author, Publisher)  values
('ISBN001', 'History of Europe', 'History', 20.00, 'yes', 'John Doe', 'Oxford'),
('ISBN002', 'Harry Potter', 'Fantasy', 45.00, 'yes', 'J.K Rowling', 'Bloomsbury'),
('ISBN003', 'The Lord of the Rings', 'Fantasy', 25.00, 'no', 'J.R.R Tolkein', 'Allen & Unwin'),
('ISBN004', 'Intro to Programming', 'Technology', 30.00, 'no', 'Jane Code', 'Pearson'),
('ISBN005', 'Life of Pi', 'Philosophical Novel', 35.00, 'no', 'Yann Martel', 'Knopf Canada'),
('ISBN006', 'A Little History of the World', 'History', 27.00, 'no', 'Ernst Gombrich', 'Yale University Press'),
('ISBN007', 'Data Structure', 'Technology', 22.00, 'no', 'C. Developer', 'McGraw Hill'),
('ISBN008', 'Modern Physics', 'Science', 27.00, 'yes', 'Albert Newton', 'Cambridge');

insert into Customer(Customer_id , Customer_name, Customer_address, Reg_date) values
(201, 'Megha Singh', 'Wall Street', '2021-12-15'),
(202, 'Lema Wilson', 'Vancouver', '2022-03-10'),
(203, 'Eddie Brock', 'San Francisco', '2023-06-05'),
(204, 'Peter Parker', 'Queens', '2020-08-22'),
(205, 'Bruce Dickson', 'Wayne Manor', '2023-01-01'),
(206, 'Chaven ragan', 'Wakanda', '2020-12-15'),
(207, 'Charl Walk', 'Scarton Pa', '2022-01-01'),
(208, 'Tchalla', 'Ladak Street', '2021-12-15');

insert into IssueStatus(Issue_id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) values
(301, 201, 'History of Europe', '2023-06-01', 'ISBN001'),
(302, 202, 'Harry Potter', '2023-06-15', 'BN002'),
(303, 203, 'Intro to Programming', '2023-07-10', 'ISBN004'),
(304, 204, 'The Lord of the Rings', '2023-07-25', 'ISBN003'),
(305, 201, 'Life of Pi', '2023-08-05', 'ISBN005'),
(306, 206, 'A Little History of the World', '2023-07-01', 'ISBN006'),
(307, 205, 'Modern of Physics', '2023-08-05', 'ISBN008'),
(308, 207, 'Data Structure', '2023-07-01', 'ISBN007');


insert into ReturnStatus(Return_id, Return_cust, Return_book_name, Return_date, Isbn_book2) values
(401, 201, 'History of Europe', '2023-06-10', 'ISBN001'),
(402, 202, 'Harry Potter', '2023-06-25', 'ISBN002'),
(403, 203, 'Intro to Programming', '2023-07-20', 'ISBN004'),
(404, 204, 'The Lord of the Rings', '2023-08-05', 'ISBN003'),
(405, 201, 'Life of Pi', '2023-08-15', 'ISBN005'),
(406, 206, 'A Little History of the World', '2023-08-10', 'ISBN006'),
(407, 205, 'Modern of Physics', '2023-08-15', 'ISBN008'),
(408, 207, 'Data Structure', '2023-07-10', 'ISBN007');
