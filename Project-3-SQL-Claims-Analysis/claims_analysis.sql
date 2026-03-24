SELECT 
    Hospice,
    COUNT(*) AS Total_Claims,
    SUM(Claim_Amount) AS Total_Billed,
    SUM(Paid_Amount) AS Total_Paid
FROM claims
GROUP BY Hospice;
SELECT 
    Hospice,
    COUNT(CASE WHEN Status = 'Denied' THEN 1 END) * 1.0 / COUNT(*) AS Denial_Rate
FROM claims
GROUP BY Hospice;
SELECT 
    Hospice,
    COUNT(CASE WHEN Status = 'Denied' THEN 1 END) * 1.0 / COUNT(*) AS Denial_Rate
FROM claims
GROUP BY Hospice;
SELECT 
    Month,
    SUM(Claim_Amount) AS Total_Billed,
    SUM(Paid_Amount) AS Total_Paid
FROM claims
GROUP BY Month;