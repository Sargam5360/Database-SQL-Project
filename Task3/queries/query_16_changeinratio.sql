 
select M.location_name,M.population_ratio_2012,N.population_ratio_2011,population_ratio_2012-population_ratio_2011 from 
(
SELECT count(*)*100000/health_facility as population_ratio_2012,location.location_name from pophealth.survey
join pophealth.location
on
survey.location_id=location.location_id
join health_facility on
health_facility.location_name=location.location_name
where surv_date between '2012-01-01' and '2012-12-31'
group by survey.location_id
 
 ) as M
 join
 (
SELECT count(*)*100000/health_facility as population_ratio_2011,location.location_name from pophealth.survey
join pophealth.location
on
survey.location_id=location.location_id
join health_facility on
health_facility.location_name=location.location_name
where surv_date between '2011-01-01' and '2011-12-31'
group by survey.location_id
 
 ) as N
 on M.location_name=N.location_name
 