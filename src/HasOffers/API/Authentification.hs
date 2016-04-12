module HasOffers.API.Authentification
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

findUserByCredentials params = 
  Call "Authentification"
       "findUserByCredentials"
       "GET"
       [ Param "email"     True  $ getParam params 0
       , Param "password"  True  $ getParam params 1
       , Param "type"      False $ getParam params 2
       , Param "set_token" False $ getParam params 3
       ]

findUserByToken params = 
  Call "Authentification"
       "findUserByToken"
       "GET"
       [ Param "token" True $ getParam params 0
       ]

