CREATE TABLE [dbo].[MaterialType] (
    [MaterialTypeID] INT            IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (MAX) NOT NULL,
    [Fineness]       INT            NOT NULL,
    CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED ([MaterialTypeID] ASC)
);
