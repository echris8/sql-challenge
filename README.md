# sql-challenge
Please find my homework 

--- 
For creating the diagram of the employee tables relationship, I had to make a few assumptions. 

The first assumption was with emp_no variable since it is on multiple tables. I assumed the employee table would only list each individual employee once, which made the emp_no of that table a primary key. Dept_emp and and dept_manager also had the emp_no variable, however, one employee could work in multiple deparmtents or be a manager part time in one and manager part time in the other, therefore I made those one to many dependents with the emp_no on dept_emp and dept_manager foreign keys. The salaries table also had emp_no, but I assumed each employee regarless of number of positions they are split between would only be paid once so the emp_no on the salaries would have a one to one with emp_no on the employee table (emp_no on the salaries as Foreign Key and emp_no on the employees as the primary key). 

The second assumption was with dept_no varible since it was also on multiple tables. I made the departments table dept_no the primary key, because on reviewing that dataset, each department was only listed once. The dept_no in dept_manager and dept_emp tables I made foreigin keys as one to many relationship since the department table would list each variable once but there woudl be multiple managers and employees for each department thereofre having the dept_no repeat the same variables at times. 

The last assumption I made was between the titles table and the employee table. From review, it showed the titles table had one title_id for each individual title type, listing them only once. Therefore I made that the primary key. I then saw that emp_title_id on the employee table used the same syntax for coding each individual employee's title. Therefore, I made it a one to many relationship with the titles.title_id as the primary key and emp_title_id as the foreign key. 
