select P.surv_id,count(disease_name) as 
chronic_diseases_per_survey from 
pophealth.survey P join pophealth.chronic_disease D 
on P.surv_id=D.surv_id
group by surv_id


 