module D where

import Data.Monoid ((<>))

data Person = Person {
    age :: Int
  , name :: String
  }
  deriving (Eq)

instance Ord Person where
  compare p1 p2 = age p1 `compare` age p2 <> name p1 `compare` name p2

instance Ord Person where
  compare p1 p2 = name p1 `compare` name p2 <> age p1 `compare` age p2

