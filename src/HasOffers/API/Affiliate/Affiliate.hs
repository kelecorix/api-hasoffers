module HasOffers.API.Affiliate.Affiliate
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

findById  params = 
  Call "Affiliate_Affiliate"
       "findById"
       "GET"
       [ Param "id"      True $ getParam params 0
       , Param "field"   False $ getParam params 1
       , Param "value"   False $ getParam params 2
       ]

getAccountBalance  params= 
  Call "Affiliate_Affiliate"
       "getAccountBalance"
       "GET"
       [ 
       ]
