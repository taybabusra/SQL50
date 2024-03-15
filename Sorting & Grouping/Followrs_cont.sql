# Write your MySQL query statement below
# GROUP count and order
#
SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
ORDER BY user_id ASC
