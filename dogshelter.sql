drop database if exists dogshelters;
create database dogshelters;
use dogshelters;

drop table if exists employee;						#1
drop table if exists job_tile;						#2
drop table if exists shelter;						#3
drop table if exists dog;							#4
drop table if exists breed;							#5
drop table if exists visit;							#6
drop table if exists pet_list;						#7
drop table if exists adoptee;						#8
drop table if exists foster;						#9
drop table if exists foster_cert;					#10
drop table if exists adoption_cert;					#11
drop table if exists favorites_list;				#12


create table shelter(
sh_id int(11),
sh_name varchar(35) unique not null,
sh_addr varchar(50) unique not null,
sh_phone varchar(15) unique not null,
primary key (sh_id)
)engine=innoDB;

insert into shelter values (13, 'Richmond SPCA','64  Jadewood Farms, Madison, NJ, 07940','973-360-8241'); 
insert into shelter values (24, 'PAWS Humane Society','100  Rogers Streett, Cincinnati, OH, 45227','513-561-2906'); 
insert into shelter values (5, 'Canine Adoption & Rescue League','4686  Bicetown Road, Bronx, NY, 10452','929-246-0513'); 
insert into shelter values (27, 'Fur University','524  Sand Fork Road, Sacramento, CA, 94268','574-626-3980'); 
insert into shelter values (9, 'Second Chance Shelter','3489  Jehovah Drive, Roanoke, VA, 24011','540-526-1157'); 
insert into shelter values (31, 'Best Friends Animal Society','2739  North Avenue, Omaha, NE, 68102','402-838-1078'); 

create table job_title(
job_id int(11),
job_title varchar(30),
job_descript varchar(100),
primary key (job_id)
)engine=innoDB;

insert into job_title values(8, 'Volunteer', 'a person who freely offers to take part in an enterprise or undertake a task');
insert into job_title values(22, 'Veterinarian', 'a person qualified to treat diseased or injured animals');
insert into job_title values(78, 'Adoption Counselor', 'a person who observes interactions between pets and potential adopters');
insert into job_title values(65, 'Animal Behavior Technician', 'Performs animal behavior assessments, ensuring consistency and repeatability of assessment criteria');
insert into job_title values(43, 'Caretaker', 'provides care and basic needs to animals that are currently housed at the shelter');


create table employees(
em_id int(11),
sh_id int(11),
job_id int(11),
em_fname varchar(30),
em_lname varchar(30),
em_start Date not null,
em_end Date,  # Volenteers have a end date
primary key (em_id, sh_id),
foreign key (sh_id) references shelter(sh_id),
foreign key (job_id) references job_title(job_id)
)engine=innoDB;

insert into employees values(6001, 31, 8, 'Shelly', 'Hines','2019-03-05', '2019-05-05');
insert into employees values(6002, 31, 8, 'Annette', 'Boisvert','2019-04-15', '2019-06-15');
insert into employees values(6003, 31, 8, 'Gordon', 'Ring','2019-03-21', '2019-05-21');
insert into employees values(6004, 31, 8, 'Harold', 'Bejarano','2019-04-13', '2019-05-13');
insert into employees values(6005, 31, 78, 'Christine', 'Flowers','2008-05-13', null);
insert into employees values(6006, 31, 43, 'Billy', 'Jackson','2007-05-13', null);
insert into employees values(6007, 31, 78, 'Nancy', 'McCafferty','2009-02-13', null);
insert into employees values(6008, 31, 78, 'Courtney', 'Chamber','2009-12-13', null);
insert into employees values(6009, 31, 65, 'Frank', 'Whitehead','2007-04-01',null);
insert into employees values(6010, 31, 22, 'Mary', 'Gosselin','2007-04-01',null);
insert into employees values(5001, 9, 8, 'Shannon', 'Perez','2019-03-05', '2019-05-05');
insert into employees values(5002, 9, 8, 'Jimmy', 'Jennings','2019-04-15', '2019-06-15');
insert into employees values(5003, 9, 8, 'Lisa', 'Popp','2019-03-21', '2019-05-21');
insert into employees values(5004, 9, 8, 'Rachel', 'McPherson','2019-04-13', '2019-05-13');
insert into employees values(5005, 9, 78, 'Margaret', 'Thompson','2008-05-13', null);
insert into employees values(5006, 9, 43, 'Molly', 'Gaytan','2007-05-13', null);
insert into employees values(5007, 9, 78, 'Laura', 'Carson','2009-02-13', null);
insert into employees values(5008, 9, 78, 'Devorah', 'Goodman','2009-12-13', null);
insert into employees values(5009, 9, 65, 'Alicia', 'Johnson','2007-04-01',null);
insert into employees values(5010, 9, 22, 'Joyce', 'Jordan','2007-04-01',null);
insert into employees values(4001, 27, 8, 'Deborah', 'Driscoll','2019-03-05', '2019-05-05');
insert into employees values(4002, 27, 8, 'Esther', 'Sellers','2019-04-15', '2019-06-15');
insert into employees values(4003, 27, 8, 'Dustin', 'Turner','2019-03-21', '2019-05-21');
insert into employees values(4004, 27, 8, 'Gregory', 'Snyder','2019-04-13', '2019-05-13');
insert into employees values(4005, 27, 78, 'Dan', 'Johnson','2008-05-13', null);
insert into employees values(4006, 27, 43, 'Peter', 'Currin','2007-05-13', null);
insert into employees values(4007, 27, 78, 'Charlyn', 'Gilbert','2009-02-13', null);
insert into employees values(4008, 27, 78, 'James', 'Holler','2009-12-13', null);
insert into employees values(4009, 27, 65, 'Ronald', 'Engstrom','2007-04-01',null);
insert into employees values(4010, 27, 22, 'Sharon', 'Walker','2007-04-01',null);
insert into employees values(3001, 5, 8, 'Wanda', 'Dempsey','2019-03-05', '2019-05-05');
insert into employees values(3002, 5, 8, 'Jennette', 'Duncan','2019-04-15', '2019-06-15');
insert into employees values(3003, 5, 8, 'Ellen', 'Brown','2019-03-21', '2019-05-21');
insert into employees values(3004, 5, 8, 'Robert', 'Veach','2019-04-13', '2019-05-13');
insert into employees values(3005, 5, 78, 'Dante', 'Ballard','2008-05-13', null);
insert into employees values(3006, 5, 43, 'Melvin', 'Boehme','2007-05-13', null);
insert into employees values(3007, 5, 78, 'Billie', 'Jean','2009-02-13', null);
insert into employees values(3008, 5, 78, 'David', 'Jara','2009-12-13', null);
insert into employees values(3009, 5, 65, 'Bradley', 'Byrd','2007-04-01',null);
insert into employees values(3010, 5, 22, 'Randolph', 'Obrien','2007-04-01',null);
insert into employees values(2001, 24, 8, 'Andrew', 'Giddens','2019-03-05', '2019-05-05');
insert into employees values(2002, 24, 8, 'Elisabeth', 'McGuire','2019-04-15', '2019-06-15');
insert into employees values(2003, 24, 8, 'Aaron', 'Ballantyne','2019-03-21', '2019-05-21');
insert into employees values(2004, 24, 8, 'Miriam', 'Wilson','2019-04-13', '2019-05-13');
insert into employees values(2005, 24, 78, 'Clinton', 'Rouillard','2008-05-13', null);
insert into employees values(2006, 24, 43, 'Peggy', 'Delaney','2007-05-13', null);
insert into employees values(2007, 24, 78, 'Glenda', 'Jackson','2009-02-13', null);
insert into employees values(2008, 24, 78, 'Paul', 'Kelly','2009-12-13', null);
insert into employees values(2009, 24, 65, 'Mark', 'Smith','2007-04-01',null);
insert into employees values(2010, 24, 22, 'Diane', 'Cudd','2007-04-01',null);
insert into employees values(1001,13, 8, 'Lindsey', 'Richardson','2019-03-05', '2019-05-05');
insert into employees values(1002,13, 8, 'Wesley', 'Rodriguez','2019-04-15', '2019-06-15');
insert into employees values(1003,13, 8, 'Allen', 'Beaudry','2019-03-21', '2019-05-21');
insert into employees values(1004,13, 8, 'Barbara', 'Cole','2019-04-13', '2019-05-13');
insert into employees values(1005,13, 78, 'Virgen', 'Davis','2008-05-13', null);
insert into employees values(1006,13, 43, 'Helen', 'Hostetler','2007-05-13', null);
insert into employees values(1007,13, 78, 'Terrance', 'Leu','2009-02-13', null);
insert into employees values(1008,13, 78, 'Patricia', 'Swarts','2009-12-13', null);
insert into employees values(1009,13, 65, 'Christian', 'Strunk','2007-04-01',null);
insert into employees values(1010,13, 22, 'Susan', 'Doyon','2007-04-01',null);

create table breed(
breed_id int(11),
breed_name varchar(30),
breed_group varchar(30),
breed_traits varchar(60),
breed_exercise varchar(30),
primary key (breed_id)
)engine=innoDB;

insert into breed values(1,'Pitbull Mix','Working','playful,docile,protective,fearless','Medium Energy');
insert into breed values(2,'Anatolian Shepherd','Working','Loyal, Independent, Reserved','High Energy');
insert into breed values(3,'Akita','Working','Courageous, Dignified, Profoundly Loyal','High Energy');
insert into breed values(4,'Alaskan Malamute','Working Group','Affectionate, Loyal, Playful','High Energy');
insert into breed values(5,'Black Russian Terrier','Terrier','Intelligent, Calm, Powerful','High Energy');
insert into breed values(6,'Labrador Retriever','Sporting','easygoing, multi-talented ,friendly,','Medium Energy');
insert into breed values(7,'German Shepherd','Herding','intelligent, capable, amazingly versatile','Medium Energy');
insert into breed values(8,'Golden Retriever','Sporting','kind, intelligent, reliable, ','Medium Energy');
insert into breed values(9,'French bulldog','Non-Sporting','affectionate, lively, patient, sociable, ','Low Energy');
insert into breed values(10,'Bulldog','Non-Sporting','willful, docile, friendly, gregarious','Low Energy');
insert into breed values(11,'Beagle','Hound','amiable, intelligent, determined, excitable','Medium Energy');
insert into breed values(12,'Rottweiler','Working','steady, fearless, obedient, good-natured','High Energy');
insert into breed values(13,'Yorkshire terrier','Toy','bold, independent, intelligent, confident','Low Energy');
insert into breed values(14,'Mixed-Breed','Sporting','affectionate, independent, good-natured, intelligent','Medium Energy');

create table dog(
dog_id int(11),
dog_name varchar(35) not null,
dog_gender varchar(30),
dog_age int(10),
dog_size varchar(30),
breed_id int(11),
sh_id int(11),
primary key(dog_id),
foreign key (breed_id) references breed(breed_id),
foreign key (sh_id) references shelter(sh_id)
)engine=innoDB;

insert into dog values(1, 'Max', 'Male', 3, 'Small', 13, 13);
insert into dog values(2, 'Charlie', 'Male', 7, 'Large', 8, 13);
insert into dog values(3, 'Cooper', 'Male', 1, 'Medium', 1, 13);
insert into dog values(4, 'Buddy', 'Male', 5, 'Medium', 1, 13);
insert into dog values(5, 'Jack', 'Male', 7, 'Medium', 1, 24);
insert into dog values(6, 'Rocky', 'Male', 2, 'Medium', 1, 24);
insert into dog values(7, 'Oliver', 'Male', 4, 'Medium', 1, 24);
insert into dog values(8, 'Bear', 'Male', 9, 'Medium', 1, 24);
insert into dog values(9, 'Duke', 'Male', 6, 'Medium', 1,24);
insert into dog values(10, 'Tucker', 'Male', 6, 'Medium', 1, 5);
insert into dog values(11, 'Bella', 'Female', 3, 'Medium', 1, 5);
insert into dog values(12, 'Lucy', 'Female', 4, 'Medium', 1, 5);
insert into dog values(13, 'Daisy', 'Female', 2, 'Medium', 1, 5);
insert into dog values(14, 'Luna', 'Female', 1, 'Medium', 1, 5);
insert into dog values(15, 'Lola', 'Female', 9, 'Medium', 1, 27);
insert into dog values(16, 'Sadie', 'Female', 6, 'Medium', 1, 27);
insert into dog values(17, 'Molly', 'Female', 7, 'Medium', 1, 27);
insert into dog values(18, 'Maggie', 'Female', 4, 'Medium', 1, 27);
insert into dog values(19, 'Bailey', 'Female', 9, 'Medium', 1, 27);
insert into dog values(20, 'Sophie', 'Female', 4, 'Medium', 1, 9);
insert into dog values(21, 'Elvis', 'Male', 5, 'Large', 4, 9);
insert into dog values(22, 'Frankie', 'Male', 10, 'Large', 5, 9);
insert into dog values(23, 'Rudy', 'Female', 4, 'Large', 7, 9);
insert into dog values(24, 'Mickey', 'Female', 8, 'Large', 2, 9);
insert into dog values(25, 'Coco', 'Female', 2, 'Medium', 10, 31);
insert into dog values(26, 'Loki', 'Female', 1, 'Small', 9, 31);
insert into dog values(27, 'Sammy', 'Female', 1, 'Small', 13, 31);
insert into dog values(28, 'Brutus', 'Male', 8, 'Large', 14, 31);
insert into dog values(29, 'Tank', 'Male', 3, 'Large', 5, 31);
insert into dog values(30, 'Ollie', 'Female', 2, 'Large', 6, 31);
insert into dog values(31, 'Yoda', 'Female', 8, 'Small', 11, 13);
insert into dog values(32, 'Tyson', 'Male', 2, 'Large', 12, 13);
insert into dog values(33, 'Chester', 'Male', 9, 'Large', 3, 13);
insert into dog values(34, 'Moose', 'Male', 3, 'Large', 4, 13);
insert into dog values(35, 'Chico', 'Male', 3, 'Large', 6, 13);


create table adoptee(
adopte_id int(11),
adopte_fname varchar(30) not null,
adopte_lname varchar(30) not null,
adopte_phone varchar(10) not null,
primary key (adopte_id)
)engine=innoDB;

insert into adoptee values(7001, 'Joanne', 'Cheek','804-224-7373');
insert into adoptee values(7002, 'George', 'Poor', '870-486-6448');
insert into adoptee values(7003, 'Brett', 'Booker', '810-732-6531');
insert into adoptee values(7004, 'Sara', 'Adams', '617-351-5834');
insert into adoptee values(7005, 'Richard', 'Rust', '304-206-9946');
insert into adoptee values(7006, 'Wade', 'McDade', '617-332-8695');
insert into adoptee values(7007, 'Joseph', 'Brown', '860-235-6099');
insert into adoptee values(7008, 'Stephen', 'Wilcox', '917-477-5703');
insert into adoptee values(7009, 'Henry', 'Thompson', '847-392-7978');
insert into adoptee values(7010, 'James', 'Bradberry', '781-272-1969');
insert into adoptee values(7011, 'Angela', 'Licht', '559-865-3882');
insert into adoptee values(7012, 'Ralph', 'McRaney', '369-800-7683');
insert into adoptee values(7013, 'Kirby', 'Ballard', '757-609-9015');
insert into adoptee values(7014, 'Constance', 'Tunnell', '409-780-0513');
insert into adoptee values(7015, 'Nancy', 'Chamberlin', '925-570-7074');
insert into adoptee values(7016, 'Jeffrey', 'Brady', '401-386-3330');
insert into adoptee values(7017, 'Dennis', 'Rios', '786-432-4694');
insert into adoptee values(7018, 'Andrea', 'Beal', '215-220-6985');
insert into adoptee values(7019, 'Debra', 'Curry', '512-459-7707');
insert into adoptee values(7020, 'John', 'Watson', '630-744-0461');
insert into adoptee values(7021, 'Wesley', 'Arocho', '978-983-6607');
insert into adoptee values(7022, 'Victor', 'Curtis', '435-760-2165');
insert into adoptee values(7023, 'David', 'Cox', '281-648-5210');
insert into adoptee values(7024, 'Frank', 'Houston', '217-540-6577');
insert into adoptee values(7025, 'Rhonda', 'Hanson', '716-318-4236');
insert into adoptee values(7026, 'Mary', 'Cummings', '303-987-5653');
insert into adoptee values(7027, 'Laurence', 'Beck', '423-636-8288');
insert into adoptee values(7028, 'Elizabeth', 'Solano', '917-565-2053');
insert into adoptee values(7029, 'Kim', 'Finnegan', '251-375-2081');
insert into adoptee values(7030, 'Rose', 'Sayers', '615-426-0698');




create table visit(
visit_id int(11),
visit_date Datetime not null,
sh_id int(11),
dog_id int(11),
adopte_id int(11),
primary key(visit_id),
foreign key (sh_id) references shelter(sh_id),
foreign key (dog_id) references dog(dog_id),
foreign key (adopte_id) references adoptee(adopte_id)
)engine=innoDB;

create table adoption_cert(
acert_id int(11),
ad_date Date not null,
dog_id int(11),
adopte_id int(11),
primary key(acert_id, dog_id, adopte_id),
foreign key (dog_id) references dog(dog_id),
foreign key (adopte_id) references adoptee(adopte_id)
)engine=innoDB;

create table foster(
foster_id int(11),
foster_fname varchar(30) not null,
foster_lname varchar(30) not null,
foster_phone varchar(10) not null,
primary key (foster_id)
)engine=innoDB;


create table foster_cert(
fcert_id int(11),
fcert_startDate Date not null,
fcert_endDate Date not null,
dog_id int(11),
foster_id  int(11),
primary key(fcert_id, dog_id, foster_id),
foreign key (dog_id) references dog(dog_id),
foreign key (foster_id) references foster(foster_id)
)engine=innoDB;


create table favorites_list(
fav_id int(11),
created_date DATE NOT NULL,
adopte_id int(11),
primary key(fav_id),
foreign key (adopte_id) references adoptee(adopte_id)
)engine=innoDB;

create table pet_list(
fav_id int(11),
dog_id int(11),
primary key(fav_id, dog_id),
foreign key (dog_id) references dog(dog_id),
foreign key (fav_id) references favorites_list(fav_id)
)engine=innoDB;





