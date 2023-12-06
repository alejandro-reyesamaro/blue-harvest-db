CREATE VIEW [dbo].[DetailedAccount]
AS 
SELECT A.[Id],
       A.[CostumerId],
	   C.[Name] CostumerName,
	   C.[Surname] CostumerSurname,
       A.[Name],
       A.[Balance]
FROM 
    [dbo].[Account] A
INNER JOIN [dbo].[Costumer] C ON A.CostumerId = C.Id
