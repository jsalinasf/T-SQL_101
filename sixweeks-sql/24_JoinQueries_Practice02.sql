-- Join ScooterTrips and NovWeather on TripDate and Date.
-- Select the TripDistance where AvgTempF is more than 58
SELECT TripDistance
FROM ScooterTrips st
JOIN NovWeather nw
ON st.TripDate = nw.Date
WHERE nw.AvgTempF > 58

-- Using the last challenge as a starting point...
-- Group the results by BikeId. In the select statement, return the BikeId and the SUM of the TripDistance.
SELECT st.BikeId, SUM(st.TripDistance)
FROM ScooterTrips st
JOIN NovWeather nw
ON st.TripDate = nw.Date
WHERE nw.AvgTempF > 58
GROUP BY BikeId

-- Join the Production.Product and Production.ProductInventory tables using the ProductId columns. 
-- SELECT the [Name] of the product from Production.Product and the Quantity of the product from Production.ProductInventory
SELECT p.[Name], pi.Quantity
FROM Production.Product p
JOIN Production.ProductInventory pi
ON p.ProductId = pi.ProductId