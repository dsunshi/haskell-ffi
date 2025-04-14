module Main where

import Doubler

asString :: Int -> String
asString = show . Doubler.doubleInt

main :: IO ()
main = putStrLn ("Double: " ++ show input ++ " is: " ++ asString input)
  where
    input = 2
