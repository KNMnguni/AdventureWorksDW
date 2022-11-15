CREATE TABLE [Fact].[SalesQuota] (
    [SalesQuotaKey]    INT      IDENTITY (1, 1) NOT NULL,
    [EmployeeKey]      INT      NOT NULL,
    [DateKey]          INT      NOT NULL,
    [CalendarYear]     SMALLINT NOT NULL,
    [CalendarQuarter]  TINYINT  NOT NULL,
    [SalesAmountQuota] MONEY    NOT NULL,
    [Date]             DATETIME NULL,
    CONSTRAINT [PK_FactSalesQuota_SalesQuotaKey] PRIMARY KEY CLUSTERED ([SalesQuotaKey] ASC),
    CONSTRAINT [FK_FactSalesQuota_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [Dimension].[Date] ([DateKey]),
    CONSTRAINT [FK_FactSalesQuota_DimEmployee] FOREIGN KEY ([EmployeeKey]) REFERENCES [Dimension].[Employee] ([EmployeeKey])
);

