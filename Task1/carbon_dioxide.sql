create table pophealth.carbon_dioxide
(
measurement_id int(3) primary key,
measure_date date,
measure_value int(5),
location_id int(3),
foreign key(location_id) references pophealth.location(location_id)
)