﻿CREATE TABLE [dbo].[Costumer]
(
	[Id] INT IDENTITY NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    [Surname] NVARCHAR(100) NOT NULL,
    CONSTRAINT [PK_Costumer] PRIMARY KEY ([Id])
)
