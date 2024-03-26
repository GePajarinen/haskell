{-
This task is meant to be solved with list comprehension.

Write a function headOrLast :: [String] -> Char -> [String] that, given a list of strings and a character, 
evaluates to a list with all the strings of the input list that either begin or end with the input character.

Grader sorts the output of your function so the order in which the elements are does not matter.

Submit a file that has the function

------------------------------------------------------------------------------------------------
Test 0: headOrLast ["hello"] 'o'
Test 1: headOrLast ["abc","cde","efg"] 'e'
Cases: 2  Tried: 2  Errors: 0  Failures: 0
------------------------------------------
Test 0:
Test 1:
Test 2:
### Failure in: 2: an empty string is given

Test 3:
Cases: 4  Tried: 4  Errors: 0  Failures: 1

-}

headOrLast :: [String] -> Char -> [String]
headOrLast list c = [x | x <- list, head x == c || last x == c ] 
