CREATE TABLE [dbo].[Performers_Projects_Appointments] (
    [PerformerId]   INT NOT NULL,
    [ProjectId]     INT NOT NULL,
    [AppointmentId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([PerformerId] ASC, [ProjectId] ASC, [AppointmentId] ASC),
    FOREIGN KEY ([AppointmentId]) REFERENCES [dbo].[Appointments] ([id]),
    FOREIGN KEY ([PerformerId]) REFERENCES [dbo].[Performers] ([Id]),
    FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([Id])
);

