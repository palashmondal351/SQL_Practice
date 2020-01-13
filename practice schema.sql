## Practice schema all command here will be save
create database Practicee;
use Practicee;
drop database deletee;
use Practicee;

# Creating a table
create table `Practicee`.`employee`(
`Id` int not null,
`first name` varchar(20) not null,
`last name` varchar(20) null,
`Email` varchar(20) null,
`phone number` int not null,
`age` int not null,
`city` varchar(30) null,
`Address` varchar(30) null);

# View of the table
select * from employee;

# modify a column
alter table employee 
modify Email varchar(30) null;

alter table employee 
modify phonenumber varchar(15) not null;

# add a check contrant to a column
alter table employee add constraint ageconstraintl check (age >= 0);

# add a column in a table
alter table employee add column salary int not null;

# default value for a column
alter table employee modify age int default 25;

# drop a default
alter table employee alter column age drop default;

# add primary key
alter table employee add primary key(Id);

# create an index
create index ind_Id on employee(Id);

# create table orders
create table `Practicee`.`orders`(
`Id` int not null,
`date` datetime,
`amount` double,
primary key(Id));

# add a column to a table
alter table orders add column customer_id int not null;

# add foreign key to a table
alter table orders add foreign key (customer_id)  references employee(Id);

select * from employee;
select * from orders;

# change column name 
alter table`Practicee`.`employee` 
change column `first name` `firstname` varchar(20) not null,
change column `last name` `lastname` varchar(20) not null;
alter table employee 
change column `phonenumber` `phonenumber` varchar(15) not null;

#inserting value in the sql table
insert into employee(Id, firstname, lastname, Email, phonenumber, age, city, Address, salary)
values(100,"jaya","banerjee", "jaya@gmail.com", 9876543210, 28, "durgapur", "durgapur wb", 32000);

insert into employee 
values(101,"palash","mondal", "palash@gmail.com",7044358574,28,"durgapur", "durgapur wb", 32000);

# insert multiple rows together
insert into employee 
values
(103,"pradipta","banerjee", "pridipta@yahoo.com",7096758574,32,"durgapur", "durgapur wb", 52000),
(104,"samiran","banik", "samiran@gmail.com",9610358574,28,"agartala", "agartala tp", 32500),
(105,"prasanjit","mukherjee", "mukherjee@gmail.com",7044358884,34,"asansol", "asansol wb", 35000),
(106,"arijit","nandi", "jitarijit@gmail.com",7055668574,26,"bakura", "durgapur wb", 13000),
(117,"abhinav","dutta", "abhinab@gmail.com",9635887455,30,"bangalore", "kajridanga as", 50000),
(118,"pankaj","kumar", "pankaj@gmail.com",9966358574,27,"patna", "allahabad up", 31000),
(119,"rantu","das", "dasrantu@gmail.com",7044882374,29,"bangalore", "gauhati as", 40000),
(110,"mahadev","paikar", "mahadev@gmail.com",9563458574,27,"bangalore", "mednipur wb", 80000),
(111,"manoj","samura", "manoj@hotmail.com",9963254723,26,"chennai", "chennai tn", 120000),
(112,"anirudh","sharma", "anirudh@qualcomm.in",7036978574,28,"hydrabad", "ajmir rj", 150000),
(113,"debangana","dutta", "debangana@nitd.in",9944358574,27,"burdwan", "burdwan wb", 20000),
(114,"tulika","choudhary", "tulika@nitd.in",7048655574,28,"hydrabad", "kolkata wb", 80000),
(115,"tannaya","ganguli", "tannaya@gmail.com",8065358574,25,"pune", "unknown jh", 60000),
(201,"arif","sk", "arif@gmail.com",9960358574,27,"durgapur", "burdwan wb", 32000),
(202,"ajay","misra", "ajay@gmail.com",6344358574,29,"durgapur", "mujaffapur br", 32000),
(203,"pranav","kumar", "pranav@gmail.com",7049636544,29,"kanpur", "mujaffapur br", 65000),
(204,"subrajit","patnaik", "spatnayek@iitkgp.ac.in",9634358574,27,"kharagpur", "baharampur or", 55000),
(211,"suman","jana", "jana@gmail.com",6657358574,28,"midnapur", "midnapur wb", 20000),
(212,"chiranjit","dey", "chiranjit@gmail.com",7058869544,24,"baharapur", "baharampur wb", 15000),
(213,"chiranjit","ghara", "ghara@gmail.com",5687358574,27,"midnapur", "midnapur wb", 35000),
(214,"samim","ali", "samim@gmail.com",6359845677,28,"burdwan", "burdwan wb", 20000),
(215,"shilpa","maji", "shilpa@gmail.com",9963758574,27,"jamsedpur", "jamsedpur jk", 40000),
(216,"priyajit","sen", "prijit@gmail.com",8456358574,27,"kolkata", "kolkata wb", 40000),
(1,"sheiuli","sarkar", "sheuli@gmail.com",7885568574,24,"balurghat", "balurghat wb", 20000),
(3,"shivani","singh", "shivani@gmail.com",9663587456,29,"bangalore", "allahabad up", 30000),
(301,"sisir","swarnakar", "sisir@gmail.com",9963554752,31,"bangalore", "malda wb", 40000),
(302,"sahil","sk", "shahil@gmail.com",9678856423,26,"bangalore", "kanpur up", 20000),
(303,"sonu","pratihas", "sonu@gmail.com",886958574,27,"bangalore", "mujaffapur br", 32000),
(304,"gaurav","kumar", "gauravblr@gmail.com",8865978574,25,"bangalore", "mujaffapur", 28000),
(305,"manoj","tiwari", "manoj@gmail.com",9756858574,28,"bangalore", "allahabad up", 30000),
(401,"dibyendu","pramanik", "dpramanik@gmail.com",7046987574,32,"bangalore", "malda wb", 140000),
(402,"sainath","gujjula", "sainath@macfree.in",7048865474,30,"bangalore", "katappa ap", 65000);

#insert column value
insert into employee(Id, firstname, lastname, phonenumber, age, city, Address, salary)
values
(501,"samimar","banik", 7778887574,31,"durgapur", "agartala tr", 40000),
(502,"jiban","pal", 9868787574,23,"bangalore", "raiganj wb", 20000);

insert into employee(Id, firstname, lastname, phonenumber, age, city, salary)
values
(503,"chiranjit","das", 7788567574,31,"kolkata", 20000),
(504,"suman","pal", 9868855574,23,"bangalore", 30000);

insert into employee(Id, firstname, lastname, phonenumber, age, city, salary)
values
(505,"babu","sarkar", 8869537574, 21, "balurghat", 20000),
(506,"rubel","mondal", 9638555574,24, "balurghat", 35000);

insert into employee(Id, firstname, lastname, phonenumber, age, salary)
values
(507,"gaurav","kumar", 9989537574, 23, 10000),
(508,"manoj","kumar", 9638866574,32, 35500),
(509,"krishna","yadav", 9989566334, 33, 54000);


###################################################################
#value insert for orders table
select * from orders;

insert into orders(Id, date, amount, customer_id)
values
(1,'2020-01-01 00:16:18', 660, 103);

# insert multiple rows value
insert into orders(Id, date, amount, customer_id)
values
(2,'2019-12-31 08:22:18', 360, 104),
(3,'2019-01-01 10:16:18', 60, 103),
(4,'2020-01-01 11:32:21', 20, 105),
(5,'2019-11-30 21:38:18', 1200, 202),
(6,'2019-08-12 14:23:42', 320, 204),
(7,'2019-09-11 21:32:28', 455, 202),
(8,'2019-12-13 16:22:35', 520, 304),
(9,'2020-01-01 10:22:59', 50, 402),
(10,'2020-01-01 12:38:55', 1200, 401);

insert into orders(Id, amount, customer_id)
values
(11, 300, 505),
(12, 260, 506),
(13, 50, 302),
(14, 1200, 303);

insert into orders(Id, customer_id)
values
(15, 212),
(16, 215);

select * from orders;

##########################################################################
# create a  new table from existing table
create table empsalary as 
select Id, firstname,lastname, phonenumber,salary from employee;

select * from empsalary; 

#describe a table
desc empsalary; 

# to drop a table
drop table empsalary;

#use of where clause
select Id, firstname, lastname,Email, phonenumber,city, Address, salary 
from employee where salary>50000;

# AND and OR operator
select Id, firstname, lastname, city, Address, salary 
from employee where salary>30000 and age<25;

select Id, firstname, lastname, city, Address, salary 
from employee where salary>30000 or age<25;

# update command
update employee
set firstname='samiran'
where Id=501;

#like clause
select * from employee 
where salary like '300%';

select * from employee 
where salary like '%400%';

select * from employee 
where salary like '4__0%';

select * from employee 
where salary like '%500';

select * from employee 
where salary like '5___0%';

# top cluse to select first or last records ***
select * from employee
limit 10;

# last 10 values from employee
select * from employee order by Id desc limit 10;

#order by clause
select * from employee order by firstname, salary;
select * from employee order by firstname desc;

#group by clause
select firstname , sum(salary) from employee group by firstname;

#distinct clause to find identical record
select distinct salary from employee
order by salary;

#Sorting results
select * from employee order by firstname desc;

#constraints
#alter table employee modify salary decimal(18,2) default 5000.00;
#alter table employee add constraint myUniqueconstraints unique(age, salary);

# drop a default constraints
#alter table employee alter column salary drop default;

# add a foreign key
#alter table employee add a foreign key (customer_Id) reference customer (Id);

#drop a foreign key
#alter table orders drop foreign key;

#create index
#create index empsal on orders(amount);

#delete index of a column
#alter table orders drop index empsal;

#sql join 
select firstname, lastname, salary from employee , orders
where employee.Id=orders.customer_id;

#inner join
select firstname, lastname, salary from employee inner join orders
where employee.Id=orders.customer_id;

#left join (all the record from left table and match record from the right hand table.)
select firstname, lastname, salary from orders left join employee
on employee.Id=orders.customer_id;

#right join
select firstname, lastname, salary from orders right join employee
on employee.Id=orders.customer_id;

#rename a column name
alter table orders change Id id int not null;

#full join ( mysql support only union all not full join)
select firstname, lastname, salary, amount from employee left join orders
on employee.Id=orders.customer_id
union all
select firstname, lastname, salary, amount from employee right join orders
on employee.Id=orders.customer_id;

#self join
select a.firstname, a.lastname, b.amount from employee a, orders b
where a.salary>50000 and b.amount>500;

# cartesian join
select firstname,lastname,amount 
from employee, orders;

#union  clause
select firstname, lastname, salary 
from employee left join orders
on employee.Id=orders.customer_id
union
select firstname, lastname, salary 
from employee right join orders
on employee.Id=orders.customer_id;

#union all (comeup with duplicate value)
select firstname, lastname, salary 
from employee left join orders
on employee.Id=orders.customer_id
union all
select firstname, lastname, salary 
from employee right join orders
on employee.Id=orders.customer_id;

#null value check
select firstname, lastname, salary
from employee
where city is null;

#alias syntax
select e.firstname,e.lastname, e.city, o.amount
from employee as e, orders as o
where e.Id=o.customer_id;

#index
create index empindexcomp 
on employee(city,Address, salary);

#drop index command
drop index empindexcomp on employee;

#trancate table(remove all the records of the table but the structure of the table will unchange. To parmanant
#delete a table you need to use drop command)
select * from empsalary;
truncate table empsalary;
drop table empsalary;

#create view
create view empview as 
select firstname, lastname, salary
from employee;

select * from empview;

#view with check option
create view empcheckview as 
select firstname, lastname, salary
from employee
where salary>50000 with check option;

select * from empcheckview;

#deleting rows in a view
#delete from empcheckview
#where salary=80000;

#drop a view
drop view empview,empcheckview;

#To check the third highest salary ****
select distinct salary as salary from employee
order by salary desc limit 1 offset 2;

#having clause
select sum(salary) as s from employee group by salary
having s>=100000;

select * from employee;

delete from employee
where Id=215;

#rollback a record(rollback is not working)
rollback;

#wildcard operator (like operator)
select * from employee
where firstname like 'ja%';

select * from employee
where salary like '%5000';

select * from employee
where Address like 'malda%';

#####################################  Function ########################

## Date function
#add date
select adddate('2019-06-22',31);

#convert timezone
select convert_tz('2019-06-22 12:00:00','GMT','MET');

#current date
select curdate();

# current time
select curtime();

#current date and time
select current_timestamp();

#date difference (number of date)
select datediff('2019-06-22','2015-06-24');

#date format
select date_format('2019-06-22 22:12:32','%W %M %Y'); #'Saturday June 2019'
select date_format('2019-06-22 22:12:32','%W %m %Y'); # 'Saturday 06 2019'
select date_format('2019-06-22 22:12:32','%w %m %y'); # '6 06 19'
select date_format('2019-06-22 22:12:32','%w %M %Y'); # '6 June 2019'

#day name
select dayname('2019-06-22 22:12:32');

#day of month
select dayofmonth('2019-06-22 22:12:32');

#day of week (day of week index where sunday as 1, saturday as 7)
select dayofweek('2019-06-22 22:12:32');

# day of year
select dayofyear('2019-06-22 22:12:32');

#extract year, month, date
select extract(year from '2019-06-22 22:12:32');

select extract( month from '2019-06-22 22:12:32');

select extract(day from '2019-06-22 22:12:32');

# from days
select from_days(738114);

#from unix_time (9 integer input will accept only)
select from_unixtime(999853125);

#hour time
select hour('22:12:32');

#last day
select last_day('2019-06-22');

#make date
select makedate(2019,122);

#make time
select maketime(12,15,30);

#microsecond
select microsecond('12:36:34.123456');

#minutes
select minute('2019-06-22 22:12:32');

#month
select month('2019-06-22');

#month name
select monthname('2019-06-22 22:12:32');

#current datetime
select now();

#period diff
select period_diff(96587,68435);

#second time
select sec_to_time(2378);

#system date
select sysdate();

# select time 
select time('2019-06-22 22:12:32');

#utc date
select utc_date(), utc_time();

#week 
select week('2019-06-22 22:12:32');

#week of year
select weekofyear('2019-06-22 22:12:32');

#year week
select yearweek('2019-06-22 22:12:32');

## temporary table
# to clone a table you need to first create a table then create same table with different table name
# then clone the first table data into second table or clone table. 

## sql subqueries
select * from employee 
where Id in 
(select Id from employee 
where salary>60000);

# sequences

#handeling duplicates
select distinct salary from employee 
order by salary;

#find duplicates ****
select salary, count(salary) from employee
group by salary having count(salary)>1;

select salary from employee group by salary having count(*) >= 2;


#useful function

#count 
select count(*) from employee
where salary=32000;

#max 
select max(salary) from employee;

# min
select min(salary) minimum,
max(salary) maximum from employee;

#average
select avg(salary) from employee;

select min(salary) minimum,
avg(salary) average,
max(salary) maximum from employee;

#sum
select sum(salary)
from employee 
group by(firstname);

#sqrt
select sqrt(salary) from employee;

#rand
select rand(salary) from employee;
select * from employee order by rand();

#
select * from employee;
select * from orders;

#joining of tables################################################    JOIN    ###############################
#inner join (return the matching column from both table)
select * from employee inner join orders
where employee .Id=orders.customer_id;

#left join (all records from left table and matcha record from right table)
select a.firstname, a.lastname, b.amount from employee as a 
left join orders as b on a.Id=b.customer_id;

select * from employee left join orders
on employee.Id=orders.customer_id;

#right join (all record from right table and match record from left table)
select a.firstname, a.lastname, b.amount from employee as a 
right join orders as b on a.Id=b.customer_id;

select * from employee right join orders
on employee.Id=orders.customer_id;

#cross join (cross product of first table and the second table)
select * from employee cross join orders; 

################################################ JOIN END   ################################################

# absolute
select abs(-2);

# asin
select asin(1);

# atan2
select atan2(3,6);

# ceiling
select ceiling(3.24);

#convert numeric value 
select conv(5,16,2); # 5 of base 16 converted to binary of base 2

#degrees
select degrees(pi());

# exponent
select exp(3);

# floor
select floor(3.24);

#Greatest
select greatest(2,9,7,5,3,4);

#interval
select interval(6,1,2,3,4,5,6,78,9,10);

#least or smallest
select least(2,5,8,9,7,6,4);

#log
select log(45);

#log10
select log10(10);

#mod value
select mod(12,5);

# octal value
select oct(12);

# pi
select pi();

#power
select pow(2,5);

#radians
select radians(90);

#round
select round(9.265);

#squrt
select sqrt(9);

#standard deviation
select stddev(amount) from orders;

#truncate
select truncate(5.3648704,3);

############################################### SQL STRING FUNCTION ###########################################
# ascii- return a numeric value for a given string
select ascii('2');
select ascii('pm');

#binary value
select bin(17);

#lenght of binary bit representation of a string
select bit_length('palash');

#character length
select character_length('palash');

#concatenetion
select concat('palash','mondal');

#concatenation with separetor
select concat_ws(',','palash','mondal');

#convert of a number 
select conv('a',16,2);

#elt return a particular element with the given position from a set of element
select elt(3,'palash','shahil','sonu','sisir');

#feild - return the index position of the searching element | field_in_set()
select field('palash', 'sisir', 'shahil','sonu','gaurav', 'palash','shivani');

#format(x,d)- return the number upto d decimal places
select format(235.456702,4);

#hex -hexadecimal representation
select hex(255);

#insert
select insert('palashmondal',6,7,'shivani');

#instr - return the first occurence of the character index in the given string
select instr('footbalbarbolbar','bar');

#lcase -lower case
select lcase('Palash');

#left - left selection | right - right selection
select left('hihelloshivani',7);
select right('hihelloshivani',7);

# load a file

#update table_name set column_name=load_file('path')where id=1;

#locate
select locate('jaya','shivanipalashjaya');

#lpad
select lpad('jaya',10,'palash');

#ltrim and rtrim
select ltrim('    shivani');
select rtrim('shivani  ');

#mid - cut a string in a particular length
select mid('shivani',3,7);

#oct -string represent of a octal number
select oct(14);

#position
select position('mondal' in 'palashmondalpalash');

#repeat
#select repeat('pal',4);

# replece
select replace('palash', 'a','b');

#reverse
select reverse('india');

#Soundex -return a soundex form of string
select soundex('Palash');

#space
select space(6);

#strcmp- string comparison
select strcmp('palash','palash');

#substring index
select substring_index('palash mondal shahil sk ',' ',2);

#trim
select trim('  palash mondal  ');


#############################################  INTERVIEW QUESTIONS  ##############################################


# find occurrences of a character **
select length('palash mondal') - length(replace('palash mondal', 'a', '')) as `occurrences`;


# view the table first
select * from orders;
select * from employee;

# select distince record with common field value as a summation and return the result
select customer_id, sum(amount) as amount from orders group by(customer_id);

# write an query to select first name using alies name as First_Name from employee
select firstname as First_Name from employee;

#print last 2 character of Address from employee ***
select substring(Address,-2) from employee; 

#find the position of a character in a column record
select instr(firstname, binary('a')) from employee where firstname = 'palash';

# print the name without space as lastnam name followed by firstname
select trim(concat(lastname,firstname)) as name from employee;

#full name with space in a single column
select concat(firstname,' ', lastname) as FullName from employee;

#get details about a employee
select * from employee where firstname in ('babu');

#print employee details whose salary inbetween 60000 - 150000 **
select * from employee where salary between 60000 and 150000; 

select * from orders;

# print details if an order is place in january and december ***
select * from orders where month(date)=1 or month(date)=12;

# print name and salaries whose salary in between 100000 - 150000
select concat(firstname,' ',lastname) as FullName, salary from employee where Id in 
(select Id from employee where salary
between 100000 and 150000);

select * from employee;

## select the number of employee from each state where state is the last 2 character in Address column *****
select distinct substr(Address, -2) as state, count(distinct Id) as ID from employee group by state;

#find the duplicate record
select salary, count(salary) from employee group by salary having count(salary)>1; 

# clone a table
create table cloneemployee like employee;

# clone a table without record
select * into cloneemployee from employee where 1=0;

# top 10 salary
select * from employee order by salary desc limit 10;

# n highest salary ****
select salary from employee order by salary desc limit 2,1;

# fetch record whose are getting same salary   *****
select * from employee where salary in
(select salary from employee group by salary having count(1)>1);

#second highest salary
select * from employee order by salary desc limit 1,1;
select max(salary) from employee where salary not in (select max(salary) from employee);

#fetch first 50% of the record (when Id in order)
select * from employee where Email <=(select count(Email)/2 from employee); 

#random 50% of the recor
select  * from employee where rand()<0.5;

#fetch record whose has more than 2 people in a particualr place *****
select Address, count(substr(Address,-2)) as state from employee group by Address having count(state)>2;

#number of people in the city
select city, count(city) as 'people in the city' from employee group by city;

# select last record
select * from employee where Id = (select max(Id) from employee); 

# select last 10 record
select * from employee order by Id desc limit 10;

# select highest salary from each city
select distinct city, max(salary) from employee group by city;

# select first 3 highest salary
select distinct salary from employee order by salary desc limit 3; 

# select 3 minimum salaries
select distinct salary from employee order by salary limit 3;

# city total earn
select city,sum(salary) as 'Total' from employee group by city;

# sum of salary for every state ****
select substr(Address,-2) as 'state', sum(salary) from employee group by substr(Address,-2);

# 3 min salary
select distinct salary from employee e1 where 3 = (select count(distinct salary) from employee e2 
where e1.salary >= e2.salary);

#3 max salary
select distinct salary from employee e1 where 3 = (select count(distinct salary) from employee e2
 where e1.salary<= e2.salary);
