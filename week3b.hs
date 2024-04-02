{-
Let us number the smaller case characters from ‘a’ to ‘z’ with numbers starting from 1, 
that is, ‘a’ is given 1, ‘b’ is given number 2, etc.

Write two functions:
A function charsDivisibleBy :: Int -> [Char] that, given a number n, returns all the characters that 
have a number divisible by n.
A function charsProductOf :: [Int] -> [Char] that, given a list of numbers ns, returns all the characters 
that have a number that is a product of any two numbers in ns. You may assume that each number only appears 
in the list once.
As an example, charsDivisibleBy 2 = “bdfhjlnprtvxz” and charsProductOf [2,3,4] = “fhl”.
The grader sorts the output of your function so the order is unimportant.

Hint: Using list comprehensions seems like a relatively easy way to solve this. Remember, your solution 
doesn’t have to be “efficient”, just work…
Note: Since you are not allowed to import additional Haskell libraries, you’ll have to handle Int to Char 
conversions yourself (Hint: You can write such function easily using the succ function, and there are 
many other ways, too.).

Submit a file that has the function
----------------------------------------------
Test 0: charsDivisibleBy 4
Test 1: charsProductOf [1,5,9]
### Failure in: 1: charsProductOf [1,5,9]
(results sorted)
expected: "ei"
 but got: "aeeiiy"

Test 2: charsDivisibleBy 2
Test 3: charsProductOf [2,3,4]
### Failure in: 3: charsProductOf [2,3,4]
(results sorted)
expected: "fhl"
 but got: "dffhhillp"

Cases: 4  Tried: 4  Errors: 0  Failures: 2

------------------------------------------
Test 0: charsDivisibleBy 4
Test 1: charsProductOf [1,5,9]
### Failure in: 1: charsProductOf [1,5,9]
(results sorted)
expected: "ei"
 but got: "eeii"

Test 2: charsDivisibleBy 2
Test 3: charsProductOf [2,3,4]
### Failure in: 3: charsProductOf [2,3,4]
(results sorted)
expected: "fhl"
 but got: "ffhhll"
-}


intToChar :: (Num a, Enum a, Eq a) => a -> [Char]
intToChar y = [ c | (n, c)<- zip [1..26] ['a'..'z'], n == y]

charsDivisibleBy :: Int -> String
charsDivisibleBy n =  
  concat [intToChar x | x <- [1..26], x `mod` n == 0]

charsProductOf :: [Int] -> String
charsProductOf ns = 
  concat [intToChar p | x <- init ns , y <- tail ns, p <- [1..26], p == x * y, x-y /= 0]

pairs xs = [(x, y) | x <- init xs, y <- tail xs, x-y /= 0]

-- Maybe should create a list and check is the letter exists, and use a if for that
{-
pairs [1,5,9,3,6,7,8]           
[(1,5),(1,9),(1,3),(1,6),(1,7),(1,8),(5,9),(5,3),(5,6),(5,7),(5,8),(9,5),(9,3),(9,6),(9,7),(9,8),
(3,5),(3,9),(3,6),(3,7),(3,8),(6,5),(6,9),(6,3),(6,7),(6,8),(7,5),(7,9),(7,3),(7,6),(7,8)]
-}




