USE AdventureWorks2019
GO

--Se desea conocer la ubicación de cada empleado por departamento y área

SELECT hre.BusinessEntityID, hre.NationalIDNumber AS Numero_identificacion_empleado, hrd.DepartmentID AS IDDepartamento, hrd.Name AS Departamento, hrd.GroupName AS Area
FROM HumanResources.Employee hre
INNER JOIN HumanResources.EmployeeDepartmentHistory hrdh
ON hre.BusinessEntityID = hrdh.BusinessEntityID
INNER JOIN HumanResources.Department hrd
ON hrd.DepartmentID = hrdh.DepartmentID
ORDER BY BusinessEntityID