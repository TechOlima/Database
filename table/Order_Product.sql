CREATE TABLE [dbo].[Order_Product] (
    [Order_ProductID] INT             IDENTITY (1, 1) NOT NULL,
    [Quantity]        INT             NOT NULL,
    [OrderID]         INT             NOT NULL,
    [ProductID]       INT             NOT NULL,
    CONSTRAINT [PK_Order_Product] PRIMARY KEY CLUSTERED ([Order_ProductID] ASC),
    CONSTRAINT [FK_Order_Product_Order_OrderID] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Order] ([OrderID]) ON DELETE CASCADE,
    CONSTRAINT [FK_Order_Product_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Order_Product_OrderID]
    ON [dbo].[Order_Product]([OrderID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Order_Product_ProductID]
    ON [dbo].[Order_Product]([ProductID] ASC);
