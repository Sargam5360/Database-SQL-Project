select  max(sum_glasses),location_name from (

select sum(alcohol_glasses_weekly) as Sum_Glasses,location_name 
from pophealth.survey S join pophealth.habits H 
on S.surv_id=H.surv_id join pophealth.location L 
on S.location_id=L.location_id
group by L.location_id
)
as T