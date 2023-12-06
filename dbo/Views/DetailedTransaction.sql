CREATE VIEW [dbo].[DetailedTransaction]
AS
SELECT        
    T.Id, 
    T.CostumerId, 
    T.CostumerAccountId,
    SA.Name CostumerAccountName,
    T.TargetAccountId,
    TA.Name TargetAccountName, 
    C.Name TargetAccountCostumerName,
    C.Surname TargetAccountCostumerSurname,
    T.Amount, 
    T.Date
FROM            
    [dbo].[Transaction] T 
INNER JOIN [dbo].[Account] SA ON T.CostumerAccountId = SA.Id
INNER JOIN [dbo].[Account] TA ON T.TargetAccountId = TA.Id
INNER JOIN [dbo].Costumer C ON C.Id = TA.CostumerId
