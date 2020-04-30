CREATE TABLE [dbo].[Projects] (
    [Id]             INT        IDENTITY (1, 1) NOT NULL,
    [ProjectName]    NCHAR (30) NULL,
    [DateOfCreating] DATE       NULL,
    [DateOfEnding]   DATE       NULL,
    [StateId]        INT        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([StateId]) REFERENCES [dbo].[States] ([Id])
);

