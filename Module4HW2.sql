SELECT * FROM Sales.Customer

GO

SELECT * FROM Sales.Store AS s
ORDER BY s.Name

GO

SELECT TOP 10 * FROM HumanResources.Employee AS e
WHERE e.BirthDate > '1989-09-28'

GO

SELECT e.NationalIDNumber, e.LoginID, e.JobTitle FROM HumanResources.Employee AS e
WHERE e.LoginID LIKE '%0'
ORDER BY e.JobTitle DESC

GO

SELECT * FROM Person.Person AS p
WHERE p.ModifiedDate LIKE '%2008%'AND p.MiddleName IS NOT NULL AND p.Title IS NULL

GO

SELECT DISTINCT (SELECT d.Name FROM HumanResources.Department AS d WHERE d.DepartmentID = e.DepartmentID) AS DepartmentName
FROM HumanResources.EmployeeDepartmentHistory AS e

GO

SELECT SUM(s.CommissionPct) AS CommissionPctSum FROM Sales.SalesPerson AS s
GROUP BY s.TerritoryID
HAVING SUM(s.CommissionPct) > 0

GO

SELECT * FROM HumanResources.Employee AS e
WHERE e.VacationHours = (SELECT MAX(v.VacationHours) FROM HumanResources.Employee AS v)

GO

SELECT * FROM HumanResources.Employee AS e
WHERE e.JobTitle IN ('Sales Representative', 'Network Administator', 'Network Manager')

GO

SELECT * FROM HumanResources.Employee AS e
LEFT JOIN Purchasing.PurchaseOrderHeader AS p
ON e.BusinessEntityID = p.EmployeeID

GO