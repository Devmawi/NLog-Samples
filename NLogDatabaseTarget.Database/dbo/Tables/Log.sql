CREATE TABLE [dbo].[Log] (
    [LogId]          UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Level]          VARCHAR (MAX)    NOT NULL,
    [CallSite]       VARCHAR (MAX)    NOT NULL,
    [Type]           VARCHAR (MAX)    NOT NULL,
    [Message]        VARCHAR (MAX)    NOT NULL,
    [StackTrace]     VARCHAR (MAX)    NOT NULL,
    [InnerException] VARCHAR (MAX)    NOT NULL,
    [AdditionalInfo] VARCHAR (MAX)    NOT NULL,
    [LoggedOnDate]   DATETIME         CONSTRAINT [df_logs_loggedondate] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_logs] PRIMARY KEY CLUSTERED ([LogId] ASC)
);

