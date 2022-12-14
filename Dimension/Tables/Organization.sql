CREATE TABLE [Dimension].[Organization] (
    [OrganizationKey]       INT           IDENTITY (1, 1) NOT NULL,
    [ParentOrganizationKey] INT           NULL,
    [PercentageOfOwnership] NVARCHAR (16) NULL,
    [OrganizationName]      NVARCHAR (50) NULL,
    [CurrencyKey]           INT           NULL,
    CONSTRAINT [PK_DimOrganization] PRIMARY KEY CLUSTERED ([OrganizationKey] ASC),
    CONSTRAINT [FK_DimOrganization_DimCurrency] FOREIGN KEY ([CurrencyKey]) REFERENCES [Dimension].[Currency] ([CurrencyKey]),
    CONSTRAINT [FK_DimOrganization_DimOrganization] FOREIGN KEY ([ParentOrganizationKey]) REFERENCES [Dimension].[Organization] ([OrganizationKey])
);

