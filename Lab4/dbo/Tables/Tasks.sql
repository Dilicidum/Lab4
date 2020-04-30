CREATE TABLE [dbo].[Tasks] (
    [Id]              INT  IDENTITY (1, 1) NOT NULL,
    [DateOfOrdering]  DATE NULL,
    [EmployeeOrderer] INT  NULL,
    [StatusId]        INT  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([EmployeeOrderer]) REFERENCES [dbo].[Employers] ([Id]),
    FOREIGN KEY ([StatusId]) REFERENCES [dbo].[TaskStatuses] ([Id])
);

