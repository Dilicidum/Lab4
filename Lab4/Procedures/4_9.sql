select Projects.ProjectName, count(Tasks.Id)
from Projects
join Performers_Projects_Appointments on Performers_Projects_Appointments.ProjectId = Projects.Id
join Performers on Performers.Id = Performers_Projects_Appointments.PerformerId
join Performers_Jobs on Performers_Jobs.PerformerId = Performers.Id
join Jobs on Jobs.Id = Performers_Jobs.JobId
join Tasks on Tasks.Id = Jobs.TaskId
where Tasks.StatusId=1 or Tasks.StatusId=3
group by Projects.ProjectName