module HasOffers.API

       where

import Data.Text

-- | Core parameters that builds up
--   auth url to acces methods
-- 
--   endpoint = "https://api.hasoffers.com/"
--   key      = "9bb137a344cdec76c5830a0ef6d2e38e"
--   network  = "customNetwork"
--   api      =  endpoint ++ "/API/json?NetworkId=" ++ networkId ++ "&NetworkToken=" ++ key
data Auth =
  Auth { endpoint :: Text
       , key      :: Text
       , network  :: Text
       } deriving (Show)


