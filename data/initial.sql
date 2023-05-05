USE [olima]
GO

--MaterialType
INSERT INTO [dbo].[MaterialType] ([Name],[Fineness]) VALUES ('золото',0);
INSERT INTO [dbo].[MaterialType] ([Name],[Fineness]) VALUES ('серебро',0);
INSERT INTO [dbo].[MaterialType] ([Name],[Fineness]) VALUES ('керамика',0);
INSERT INTO [dbo].[MaterialType] ([Name],[Fineness]) VALUES ('платина',0);

--ProductType
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('кольца');
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('серьги');
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('браслеты');
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('цепи');
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('подвески');

--Product
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='браслеты')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='серебро')
           ,'Браслет с алмазной гранью из серебра',100);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='серьги')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='керамика')
           ,'Серьги детские керамические',200);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='подвески')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='золото')
           ,'Золотая подвеска с фианитами',300);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='кольца')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='золото')
           ,'Золотое кольцо с бриллиантами',400);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='кольца')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='платина')
           ,'Платиновое обручальное кольцо',500);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='браслеты')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='серебро')
           ,'Серебряный браслет с керамикой и фианитами',500);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='серьги')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='серебро')
           ,'Серебряные серьги с изумрудами и топазами',600);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='подвески')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='серебро')
           ,'Шейное украшение с жемчугом',700);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price],[Is_Deleted])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='подвески')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='золото')
           ,'Золотая подвеска с рубинами и бриллиантами',500,1);

--StoneType
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('бриллиант');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('фианит');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('топаз');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('изумруд');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('жемчуг');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('рубин');

--Insert
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='фианит')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Золотая подвеска с фианитами'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='бриллиант')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Золотое кольцо с бриллиантами'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='фианит')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серебряный браслет с керамикой и фианитами'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='изумруд')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серебряные серьги с изумрудами и топазами'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='топаз')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серебряные серьги с изумрудами и топазами'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='жемчуг')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Шейное украшение с жемчугом'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='рубин')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Золотая подвеска с рубинами и бриллиантами'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='бриллиант')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Золотая подвеска с рубинами и бриллиантами'));

--State
INSERT INTO [dbo].[State] ([Name]) VALUES ('Оформлен');
INSERT INTO [dbo].[State] ([Name]) VALUES ('Оплачен');
INSERT INTO [dbo].[State] ([Name]) VALUES ('В доставке');
INSERT INTO [dbo].[State] ([Name]) VALUES ('Доставлен');

--Order
INSERT INTO [dbo].[Order]
           ([ClientName]
           ,[ClientPhone]
           ,[ClientEmail]
           ,[StateID]
           ,[TotalSum]
           ,[DeliveryAddress]
           ,[DeliveryDate]
           ,[OrderDate])
     VALUES
           ('Иванов Иван Иванович'
           ,'89101234564'
           ,'ivanov@mail.ru'
           ,(SELECT StateID FROM [dbo].[State] WHERE Name='Оформлен')
           ,100
           ,'102103,Москва,ул.Петрова,д.5,кв.6'
           ,'02.05.2023'
           ,'01.05.2023');

INSERT INTO [dbo].[Order]
           ([ClientName]
           ,[ClientPhone]
           ,[ClientEmail]
           ,[StateID]
           ,[TotalSum]
           ,[DeliveryAddress]
           ,[DeliveryDate]
           ,[OrderDate])
     VALUES
           ('Петров Петр Петрович'
           ,'89501234564'
           ,'petrov@mail.ru'
           ,(SELECT StateID FROM [dbo].[State] WHERE Name='Оплачен')
           ,100
           ,'102103,Москва,ул.Иванова,д.5,кв.6'
           ,'03.05.2023'
           ,'02.05.2023');

--OrderProduct
USE [olima]
GO

INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='Иванов Иван Иванович')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Браслет с алмазной гранью из серебра'));

INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='Иванов Иван Иванович')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серьги детские керамические'));
INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='Иванов Иван Иванович')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Золотая подвеска с фианитами'));

INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='Петров Петр Петрович')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серебряный браслет с керамикой и фианитами'));

INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='Петров Петр Петрович')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серебряные серьги с изумрудами и топазами'));
INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='Петров Петр Петрович')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Шейное украшение с жемчугом'));

--Supply
INSERT INTO [dbo].[Supply]
           ([ShippingDate]
           ,[ReceivingDate]
           ,[TotalSum]
           ,[IsReceived])
     VALUES
           ('01.04.2023'
           ,'01.04.2023'
           ,1000
           ,1);
INSERT INTO [dbo].[Supply]
           ([ShippingDate]
           ,[ReceivingDate]
           ,[TotalSum]
           ,[IsReceived])
     VALUES
           ('02.04.2023'
           ,'02.04.2023'
           ,1000
           ,1);

--Supply_Product
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='01.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Браслет с алмазной гранью из серебра'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='01.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серьги детские керамические'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='01.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Золотая подвеска с фианитами'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='01.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Золотое кольцо с бриллиантами'));
--вторая поставка
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='02.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Платиновое обручальное кольцо'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='02.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серебряный браслет с керамикой и фианитами'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='02.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Серебряные серьги с изумрудами и топазами'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='02.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='Шейное украшение с жемчугом'));

GO


