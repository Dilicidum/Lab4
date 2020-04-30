select Employers.Name,count(jobs.Id)
from Employers 
join Performers on Performers.EmployeeId = Employers.Id
join Performers_Projects_Appointments on Performers.Id = Performers_Projects_Appointments.PerformerId
join Performers_Jobs on Performers.Id = Performers_Jobs.PerformerId
join Jobs on Jobs.Id = Performers_Jobs.JobId
group by Employers.Name
having count(jobs.Id) = (select min(Jobs.Id) from Jobs where Jobs.DeadLine<'20200304')