# Ali Can Aydogdu

--Show all data in each of the tables.

a.	SELECT 	*
        FROM 	ITEM;

b.	SELECT 	*
        FROM 	SHIPMENT;

c.	SELECT 	*
        FROM 	SHIPMENT_ITEM;


--	List the ShipmentID, ShipperName, and ShipperInvoiceNumber of all shipments.

SELECT 	ShipmentID, ShipperName, ShipperInvoiceNumber
FROM 	SHIPMENT;

--List the ShipmentID, ShipperName, and ShipperInvoiceNumber for all shipments with an insured value greater than $10,000.00.

SELECT 	ShipmentID, ShipperName, ShipperInvoiceNumber
FROM 	SHIPMENT
WHERE	InsuredValue > 10000;


--List the ShipmentID, ShipperName, and ShipperInvoiceNumber of all shippers whose name starts with “AB”.

	The MySQL uses the wildcard %
	SELECT 	ShipmentID, ShipperName, ShipperInvoiceNumber
	FROM 		SHIPMENT
	WHERE		Shipper LIKE 'AB%';

	However, Microsoft Access uses the wildcard *
	SELECT 	ShipmentID, ShipperName, ShipperInvoiceNumber
	FROM 		SHIPMENT
	WHERE		Shipper LIKE 'AB*';

--Assume DepartureDate and ArrivalDate are in the format MM/DD/YY.  List the ShipmentID, ShipperName, and ShipperInvoiceNumber and ArrivalDate of all shipments that departed in December.

	The MySQL uses the wildcard %
	SELECT 	ShipmentID, ShipperName, ShipperInvoiceNumber, ArrivalDate
	FROM 		SHIPMENT
	WHERE		DepartureDate LIKE '12%';

	However, Microsoft Access uses the wildcard *
	SELECT 	ShipmentID, ShipperName, ShipperInvoiceNumber, ArrivalDate
	FROM 		SHIPMENT
	WHERE		DepartureDate LIKE '12*';

--Assume DepartureDate and ArrivalDate are in the format MM/DD/YY.  List the ShipmentID, ShipperName, and ShipperInvoiceNumber and ArrivalDate of all shipments that departed on the tenth day of any month.

	SELECT 	ShipmentID, ShipperName, ShipperInvoiceNumber, ArrivalDate
	FROM 		SHIPMENT
	WHERE		DepartureDate LIKE '___10%';

	SELECT 	ShipmentID, ShipperName, ShipperInvoiceNumber, ArrivalDate
	FROM 		SHIPMENT
	WHERE		DepartureDate LIKE '???10*';


--Determine the maximum and minimum InsuredValue.

	SELECT 	MAX (InsuredValue) AS MaxInsuredValue,
				MIN (InsuredValue) AS MinInsuredValue,
	FROM 		SHIPMENT;

--Determine the average InsuredValue.

SELECT 	AVG (InsuredValue) AS AvgInsuredValue
FROM 	SHIPMENT;



--Count the number of shipments.

SELECT 	COUNT (*) AS NumberOfShipments
FROM 	SHIPMENT;

--Show ItemID, Description, Store, and a calculated column named StdCurrencyAmount that is equal to LocalCurrencyAmt times the ExchangeRate for all rows of ITEM.

SELECT 	Item, Store,
	LocalCurrencyAmt * ExchangeRate AS StdCurrencyAmount
FROM 	ITEM;

--Group item purchases by City and Store.

SELECT 	   City, Store
FROM       ITEM
GROUP BY   City, Store;

--Count the number of purchases having each combination of City and Store.

SELECT 		City, Store
				COUNT (*) AS City_Store_Combination_Count
FROM 			ITEM
GROUP BY		City, Store;

--Show the ShipperName, ShipmentID and DepartureDate of all shipments that have an item with a value of 1000 or more.  Use a subquery.  Present results sorted by ShipperName in ascending order and then DepartureDate in descending order.

SELECT 	ShipperName, DepartureDate
FROM 		SHIPMENT
WHERE		ShipmentID IN
			(SELECT	ShipmentID
			 FROM 	SHIPMENT_ITEM
			 WHERE	Value = 1000
				 OR	Value > 1000)
ORDER BY ShipperName, DepartureDate DESC;




--Show the ShipperName, ShipmentID and DepartureDate of all shipments that have an item with a value of 1000 or more.  Use a join.  Present results sorted by ShipperName in ascending order and then DepartureDate in descending order.

SELECT 		ShipperName, DepartureDate
FROM 			SHIPMENT, SHIPMENT_ITEM
WHERE			SHIPMENT.ShipmentID = SHIPMENT_ITEM.ShipmentID
	AND		(Value = 1000 OR Value > 1000)
ORDER BY 	ShipperName, DepartureDate DESC;



--Show the ShipperName, ShipmentID and DepartureDate of all shipments that have an item that was purchased in Singapore.  Use a subquery.  Present results sorted by ShipperName in ascending order and then DepartureDate in descending order.

SELECT 	ShipperName, DepartureDate
FROM 		SHIPMENT
WHERE		ShipmentID IN
			(SELECT	ShipmentID
			 FROM 	SHIPMENT_ITEM
			 WHERE	ItemID IN
						(SELECT	ItemID
						 FROM		ITEM
						 WHERE	City = 'Singapore'))
ORDER BY	ShipperName, DepartureDate DESC;


--Show the ShipperName, ShipmentID and DepartureDate of all shipments that have an item that was purchased in Singapore.  Use a join, but do not use JOIN ON syntax.  Present results sorted by ShipperName in ascending order and then DepartureDate in descending order.

SELECT 	DISTINCT ShipperName, DepartureDate
FROM 		SHIPMENT, SHIPMENT_ITEM, ITEM
WHERE		SHIPMENT.ShipmentID = SHIPMENT_ITEM.ShipmentID
	AND	SHIPMENT_ITEM.ItemID = ITEM.ItemID
	AND	City = 'Singapore'
ORDER BY	ShipperName, DepartureDate DESC;


--Show the ShipperName, ShipmentID and DepartureDate of all shipments that have an item that was purchased in Singapore.  Use a join using JOIN ON syntax.  Present results sorted by ShipperName in ascending order and then DepartureDate in descending order.

SELECT ShipperName, DepartureDate, Value
FROM SHIPMENT, SHIPMENT_ITEM
WHERE SHIPMENT_ITEM.ShipmentID = SHIPMENT.ShipmentID
AND ItemID IN (
			SELECT ItemID
            FROM ITEM
            WHERE City = 'Singapore’);
ORDER BY SHIPMENT.ShipperName, SHIPMENT.DepartureDate DESC;












