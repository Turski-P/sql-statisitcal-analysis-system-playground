do jakic krajow na A wys³alismy towar 


Select [ShipCountry]
FROM [dbo].[Orders]
Where [ShipCountry] like 'A%'

policzyc do jakic krajow na A wys³alismy towar 

Select distinct [ShipCountry]
FROM [dbo].[Orders]
Where [ShipCountry] like 'A%'

wyminic zamownie w ktorych cena jednostkowa jest miedzy 100, a 200
tablea [opis zamowien]
wkorzysta between

Select UnitPrice
From [Order Details]
Where UnitPrice between 100 and 200

wyminic zamownie w ktorych cena jednostkowa wynosi 10 lub 20
tablea [opis zamowien]
wkorzystac in

Select Quantity
From [Order Details]
Where Quantity in (10,20)


Podac imie naziwko region miasto, pracownikow ktorzy nie maja podaneg oregionu

Select LastName, FirstName, City, Region
from [dbo].[Employees]
Where Region is null


dane zamownie, zamowionych w listtopadzie 1997

Select *
From Orders
Where month(orderdate) = 11 and year(orderdate) = 1997


Ile zaplacilismy poszczegonym spedytorom, kolumne nazwac suma kosztow transportu
ShipVia (IdSpedytora)

Select sum(Freight)
From Orders
Group by ShipVia


Ile zamownie do poszczeglnych kraow na litere A
Select count(OrderID) ShipCountry
From Orders
Where ShipCountry like 'A%'
Group by ShipCountry


Ile wydalismy na transport w 1996 z podzialem na miesiace, podac miesaic jako miesiac,
sume frachut jako sume frachtu

konieczne jest zdefiniowanie w select wszyskich i wylacznie kolumn ktore beda, 
tutaj kolumna miesiaac i suma frachtu
Select sum(Freight), month(ShippedDate) 
From [dbo].[Orders]
Where year(ShippedDate) = 1996 and month(ShippedDate) between 7 and 12
Group by month(ShippedDate)

Jaki byl sredni frach do poszczegolnych krajow odbiorcy
wyswietl srednia pod nazwa myto i podaj kraj odbiorcy
dane posortuj wedlug srednich malejaco

Select avg(Freight) as 'myto', ShipCountry
From Orders
Group by ShipCountry
Order by avg(Freight) desc