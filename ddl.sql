

                 /*1) CREATING TABLE */
                 
                 
                 
use classicmodels;

/*creating table*/
create table if not exists tasks(
       task_id int auto_increment primary key,
       title varchar(255) not null,
       start_date date,
       due_date date,
       status tinyint not null,
       priority tinyint not null,
       description text,
       create_at timestamp default current_timestamp
       )engine=InnoDB;
     
   /* this describe keyword are used to describing the tasks table which you create*/  
  describe tasks;     
  
  /*creating table with primery and foreign key*/
  
  create table if not exists checklists(
          todo_id int auto_increment,
          task_id int,
          todo varchar(255) not null,
          is_complete boolean not null default false,
          primary  key (todo_id, task_id),
          foreign key(task_id)
          references tasks (task_id) 
          on update restrict
          on delete cascade
          );
          
       show tables;
        describe checklists;
       
       
       /*creating mysql sequence example*/
      
      /*creating emp table who containing first name as primary key , and last name*/ 
    
    create table emp(
               emp_no int auto_increment primary key,
               first_name varchar(50),
               last_name varchar(50)
               );
               
               /*showing all tables n classicmpdels database*/
               show tables;
               
               /*describing the emp table*/
               describe emp;
               
/*Inserting data into emp table*/
          
insert into emp(first_name,last_Name)
                       values('John','Doe'),
							('Mary','Jane');
               
/* showing data available in emp table*/     
	  select * from emp;   
             
/*deleting some data from emp table*/
     delete from emp where emp_no =2;
             
/*inserting new emp*/
    insert into emp (first_name,last_name)
                values('Jak','Lee');
               
select * from emp;
               
            


                      /*ALTERING TABLE*/  
                      
       /*creating normal table */
       
 create table vehicles(
         vehicleId int,
         year int not null,
         make varchar(100) not null,
         primary key(vehicleId)
         );
                
   show tables;     
   select * from vehicles;


/*added a new columes by alter syntax*/

alter table vehicles 
add model varchar(100) not null;

describe vehicles;
select * from vehicles;
   
   
   /*altering (ading) two columns in vehicles simulteniously*/
   /*from alter add operation we add the new columns in the vehicles table*/
   
  alter table vehicles 
        add color varchar(100),
        add note varchar(200);
        
  describe vehicles;      
  select * from vehicles;
  
  
  
  /*Modifing note column from vehicles table  varchar(200)to (250)*/
  /*from this function single modification can do in the column*/
  
  alter table vehicles
   modify note varchar (250) not null;
   
 describe vehicles;  
 
 
 /*Modifiying multiple columns simulteniously*/
 /*from this function we modify the multiple columns line their datatype*/
 
 alter table vehicles 
 modify year smallint not null,
 modify color varchar(20) null after make;
 
 describe vehicles;
 
 
 /*Alter table - Rename a column in table*/
 
 /* from this function we change the note column name to the vehicliCondition*/
 alter table vehicles
 change column note vehicleCondition varchar(100)not null;
 
 describe vehicles;
 
 
 /*DROP a column*/
 
 /*by drop function we delete the vehicleCondition column from vehivcles table*/
 alter table vehicles
 drop column vehicleCondition;
 
 describe vehicles;
 
 
 
 /*Renaming Table*/
 
 /*from reaming table we can rename the vehivles table to cars*/
 alter table vehicles 
    rename to Cars;
   
   show tables;
       
       
       
       
       /*DROP TABLES*/
       
       
	/*droping (deleting) single table*/
   
   /* creating insurances name able*/
    create table insurances(
                id int auto_increment,
                title varchar (100) not null,
                effectiveDate date not null,
                duration int not null,
                amount dec(10 ,2) not null,
                primary key(id)
                );
                
     show tables;           
    /*droping (deleting) insurances table*/            
    
    drop table insurances;  
    
    show tables;
    
    
    /*  Droping multible tables simulteniously*/
    
    /*creating two tables*/
create table CarAccessories(
              id int auto_increment,
              name varchar(60) not null,
              price dec(10,2) not null,
              primary key(id)
              );
              
create table CarGadgets(
                id int auto_increment,
                name varchar(203) not null,
                price dec(10,2)not null,
                primary key(id)
                );
                
 show tables;  
 
 /*deleting two tables simulteniously*/
 
 drop table CarAccessories, CarGadgets;
  show tables; 
  
  /*show warning gives a msg of warnings*/
  show warnings;
    
    