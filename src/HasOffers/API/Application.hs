module HasOffers.API.Application
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

addAffiliateTier = 
  Call "Application"
       "addAffiliateTier"
       "POST"
       [ Param "data" True ""
       ]

addHostname = 
  Call "Application"
       "addHostname"
       "GET"
       [ Param "data" True ""
       ]       

addOfferCategory = 
  Call "Application"
       "addOfferCategory"
       "GET"
       [ Param "data" True ""
       ]

addOfferGroup = 
  Call "Application"
       "addOfferGroup"
       "GET"
       [ Param "data" True ""
       ] 
