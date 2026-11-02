--Podaj nazwy firm klientów (91)

Select [CompanyName]
From [dbo].[Customers]

--Podaj nazwy firm klientów, ich miasto i kraj (91)

Select [CompanyName],[City],[Country]
From [dbo].[Customers]

-- wyswiewtl wsyzkie dane pracownikow
Select [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath]
From [dbo].[Employees]

Select *
From dbo.Employees

Select Distinct Title
From Employees

--kraje skad pochodza klienci
select distinct country
from customers

-- srednia zamwoien produktu
Select AVG([UnitsOnOrder])
from [dbo].[Products]

--minimalna cena ksoztu transporty
select min([Freight])
from orders

--podaj dane pracownik, nazwisko, imie, data urodzadzniea, miasto. najpeirw maiasto rosnocao, potem data urodzeani maleoco
select [LastName], [FirstName], [BirthDate], [City]
from [dbo].[Employees]s
order by City asc, BirthDate desc

--pracownicy z londynu
select [LastName], [FirstName], [BirthDate], [City]
from Employees
where city = 'london'

--zamowienia wyslane po terminie
select orderID AS zamowienia_po_terminie
from Orders
where RequiredDate < ShippedDate

--pracownicy urodzenii po 1960
select lastname, firstname, BirthDate
from Employees
where year(BirthDate)>1960

--opisy zamowienm gdzie ilsoc = 12, a rabat zawiera sie w przdziale od 0 d10% bez tych wartosci (11)
-- 15% = 0.15
select *
from [Order Details]
where Quantity = 12 AND Discount<=0.15   AND Discount>=0.1

-- iusy zamowien, ilosc > 100 lub rabat = 20%
select *
from [Order Details]
where Quantity>100 or Discount=0.2