use library;

select Book_title, Category, Rental_Price
from Books
Where Status_ = 'yes';

select Emp_name, Salary
from Employee
order by Salary desc;

select b.Book_title, c.Customer_name
from IssueStatus i
join Customer c on i.Issued_cust = c.Customer_id
join Books b on i.Isbn_book = b.ISBN;

select Category, count(*) as Book_Count
from Books
group by Category;

select Emp_name, Position
from Employee
where Salary > 50000;

select c.Customer_name
from Customer c
left join IssueStatus i on c.Customer_id = i.Issued_cust
where c.Reg_date < '2022-01-01' and i.Issue_id is null;

select Branch_no, count(*) as Employee_Count
from Employee
group by Branch_no;

select distinct c.Customer_name
from IssueStatus i
join Customer c on i.Issued_cust = c.Customer_id
where month(i.Issue_date) = 6 and year(i.Issue_date) = 2023;

select Book_title
from Books
where Book_title like '%history%';

select Branch_no, count(*) as Employee_Count
from Employee
group by Branch_no
having count(*) > 5;

select e.Emp_name, b.Branch_address
from Branch b
join Employee e on b.Manager_id = e.Emp_id;

select distinct c.Customer_name
from IssueStatus i
join Customer c on i.Issued_cust = c.Customer_id
join Books b on i.Isbn_book = b.ISBN
where b.Rental_Price > 25;


