-- Cleansed FACT_InternetSales Table--
SELECT
	ProductKey,
	OrderDateKey,
	DueDateKey,
	ShipDateKey,
	CustomerKey,
	SalesOrderNumber,
	SalesAmount
FROM
	dbo.FactInternetSales
WHERE
	LEFT (OrderDateKey, 4) >= Year(GETDATE()) - 1
ORDER BY
	OrderDateKey ASC