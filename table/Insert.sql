CREATE TABLE [dbo].[Insert] (
    [InsertID]    INT             IDENTITY (1, 1) NOT NULL,
    [Weight]      DECIMAL (18, 2) NULL,
    [StoneTypeID] INT             NOT NULL,
    [ProductID]   INT             NULL,
    CONSTRAINT [PK_Insert] PRIMARY KEY CLUSTERED ([InsertID] ASC),
    CONSTRAINT [FK_Insert_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]),
    CONSTRAINT [FK_Insert_StoneType_StoneTypeID] FOREIGN KEY ([StoneTypeID]) REFERENCES [dbo].[StoneType] ([StoneTypeID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Insert_ProductID]
    ON [dbo].[Insert]([ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Insert_StoneTypeID]
    ON [dbo].[Insert]([StoneTypeID] ASC);
