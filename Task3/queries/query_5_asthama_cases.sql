select count(*) as CASES from pophealth.survey as T
join pophealth.chronic_disease as TT
on T.surv_id=TT.surv_id
join pophealth.location as L
on T.location_id=L.location_id
where surv_date between '2011-01-01' and '2011-12-31'
and disease_name='Asthama'
and L.location_name='Dallas'