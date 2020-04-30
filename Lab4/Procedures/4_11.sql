select Employers.Name
from Employers
join Performers on  Performers.EmployeeId = Employers.Id
join Performers_Projects_Appointments on Performers_Projects_Appointments.PerformerId = Performers.Id
join Performers_Jobs on Performers_Jobs.PerformerId = Performers.Id
join Jobs on Jobs.Id = Performers_Jobs.JobId
join Tasks on Tasks.Id = Jobs.TaskId
group by Employers.Name
having count(Tasks.StatusId)=1