module O3 where

import O1
import O2

instance Equal Person where
  eq p1 p2 = age p1 == age p2 && name p1 == name p2

