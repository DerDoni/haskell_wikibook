module ReaderAdder where
import Text.Read

interactiveSumming :: IO ()
interactiveSumming = do
  putStrLn "Give me two numbers"
  x <- readMaybe <$> getLine
  y <- readMaybe <$> getLine


  case (+) <$> x <*> y :: Maybe Double of
   Just z -> putStrLn ("The sum of your numbers is " ++ show z)
   Nothing -> do
     putStrLn "Invalid Number, Try again!"
     interactiveSumming
