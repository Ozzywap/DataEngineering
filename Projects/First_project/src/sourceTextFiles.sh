#download file to current directory using curl
curl -O https://www.learningcontainer.com/wp-content/uploads/2020/04/sample-text-file.txt

#store size of file in bytes -- to heavy
var=`wc sample-text-file.txt | awk '{print $3}'`
#maybe instead use the following
var=`ls -l sample-text-file.txt | awk '{print $5}'`

#store line count
var=`wc sample-text-file.txt | awk '{print $1}'`

BULK INSERT dbo.demo
  FROM '/Users/osmanhaji/Desktop/sample-text-file.txt'
  WITH  
     (
        ROWTERMINATOR ='\n'
     );

select * from demo

/Users/osmanhaji/Desktop/sample.txt


-- truncate the table first
TRUNCATE TABLE demo;
GO
 

BULK INSERT demo.Actors
FROM '/Users/osmanhaji/Desktop/actor.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO