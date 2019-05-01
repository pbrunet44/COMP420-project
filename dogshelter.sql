drop database if exists dogshelters;
create database dogshelters;
use dogshelters;

drop table if exists employee;  			#1
drop table if exists job_tile;  			#2
drop table if exists shelter;   			#3
drop table if exists dog;       			#4
drop table if exists breed;     			#5
drop table if exists visit;  				#6
drop table if exists pet_list;    	        #7
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

insert into shelter values (13, 'Richmond SPCA','64  Jadewood Farms, Madison, NJ, 07940','973-360-8241'); 
insert into shelter values (24, 'PAWS Humane Society','100  Rogers Streett, Cincinnati, OH, 45227','513-561-2906'); 
insert into shelter values (5, 'Canine Adoption & Rescue League','4686  Bicetown Road, Bronx, NY, 10452','929-246-0513'); 
insert into shelter values (27, 'Fur University','524  Sand Fork Road, Sacramento, CA, 94268','574-626-3980'); 
insert into shelter values (9, 'Second Chance Shelter','3489  Jehovah Drive, Roanoke, VA, 24011','540-526-1157'); 
insert into shelter values (31, 'Best Friends Animal Society','2739  North Avenue, Omaha, NE, 68102','402-838-1078'); 

create table job_title(
j_id int(11),
j_title varchar(30),
j_descript varchar(50),
primary key (j_id)
)engine=innoDB;

insert into job_title values(8, 'Volunteer', 'a person who freely offers to take part in an enterprise or undertake a task');
insert into job_title values(22, 'Veterinarian', 'a person qualified to treat diseased or injured animals');
insert into job_title values(78, 'Adoption Counselor', 'a person who observes interactions between pets and potential adopters');
insert into job_title values(65, 'Animal Behavior Technician', 'Performs animal behavior assessments, ensuring consistency and repeatability of assessment criteria');
insert into job_title values(43, 'Caretaker', 'provides care and basic needs to animals that are currently housed at the shelter');


create table employee(
em_id int(11),
sh_id int(11),
j_id int(11),
em_fname varchar(30),
em_lname varchar(30),
em_start Date not null,
em_end Date,  # Volenteers have a end date
primary key (em_id, sh_id),
foreign key (sh_id) references shelter(sh_id),
foreign key (j_id) references job_title(j_id)
)engine=innoDB;


create table breed(
b_id int(11),
b_group varchar(30),
b_traits varchar(30),
b_exercise varchar(30),
primary key (b_id)
)engine=innoDB;

create table dog(
d_id int(11),
d_name varchar(35) not null,
d_age int(10),
d_size varchar(30),
b_id int(11),
primary key(d_id),
foreign key (b_id) references breed(b_id)
)engine=innoDB;

create table adoptee(
a_id int(11),
a_fname varchar(30) not null,
a_lname varchar(30) not null,
a_phone varchar(10) not null,
primary key (a_id)
)engine=innoDB;

create table visit(
v_id int(11),
v_date Datetime not null,
sh_id int(11),
d_id int(11),
a_id int(11),
primary key(v_id),
foreign key (sh_id) references shelter(sh_id),
foreign key (d_id) references dog(d_id),
foreign key (a_id) references adoptee(a_id)
)engine=innoDB;

create table adoption_cert(
c_id int(11),
ad_date Date not null,
d_id int(11),
a_id int(11),
primary key(c_id, d_id, a_id),
foreign key (d_id) references dog(d_id),
foreign key (a_id) references adoptee(a_id)
)engine=innoDB;

create table foster(
f_id int(11),
f_fname varchar(30) not null,
f_lname varchar(30) not null,
f_phone varchar(10) not null,
primary key (f_id)
)engine=innoDB;


create table foster_cert(
fc_id int(11),
fc_startDate Date not null,
fc_endDate Date not null,
d_id int(11),
f_id  int(11),
primary key(fc_id, d_id, f_id),
foreign key (d_id) references dog(d_id),
foreign key (f_id) references foster(f_id)
)engine=innoDB;


create table favorites_list(
fav_id int(11),
created_date DATE NOT NULL,
a_id int(11),
primary key(fav_id),
foreign key (a_id) references adoptee(a_id)
)engine=innoDB;

create table pet_list(
fav_id int(11),
d_id int(11),
primary key(fav_id, d_id),
foreign key (d_id) references dog(d_id),
foreign key (fav_id) references favorites_list(fav_id)
)engine=innoDB;





