select surv_date, max(smokers) from (
select surv_date, sum(number_cigarettes_daily) as smokers from pophealth.survey T
join pophealth.location TT
on T.location_id=TT.location_id
join pophealth.habits TH
on T.surv_id=TH.surv_id
where TT.location_name="Arlington"
group by surv_date
) as M