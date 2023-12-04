CREATE TABLE [dbo].[Injection]
(
	[Id] INT IDENTITY NOT NULL,
    [CostumerId] INT NOT NULL,
    [CostumerAccountId] INT NOT NULL,
    [Amount] DECIMAL(36, 2) NOT NULL,
    [Date] DATETIME NOT NULL,
    CONSTRAINT [PK_Injection] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Injection_Costumer] FOREIGN KEY ([CostumerId]) REFERENCES [dbo].[Costumer] ([Id]),
    CONSTRAINT [FK_Injection_Account] FOREIGN KEY ([CostumerAccountId]) REFERENCES [dbo].[Account] ([Id])
)
