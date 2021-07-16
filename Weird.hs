module Weird where

data Weird a b = First a
                | Second b
                | Third [(a,b)]
                | Fourth (Weird a b)

weirdMap :: (a -> c) -> (b -> d) -> Weird a b -> Weird c d
weirdMap fa fb = g
  where
    g (First x) = First (fa x)
    g (Second y) = Second (fb y)
    g (Third z)
    g (Fourth w)
