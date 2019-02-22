module Lib
    ( someFunc
    ) where

import Crypto.PubKey.RSA

someFunc :: IO ()
someFunc = do
    (public,private) <- generate 1024 2
    print public
    print private
