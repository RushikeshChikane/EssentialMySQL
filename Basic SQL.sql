                 /*SECTION 1*/

/*This commnd is used for Showing total available databases list in mysql*/
show databases;

/*this command is used for using the database which you created in mysql*/
use classicmodels;

/*this type of command shows the tables in our databases*/ 
show tables;

/*this select commnd are used for slecting the data from tables*/
select * from customers;
select * from employees;

/*this select list commad is used for accessing the table list from our customer table*/
select customerName from customers;

/*this command is used for accessing only last name from employee table*/
select lastName from employees;

/*this command is used for accessing only last name,first name and jobtitle from employee table*/
SELECT lastName, firstName, jobTitle FROM employees;

/*this command is used for accessing only require data which you want like last name,first name and jobtitle from employee table*/
SELECT employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle FROM   employees;


