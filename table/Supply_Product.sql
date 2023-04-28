CREATE TABLE [dbo].[Supply_Product] (
    [Supply_ProductID] INT             IDENTITY (1, 1) NOT NULL,
    [Quantity]         DECIMAL (18, 2) NOT NULL,
    [SupplyID]         INT             NOT NULL,
    [ProductID]        INT             NOT NULL,
    CONSTRAINT [PK_Supply_Product] PRIMARY KEY CLUSTERED ([Supply_ProductID] ASC),
    CONSTRAINT [FK_Supply_Product_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]) ON DELETE CASCADE,
    CONSTRAINT [FK_Supply_Product_Supply_SupplyID] FOREIGN KEY ([SupplyID]) REFERENCES [dbo].[Supply] ([SupplyID]) ON DELETE CASCADE
);