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
drop table if exists adopter;						#8
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
title varchar(30),
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
insert into breed values(4,'Alaskan Malamute','Working','Affectionate, Loyal, Playful','High Energy');
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


create table adopter(
adopte_id int(11),
adopte_fname varchar(30) not null,
adopte_lname varchar(30) not null,
adopte_phone varchar(15) not null,
primary key (adopte_id)
)engine=innoDB;

insert into adopter values(7001, 'Joanne', 'Cheek','804-224-7373');
insert into adopter values(7002, 'George', 'Poor', '870-486-6448');
insert into adopter values(7003, 'Brett', 'Booker', '810-732-6531');
insert into adopter values(7004, 'Sara', 'Adams', '617-351-5834');
insert into adopter values(7005, 'Richard', 'Rust', '304-206-9946');
insert into adopter values(7006, 'Wade', 'McDade', '617-332-8695');
insert into adopter values(7007, 'Joseph', 'Brown', '860-235-6099');
insert into adopter values(7008, 'Stephen', 'Wilcox', '917-477-5703');
insert into adopter values(7009, 'Henry', 'Thompson', '847-392-7978');
insert into adopter values(7010, 'James', 'Bradberry', '781-272-1969');
insert into adopter values(7011, 'Angela', 'Licht', '559-865-3882');
insert into adopter values(7012, 'Ralph', 'McRaney', '369-800-7683');
insert into adopter values(7013, 'Kirby', 'Ballard', '757-609-9015');
insert into adopter values(7014, 'Constance', 'Tunnell', '409-780-0513');
insert into adopter values(7015, 'Nancy', 'Chamberlin', '925-570-7074');
insert into adopter values(7016, 'Jeffrey', 'Brady', '401-386-3330');
insert into adopter values(7017, 'Dennis', 'Rios', '786-432-4694');
insert into adopter values(7018, 'Andrea', 'Beal', '215-220-6985');
insert into adopter values(7019, 'Debra', 'Curry', '512-459-7707');
insert into adopter values(7020, 'John', 'Watson', '630-744-0461');
insert into adopter values(7021, 'Wesley', 'Arocho', '978-983-6607');
insert into adopter values(7022, 'Victor', 'Curtis', '435-760-2165');
insert into adopter values(7023, 'David', 'Cox', '281-648-5210');
insert into adopter values(7024, 'Frank', 'Houston', '217-540-6577');
insert into adopter values(7025, 'Rhonda', 'Hanson', '716-318-4236');
insert into adopter values(7026, 'Mary', 'Cummings', '303-987-5653');
insert into adopter values(7027, 'Laurence', 'Beck', '423-636-8288');
insert into adopter values(7028, 'Elizabeth', 'Solano', '917-565-2053');
insert into adopter values(7029, 'Kim', 'Finnegan', '251-375-2081');
insert into adopter values(7030, 'Rose', 'Sayers', '615-426-0698');

create table visit(
visit_id int(11),
visit_date Datetime not null,
sh_id int(11),
dog_id int(11),
adopte_id int(11),
primary key(visit_id),
foreign key (sh_id) references shelter(sh_id),
foreign key (dog_id) references dog(dog_id),
foreign key (adopte_id) references adopter(adopte_id)
)engine=innoDB;

insert into visit values (3001, '2018-05-24 12:00', 13, 1, 7001),
(3002, '2018-06-02 09:25', 13, 4, 7002),
(3003, '2018-06-04 10:10', 13, 1, 7001),
(3004, '2018-06-04 15:30', 24, 7, 7003),
(3005, '2018-06-07 14:00', 5, 12, 7030),
(3006, '2018-06-13 10:00', 27, 15, 7029),
(3007, '2018-06-15 13:10', 27, 19, 7017),
(3008, '2018-07-01 09:10',5, 11, 7013),
(3009, '2018-07-12 12:30', 5, 14, 7012),
(3010, '2018-07-20 14:10', 5, 13, 7009),
(3011, '2018-07-21 14:50', 24, 9, 7005),
(3012, '2018-07-28 09:50', 5, 14, 7007),
(3013, '2018-07-29 12:00', 24, 8, 7003),
(3014, '2018-07-30 13:10', 24, 6, 7025),
(3015, '2018-08-02 15:40', 5, 13, 7022),
(3016, '2018-08-03 14:50', 5, 11, 7023),
(3017, '2018-08-11 17:00', 24, 5, 7014),
(3018, '2018-08-19 15:40', 13, 3, 7016),
(3019, '2018-08-20 16:20', 13, 2, 7015),
(3020, '2018-08-27 09:40', 5, 10, 7003),
(3021, '2018-08-29 14:10', 31, 30, 7018),
(3022, '2018-08-30 12:50', 9, 24, 7019),
(3023, '2018-09-01 14:30', 31, 25, 7020),
(3024, '2018-09-15 15:50', 9, 21, 7004),
(3025, '2018-09-21 13:20', 9, 22, 7006),
(3026, '2018-10-01 09:30', 31, 27, 7009),
(3027, '2018-10-02 10:50', 9, 23, 7010),
(3028, '2018-10-13 14:00', 31, 30, 7011),
(3029, '2018-10-23 16:20', 27, 19, 7012),
(3030, '2018-11-02 14:40', 13, 1, 7021),
(3031, '2018-12-01 12:50', 13, 31, 7016),
(3032, '2018-12-10 12:00', 13, 34, 7009),
(3033, '2018-12-31 14:30', 13, 32, 7028),
(3034, '2019-01-05 15:40', 27, 17, 7017),
(3035, '2019-02-01 11:10', 13, 33, 7009);

create table adoption_cert(
acert_id int(11),
ad_date Date not null,
dog_id int(11),
adopte_id int(11),
primary key(acert_id, dog_id, adopte_id),
foreign key (dog_id) references dog(dog_id),
foreign key (adopte_id) references adopter(adopte_id)
)engine=innoDB;

insert into adoption_cert values (5001, '2018-05-30', 29, 7008),
(5001, '2018-06-04', 4, 7002),
(5002, '2018-06-11', 12, 7030),
(5003, '2018-06-19', 15, 7029),
(5004, '2018-07-03', 28, 7013),
(5005, '2018-08-03', 11, 7023),
(5006, '2018-08-14', 5, 7014),
(5007, '2018-08-20', 3, 7016),
(5008, '2018-08-22', 2, 7015),
(5009, '2018-09-01', 10, 7003),
(5010, '2018-09-01', 25, 7020),
(5011, '2018-09-25', 22, 7006),
(5012, '2018-10-02', 27, 7009),
(5013, '2018-10-21', 23, 7010),
(5014, '2018-10-23', 19, 7012),
(5015, '2018-11-05', 1, 7021);


create table foster(
foster_id int(11),
foster_fname varchar(30) not null,
foster_lname varchar(30) not null,
foster_phone varchar(15) not null,
primary key (foster_id)
)engine=innoDB;

insert into foster values(1, 'Melissa', 'Burrow', '755-578-2404'),
(2, 'Dorcas', 'Knaack', '562-343-2322'),
(3, 'Kristina', 'Anderson', '920-613-2173'),
(4, 'Sharon', 'Cooper', '541-389-4847'),
(5, 'Bernadette', 'Ward', '270-650-6155'),
(6, 'William', 'Santiago', '972-925-2467'),
(7, 'Charles', 'Hudson', '559-388-0472'),
(8, 'Juan', 'Lewis', '304-825-3351'),
(9, 'Louella', 'Wagner', '530-545-3014'),
(10, 'Ray', 'Wilkinson', '630-961-7170'),
(11, 'Booker', 'McCarthy', '940-567-8600'),
(12, 'Joshua', 'Warner', '626-449-5151');

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

insert into foster_cert values (1301, '2018-06-22', '2021-06-24', 1, 1),
(1302, '2017-05-23', '2020-03-22', 2, 1),
(1303, '2019-01-01', '2021-06-05', 3, 2),
(1304, '2018-03-20', '2020-02-12', 4, 4),
(1305, '2019-04-24', '2023-06-22', 5, 3),
(1306, '2018-11-02', '2020-12-24', 6, 4),
(1307, '2017-12-31', '2019-06-01', 7, 4),
(1308, '2016-09-13', '2019-07-30', 8, 1),
(1309, '2018-08-11', '2021-09-23', 9, 1),
(1310, '2019-05-01', '2022-03-10', 10, 2),
(1311, '2016-04-01', '2019-07-02', 11, 2),
(1312, '2019-03-01', '2022-04-21', 12, 5),
(1313, '2017-05-30', '2021-02-28', 13, 5),
(1314, '2017-06-29', '2020-05-24', 14, 6),
(1315, '2018-07-17', '2021-09-29', 15, 7),
(1316, '2018-02-24', '2021-02-24', 16, 7),
(1317, '2016-12-30', '2019-05-20', 17, 7),
(1318, '2018-07-15', '2020-02-14', 18, 8),
(1319, '2018-07-07', '2021-05-16', 19, 9),
(1320, '2019-06-16', '2022-06-17', 20, 10),
(1321, '2017-07-29', '2019-05-14', 21, 10),
(1322, '2018-02-23', '2020-03-02', 22, 3),
(1323, '2019-11-20', '2022-12-28', 23, 2),
(1324, '2019-10-19', '2021-03-04', 24, 2),
(1325, '2019-01-16', '2023-03-08', 25, 11),
(1326, '2017-02-01', '2020-12-09', 26, 12),
(1327, '2018-03-28', '2021-11-01', 27, 12),
(1328, '2016-12-24', '2019-12-13', 28, 11),
(1329, '2017-04-22', '2020-02-23', 29, 3),
(1330, '2018-03-19', '2021-04-29', 30, 3),
(1331, '2016-06-04', '2019-09-25', 31, 2),
(1332, '2017-03-29', '2020-05-01', 32, 4),
(1333, '2019-02-27', '2022-01-21', 33, 1),
(1334, '2019-03-29', '2023-01-23', 34, 9),
(1335, '2016-12-24', '2019-01-12', 35, 9);

create table favorites_list(
fav_id int(11),
created_date DATE NOT NULL,
adopte_id int(11),
primary key(fav_id),
foreign key (adopte_id) references adopter(adopte_id)
)engine=innoDB;

insert into favorites_list values (10001, '2018-05-24', 7001),
(10002, '2018-06-02', 7002),
(10003, '2018-06-07', 7030),
(10004, '2018-06-13', 7029),
(10005, '2018-08-20', 7015),
(10006, '2018-09-21', 7006),
(10007, '2018-10-23', 7012),
(10008, '2018-11-02', 7021),
(10009, '2018-12-01', 7016),
(10010, '2018-12-10', 7009);

create table pet_list(
fav_id int(11),
dog_id int(11),
primary key(fav_id, dog_id),
foreign key (dog_id) references dog(dog_id),
foreign key (fav_id) references favorites_list(fav_id)
)engine=innoDB;

insert into pet_list values(10001, 1),
(10002, 4),
(10003, 12),
(10004, 15),
(10005, 2),
(10006, 22),
(10007, 19),
(10008, 1),
(10009, 31),
(10010, 34),
(10010, 33);


##################### Views, Procedures  & Triggers ##################### 


drop view if exists all_dogs;
create view all_dogs as 
select 
dog.dog_name as "Name", dog.dog_gender as "Gender", 
dog.dog_age as "Age", dog.dog_size as  "Size", 
breed.breed_name as "Breed",
shelter.sh_name as "Shelter",
shelter.sh_phone as "Contact"
from dog 
join shelter on dog.sh_id = shelter.sh_id
join breed on dog.breed_id = breed.breed_id
order by dog.dog_age asc;
# select * from all_dogs;

#----------------------------------------------------------------------------- 1
drop view if exists all_employees;
create view all_employees as 
select 
concat(em_fname, "  ", em_lname) as "Name",
shelter.sh_name as "Shelter",
shelter.sh_phone as "Shelter Contact",
job_title.title as "Role",
employees.em_start as "Start Date",
employees.em_end as "End Date"
from shelter
join employees on employees.sh_id = shelter.sh_id
join job_title on employees.job_id = job_title.job_id;
# select * from all_employees;

#----------------------------------------------------------------------------- 2
drop view if exists all_visits;
create view all_visits as 
select 
concat(adopte_fname, "  ", adopte_lname) as "Adopter",
dog_name "Dog",
shelter.sh_name as "Shelter",
visit.visit_date as "Visit Date and Time"
from visit
join dog on dog.dog_id = visit.dog_id
join shelter on dog.sh_id = shelter.sh_id
join adopter on visit.adopte_id = adopter.adopte_id
order by visit.visit_date desc;
# select * from all_visits

#----------------------------------------------------------------------------- 3
drop view if exists all_adoptions;
create view all_adoptions as 
select  
concat(adopte_fname, "  ", adopte_lname) as "Adopter",
dog.dog_name as  "Dog",
adoption_cert.ad_date as "Adoption Date",
shelter.sh_name as "Shelter"
from adoption_cert
join adopter on adoption_cert.adopte_id = adopter.adopte_id
join dog on adoption_cert.dog_id = dog.dog_id
join shelter on dog.sh_id = shelter.sh_id
order by adoption_cert.ad_date desc;
# select * from all_adoptions;

#----------------------------------------------------------------------------- 4
drop view if exists all_fosters;
create view all_fosters as 
select 
dog.dog_name as "Dog",
shelter.sh_name as "Shelter",
concat(foster.foster_fname, " ", foster.foster_lname) as "Foster Parent",
foster_cert.fcert_startDate as "Start Date",
foster_cert.fcert_endDate as "End Date"
from foster_cert
join foster on foster_cert.foster_id = foster.foster_id
join dog on foster_cert.dog_id = dog.dog_id
join shelter on shelter.sh_id = dog.sh_id;
# select * from all_fosters;
#----------------------------------------------------------------------------- 5
drop view if exists all_shelter_totals;
create view all_shelter_totals as 
select
shelter.sh_name as "Shelter",
count(shelter.sh_id) as "Number of Dogs"
from dog
join shelter on shelter.sh_id = dog.sh_id
group by shelter.sh_id;
# select * from all_shelter_totals;
#----------------------------------------------------------------------------- 6
/*
	Enter an adoptee's id and their list of dogs will appear.
*/
drop procedure if exists fav_lists;
delimiter //
create procedure fav_lists(in adopte_id int(11))
begin
select 
dog.dog_name as "Dog"
from favorites_list
join pet_list on favorites_list.fav_id = pet_list.fav_id
join adopter on adopter.adopte_id=favorites_list.adopte_id
join dog on pet_list.dog_id = dog.dog_id
where favorites_list.adopte_id = adopte_id;
end //
# call fav_lists(7029);
#----------------------------------------------------------------------------- 7
/*
	Individual Shelter's number of dogs
*/
drop procedure if exists shelter_dog_count;
delimiter //
create procedure shelter_dog_count(in shelter_id int(11))
begin
select
shelter.sh_name as "Shelter",
count(shelter.sh_id) as "Number of Dogs"
from dog
join shelter on shelter.sh_id = dog.sh_id
where shelter_id = shelter.sh_id;
end //
# call shelter_dog_count(9);
#----------------------------------------------------------------------------- 8
drop procedure if exists shelter_adopt_count; 
delimiter //
create procedure shelter_adopt_count(in shelter_id int(11))
begin
select
shelter.sh_name as "Shelter",
count(adoption_cert.acert_id) as "Adoptions"
from adoption_cert
join dog on adoption_cert.dog_id = dog.dog_id
join shelter on dog.sh_id = shelter.sh_id
where   shelter.sh_id = shelter_id;
end //
# call shelter_adopt_count(13)
#----------------------------------------------------------------------------- 9
drop procedure if exists dog_popularity_by_shelter; 
delimiter //
create procedure dog_popularity_by_shelter(in shelter_id int(11))
begin
select 
shelter.sh_name as "Shelter",
dog.dog_name as "Dog",
count(dog.dog_id) as "Visits"
from favorites_list
join pet_list on pet_list.fav_id = favorites_list.fav_id
join dog on pet_list.dog_id = dog.dog_id
join shelter on shelter.sh_id = dog.sh_id
where shelter.sh_id = shelter_id
group by pet_list.dog_id;
end //
# call dog_popularity_by_shelter(13)
#-----------------------------------------------------------------------------