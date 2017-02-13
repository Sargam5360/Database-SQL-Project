select * from 
(
select M.location_name,100*(asthmacases/total) as asthma_prevalence from
(
select count(surv_id)as total,location_name  from pophealth.survey join
pophealth.location
on pophealth.location.location_id=pophealth.survey.location_id
where survey.surv_date between '2012-01-01' and '2012-12-31'
group by pophealth.survey.location_id
)
 as M
 join 
 (
select count(*) as asthmacases,L.location_name from pophealth.survey T
join pophealth.chronic_disease D
on T.surv_id=D.surv_id
join pophealth.location L
on L.location_id=T.location_id
where disease_name='Asthama'
and T.surv_date between '2012-01-01' and '2012-12-31'
group by  L.location_id
)as N
on M.location_name = N.location_name
)
as K

where asthma_prevalence=
(
select min(asthma_prevalence) from 
(
select M.location_name,100*(asthmacases/total) as asthma_prevalence from
(
select count(surv_id)as total,location_name  from pophealth.survey join
pophealth.location
on pophealth.location.location_id=pophealth.survey.location_id
where survey.surv_date between '2012-01-01' and '2012-12-31'
group by pophealth.survey.location_id
 )
 as M
 join 
 (
select count(*) as asthmacases,L.location_name from pophealth.survey T
join pophealth.chronic_disease D
on T.surv_id=D.surv_id
join pophealth.location L
on L.location_id=T.location_id
where disease_name='Asthama'
and T.surv_date between '2012-01-01' and '2012-12-31'
group by  L.location_id

)as N
on M.location_name = N.location_name
)

as K

)