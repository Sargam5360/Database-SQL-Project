select * from
( 
select location_name,accident_type,count(*) as countaccidentbytype 
from pophealth.location L join pophealth.accidents A
on L.location_id=A.location_id
where accident_type="Car Accident" or accident_type="Labor Accident"
group by location_name,accident_type
) as M
where countaccidentbytype=0