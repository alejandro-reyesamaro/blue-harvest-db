CREATE TABLE [dbo].[Account]
(
	[Id] INT IDENTITY NOT NULL,
    [CostumerId] INT NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    [Balance] DECIMAL(36, 2) NOT NULL,
    CONSTRAINT [PK_Account] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Account_Costumer] FOREIGN KEY ([CostumerId]) REFERENCES [dbo].[Costumer] ([Id])
)
