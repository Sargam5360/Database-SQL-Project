create table pophealth.health_infrastructure
(
hi_id int(3) primary key,
hi_type varchar(50),
bed_capacity int(4),
location_id int(3),
foreign key(location_id) references pophealth.location(location_id)
)