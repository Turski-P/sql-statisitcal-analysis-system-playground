Select ShipCity, count(OrderID)
FROM Orders
GROUP BY Shipcity
Having count(OrderID)>16


Podaj id pracownikow  i liczbe przyjetych przez nich zmowien jako liczba-zamówieñ
wyswiet tylko tych korzy maja powyzej 100 zamowien (4)


Select EmployeeID, count(OrderID) as liczba_zamówieñ
From Orders
Group by EmployeeID
Having count(OrderID) > 100

podaj krane na A lub G do ktoryc hwysano ponad 29 zamowien,
posortuj wdlug nazwy kraju majeaco

Select ShipCountry, sum(orderID)
from Orders
Where ShipCountry like 'A%' or ShipCountry like 'G%'
Group by ShipCountry
Having sum(orderID) > 29
Order by ShipCountry desc



Podaj kateogrie produktów (categoryID) dla ktorychjest od 3 do 7 produktów <3,7>
wybierze produktyw ktorych cena jestksotowa jest <10,50>

posrotuj rekordy rosnaco po wyliczonej liczbie produktów

Select CategoryID, count(ProductID)
from Products
Where UnitPrice >=10 and UnitPrice <= 50
Group by categoryid
having count(ProductID) >=3 and count(ProductID) <= 7
order by count(ProductID) desc

Podaj zamowinone produkty dla ktorych rabat jest mniejszy niz 15% lub ilosc 
jest wieksza niz 30, a ktorych sua ilosci jest wieksza niz 400, 
wynik posoruj rosnaco po id produktu

Select sum(Quantity), ProductID
from [Order Details]
where Discount < 15 or Quantity > 30
group by ProductID
having sum(Quantity) > 400
order by productid asc


----------------------------------

wszystkie produkty ktore sa rybami

Select ProductName, CategoryName
from Products, Categories
where Products.CategoryID = Categories.CategoryID
and CategoryName = 'seafood'

Podac wszystkie produkty, ktorych dostawcy sa z niemiec

Select ProductName			
From Suppliers, Products
where Suppliers.SupplierID = Products.SupplierID
and Suppliers.Country = 'Germany'

Podaj zamownie azlozone przez kientow z londynu


Select OrderID
From Orders, Customers
Where orders.CustomerID = Customers.CustomerID
and customers.city = 'London'

Podaj kraje odbiroow zamowien, torych klienci nie pochodza z usa i do ktorych jest 
ponad 100 zmaowien (1)

Select ShipCountry
from Customers, Orders
Where orders.CustomerID = customers.CustomerID
and ShipCountry != 'USA'
group by ShipCountry
having count(orderID) > 100


Podaj produkty i kategorie, gdzie nazwa kategorii jest nabialem lub cena 
jednostkowa prodktu jest wyzsza niz 20
'Dairy Products'


Select ProductName, CategoryName
from Products, Categories
where Products.CategoryID = Categories.CategoryID
and (CategoryName = 'Dairy Products' or Products.UnitPrice > 20)

