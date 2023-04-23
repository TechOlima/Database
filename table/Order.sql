CREATE TABLE [dbo].[Order] (
    [OrderID]         INT             IDENTITY (1, 1) NOT NULL,
    [ClientName]      NVARCHAR (MAX)  NULL,
    [ClientPhone]     NVARCHAR (MAX)  NULL,
    [ClientEmail]     NVARCHAR (MAX)  NULL,
    [StateID]         INT             NOT NULL,
    [TotalSum]        DECIMAL (18, 2) NULL,
    [DeliveryAddress] NVARCHAR (MAX)  NOT NULL,
    [DeliveryDate]    DATETIME2 (7)   NULL,
    [OrderDate]       DATETIME2 (7)   NULL,
    [Note]            NVARCHAR (MAX)  NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED ([OrderID] ASC),
    CONSTRAINT [FK_Order_State_StateID] FOREIGN KEY ([StateID]) REFERENCES [dbo].[State] ([StateID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Order_StateID]
    ON [dbo].[Order]([StateID] ASC);