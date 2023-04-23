CREATE TABLE [dbo].[StoneType] (
    [StoneTypeID] INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_StoneType] PRIMARY KEY CLUSTERED ([StoneTypeID] ASC)
);