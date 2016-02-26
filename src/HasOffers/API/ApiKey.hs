module HasOffers.API.ApiKey
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

findApiKeys = 
  Call "ApiKey"
       "findApiKeys"
       "GET"
       [ Param "filters"     False ""
       ]

generateApiKey = 
  Call "ApiKey"
       "generateApiKey"
       "POST"
       [ Param "user_type" True ""
       , Param "user_id"   True ""  
       ]

