# Write your MySQL query statement below
SELECT (SELECT num
FROM MyNumbers
GROUP BY num
# group by and then filtering thats why Having
HAVING COUNT(*) = 1
ORDER BY num DESC
LIMIT 1) AS num;

## 2nd method of solution
# Write your MySQL query statement below
SELECT MAX(T.num) AS num
FROM(SELECT num
FROM MyNumbers
GROUP BY num
# group by and then filtering thats why Having
HAVING COUNT(*) = 1) T;
