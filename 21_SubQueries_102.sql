--The row with Id 102621 in the TrafficStops table has a CitationNumber of CI67406.
--Select all the columns (*) from Citations where the CitationControlNumber is equal to  CI67406.

SELECT *
FROM UniformCitationData
WHERE CitationControlNumber = 'CT45971'


--Select the CitationNumber from the rows of the TrafficStops table where the vehicle was searched.
SELECT CitationNumber
FROM TrafficStops
WHERE VehicleSearched = 'YES'


-- Emergency QUERY to adpat the exercise request to the dataset
SELECT TrafficStops.CitationNumber, UniformCitationData.CitationControlNumber
FROM TrafficStops, UniformCitationData
WHERE TrafficStops.CitationNumber = UniformCitationData.CitationControlNumber
AND TrafficStops.VehicleSearched = 'YES'


--Now let's say we wanted to learn a little more about the traffic stops resulting in a vehicle search.
--We know we can search the Citations table individually for each CitationNumber, but there is a better way with subqueries!
--Finish the starter script so we can view some citation information regarding the traffic stops resulting in a vehicle search.
SELECT ChargeDescr, PersonsAge
FROM UniformCitationData
WHERE CitationControlNumber IN (
	SELECT CitationNumber
	FROM TrafficStops
	WHERE VehicleSearched = 'YES'
)