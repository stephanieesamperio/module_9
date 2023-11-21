# Module 9 - SQL Challenge
This module will show data modeling, data engineering, and data analysis.

[Links]
https://www.youtube.com/watch?v=dR5lPbGLY84 (Helped with QuickDBD)

[BACKGROUND INFORMATION]
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

[DATA MODELING]

    ![Module9ERD](https://github.com/stephanieesamperio/module_9/assets/144180948/09c8e66e-d87b-464d-b2a3-12dd13d19a00)

   **This was used as a rough draft to CREATE the tables on pgadmin, and it shows all data types, primary keys and also foreign keys.

[DATE ENGINEERING - Primary and Foreign Keys]

   -Table Name: Employees
   
   emp_no is unique number for each employee which makes it a primary key.
   
   emp_no in dept_empployees ia a foreign key to the primary key emp_no.
   
   emp_no in dept_manager, titles and salaires are foreign keys

   -Table Name: Departments
   
   dept_no is a unique number for each department which makes it a primary key.
   
   dept_no in dept_manager and dept_employees are foreign keys.




  
