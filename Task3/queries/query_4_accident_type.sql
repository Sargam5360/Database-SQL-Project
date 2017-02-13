select location_name, accident_type, max(accidents) as Accidents from 

(select count(*) as accidents,location_name,accident_type from pophealth.accidents as T

join pophealth.location as TT
on T.location_id=TT.location_id 

group by T.location_id,T.accident_type) as TB
group by location_name
 