{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty

import Data.Monoid (mconcat)
import Crypto.PubKey.RSA
import Control.Monad.IO.Class(liftIO)
import Data.Text.Lazy(pack)

main = scotty 3000 $
    get "/:word" $ do
        (public,private) <- liftIO $ generate 128 3
        liftIO $ print public
        liftIO $ print private
        html $ pack $ show public
