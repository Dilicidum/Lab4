select Appointments.JobName,count(Performers.Id)
from Appointments
join    Performers_Projects_Appointments  on     Appointments.id = Performers_Projects_Appointments.AppointmentId
join    Performers			on     Performers.Id = Performers_Projects_Appointments.PerformerId
group by Appointments.JobName
having count(Performers.Id) is null