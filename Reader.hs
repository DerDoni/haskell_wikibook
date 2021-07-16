module Reader where
import Text.Read

main :: IO ()
main = do
  putStrLn "Please enter a number:"
  number <- getLine
  let n = readMaybe number :: Maybe Double
  case n of
    Just x -> print (2*x)
    Nothing -> do
      putStrLn "Invalid Number, try again."
      main
