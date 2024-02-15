# Write your MySQL query statement below
SELECT name

FROM Customer
Where referee_id <> 2  # NULL value are not defined
OR referee_id IS NULL; # NULL value checked


# ANother method using substitution NULL with -1
# Write your MySQL query statement below
SELECT name

FROM Customer
Where IFNULL(referee_id,-1) <> 2


# ANother method when multiple columns have a NULL value then this method is used

# Write your MySQL query statement below
SELECT name

FROM Customer
Where COALESCE(IFNULL(referee_id,-1)) <> 2


