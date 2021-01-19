--1.
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees as e
INNER JOIN salaries as s 
ON e.emp_no=s.emp_no;

--2.
select first_name, last_name, hire_date from employees
where hire_date like('%1986%');

--3.
select m.dept_no, m.emp_no, d.dept_name, e.first_name, e.last_name
from dept_manager as m
left join departments as d
	on m.dept_no = d.dept_no
left join employees as e
	on m.emp_no = e.emp_no;

--4.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
	on e.emp_no = de.emp_no
left join departments as d
	on de.dept_no = d.dept_no;

--5.
select first_name, last_name, sex
from employees
	where first_name = 'Hercules'
	and last_name like('B%');
--How are there so many
--Oh, there's 300,000 people listed.  

--6.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
	on e.emp_no = de.emp_no
left join departments as d
	on de.dept_no = d.dept_no
where dept_name = 'Sales';

--7.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
	on e.emp_no = de.emp_no
left join departments as d
	on de.dept_no = d.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

--8.
select count(emp_no) as num_people, last_name
from employees
group by last_name
order by num_people desc;