create table pophealth.accidents
(
accident_id int(3) primary key,
accident_type varchar(50),
accident_date date,
location_id int(3),
foreign key(location_id) references pophealth.location(location_id)
)