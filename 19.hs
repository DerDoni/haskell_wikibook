import Data.Char
import Data.List

dictionary = ["I", "have", "a", "thing", "for", "Linux"]


quickSort :: (Ord a) => (a -> a -> Ordering) -> [a] -> [a]
quickSort _ [] = []

quickSort c (x : xs) = (quickSort c less) ++ ( x : equal) ++ (quickSort c more)
  where
    less = filter (\y -> y `c` x == LT) xs
    equal = filter (\y -> y `c` x == EQ) xs
    more = filter (\y -> y `c` x == GT) xs


descending x y = compare y x
insensitive x y = compare (map toLower x) (map toLower y)
