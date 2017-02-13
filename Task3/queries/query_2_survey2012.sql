select count(surv_id)as tot_survey_per_city,location_name  from pophealth.survey join
pophealth.location
on pophealth.location.location_id=pophealth.survey.location_id
where survey.surv_date between '2012-01-01' and '2012-12-31'
group by pophealth.survey.location_id