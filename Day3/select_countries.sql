# Write your MySQL query statement below
 Select name, population, area
 FROM World
 Where area >= 3000000  # shorting concerning area
 Union  # for two different table join
 Select name, population, area
 FROM World
 Where population >= 25000000  #shorting concerning population


# Write your MySQL query statement below
 Select name, population, area
 FROM World
 Where area >= 3000000
 OR population >= 25000000;
