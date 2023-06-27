DECLARE @Customers TABLE
(
    CustomerID INT
   ,CustomerName VARCHAR(50)
   ,Age INT
   ,City VARCHAR(50)
)

DECLARE @Orders TABLE
(
    OrderID INT
   ,CustomerID INT
   ,OrderDate DATE
   ,ProductID INT
   ,UnitsSold INT
   ,TotalAmount DECIMAL(10, 2)
)

DECLARE @ProductReviews TABLE
(
    ReviewID INT
   ,ProductID INT
   ,Rating INT
   ,ReviewDate DATE
)

INSERT INTO @Customers
(
    CustomerID
   ,CustomerName
   ,Age
   ,City
)
VALUES
    ( 1           -- CustomerID - int
     ,'Customer1' -- CustomerName - varchar(50)
     ,20          -- Age - int
     ,'New York'  -- City - varchar(50)
    )
   ,( 2           -- CustomerID - int
     ,'Customer2' -- CustomerName - varchar(50)
     ,25          -- Age - int
     ,'New York'  -- City - varchar(50)
   )
   ,( 3           -- CustomerID - int
     ,'Customer3' -- CustomerName - varchar(50)
     ,20          -- Age - int
     ,'London'    -- City - varchar(50)
   )
   ,( 4           -- CustomerID - int
     ,'Customer4' -- CustomerName - varchar(50)
     ,22          -- Age - int
     ,'London'    -- City - varchar(50)
   )
   ,( 5           -- CustomerID - int
     ,'Customer5' -- CustomerName - varchar(50)
     ,50          -- Age - int
     ,'London'    -- City - varchar(50)
   )
   ,( 6               -- CustomerID - int
     ,'Customer6'     -- CustomerName - varchar(50)
     ,40              -- Age - int
     ,'San Francisco' -- City - varchar(50)
   )
   ,( 7           -- CustomerID - int
     ,'Customer7' -- CustomerName - varchar(50)
     ,35          -- Age - int
     ,'Stockton'  -- City - varchar(50)
   )
   ,( 8           -- CustomerID - int
     ,'Customer8' -- CustomerName - varchar(50)
     ,37          -- Age - int
     ,'Petaluma'  -- City - varchar(50)
   )
   ,( 9           -- CustomerID - int
     ,'Customer9' -- CustomerName - varchar(50)
     ,42          -- Age - int
     ,'Novato'    -- City - varchar(50)
   )

INSERT INTO @Orders
(
    OrderID
   ,CustomerID
   ,OrderDate
   ,ProductID
   ,UnitsSold
   ,TotalAmount
)
VALUES
    ( 1          -- OrderID - int
     ,1          -- CustomerID - int
     ,'1/1/2023' -- OrderDate - date
     ,1001       -- ProductID - int
     ,10         -- UnitsSold - int
     ,100.00     -- TotalAmount - decimal(10, 2)
    )
   ,( 2          -- OrderID - int
     ,1          -- CustomerID - int
     ,'2/5/2023' -- OrderDate - date
     ,1002       -- ProductID - int
     ,15         -- UnitsSold - int
     ,150.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 3          -- OrderID - int
     ,1          -- CustomerID - int
     ,'3/5/2023' -- OrderDate - date
     ,1003       -- ProductID - int
     ,20         -- UnitsSold - int
     ,200.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 4          -- OrderID - int
     ,1          -- CustomerID - int
     ,'4/5/2023' -- OrderDate - date
     ,1004       -- ProductID - int
     ,25         -- UnitsSold - int
     ,250.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 5          -- OrderID - int
     ,1          -- CustomerID - int
     ,'5/5/2023' -- OrderDate - date
     ,1003       -- ProductID - int
     ,40         -- UnitsSold - int
     ,400.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 6          -- OrderID - int
     ,2          -- CustomerID - int
     ,'1/1/2023' -- OrderDate - date
     ,1001       -- ProductID - int
     ,10         -- UnitsSold - int
     ,100.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 7          -- OrderID - int
     ,2          -- CustomerID - int
     ,'2/5/2023' -- OrderDate - date
     ,1002       -- ProductID - int
     ,15         -- UnitsSold - int
     ,150.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 8          -- OrderID - int
     ,2          -- CustomerID - int
     ,'3/5/2023' -- OrderDate - date
     ,1003       -- ProductID - int
     ,20         -- UnitsSold - int
     ,200.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 9          -- OrderID - int
     ,2          -- CustomerID - int
     ,'4/5/2023' -- OrderDate - date
     ,1004       -- ProductID - int
     ,25         -- UnitsSold - int
     ,250.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 10         -- OrderID - int
     ,2          -- CustomerID - int
     ,'5/5/2023' -- OrderDate - date
     ,1003       -- ProductID - int
     ,40         -- UnitsSold - int
     ,400.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 11         -- OrderID - int
     ,3          -- CustomerID - int
     ,'3/1/2023' -- OrderDate - date
     ,1001       -- ProductID - int
     ,10         -- UnitsSold - int
     ,100.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 12         -- OrderID - int
     ,3          -- CustomerID - int
     ,'4/5/2023' -- OrderDate - date
     ,1002       -- ProductID - int
     ,15         -- UnitsSold - int
     ,150.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 13         -- OrderID - int
     ,3          -- CustomerID - int
     ,'4/5/2023' -- OrderDate - date
     ,1003       -- ProductID - int
     ,20         -- UnitsSold - int
     ,220.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 14         -- OrderID - int
     ,4          -- CustomerID - int
     ,'5/5/2023' -- OrderDate - date
     ,1004       -- ProductID - int
     ,25         -- UnitsSold - int
     ,250.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 15         -- OrderID - int
     ,4          -- CustomerID - int
     ,'4/5/2023' -- OrderDate - date
     ,1003       -- ProductID - int
     ,40         -- UnitsSold - int
     ,300.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 16         -- OrderID - int
     ,4          -- CustomerID - int
     ,'6/1/2023' -- OrderDate - date
     ,1001       -- ProductID - int
     ,10         -- UnitsSold - int
     ,100.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 17         -- OrderID - int
     ,5          -- CustomerID - int
     ,'3/5/2023' -- OrderDate - date
     ,1002       -- ProductID - int
     ,15         -- UnitsSold - int
     ,170.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 18         -- OrderID - int
     ,5          -- CustomerID - int
     ,'4/5/2023' -- OrderDate - date
     ,1003       -- ProductID - int
     ,20         -- UnitsSold - int
     ,160.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 19         -- OrderID - int
     ,5          -- CustomerID - int
     ,'5/5/2023' -- OrderDate - date
     ,1004       -- ProductID - int
     ,25         -- UnitsSold - int
     ,250.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 20         -- OrderID - int
     ,5          -- CustomerID - int
     ,'6/5/2023' -- OrderDate - date
     ,1003       -- ProductID - int
     ,40         -- UnitsSold - int
     ,280.00     -- TotalAmount - decimal(10, 2)
   )
   ,( 21         -- OrderID - int
     ,6          -- CustomerID - int
     ,'6/5/2023' -- OrderDate - date
     ,1002       -- ProductID - int
     ,40         -- UnitsSold - int
     ,400.00     -- TotalAmount - decimal(10, 2)
   )

INSERT INTO @ProductReviews
(
    ReviewID
   ,ProductID
   ,Rating
   ,ReviewDate
)
VALUES
    ( 1           -- ReviewID - int
     ,1001        -- ProductID - int
     ,8           -- Rating - int
     ,'1/10/2023' -- ReviewDate - date
    )
   ,( 2           -- ReviewID - int
     ,1001        -- ProductID - int
     ,10          -- Rating - int
     ,'2/10/2023' -- ReviewDate - date
   )
   ,( 3           -- ReviewID - int
     ,1001        -- ProductID - int
     ,7           -- Rating - int
     ,'3/10/2023' -- ReviewDate - date
   )
   ,( 4           -- ReviewID - int
     ,1002        -- ProductID - int
     ,6           -- Rating - int
     ,'1/15/2023' -- ReviewDate - date
   )
   ,( 5           -- ReviewID - int
     ,1002        -- ProductID - int
     ,5           -- Rating - int
     ,'2/10/2023' -- ReviewDate - date
   )
   ,( 6           -- ReviewID - int
     ,1002        -- ProductID - int
     ,7           -- Rating - int
     ,'3/10/2023' -- ReviewDate - date
   )
   ,( 7           -- ReviewID - int
     ,1003        -- ProductID - int
     ,10          -- Rating - int
     ,'1/10/2023' -- ReviewDate - date
   )
   ,( 8           -- ReviewID - int
     ,1003        -- ProductID - int
     ,5           -- Rating - int
     ,'2/10/2023' -- ReviewDate - date
   )
   ,( 9           -- ReviewID - int
     ,1003        -- ProductID - int
     ,4           -- Rating - int
     ,'3/10/2023' -- ReviewDate - date
   )
   ,( 10          -- ReviewID - int
     ,1004        -- ProductID - int
     ,10          -- Rating - int
     ,'1/10/2023' -- ReviewDate - date
   )
   ,( 11          -- ReviewID - int
     ,1004        -- ProductID - int
     ,10          -- Rating - int
     ,'2/10/2023' -- ReviewDate - date
   )
   ,( 12          -- ReviewID - int
     ,1004        -- ProductID - int
     ,8           -- Rating - int
     ,'3/10/2023' -- ReviewDate - date
   )
   ,( 13          -- ReviewID - int
     ,1003        -- ProductID - int
     ,10          -- Rating - int
     ,'4/10/2023' -- ReviewDate - date
   )
   ,( 14          -- ReviewID - int
     ,1004        -- ProductID - int
     ,10          -- Rating - int
     ,'4/10/2023' -- ReviewDate - date
   )


-- Answer 1
SELECT C.CustomerName
      ,COUNT(O.OrderID) AS OrderCount
FROM @Customers C
    LEFT OUTER JOIN @Orders O
        ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
ORDER BY COUNT(O.OrderID) DESC


-- Answer 2
;
WITH
CustOrder
AS
(
    SELECT C.CustomerName
          ,COUNT(O.OrderID) AS OrderCount
    FROM @Customers C
        INNER JOIN @Orders O
            ON O.CustomerID = C.CustomerID
    GROUP BY C.CustomerName
)
SELECT CustOrder.CustomerName
      ,CustOrder.OrderCount
FROM CustOrder
WHERE CustOrder.OrderCount =
( SELECT MAX(CustOrder.OrderCount)FROM CustOrder )


-- Answer 3
UPDATE @Customers
SET City = 'New York'
FROM @Customers c
    INNER JOIN @Orders o
        ON c.CustomerID = o.CustomerID
WHERE c.City = 'London'


-- Answer 4
SELECT ROUND(AVG(Age), 0) AS [Avg Customer Age]
FROM @Customers
WHERE ISNUMERIC(Age) = 1


-- Answer 5
SELECT MONTH(OrderDate) AS Month
      ,YEAR(OrderDate) AS Year
      ,SUM(UnitsSold) AS [Units Sold]
FROM @Orders
GROUP BY MONTH(OrderDate)
        ,YEAR(OrderDate)
ORDER BY YEAR(OrderDate) ASC
        ,MONTH(OrderDate) ASC

-- Answer 6
SELECT TOP ( 5 )
       C.CustomerName
      ,SUM(O.TotalAmount) AS [Total Order Amount]
FROM @Orders O
    INNER JOIN @Customers C
        ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
ORDER BY SUM(O.TotalAmount) DESC

-- Answer 7
SELECT TOP ( 3 )
       C.CustomerName
      ,SUM(O.TotalAmount) AS [Total Order Amount]
FROM @Orders O
    INNER JOIN @Customers C
        ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
        ,O.OrderDate
HAVING O.OrderDate >= DATEADD(M, -3, GETDATE())
ORDER BY SUM(O.TotalAmount) DESC

-- Answer 8
SELECT ProductID
      ,AVG(Rating) AS AvgProductRating
      ,COUNT(ReviewID) AS ProductReviewCount
FROM @ProductReviews
GROUP BY ProductID
ORDER BY AVG(Rating) DESC


-- Answer 9
;
WITH
MonthData
AS
(
    SELECT ProductID
          ,MONTH(OrderDate) AS SalesMonth
          ,YEAR(OrderDate) AS SalesYear
          ,SUM(TotalAmount) AS MonthTotal
          ,LAG(SUM(TotalAmount)) OVER ( PARTITION BY ProductID
                                        ORDER BY YEAR(OrderDate) ASC
                                                ,MONTH(OrderDate) ASC ) AS PreviousAmount
    FROM @Orders
    GROUP BY ProductID
            ,YEAR(OrderDate)
            ,MONTH(OrderDate)
)
SELECT MD.ProductID, MD.SalesYear, MD.SalesMonth
      ,FORMAT(ISNULL((( MD.MonthTotal - MD.PreviousAmount ) / NULLIF(MD.PreviousAmount,0) ), 0), 'P') AS GrowthRate
FROM MonthData AS MD
ORDER BY MD.ProductID ASC

