module Main where

import Data.Functor
import System.Posix.Process

main :: IO ()
main = forkProcess (return ()) $> ()
