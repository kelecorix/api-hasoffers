module HasOffers.API.AdManager
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
  Call "AdManager"
       "addCreative"
       "POST"
       [ Param "campaign_id" True $ getParam params 0   -- Required
       , Param "data"        True $ getParam params 1   -- Required, An associative array of fields to the values that will be created.
       ]

createCampaign params = 
  Call "AdManager"
       "createCampaign"
       "POST"
       [ Param "data"         True $ getParam params 0   -- Required, -- Required, An associative array of fields to the values that will be created.
       , Param "return_object" True $ getParam params 1  -- boolean   
       ]

findAllCampaigns params = 
  Call "AdManager"
       "findAllCampaigns"
       "GET"
       [ Param "filters"  False $ getParam params 0   
       , Param "sort"     False $ getParam params 1
       , Param "limit"    False $ getParam params 2
       , Param "page"     False $ getParam params 3
       , Param "fields"   False $ getParam params 4
       , Param "contain"  False $ getParam params 5  
       ]

findAllCreatives params = 
  Call "AdManager"
       "findAllCreatives"
       "GET"
       [ Param "filters"  False $ getParam params 0   
       , Param "sort"     False $ getParam params 1
       , Param "limit"    False $ getParam params 2
       , Param "page"     False $ getParam params 3
       , Param "fields"   False $ getParam params 4
       , Param "contain"  False $ getParam params 5  
       ]

findCampaignById params = 
  Call "AdManager"
       "findCampaignById"
       "GET"
       [ Param "id"      False $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

findCreativeById params = 
  Call "AdManager"
       "findCreativeById"
       "GET"
       [ Param "id"      False $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

getActiveNetworkCampaignCount params = 
  Call "AdManager"
       "getActiveNetworkCampaignCount"
       "GET"
       [ Param "affiliate_access" True $ getParam params 0
       ]

       
