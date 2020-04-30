CREATE TABLE [dbo].[Performers] (
    [Id]         INT IDENTITY (1, 1) NOT NULL,
    [EmployeeId] INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employers] ([Id])
);

