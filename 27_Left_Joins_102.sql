--In your database there is a table in the Person schema named BusinessEntity. There is another table in the same schema named BusinessEntityAddress.
--BusinessEntityAddress has a foreign key column BusinessEntityId, which refers to the primary key of Person.BusinessEntity.
--Finish the query so that it can return all the rows in Person.BusinessEntity that do not have a corresponding record in BusinessEntityAddress.
SELECT be.BusinessEntityID
FROM Person.BusinessEntity as be
LEFT JOIN Person.BusinessEntityAddress as bea
ON be.BusinessEntityID = bea.BusinessEntityID
--where clause needed here
WHERE bea.BusinessEntityID IS NULL

