module HasOffers.API.Affiliate.AdManager
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

addCreative params = 
  Call "Affiliate_AdManager"
       "addCreative"
       "POST"
       [ Param "campaign_id" True $ getParam params 0  
       , Param "data"        True $ getParam params 1   
       ]

createCampaign params = 
  Call "Affiliate_AdManager"
       "createCampaign"
       "POST"
       [ Param "data"          True $ getParam params 0 
       ]
