select  Projects.ProjectName,avg(Tasks.Id)
from Performers_Jobs
join Performers on Performers.Id = Performers_Jobs.JobId
join Jobs on Jobs.Id = Performers.Id
join Tasks on Tasks.Id = Jobs.TaskId
join Performers_Projects_Appointments on Performers_Projects_Appointments.PerformerId = Performers.Id
join Projects on Performers_Projects_Appointments.ProjectId = Projects.Id
group by Projects.ProjectName