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

addCreative = 
  Call "AdManager"
       "addCreative"
       "POST"
       [ Param "campaign_id" True ""   -- Required
       , Param "data"        True ""   -- Required, An associative array of fields to the values that will be created.
       ]

createCampaign = 
  Call "AdManager"
       "createCampaign"
       "POST"
       [ Param "data"         True ""   -- Required, -- Required, An associative array of fields to the values that will be created.
       , Param "return_object" True ""  -- boolean   
       ]

findAllCampaigns = 
  Call "AdManager"
       "findAllCampaigns"
       "GET"
       [ Param "filters"  False ""   
       , Param "sort"     False ""
       , Param "limit"    False ""
       , Param "page"     False ""
       , Param "fields"   False ""
       , Param "contain"  False ""  
       ]
