-- Cleansed DIM_Customer Table --
SELECT
	c.customerkey AS CustomerKey,
    --  ,[GeographyKey]
    --  ,[CustomerAlternateKey]
    --  ,[Title]
    c.firstname AS [First Name],
    --  ,[MiddleName]
    c.lastname AS [Last Name],
	c.firstname + ' ' + c.lastname AS [Full Name],
    --  ,[NameStyle]
    --  ,[BirthDate]
    --  ,[MaritalStatus]
    --  ,[Suffix]
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
    --  ,[EmailAddress]
    --  ,[YearlyIncome]
    --	,[TotalChildren]
    --	,[NumberChildrenAtHome]
    --	,[EnglishEducation]
    --	,[SpanishEducation]
    --	,[FrenchEducation]
    --	,[EnglishOccupation]
    --	,[SpanishOccupation]
    --	,[FrenchOccupation]
    --	,[HouseOwnerFlag]
    --	,[NumberCarsOwned]
    --	,[AddressLine1]
    --	,[AddressLine2]
    --	,[Phone]
    c.datefirstpurchase as DateFirstPurchase,
    --  ,[CommuteDistance]
	g.city AS [Customer City]
FROM 
	dbo.DimCustomer c
	LEFT JOIN dbo.DimGeography g ON g.GeographyKey = c.GeographyKey
ORDER BY 
	CustomerKey ASC