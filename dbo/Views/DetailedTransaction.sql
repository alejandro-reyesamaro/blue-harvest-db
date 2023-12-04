CREATE VIEW [dbo].[DetailedTransaction]
AS
SELECT        
    T.Id, 
    T.CostumerId, 
    T.CostumerAccountId, 
    T.TargetAccountId, 
    T.Amount, 
    T.Date, 
    SA.Name CostumerAccountName, 
    TA.Name TargetAccountName, 
    C.Name TargetAccountCostumerName
FROM            
    [dbo].[Transaction] T 
INNER JOIN [dbo].[Account] SA ON T.CostumerAccountId = SA.Id
INNER JOIN [dbo].[Account] TA ON T.TargetAccountId = TA.Id
INNER JOIN [dbo].Costumer C ON C.Id = TA.CostumerId
