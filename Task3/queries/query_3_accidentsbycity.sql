select count(accident_id) as ACCIDENT_NUMS, location_name as LOCATION 
from pophealth.accidents as T
join pophealth.location as TT
on 
T.location_id=TT.location_id
group by T.location_id