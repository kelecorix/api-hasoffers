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
       [ Param "filters" False $ getParam params 0
       ]
       
generateApiKey :: [Text] -> Call
generateApiKey params = 
  Call "ApiKey"
       "generateApiKey"
       "POST"
       [ Param "user_type" True $ getParam params 0
       , Param "user_id"   True $ getParam params 1  
       ]

getUserApiKey :: [Text] -> Call
getUserApiKey params =
  Call "ApiKey"
       "getUserApiKey"
       "GET"
       [ Param "user_type" True $ getParam params 0
       , Param "user_id"   True $ getParam params 1  
       ]

regenerateApiKey :: [Text] -> Call
regenerateApiKey params =
  Call "ApiKey"
       "getUserApiKey"
       "POST"
       [ Param "user_type"        True $ getParam params 0
       , Param "user_id"          True $ getParam params 1
       , Param "existing_api_key" True $ getParam params 2  
       ]
       
updateApiKeyStatus :: [Text] -> Call
updateApiKeyStatus params =
  Call "ApiKey"
       "updateApiKeyStatus"
       "GET"
       [ Param "key_id" True $ getParam params 0
       , Param "status" True $ getParam params 1
       ]  
