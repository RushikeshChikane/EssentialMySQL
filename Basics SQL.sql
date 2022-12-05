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

/* C from this statement we fine the total price of order in desending  order with the help of multiplication symbol and alo use data from quantity order and price each column*/ 
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
/*where statement is allows you to specity search conditions for the rows return by query
statement is

select select-list from table-name where search-cindition;
*/

select * from employees;
/*1st this statements gives the value of all sales rep in jobtitle from employees*/
SELECT lastname, firstname, jobtitle FROM employees WHERE jobtitle = 'Sales Rep';

/*2nd  WHERE claus with AND operator for getting same or combine data from table*/
select lastname,firstname,jobtitle,officecode from employees where jobtitle ='Sales Rep' AND officeCode =1;

/*3rd WHERE wirh OR operator gives both data from  table*/
select lastname,firstname,jobTitle,officeCode from employees  where jobtitle ='Sales Rep' or officeCode =1 order by officeCode,jobTitle;

/*4th where with between and Operetor*/
/* between operator gives officeCode value between 1 and 3 */
select firstName,lastName,officeCode from employees where officeCode between 1 and 3 order by officeCode;

/*5th where with like operator*/
/* with like opertor we find the specific data from fname,lname ect*/
select firstName,lastName from employees where lastName like '%son' order by firstName;

/*6th where with in operatoe*/
/* in operator is use to find operators who locate i the office with office code 1*/
SELECT firstName, lastName, officeCode FROM employees WHERE officeCode IN (1 , 2, 3) ORDER BY  officeCode;

/*7 th where with null operator*/
/*it gives information about where is the null value in reportsTo table*/
select lastName,firstName,reportsTo from employees where reportsTo is Null;

/*8  where with comparison operators*/

/*<>  or !=(Not Equal to)operator*/
select lastname,firstname,jobtitle from employees where jobtitle <>'Sales Rep';
/*  > (greter than) operator */
select lastname,firstname,officeCode from employees where officeCode > 5;
/* <= (less than or equal to) operator*/
select lastname,firstname,officeCode from employees where officeCode <= 4;
  
  
  
  /*Distinct claus*/
  /*When querying data from a table, you may get duplicate rows. To remove these duplicate rows, you use the DISTINCT clause in the SELECT statement.*/
  select * from  customers;
  
  select lastname from employees order by lastname;  /*(without distinct keyword you may get duplicate datas*/
  select distinct lastname from employees order by lastname;  /*(and when we use distinct claus it delet duplicate data and gives once)*/
  select distinct state from customers;         
  
  /*distinct with multiplr columns*/
  /*when specify multiple columns with distinct claus that time  clause will gives the combination of values in these columns to determine the uniqueness of the row in the result set.*/
          /*in this statement dident shoes  duplicate  values*/          
  select distinct state,city from customers where state is not null order by  state,city;             
          /*in this statement shows the duplicate values*/
  select state ,city from customers where state is not null order by state,city;        
    
    
    /*AND operator*/
    
    
    /*A AND B*/
    /*The logical AND operator returns 1 if both A and B are non-zero and NOT NULL. For example:*/
    SELECT 1 AND 1;
    /* The logical AND operator returns 0 if A or B is zero or both A and B are zero:*/
    SELECT 1 AND 0, 0 AND 1, 0 AND 0, 0 AND NULL;
    /*The logical AND operator returns NULL if either operand is non-zero or both operands are NULL.*/
	SELECT 1 AND NULL, NULL AND NULL;
    /*This is called short-circuit evaluation. In other words, the AND operator is short-circuited. */
    SELECT 1 = 0 AND 1 / 0 ;
    
    select * from customers;
    /*in this statement we can fide the dta who have same state and country with and operator*/
    select customername,country,state from customers where country = 'USA' AND state = 'CA';
     /*in this statement we can find all unique data from customer*/
     select customername,country,state,creditlimit from customers where country='USA' and state='CA' and creditlimit > 100000;

/*OR Operator */

/*Boolean dependecy depend on true or false*/ 
SELECT 1 OR 1, 1 OR 0, 0 OR 1;
SELECT 0 OR 0;
SELECT 1 OR NULL, 0 OR NULL, NULL or NULL;
SELECT 1 = 1 OR 1 / 0;
SELECT 1 OR 0 AND 0;
SELECT (1 OR 0) AND 0;

/*by using classicmodels database and customers table*/
select * from customers;

/*inthis example we can find only 2 country customers by using OR syntax*/
select customername,country from customers where country ='usa' or country = 'france';

/*in this ex we find the customers who are from only usa and france by using or operator and  also fine who have creditlim > 100000*/ 
select customername,country,creditlimit from customers where (country='usa' or country ='france') and creditlimit >100000;

/* in this ex we cant use paranthisis() so the compiler gives all information who have 2 countries with less creditlit or > 100000 creditlimt*/
select customername,country,creditlimit from customers where country='usa' or country ='france' and creditlimit > 100000;


/* IN Opertor*/

/*The IN operator allows you to determine if a value matches any value in a list of values.*/

SELECT 1 IN (1,2,3);   /*it returns 1 because 1=1 are in list*/
SELECT 4 IN (1,2,3);   /*it returns 0 because 4 != anyone so is not available in list*/
SELECT NULL IN (1,2,3);  /*it returns null because null value are not available in list*/
SELECT 0 IN (1 , 2, 3, NULL);  /*it also return null because 0 is not equal to any value*/


/*in this ex we find the all total countries in usa and france by using in operator*/
select officeCode,city,phone,country from offices where country in ('usa' , 'france');

/*here we can see we get same uotput with or operator*/
select officeCode ,city,phone from offices where country = 'usa' or 'france';




/*NOT IN operator*/

/*The NOT operator negates the IN operator:*/
/*The NOT IN operator returns one if the value doesn’t equal any value in the list. Otherwise, it returns 0.*/

SELECT 1 NOT IN (1,2,3);  /*it shows the 1 is available in list by returnring 0*/
SELECT 0 NOT IN (1,2,3);
SELECT NULL NOT IN (1,2,3);

/*in this ex compiler shows the countrys are ot in usa and france */
select officeCode,city,phone from offices where country not in ('usa','france') order by city; 


/*BETWEEN operator*/

SELECT 15 BETWEEN 10 AND 20;  /*the following statement returns 1 because 15 is between 10 and 20*/
SELECT 15 BETWEEN 20 AND 30;  /*The following example returns 0 because 15 is not between 20 and 30*/

/*this statements helps to find out the product who have value between 90 and 100 from pruducts*/
select productCode,productName,buyPrice from products where buyPrice between 90 and 100;
/*this statements helps to find out the product who have value between 90 and 100 from pruducts*/
select productCode,productName,buyPrice from products where buyPrice >= 90 and buyPrice <=100;



/*NOT Between*/
SELECT 15 NOT BETWEEN 10 AND 20; /*the following statement returns 0 because 15 is not between 10 and 20 is not true*/
/*it shows the products who have value in not between 20 and 100*/ 
select productCode,productName,buyPrice from products where buyPrice NOT BETWEEN 20 and 100;
/*same operation using less than and gretr than operator*/
SELECT  productCode, productName, buyPrice FROM products WHERE buyPrice < 20 OR buyPrice > 100;

/*BETWEEN operator with dates example*/

/*To check if a value is between a date range, you should explicitly cast the value to the DATE type.*/
/*the following statement returns the orders with the required dates between 01/01/2003 to 01/31/2003:*/
 select orderNumber , requiredDate,status from orders where requireddate between cast('2003-01-01' as date)and cast('2003-01-31' as date);