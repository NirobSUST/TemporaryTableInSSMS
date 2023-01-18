-- A Normal Table

SET STATISTICS TIME ON
GO
USE test_database
GO

CREATE TABLE FirstIndex (ID INT,
FirstName VARCHAR(100),
LastName VARCHAR(100),
City VARCHAR(100))
GO

INSERT INTO FirstIndex (ID,FirstName,LastName,City)
SELECT ROW_NUMBER() OVER (ORDER BY a.name) RowID,
'Bob',
CASE WHEN ROW_NUMBER() OVER (ORDER BY a.name)%2 = 1 THEN 'Smith'
ELSE 'Brown' END,
CASE WHEN ROW_NUMBER() OVER (ORDER BY a.name)%10 = 1 THEN 'New York'
WHEN ROW_NUMBER() OVER (ORDER BY a.name)%10 = 5 THEN 'San Marino'
WHEN ROW_NUMBER() OVER (ORDER BY a.name)%10 = 3 THEN 'Los Angeles'
ELSE 'Houston' END
FROM sys.all_objects a
CROSS JOIN sys.all_objects b
GO
DROP TABLE FirstIndex
GO
-- Completion Time : 0.8199499s



-- Temp Table

SET STATISTICS TIME ON
GO
USE test_database
GO

CREATE TABLE #FirstIndex (ID INT,
FirstName VARCHAR(100),
LastName VARCHAR(100),
City VARCHAR(100))
GO

INSERT INTO #FirstIndex (ID,FirstName,LastName,City)
SELECT ROW_NUMBER() OVER (ORDER BY a.name) RowID,
'Bob',
CASE WHEN ROW_NUMBER() OVER (ORDER BY a.name)%2 = 1 THEN 'Smith'
ELSE 'Brown' END,
CASE WHEN ROW_NUMBER() OVER (ORDER BY a.name)%10 = 1 THEN 'New York'
WHEN ROW_NUMBER() OVER (ORDER BY a.name)%10 = 5 THEN 'San Marino'
WHEN ROW_NUMBER() OVER (ORDER BY a.name)%10 = 3 THEN 'Los Angeles'
ELSE 'Houston' END
FROM sys.all_objects a
CROSS JOIN sys.all_objects b
GO
DROP TABLE #FirstIndex
GO

-- Completion time : 0.4479190s