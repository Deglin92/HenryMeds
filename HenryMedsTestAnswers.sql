-- HenryMeds SQL Test Answers
-- Dylan Eglin


-- Answer 1
SELECT C.CustomerName
      ,COUNT(O.OrderID) AS OrderCount
FROM Customers C
    LEFT OUTER JOIN Orders O
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
    FROM Customers C
        INNER JOIN Orders O
            ON O.CustomerID = C.CustomerID
    GROUP BY C.CustomerName
)
SELECT CustOrder.CustomerName
      ,CustOrder.OrderCount
FROM CustOrder
WHERE CustOrder.OrderCount =
( SELECT MAX(CustOrder.OrderCount)FROM CustOrder )


-- Answer 3
UPDATE Customers
SET City = 'New York'
FROM Customers c
    INNER JOIN Orders o
        ON c.CustomerID = o.CustomerID
WHERE c.City = 'London'


-- Answer 4
SELECT ROUND(AVG(Age), 0) AS [Avg Customer Age]
FROM Customers
WHERE ISNUMERIC(Age) = 1


-- Answer 5
SELECT MONTH(OrderDate) AS Month
      ,YEAR(OrderDate) AS Year
      ,SUM(UnitsSold) AS [Units Sold]
FROM Orders
GROUP BY MONTH(OrderDate)
        ,YEAR(OrderDate)
ORDER BY YEAR(OrderDate) ASC
        ,MONTH(OrderDate) ASC

-- Answer 6
SELECT TOP ( 5 )
       C.CustomerName
      ,SUM(O.TotalAmount) AS [Total Order Amount]
FROM Orders O
    INNER JOIN Customers C
        ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
ORDER BY SUM(O.TotalAmount) DESC

-- Answer 7
SELECT TOP ( 3 )
       C.CustomerName
      ,SUM(O.TotalAmount) AS [Total Order Amount]
FROM Orders O
    INNER JOIN Customers C
        ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerName
        ,O.OrderDate
HAVING O.OrderDate >= DATEADD(M, -3, GETDATE())
ORDER BY SUM(O.TotalAmount) DESC

-- Answer 8
SELECT ProductID
      ,AVG(Rating) AS AvgProductRating
      ,COUNT(ReviewID) AS ProductReviewCount
FROM ProductReviews
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
    FROM Orders
    GROUP BY ProductID
            ,YEAR(OrderDate)
            ,MONTH(OrderDate)
)
SELECT MD.ProductID, MD.SalesYear, MD.SalesMonth
      ,FORMAT(ISNULL((( MD.MonthTotal - MD.PreviousAmount ) / NULLIF(MD.PreviousAmount,0) ), 0), 'P') AS GrowthRate
FROM MonthData AS MD
ORDER BY MD.ProductID ASC

