CREATE TABLE [dbo].[Performers_Jobs] (
    [PerformerId] INT NOT NULL,
    [JobId]       INT NOT NULL,
    PRIMARY KEY CLUSTERED ([PerformerId] ASC, [JobId] ASC),
    FOREIGN KEY ([JobId]) REFERENCES [dbo].[Jobs] ([Id]),
    FOREIGN KEY ([PerformerId]) REFERENCES [dbo].[Performers] ([Id])
);

