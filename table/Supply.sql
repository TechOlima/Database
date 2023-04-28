CREATE TABLE [dbo].[Supply] (
    [SupplyID]      INT             IDENTITY (1, 1) NOT NULL,
    [ShippingDate]  DATETIME2 (7)   NULL,
    [ReceivingDate] DATETIME2 (7)   NULL,
    [TotalSum]      DECIMAL (18, 2) NULL,
    [IsReceived]    BIT             NULL,
    [Note]          NVARCHAR (MAX)  NULL,
    CONSTRAINT [PK_Supply] PRIMARY KEY CLUSTERED ([SupplyID] ASC)
);