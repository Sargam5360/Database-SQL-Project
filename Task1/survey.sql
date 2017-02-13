create table pophealth.survey
(
surv_id int(3) primary key,
surv_date date,
surv_gender varchar(1),
surv_dob date,
surv_occupation varchar(50),
surv_ethnicity varchar(30),
surv_marital varchar(20),
location_id int(3),
foreign key(location_id) references pophealth.location(location_id)  
)