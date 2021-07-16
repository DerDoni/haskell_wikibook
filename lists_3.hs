module Lists3 where

andWiki :: [Bool] -> Bool
andWiki [] = True
andWiki (x:xs) = x && andWiki xs

orWiki :: [Bool] -> Bool
orWiki [] = False
orWiki (x:xs) = x || orWiki xs


andWiki' :: [Bool] -> Bool
andWiki' = foldr (&&) True

orWiki' :: [Bool] -> Bool
orWiki' = foldr (||) False

orWiki'' :: [Bool] -> Bool
orWiki''  = foldl (\x y -> y || x) False


maximum :: Ord a => [a] -> a
maximum = foldr1 max

minimum :: Ord a => [a] -> a
minimum = foldr1 (\x y -> min x y)

reverse' :: [a] -> [a]
reverse' = foldl (\x y -> y:x ) []

scanl' :: (a -> b -> a) -> a -> [b] -> [a]
scanl' step zero [] = [zero]
scanl' step zero (x:xs) = zero : scanl' step (step zero x) xs

scanl'' :: (a -> b -> a) -> a -> [b] -> [a]
scanl'' step zero xs = foldl ()

scanr' :: (a ->b -> b) -> b -> [a] -> [b]
scanr' step zero [] = [zero]
scanr' step zero (x:xs) =  step x (head $ scanr' step zero xs): scanr' step zero xs
