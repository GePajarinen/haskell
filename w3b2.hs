a ch [] = [ch]  -- If the list is empty, add the character
a ch (x:xs)
  | ch == x       = xs       -- If the character is already in the list, return the list unchanged
  | otherwise     = ch : xs  -- Otherwise, add the character to the beginning of the list
  | return [xs]