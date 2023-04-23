CREATE TABLE [dbo].[Photo] (
    [PhotoID]   INT IDENTITY (1, 1) NOT NULL,
    [Is_Cover]  BIT NULL,
    [ProductID] INT NULL,
    CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED ([PhotoID] ASC),
    CONSTRAINT [FK_Photo_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Photo_ProductID]
    ON [dbo].[Photo]([ProductID] ASC);
