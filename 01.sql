--1 first letter Y
SELECT name FROM world
  WHERE name LIKE 'Y%'
--2 last letter y
SELECT name FROM world
  WHERE name LIKE '%y'
--3 x in word
SELECT name FROM world
  WHERE name LIKE '%x%'
--4 last word land
SELECT name FROM world
  WHERE name LIKE '%land'
--5 start with C and end with ia
SELECT name FROM world
  WHERE name LIKE 'C%ia'
--6
SELECT name FROM world
  WHERE name LIKE '%oo%'
--7 3 a or more
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'
--8 second
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name
--9
SELECT name FROM world
 WHERE name LIKE '%o__o%'
--10 4 char
SELECT name FROM world
 WHERE name LIKE '____'
--11 capital name have the same name of it country
SELECT name
  FROM world
 WHERE name LIKE capital
--12 capital is <country> City
SELECT name
  FROM world
 WHERE capital LIKE concat(name,' City')
--13
SELECT capital, name
  FROM world
 WHERE capital LIKE concat('%',name,'%')
--14
SELECT capital, name
  FROM world
 WHERE capital LIKE concat('%',name,'%') 
 AND LEN(capital) > LEN(name)
--15
SELECT name, REPLACE(capital, name, '') AS  extension
  FROM world
 WHERE capital LIKE CONCAT(name, '_%');