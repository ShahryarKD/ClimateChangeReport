SELECT TOP (1000) [Country Code]
      ,[Country Name]
      ,[year]
      ,[tem_change]
  FROM [ClimateChange].[dbo].[Temperature_change_Data$]


SELECT  [Country Name] AS Country, year, tem_change AS TemperatureChange
FROM ClimateChange..Temperature_change_Data$
WHERE [Country Name] like '%Low%'
Order by year

SELECT  [Country Name] AS Country, year, tem_change AS TemperatureChange
FROM ClimateChange..Temperature_change_Data$
WHERE [Country Name] like '%Canada%' OR [Country Name] LIKE '%of America' OR [Country Name] LIKE '%United Kingdom%'
Order by year


SELECT year, Avg(tem_change) AS TemperatureChange
FROM ClimateChange..Temperature_change_Data$
WHERE [Country Name] like '%Canada%' OR [Country Name] LIKE '%of America' OR [Country Name] LIKE '%United Kingdom%'
GROUP by year
Order by year

SELECT  [Country Name] AS Country, year, tem_change AS TemperatureChange
FROM ClimateChange..Temperature_change_Data$
WHERE [Country Name] like '%High%'
Order by year