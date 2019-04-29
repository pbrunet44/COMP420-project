create database dogshelter;
use dogshelter;

drop table if exists dog;
create table dog(
dog_id int(11),
dog_name varchar(35),
dog_age int(5),
primary key(dog_id)
)engine=innodb;

drop table if exists breed;
create table breed(
breed_id int(11),
breed_name varchar(35),
breed_temperment varchar(35),
breed_group varchar(35),
primary key (breed_id)
)engine=innodb;


drop table if exists employees;
create table employees(
employee_id int(11),
employee_code int(11),
fname varchar(35),
lname varchar(35),

)engine=innodb;


drop table if exists staff;
create table staff(

)engine=innodb;


drop table if exists volunteers;
create table volunteers(

)engine=innodb;


drop table if exists veterinarians ;
create table veterinarians (

)engine=innodb;

drop table if exists pharmacy;
create table pharmacy(

)engine=innodb;

drop table if exists drugs;
create table drugs(

)engine=innodb;


drop table if exists adoptees;
create table adoptees(

)engine=innodb;


drop table if exists foster;
create table foster(

)engine=innodb;

drop table if exists adoption_records;
create table adoption_records(

)engine=innodb;

drop table if exists health_record;
create table health_record(

)engine=innodb;



