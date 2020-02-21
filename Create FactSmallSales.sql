DROP TABLE [dbo].[FactSmallSales]

CREATE TABLE [dbo].[FactSmallSales](
	[SalesOrderNumber] [nvarchar](20) NOT NULL,
	[SalesOrderLineNumber] [tinyint] NOT NULL,
	[ProductName] [nvarchar](250) NULL,
	[ProductSubcategoryName] [nvarchar](250) NULL,
	[CustomerName] [nvarchar](250) NULL,
	[SalesAmount] [money] NULL,
	[OrderDate] [date] NULL,
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactSmallSales] ADD  CONSTRAINT [PK_FactSmallSales] PRIMARY KEY CLUSTERED 
(
	[SalesOrderNumber] ASC,
	[SalesOrderLineNumber] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF) ON [PRIMARY]
GO
