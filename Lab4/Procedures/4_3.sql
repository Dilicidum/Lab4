select Projects.ProjectName,Appointments.JobName,count(Performers.Id)
from Appointments
join    Performers_Projects_Appointments  on     Appointments.id = Performers_Projects_Appointments.AppointmentId
join    Performers			on     Performers.Id = Performers_Projects_Appointments.PerformerId
join Projects on Projects.Id = Performers_Projects_Appointments.ProjectId
where Projects.Id=1
group by Projects.ProjectName,Appointments.JobName
