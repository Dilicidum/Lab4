update Jobs
set DeadLine = DATEADD(DAY,5,Jobs.DeadLine)
where Jobs.DeadLine<'20200304'