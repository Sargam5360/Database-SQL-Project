create table pophealth.habits
(
habit_id int(3) primary key,
alcohol_glasses_weekly int(3),
number_cigarettes_daily int(3),
fast_food_weekly int(3),
fruits_weekly int(3),
surv_id int(3),
foreign key (surv_id) references survey(surv_id)

)