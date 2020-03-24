-- Function DATENAME

-- The question we want to answer is this: what day of the week has the most traffic stops?

SELECT DATENAME(dw, StopDate), COUNT(*) as [Count]
FROM dbo.TrafficStops
GROUP BY DATENAME(dw, StopDate)
ORDER BY Count DESC


SELECT DATENAME(WEEKDAY, StopDate) as [DayofWeek], COUNT(*) as [Count]
FROM dbo.TrafficStops
GROUP BY DATENAME(WEEKDAY, StopDate)
ORDER BY Count DESC


-- Function DATEPART
-- DATEPART function, which can take a date, and give the day of the week back as an integer.

SELECT DATEPART(dw, StopDate)
FROM TrafficStops