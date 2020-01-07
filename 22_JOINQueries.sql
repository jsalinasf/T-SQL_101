--Perform the same exact join as the previous challenge. This time, add the OfficerGender in the select statement, too.
SELECT ts.OfficerGender, c.PersonsSex
FROM TrafficStops ts
INNER JOIN UniformCitationData c
ON ts.CitationNumber = c.CitationControlNumber