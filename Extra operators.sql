-- write query
-- 1.names starts with vowel
-- 2. names ends with vowel
-- 3. name start and and ends with vowels

use d19;
show tables;
select * from student;
SELECT *
FROM student
WHERE name LIKE 'A%'
   OR name LIKE 'E%'
   OR name LIKE 'I%'
   OR name LIKE 'O%'
   OR name LIKE 'U%'
   OR name LIKE 'a%'
   OR name LIKE 'e%'
   OR name LIKE 'i%'
   OR name LIKE 'o%'
   OR name LIKE 'u%';
   
SELECT *
FROM student
WHERE name LIKE '%A'
   OR name LIKE '%E'
   OR name LIKE '%I'
   OR name LIKE '%O'
   OR name LIKE '%U'
   OR name LIKE '%a'
   OR name LIKE '%e'
   OR name LIKE '%i'
   OR name LIKE '%o'
   OR name LIKE '%u';

SELECT *
FROM student
WHERE
(
    name LIKE 'A%' OR name LIKE 'E%' OR name LIKE 'I%' OR
    name LIKE 'O%' OR name LIKE 'U%' OR
    name LIKE 'a%' OR name LIKE 'e%' OR
    name LIKE 'i%' OR name LIKE 'o%' OR
    name LIKE 'u%'
)
AND
(
    name LIKE '%A' OR name LIKE '%E' OR name LIKE '%I' OR
    name LIKE '%O' OR name LIKE '%U' OR
    name LIKE '%a' OR name LIKE '%e' OR
    name LIKE '%i' OR name LIKE '%o' OR
    name LIKE '%u'
);

