/*
DROP table [dbo].[FactSmallSales]
*/

TRUNCATE TABLE [dbo].[FactSmallSales]

Insert into [dbo].[FactSmallSales]
Select
top 1000 
SalesOrderNumber,
SalesOrderLineNumber,
EnglishProductName  as ProductName,
dpsc.EnglishProductSubcategoryName as ProductSubCategoryName,
dc.LastName  + ', ' + dc.FirstName as CustomerName,
SalesAmount,
OrderDate
from [dbo].[FactInternetSales] fs 
Join DimProduct dp on fs.ProductKey = dp.ProductKey
join DimProductSubcategory dpsc on dpsc.ProductSubcategoryKey = dp.ProductSubcategoryKey
join DimCustomer dc on dc.CustomerKey = fs.CustomerKey


Select top 100 * from [dbo].[FactSmallSales]



