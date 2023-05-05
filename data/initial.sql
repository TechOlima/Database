USE [olima]
GO

--MaterialType
INSERT INTO [dbo].[MaterialType] ([Name],[Fineness]) VALUES ('������',0);
INSERT INTO [dbo].[MaterialType] ([Name],[Fineness]) VALUES ('�������',0);
INSERT INTO [dbo].[MaterialType] ([Name],[Fineness]) VALUES ('��������',0);
INSERT INTO [dbo].[MaterialType] ([Name],[Fineness]) VALUES ('�������',0);

--ProductType
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('������');
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('������');
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('��������');
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('����');
INSERT INTO [dbo].[ProductType] ([Name]) VALUES ('��������');

--Product
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='��������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='�������')
           ,'������� � �������� ������ �� �������',100);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='��������')
           ,'������ ������� ������������',200);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='��������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='������')
           ,'������� �������� � ���������',300);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='������')
           ,'������� ������ � ������������',400);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='�������')
           ,'���������� ����������� ������',500);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='��������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='�������')
           ,'���������� ������� � ��������� � ���������',500);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='�������')
           ,'���������� ������ � ���������� � ��������',600);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='��������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='�������')
           ,'������ ��������� � ��������',700);
INSERT INTO [dbo].[Product] ([ProductTypeID],[MaterialTypeID],[Name],[Price],[Is_Deleted])
     VALUES ((SELECT ProductTypeID FROM [dbo].[ProductType] WHERE Name='��������')
           ,(SELECT MaterialTypeID FROM [dbo].[MaterialType] WHERE Name='������')
           ,'������� �������� � �������� � ������������',500,1);

--StoneType
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('���������');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('������');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('�����');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('�������');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('������');
INSERT INTO [dbo].[StoneType] ([Name]) VALUES ('�����');

--Insert
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='������')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� �������� � ���������'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='���������')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� ������ � ������������'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='������')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='���������� ������� � ��������� � ���������'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='�������')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='���������� ������ � ���������� � ��������'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='�����')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='���������� ������ � ���������� � ��������'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='������')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������ ��������� � ��������'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='�����')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� �������� � �������� � ������������'));
INSERT INTO [dbo].[Insert] ([Weight],[StoneTypeID],[ProductID]) 
	VALUES (1,(SELECT StoneTypeID FROM [dbo].[StoneType] WHERE Name='���������')
		,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� �������� � �������� � ������������'));

--State
INSERT INTO [dbo].[State] ([Name]) VALUES ('��������');
INSERT INTO [dbo].[State] ([Name]) VALUES ('�������');
INSERT INTO [dbo].[State] ([Name]) VALUES ('� ��������');
INSERT INTO [dbo].[State] ([Name]) VALUES ('���������');

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
           ('������ ���� ��������'
           ,'89101234564'
           ,'ivanov@mail.ru'
           ,(SELECT StateID FROM [dbo].[State] WHERE Name='��������')
           ,100
           ,'102103,������,��.�������,�.5,��.6'
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
           ('������ ���� ��������'
           ,'89501234564'
           ,'petrov@mail.ru'
           ,(SELECT StateID FROM [dbo].[State] WHERE Name='�������')
           ,100
           ,'102103,������,��.�������,�.5,��.6'
           ,'03.05.2023'
           ,'02.05.2023');

--OrderProduct
USE [olima]
GO

INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='������ ���� ��������')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� � �������� ������ �� �������'));

INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='������ ���� ��������')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������ ������� ������������'));
INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='������ ���� ��������')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� �������� � ���������'));

INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='������ ���� ��������')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='���������� ������� � ��������� � ���������'));

INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='������ ���� ��������')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='���������� ������ � ���������� � ��������'));
INSERT INTO [dbo].[Order_Product] ([Quantity],[OrderID],[ProductID])
     VALUES
           (1
           ,(SELECT OrderID FROM [dbo].[Order] WHERE ClientName='������ ���� ��������')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������ ��������� � ��������'));

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
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� � �������� ������ �� �������'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='01.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������ ������� ������������'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='01.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� �������� � ���������'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='01.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������� ������ � ������������'));
--������ ��������
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='02.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='���������� ����������� ������'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='02.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='���������� ������� � ��������� � ���������'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='02.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='���������� ������ � ���������� � ��������'));
INSERT INTO [dbo].[Supply_Product]
           ([Quantity]
           ,[SupplyID]
           ,[ProductID])
     VALUES
           (5
           ,(SELECT SupplyID FROM [dbo].[Supply] WHERE ShippingDate='02.04.2023')
           ,(SELECT ProductID FROM [dbo].[Product] WHERE Name='������ ��������� � ��������'));

GO


