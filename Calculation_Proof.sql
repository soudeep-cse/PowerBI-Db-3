
select *
from hrdata

select count(Employee_Number) as Total_employee
from hrdata

select count(Attrition) as Total_attrition
from hrdata
where Attrition = 'Yes'

select cast((select cast(count(Attrition) as decimal(10,4)) from hrdata where Attrition='Yes')
/ count(Employee_Number) as decimal(10,4)) *100 as Attrition_rate from hrdata

select count(Employee_Number) - (select count(Attrition) from hrdata
where Attrition = 'Yes') from hrdata

select cast(avg(Age) as decimal(10,2)) from hrdata

select Gender, count(Attrition)
from hrdata
where Attrition='Yes'
group by Gender


select Department, count(Attrition)
from hrdata
where Attrition='Yes'
group by Department

select Education_Field, count(Attrition)
from hrdata
where Attrition='Yes'
group by Education_Field


