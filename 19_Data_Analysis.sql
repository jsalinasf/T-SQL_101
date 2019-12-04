-- Function DATENAME

-- The question we want to answer is this: what day of the week has the most traffic stops?

SELECT DATENAME(dw, StopDate), COUNT(*)
FROM dbo.TrafficStops
GROUP BY DATENAME(dw, StopDate)
ORDER BY COUNT(*) DESC
