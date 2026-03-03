SELECT
    OrderID,
    CreationTime,
    -- DATETRUNC Examples
    DATEFROMPARTS(HOUR, CreationTime) DT_Hour,
    DATEFROMPARTS(DAY, CreationTime) DT_Day,
    DATEFROMPARTS(YEAR, CreationTime) DT_Year,
    --DATENAME Examples
    DATENAME(MONTH, CreationTime) MonthName,
    DATENAME(WEEKDAY, CreationTime) WeekDayName,
    DATENAME(QUARTER, CreationTime) QuarterName,
    -- DATEPART Examples
    DATEPART(YEAR, CreationTime) DatePartYear,
    DATEPART(MONTH, CreationTime) DatePartMonth,
    DATEPART(DAY, CreationTime) DatePartDay,
    DATEPART(HOUR, CreationTime) DatePartHour,
    DATEPART(QUARTER, CreationTime) DatePartQuarter,
    DATEPART(WEEK, CreationTime) DatePartWeek,
    DATEPART(WEEKDAY, CreationTime) DatePartWeekday,
    -- YEAR, MONTH, DAY
    YEAR(CreationTime) Year,
    MONTH(CreationTime) Month,
    DAY(CreationTime) Day
FROM
    Sales.Orders