CREATE TABLE [Fact].[NewFactCurrencyRate] (
    [AverageRate]  REAL         NULL,
    [CurrencyID]   NVARCHAR (3) NULL,
    [CurrencyDate] DATE         NULL,
    [EndOfDayRate] REAL         NULL,
    [CurrencyKey]  INT          NULL,
    [DateKey]      INT          NULL
);

