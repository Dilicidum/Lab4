CREATE TABLE [dbo].[Performers_Projects] (
    [PerformerId] INT NOT NULL,
    [ProjectId]   INT NOT NULL,
    PRIMARY KEY CLUSTERED ([PerformerId] ASC, [ProjectId] ASC)
);

