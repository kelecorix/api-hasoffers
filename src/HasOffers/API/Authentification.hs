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

findUserByCredentials = 
  Call "Authentification"
       "findUserByCredentials"
       "GET"
       [ Param "email"     True ""
       , Param "password"  True ""
       , Param "type"      False ""
       , Param "set_token" False ""
       ]

findUserByToken = 
  Call "Authentification"
       "findUserByToken"
       "GET"
       [ Param "token" True ""
       ]