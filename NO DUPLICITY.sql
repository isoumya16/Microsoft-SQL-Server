--Query the list of CITY names from the given table that do not end with vowels. Your result should not contain duplicate values.--Create a Location DatabaseCreate Database LocationDB-- Create the table
CREATE TABLE location_details (
    id INT PRIMARY KEY,
    city CHAR(50),
    state CHAR(50)
);

-- Insert random values
INSERT INTO location_details(id, city, state)
VALUES
    (1, 'New York', 'NY'),
    (2, 'Los Angeles', 'CA'),
    (3, 'Chicago', 'IL'),
    (4, 'Houston', 'TX'),
    (5, 'Miami', 'FL'),
    -- Add more values here
    (6, 'Seattle', 'WA'),
    (7, 'Boston', 'MA'),
    (8, 'Denver', 'CO'),
    (9, 'Atlanta', 'GA'),
    (10, 'San Francisco', 'CA');

-- Check the inserted data
SELECT * FROM location_details;

--CITY names from the given table that do not end with vowels with no duplicate values.

SELECT DISTINCT city
FROM [dbo].[location_details]
WHERE city NOT LIKE '%a'
    AND city NOT LIKE '%e'
    AND city NOT LIKE '%i'
    AND city NOT LIKE '%o'
    AND city NOT LIKE '%u';



