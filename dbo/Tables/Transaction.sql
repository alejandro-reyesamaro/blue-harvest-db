CREATE TABLE [dbo].[Transaction]
(
	[Id] INT IDENTITY NOT NULL,
    [CostumerId] INT NOT NULL,
    [CostumerAccountId] INT NOT NULL,
    [TargetAccountId] INT NOT NULL,
    [Amount] DECIMAL(36, 2) NOT NULL,
    [Date] DATETIME NOT NULL,
    CONSTRAINT [PK_Transaction] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Transaction_Costumer] FOREIGN KEY ([CostumerId]) REFERENCES [dbo].[Costumer] ([Id]),
    CONSTRAINT [FK_Transaction_Account_Source] FOREIGN KEY ([CostumerAccountId]) REFERENCES [dbo].[Account] ([Id]),
    CONSTRAINT [FK_Transaction_Account_Target] FOREIGN KEY ([TargetAccountId]) REFERENCES [dbo].[Account] ([Id])
)
