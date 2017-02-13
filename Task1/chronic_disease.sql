create table pophealth.chronic_disease
(
chronic_id int(3) primary key,
date_diagnosed date,
disease_name varchar(50),
surv_id int(3),
foreign key (surv_id) references pophealth.survey(surv_id)

)