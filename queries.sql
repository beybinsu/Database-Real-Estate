--lists all attributes of real estates offices with budgets greater than 9000
SELECT * FROM RealEstateOffice
WHERE budget > 9000;

--displays the count of estate IDs that has budget greater than the average budget of all real estate offices
SELECT count(EstateID)
FROM RealEstateOffice
WHERE budget > (select avg(budget) from realestateoffice);

--displays the phone number of estate offices that have budget greater than 8000
SELECT phoneNum
FROM RealEstateOffice
WHERE budget > 8000;

--lists all attributes of properties that have more rooms than the minimum number of rooms in a property
SELECT *
FROM Property 
WHERE numberOfRooms > (select min(numberOfRooms) from Property);

--displays the location of the property that has owner ID od 11 and employee ID of 101
SELECT propertyLocation
FROM Property
WHERE ownerID = 11 AND employeeID = 101;

--displays the owner ID of properties that are located in Ankara/Cankaya/DilekKonutlari/A2/25
SELECT ownerID
FROM Property
WHERE propertyLocation = 'Ankara/Cankaya/DilekKonutlari/A2/25';

--lists all attributes of the properties that can be bought and have a buying date
SELECT *
FROM Buy
Where buyDate IS NOT NULL;

--lists all attributes of the properties that can be bought and contains price information
SELECT*
FROM Buy
Where price IS NULL;

--lists all attributes of the properties that can be bought and have a customer ID of 1001
SELECT*
FROM Buy 
Where customerID = 1001;

--displays the last name, first name and the estate ID of the employees that have a name that starts with B
SELECT lastName, FirstName, estateID
FROM Employee
WHERE FirstName LIKE 'B%';

--displays the different first names of the employees that are born between 1965-01-01 and 2000-01-01
SELECT DISTINCT FirstName
FROM Employee
WHERE birthDate BETWEEN '1965-01-01' AND '2000-01-01';

--dipslays all employees in an order of ascending estate IDs
SELECT *
FROM Employee
ORDER BY estateID ASC;

--displays the first and last name of the customer that have customer ID greater than 1003
SELECT firstname, lastname
FROM Customer
WHERE EXISTS (SELECT customerID FROM Customer WHERE customerID > 1003);

--displays the minimum number of children and the last name of the customer, that is male and groups the data by their last name
SELECT MIN(numOfChildren), lastname
FROM Customer 
WHERE gender = 'male'
group by lastname ;

--displays the last name of the customer that have greater number of children than some customers
SELECT lastname
FROM Customer
WHERE numOfChildren > SOME(SELECT numOfChildren FROM Customer);


--display all data of the trade info if the payment type is not null
SELECT * 
FROM payFor
WHERE paymentType IS NOT NULL;

--displays the price of the trade info which has customer ID that is not null
SELECT price 
FROM payFor
WHERE customerID IS NULL;

--displays all data of the trade type that is of rent
SELECT *
FROM payFor
WHERE paymentType IN('rent');



--displays all data of the location of the estate which is located in Ankara/Çankaya/OyaSokak or Ankara/Ettimesgut/Altay
SELECT * FROM EstateLocation
WHERE EstateLocation = 'Ankara/Çankaya/OyaSokak' 
OR EstateLocation = 'Ankara/Ettimesgut/Altay';

--displays all data of the property owners, ordered by their first name
SELECT * FROM PropertyOwner
ORDER BY firstname;

--displays the gender and count of the ownerIDs of property owners, grouped by their gender and which have owner ID count more than 15, in a descending order of the count of the owner IDs
SELECT COUNT(ownerID),gender
FROM PropertyOwner
GROUP BY gender
HAVING COUNT(ownerID) > 15
ORDER BY COUNT(ownerID) DESC;

--displays the maximum price of rent as LargestPrice
SELECT MAX(price) AS LargestPrice
FROM Rent;

--displays the minimum rent period as SmallestPeriod
SELECT MIN(rentalPeriod) AS SmallestPeriod
FROM Rent;

--displays the owner ID of rental properties which have price greater than some of the prices of rental properties that have customer ID greater than 1002
SELECT ownerID
FROM Rent
WHERE price > SOME (SELECT price FROM Rent
WHERE customerID > 1002 );


--displays the price of rental properties unioned with price of the buy properties and orders them by their price
SELECT price FROM RENT
UNION ALL
SELECT price FROM BUY
ORDER BY price;

--displays all commission data where estate ID is not 5
SELECT *
FROM giveCommission
WHERE estateID NOT IN(5) ;

--Special Query 1
select property.*
from rent join property on rent.ownerid = property.ownerid 
where property.numberofrooms = 3 and property.propertylocation like '%Cankaya%';

--Speical Query 2
select avg(price) 
from buy join property on buy.ownerid = property.ownerid 
where property.propertylocation like '%Cankaya%' and exists(select * from buy join customer on customer.customerid = buy.customerid where customer.numofchildren < 2);
