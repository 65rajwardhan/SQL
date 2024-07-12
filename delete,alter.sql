---Delete

select * from job
	
insert into job(job_name)
values
  ('cowboy')


delete from job
where job_name='cowboy'
returning job_id,job_name


---alter

create table information(
	info_id serial primary key,
	title varchar(500) not null,
	person varchar(50) not null unique
)

select * from information

alter table information
rename to new_info

select * from new_info

alter table new_info
rename column person to people

--show error because of null in line 19
insert into new_info(title)
values
  ('some new title')

--null is drop so we can insert values in title
alter table new_info
alter column people drop not null

insert into new_info(title)
values
  ('some new title')

---drop
	
alter table table_name
drop column col_name
--to remove alldependencies
alter table table_name
drop column col_name cascade
--chect existance to avoid error
alter table table_name
drop column if existd col_name
---drop multiple col
alter table table_name
drop column col_one,
drop column col_two

---example
select * from new_info

alter table new_info
drop column people

alter table new_info 
drop column if exists people

---check

create table employees(
	emp_id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	birthdate date check (birthdate > '1900-01-01'),
	hire_date date check (hire_date > birthdate),
	salary integer check (salary > 0)
)

insert into employees(
	first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)

values
('jose','portilla','1990-11-03','2010-01-01',100)

insert into employees(
	first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)

values
('raj','jadhav','1990-11-03','2010-01-01',100)

select * from employees

