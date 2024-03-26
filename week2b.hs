{-
This task is meant to be solved by list comprehension, which gives you a very short solution.

Manhattan distance between two points is the sum of x-distance and y-distance. Ie. Manhattan distance 
between (3,3) and (2,6) is 1 + 3 = 4 (distance between 3 and 2 + distance between 3 and 6)

Write a function points :: Int -> [(Int, Int)] that given an Int x, evaluates to a list of such points 
in 2-dimensional space (pairs of type (Int, Int)), that their Manhattan distance from origin (0, 0) 
is at most x.

The grader sorts the output of your function so the order in which the elements are does not matter.

Submit a file that has the function.
----------------------------------------------------------------------------------------------------

Test 0: 'points 1'
### Failure in: 0: 'points 1'
(results sorted)
expected: [(-1,0),(0,-1),(0,0),(0,1),(1,0)]
 but got: [(0,0),(0,1),(1,0),(1,1)]

Test 1: 'points 3'
### Failure in: 1: 'points 3'
(results sorted)
expected: [(-3,0),(-2,-1),(-2,0),(-2,1),(-1,-2),(-1,-1),(-1,0),(-1,1),(-1,2),(0,-3),(0,-2),(0,-1),(0,0),(0,1),
(0,2),(0,3),(1,-2),(1,-1),(1,0),(1,1),(1,2),(2,-1),(2,0),(2,1),(3,0)]
 but got: [(0,0),(0,1),(0,2),(0,3),(1,0),(1,1),(1,2),(1,3),(2,0),(2,1),(2,2),(2,3),(3,0),(3,1),(3,2),(3,3)]

Cases: 2  Tried: 2  Errors: 0  Failures: 2

-}

points :: Int -> [(Int, Int)]
points x = [(i, j) | i <- [-x..x], j <- [-x..x],  abs (i - 0) + abs (j - 0) <= x ]
