CREATE TABLE [dbo].[Product] (
    [ProductID]      INT             IDENTITY (1, 1) NOT NULL,
    [ProductTypeID]  INT             NOT NULL,
    [MaterialTypeID] INT             NULL,
    [Name]           NVARCHAR (MAX)  NULL,
    [Equipment]      NVARCHAR (MAX)  NULL,
    [Description]    NVARCHAR (MAX)  NULL,
    [Gender]         INT             NULL,
    [Is_Deleted]     BIT             NULL,
    [Price]          DECIMAL (18, 2) NULL,
    [Size]           INT             NULL,
    [VendorCode]     NVARCHAR (MAX)  NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Product_MaterialType_MaterialTypeID] FOREIGN KEY ([MaterialTypeID]) REFERENCES [dbo].[MaterialType] ([MaterialTypeID]),
    CONSTRAINT [FK_Product_ProductType_ProductTypeID] FOREIGN KEY ([ProductTypeID]) REFERENCES [dbo].[ProductType] ([ProductTypeID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Product_MaterialTypeID]
    ON [dbo].[Product]([MaterialTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Product_ProductTypeID]
    ON [dbo].[Product]([ProductTypeID] ASC);

