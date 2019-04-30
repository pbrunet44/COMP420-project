create database dogshelter;
use dogshelter;

drop table if exists employee;  			#1
drop table if exists job_tile;  			#2
drop table if exists shelter;   			#3
drop table if exists dog;       			#4
drop table if exists breed;     			#5
drop table if exists visit;  				#6
drop table if exists dog_roster;    		#7
drop table if exists adoptee;   			#8
drop table if exists foster;    			#9
drop table if exists foster_cert;			#10
drop table if exists adoption_cert; 		#11
drop table if exists favorites_list;		#12


create table shelter(
sh_id int(11),
sh_name varchar(35) unique not null,
sh_addr varchar(50) unique not null,
sh_phone varchar(10) unique not null,
primary key (sh_id)
)engine=innoDB;

create table employee(
em_id int(11),
sh_id int(11),
em_fname varchar(30),
em_lname varchar(30),
em_start Date not null,
em_end Date,     # Volenteers have a end date
primary key (em_id, sh_id),
foreign key (sh_id) references shelter(sh_id)
)engine=innoDB;

create table job_tile(
job_code int(11),
job_descript varchar(50),
primary key (job_descript)
)engine=innoDB;

create table breed(
breed_id int(11),
breed_group varchar(30),
breed_personality varchar(30),
primary key (breed_id)
)engine=innoDB;

create table dog(
dog_id int(11),
dog_name varchar(35),
dog_age int(10),
primary key(dog_id)
)engine=innoDB;

create table adoptee(
ad_id int(11),
ad_fname varchar(30),
ad_lname varchar(30),
ad_phone varchar(10),
primary key (ad_id)
)engine=innoDB;

create table visit(
v_id int(11),
v_date Date,
sh_id int(11),
dog_id int(11),
primary key(v_id)
)engine=innoDB;


