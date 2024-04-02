-- Convert an integer to a character
intToChar y = [ c | (n, c)<- zip [1..26] ['a'..'z'], n == y]

-- Generate all pairs of distinct elements from a list
pairs :: [[b]] -> [(b, b)]
pairs xs = [(x, y) | (x:xs) <- tail xs, y <- xs]

-- Given a list of integers, find characters whose numbers are a product of any two numbers in the list
charsProductOf ns = [intToChar (x * y) | (x, y) <- ns]


