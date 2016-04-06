module HasOffers.API.OfferFile
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

create params = 
  Call "OfferFile"
       "create"
       "POST"
       [ Param "data"          True $ getParam params 0
       , Param "return_object" True $ getParam params 0  
       ]
