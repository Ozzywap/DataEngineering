-- attempting to enter file into sql database
BULK INSERT dbo.demo
  FROM '~/Desktop/sample-text-file.txt'
  WITH  
     (
        ROWTERMINATOR ='\n'
     );

select * from demo

/Users/osmanhaji/Desktop/sample.txt



TRUNCATE TABLE demo;
GO
 

BULK INSERT demo.Actors
FROM '~/Desktop/actor.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO