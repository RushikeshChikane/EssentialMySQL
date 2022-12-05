

               /*INSERT STATEMENT*/
               
 /*creating table*/
 
create table if not exists taskss(
            task_id int auto_increment,
            title varchar(255) not null,
            start_date date ,
            due_date date,
            priority tinyint not null default 3,
            description text,
            primary key(task_id)
            );
            
/*inserting data into taskss table*/

insert into taskss(title,priority)
            values('Learn MySQL Insert statement',1);   
            
select * from taskss;         

/*insert using default values*/

insert into taskss (title,priority)
   values ('understanding default keyword in insert statement',default);
   
 select * from taskss;  
 

 /*   Insertind DATE into tables  */

/*(1)*/

insert into taskss(title,start_date,due_date)
values('Inser date into table','2018-11-05','2022-10-10') ;  
select * from taskss;            

/*(2)*/
/* by default date syntax*/

insert into taskss(title,start_date,due_date)
values('use current date for the task',current_date(),current_date());

select * from taskss;


/*  INSERTING Multiple rows example  */

insert into taskss(title,priority)
values('My first task',1),
	  ('it is the second task',2),
      ('this is the third task of the week',3);
      
select * from taskss;      





             /*   UPDATE Statements    */
  
  /*First, find Mary’s email from the employees table using the following SELECT statement:*/
  select 
  firstname,lastname,email 
  from employees 
  where employeeNumber=1056;
 
 /*Second, update the email address of Mary to the new email*/
  update employees 
  set email = 'mary.patterson@classicmodelcars.com'
  where employeeNumber = 1056;
  
  /*Third,  execute the SELECT statement again to verify the change:*/
  select firstname,lastname, email
  from employees
  where employeeNumber=1056;
  
  
             
               