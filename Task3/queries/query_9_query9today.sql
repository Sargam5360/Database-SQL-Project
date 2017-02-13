 select N.location_name,M.surv_date,M.total_asthma,N.total from (
select location_name,count(*) as total_asthma ,surv_date  
from pophealth.survey as T
join pophealth.chronic_disease as TT
on T.surv_id=TT.surv_id
join pophealth.location as L
on T.location_id=L.location_id
where disease_name='Asthama' and surv_date between '2011-01-01' and '2011-12-31'
group by location_name,surv_date )
as M
 right outer join (

select location_name ,surv_date, count(*) as total   
from pophealth.survey as T
join pophealth.chronic_disease as TT
on T.surv_id=TT.surv_id
join pophealth.location as L
on T.location_id=L.location_id
where   surv_date between '2011-01-01' and '2011-12-31'
group by location_name,surv_date )
as N
on M.location_name = N.location_name