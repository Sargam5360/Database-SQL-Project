select count(*) from pophealth.survey P join pophealth.chronic_disease D 
on P.surv_id=D.surv_id
join pophealth.location L
on L.location_id=P.location_id
where L.location_name='Fort Worth'
and disease_name<>'Asthama'