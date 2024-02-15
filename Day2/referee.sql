# Write your MySQL query statement below
SELECT name

FROM Customer
Where referee_id <> 2  # NULL value are not defined
OR referee_id IS NULL; # NULL value checked
