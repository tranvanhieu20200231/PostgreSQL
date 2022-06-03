--1.1
SELECT SalesLT.SalesOrderHeader.SalesOrderID, SalesLT.SalesOrderHeader.TotalDue, SalesLT.Customer.CompanyName
FROM SalesLT.SalesOrderHeader
INNER JOIN SalesLT.Customer
ON SalesLT.SalesOrderHeader.CustomerID = SalesLT.Customer.CustomerID;
--1.2
SELECT SalesLT.SalesOrderHeader.SalesOrderID,SalesLT.SalesOrderHeader.TotalDue ,SalesLT.Customer.CompanyName,SalesLT.Address.AddressLine1,SalesLT.Address.City,SalesLT.Address.StateProvince,SalesLT.Address.PostalCode,SalesLT.Address.CountryRegion
FROM SalesLT.SalesOrderHeader,SalesLT.Customer,SalesLT.CustomerAddress,SalesLT.Address
WHERE SalesLT.SalesOrderHeader.CustomerID = SalesLT.Customer.CustomerID 
and SalesLT.SalesOrderHeader.CustomerID=SalesLT.CustomerAddress.CustomerID
and SalesLT.CustomerAddress.AddressID=SalesLT.Address.AddressID;
--2.1
Select SalesLT.Customer.CompanyName,SalesLT.Customer.FirstName,SalesLT.Customer.LastName,SalesLT.SalesOrderHeader.SalesOrderID,SalesLT.SalesOrderHeader.TotalDue
from SalesLT.Customer
LEFT JOIN SalesLT.SalesOrderHeader
ON SalesLT.Customer.CustomerID=SalesLT.SalesOrderHeader.CustomerID
order by SalesLT.SalesOrderHeader.TotalDue DESC;
--2.2
Select SalesLT.Customer.CustomerID,SalesLT.Customer.CompanyName,SalesLT.Customer.FirstName,SalesLT.Customer.LastName,SalesLT.Customer.Phone
from SalesLT.Customer
where SalesLT.Customer.CustomerID NOT IN (Select SalesLT.CustomerAddress.CustomerID from SalesLT.CustomerAddress);