module Lists2 where

  doubleList :: [Integer] -> [Integer]
  doubleList [] = []
  doubleList (n:ns) = (2*n) : doubleList ns

  multiplyList :: Integer -> [Integer] -> [Integer]
  multiplyList _ [] = []
  multiplyList m (n:ns) = (m*n) : multiplyList m ns

  takeInt :: Integer -> [Integer] -> [Integer]
  takeInt _ [] = []
  takeInt 0 _ = []
  takeInt n (x:xs) = x : takeInt (n-1) xs

  dropInt :: Integer -> [Integer] -> [Integer]
  dropInt _ [] = []
  dropInt 0 l = l
  dropInt n (x:xs) =  dropInt (n-1) xs
