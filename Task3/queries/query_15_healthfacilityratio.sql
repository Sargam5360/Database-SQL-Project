select population.location_name,population*100000/health_facility as Ratio 
from health_facility,population
where health_facility.location_name=population.location_name