{-
   The maximum heart rate of a person is a figure that is used in many health and sports related analyses. 
Measuring the maximum heart rate is stressful, so often it is estimated with formulas that take into account 
that typically the max heart rate declines with age.
   The simplest formula for max heart rate is 220 - age (age in years). However, this formula is found 
to give too low values for people with age > 40, and a formula 207 - 0.7 x age works better for them.
   Write a function maxhr :: Float -> Float that given a Float age, calculates the estimated maximum heart 
rate for a person that age, using the formulas above.
Submit a file that has the function.
-}

{-
Test 0: 'maxhr 25.0'
### Failure in: 0: 'maxhr 25.0'
expected: 195.0
 but got: 175.0

Test 1: 'maxhr 52.0'
Cases: 2  Tried: 2  Errors: 0  Failures: 1

I was using 200 - a instead of 220!!! (╯°□°）╯︵ ┻━┻
-}
maxhr :: Float -> Float

maxhr a = if a > 40 
    then 207 - (0.7 * a) 
    else 220 - a

