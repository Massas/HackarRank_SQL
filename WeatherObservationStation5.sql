/*
Query the two cities in STATION with the shortest and longest CITY names,
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.
*/
select city,length(city)
from station
    where length(city) = (select max(length(city)) from station);

select city,length(city)
from station
where city = (select min(city) from station
    where length(city) = (select min(length(city)) from station));
