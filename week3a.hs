{- 
We represent playing cards with (Char, Int) pairs. ‘s’ means spades, ‘h’ hearts, ‘c’ clubs’ and 
‘d’ diamonds, with number values going from 2 to 14 (Ace being 14). Consider a game, where a 
player is dealt two cards and wins credits based on the following rules:

If the player has the Ace of Spades (‘s’, 14), then the player wins 14 credits.
Otherwise if the player has two consecutive numbers of the same suit, then the player wins 8 credits.
Otherwise if the player has a pair (same number values), then the player wins 6 credits.
Otherwise if the player has to consecutive numbers, then the player wins 4 credits.
Otherwise if the player has two cards of the same suit, then the player wins 2 credits.
Otherwise, the player wins 0 credits.
Write a function credits :: (Char, Int) -> (Char, Int) -> Int that evaluates the given credits.

You can assume that the given cards are real.
-----------------------------------------------------------
Test 0: credits ('s',6) ('c',6)
Test 1: credits ('c',6) ('s',14)
### Failure in: 1: credits ('c',6) ('s',14)
expected: 14
 but got: 0

Cases: 2  Tried: 2  Errors: 0  Failures: 1

-}


credits :: (Char, Int) -> (Char, Int) -> Int
credits (suit1, rank1) (suit2, rank2) 
--If the player has the Ace of Spades (‘s’, 14), then the player wins 14 credits.
  | (suit1 == 's' && rank1 == 14) || (suit2 == 's' && rank2 == 14) = 14  

--if the player has two consecutive numbers of the same suit, then the player wins 8 credits.
  | suit1 == suit2 && abs (rank1 - rank2) == 1 = 8 
  
--if the player has a pair (same number values), then the player wins 6 credits.
  | rank1 == rank2 = 6  

--if the player has to consecutive numbers, then the player wins 4 credits. (different suit)
  | abs (rank1 - rank2) == 1 = 4 

--if the player has two cards of the same suit, then the player wins 2 credits.
  | suit1 == suit2 = 2 

-- No match
  | otherwise = 0  

