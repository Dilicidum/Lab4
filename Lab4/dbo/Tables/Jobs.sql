CREATE TABLE [dbo].[Jobs] (
    [Id]       INT  IDENTITY (1, 1) NOT NULL,
    [DeadLine] DATE NULL,
    [TaskId]   INT  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([TaskId]) REFERENCES [dbo].[Tasks] ([Id])
);

