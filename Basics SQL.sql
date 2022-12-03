                 /*Select Statements*/

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

/*how to write select statement without usring form clause, this uses when you want to get direct functions like addition,subtraction date and time ect. u can get by this command*/
SELECT select_list;

/* get Addition directly  using SELECT select_list command*/
select 1+1;

/*this select now () command gives current  date and time*/
SELECT NOW();

/*Concate statement aad two string with each other*/
select concat("Rushikesh"," ","Chikane");

/*dual is used for dummy table*/
SELECT select_list FROM dual;

/*this expression is used for showing column info */
/*SELECT expression AS column_alias;*/
/*SELECT expression column_alias;*/
select concat("Rushikesh"," ","Chiane")as Name;
select concat("Rushikesh"," ","Chiane")as 'Full Name';
select now()as 'Current datetime';

               /*SORTING DATA*/
               
               /*ORDER by SQL statements*/
 
 /*from this command and statement we access the data in algorithm like assending order and decending order stc*/
 /*SELECT select_list FROM table_name ORDER BY column1 [ASC|DESC], column2 [ASC|DESC],...;   */     

/*by default data stored in asc order so that time u can or cannot write asc statement*/ 
 /*this command is used for showing data in asscending order*/
 /* ORDER BY column1 ASC;*/
 
 /*this command is used for showing table in decending order*/
  /* ORDER BY column1 desc;*/

/*in this statement we access data from customers table like contactFirstname and contactLastName orderd by contactLastname and by default it showing in asscending order*/

SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname;

/*in this statement we use desc statement so that time data will be shown in desending order in contactLastname*/
SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname desc;

/*in this example data will be shown like contact las name in desc order and contact first name in assending order*/
SELECT contactLastname, contactFirstname FROM customers ORDER BY contactLastname DESC , contactFirstname ASC;

/*from this statement we fine the total price of order in desending  order with the help of multiplication symbol and alo use data from quantity order and price each column*/ 
SELECT  orderNumber, orderlinenumber, quantityOrdered * priceEach FROM orderdetails ORDER BY quantityOrdered * priceEach DESC;

/*in this statement we gave subtotal name as to the total of quantity order and priceEach*/
SELECT orderNumber,orderLineNumber,quantityOrdered * priceEach AS subtotal FROM orderdetails ORDER BY subtotal DESC;

              
			/*Order by with Custom list*/
            
 /*syntax of select field              
select field('A','A',B','C'); */               

SELECT * FROM ORDERS;
/* by using custom list we show the status of Orders like  1ST ALL DATA in progress, 2ND ALL DATA on hold, 3RD ALL DATA canceled etc*/
SELECT orderNumber, status FROM orders ORDER BY FIELD(status,'In Process','On Hold','Cancelled','Resolved','Disputed','Shipped');
               
               /*Order BY and NUll*/
               
select * from employees;

select firstName, lastName, reportsTo from employees order by reportsTo;
/*in desc order*/
SELECT firstName, lastName, reportsTo FROM employees ORDER BY reportsTo DESC;


         /*FILTERING DATA*/
         
         /* 1st WHERE*/









               
               
               
               
               
               
               

