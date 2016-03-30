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

findApiKeys :: [Text] -> Call
findApiKeys params = 
  Call "ApiKey"
       "findApiKeys"
       "GET"
       [ Param "filters" False getParam 0
       ]
       
findApiKeys :: [Text] -> Call
generateApiKey = 
  Call "ApiKey"
       "generateApiKey"
       "POST"
       [ Param "user_type" True getParam 0
       , Param "user_id"   True getParam 1  
       ]

findApiKeys :: [Text] -> Call
getUserApiKey =
  Call "ApiKey"
       "getUserApiKey"
       "GET"
       [ Param "user_type" True getParam 0
       , Param "user_id"   True getParam 1  
       ]

regenerateApiKey =
  Call "ApiKey"
       "getUserApiKey"
       "POST"
       [ Param "user_type"        True getParam 0
       , Param "user_id"          True getParam 1
       , Param "existing_api_key" True getParam 2  
       ]

updateApiKeyStatus =
  Call "ApiKey"
       "updateApiKeyStatus"
       "GET"
       [ Param "key_id" True getParam 0
       , Param "status" True getParam 1
       ]  
