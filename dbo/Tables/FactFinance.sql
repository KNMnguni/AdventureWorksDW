﻿CREATE TABLE [Fact].[FactFinance] (
    [FinanceKey]         INT        IDENTITY (1, 1) NOT NULL,
    [DateKey]            INT        NOT NULL,
    [OrganizationKey]    INT        NOT NULL,
    [DepartmentGroupKey] INT        NOT NULL,
    [ScenarioKey]        INT        NOT NULL,
    [AccountKey]         INT        NOT NULL,
    [Amount]             FLOAT (53) NOT NULL,
    [Date]               DATETIME   NULL,
    CONSTRAINT [FK_FactFinance_DimAccount] FOREIGN KEY ([AccountKey]) REFERENCES [Dimension].[DimAccount] ([AccountKey]),
    CONSTRAINT [FK_FactFinance_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [Dimension].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactFinance_DimDepartmentGroup] FOREIGN KEY ([DepartmentGroupKey]) REFERENCES [Dimension].[DimDepartmentGroup] ([DepartmentGroupKey]),
    CONSTRAINT [FK_FactFinance_DimOrganization] FOREIGN KEY ([OrganizationKey]) REFERENCES [Dimension].[DimOrganization] ([OrganizationKey]),
    CONSTRAINT [FK_FactFinance_DimScenario] FOREIGN KEY ([ScenarioKey]) REFERENCES [Dimension].[DimScenario] ([ScenarioKey])
);

