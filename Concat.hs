module Concat where

interactiveConcatenating :: IO ()
interactiveConcatenating = do
  s <-  putStrLn "Choose two strings" *> ((++) <$> getLine <*> (take 3 <$>getLine))
  putStrLn "Let's concatenate them!" *> putStrLn s
