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

findAllCampaigns params = 
  Call "Affiliate_AdManager"
       "findAllCampaigns"
       "GET"
       [ Param "filters"  False $ getParam params 0   
       , Param "sort"     False $ getParam params 1
       , Param "limit"    False $ getParam params 2
       , Param "page"     False $ getParam params 3
       , Param "fields"   False $ getParam params 4
       ]

findAllCreatives params = 
  Call "Affiliate_AdManager"
       "findAllCreatives"
       "GET"
       [ Param "filters"  False $ getParam params 0   
       ]

findCampaignById params = 
  Call "Affiliate_AdManager"
       "findCampaignById"
       "GET"
       [ Param "id"      False $ getParam params 0   
       , Param "fields"  False $ getParam params 1 
       ]

getCampaignCode params = 
  Call "Affiliate_AdManager"
       "getCampaignCode"
       "GET"
       [ Param "campaign_id" True  $ getParam params 0   
       , Param "params"      False $ getParam params 1
       , Param "options"     False $ getParam params 1  
       ]

getCampaignCreatives params = 
  Call "Affiliate_AdManager"
       "getCampaignCreatives"
       "GET"
       [ Param "id"        True $ getParam params 0
       , Param "filters"  False $ getParam params 1   
       , Param "sort"     False $ getParam params 2
       , Param "limit"    False $ getParam params 3
       , Param "page"     False $ getParam params 4
       , Param "fields"   False $ getParam params 5 
       ]

updateCampaign params = 
  Call "Affiliate_AdManager"
       "updateCampaign"
       "POST"
       [ Param "id"            True $ getParam params 0
       , Param "data"          True $ getParam params 1 
       ]

updateCreativeField params = 
  Call "Affiliate_AdManager"
       "updateCreativeField"
       "POST"
       [ Param "id"     True $ getParam params 0
       , Param "field"  True $ getParam params 1
       , Param "value"  True $ getParam params 2  
       ]
