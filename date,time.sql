---time---

show timezone

create table timezones(
	ts timestamp without time zone,
	tz timestamp with time zone
)

select * from timezones

insert into timezones values(
	timestamp without time zone '2023-03-07 10:50',
	timestamp with time zone '2023-03-07 10:50'
)

---date---

select now()::date;
select current_date

select to_char(current_date,'dd/mm/yy')

select to_char(current_date,'DDD')

select to_char(current_date,'ww')

--calculate age--
select age(date'2003-02-24')

select age(date'1992/11/13',date'1800/01/01')

---finding date,day,year on thid day

select extract(day from date'1992/11/13')as day

select extract(month from date'1992/11/13')as month

select extract(year from date'1992/11/13')as year

select date_trunc('year',date'1992/11/13')

----examples---

select age(birth_date),*from employees
where(
	extract(year from age(birth_date))
)>60;

select count(birth_date) from employees
where birth_date<now()-interval'61  years'

select count(emp_no)from employees
where extract(month from hire_date)=2

select count(emp_no)from employees
where extract (month from birth_date)=11

--oldest employee
select max(age(birth_date))from employees;


select max(salary) from salaries

	--error
select *,
max(salary)
from salaries
	
select *,
max(salary) over()
from salaries

select *,
max(salary) over()
from salaries
limit 100

select *,
max(salary) over()
from salaries
where salary<70000

---find average salary of all departments
select*,
avg(salary) over()
from salaries

--

select *,
d.dept_name,
avg(salary) over()
from salaries
join dept_emp as de using (emp_no)
join departments as d using (dept_no)

select *,
d.dept_name,
avg(salary) over(
partition by d.dept_name
)
from salaries
join dept_emp as de using (emp_no)
join departments as d using (dept_no)

select *,
avg(salary) over(
partition by d.dept_name
)
from salaries
join dept_emp as de using (emp_no)
join departments as d using (dept_no)



