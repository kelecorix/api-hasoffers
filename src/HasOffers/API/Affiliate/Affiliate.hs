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
       [ Param "fields"      False $ getParam params 0
       ]

getAccountBalance  params= 
  Call "Affiliate_Affiliate"
       "getAccountBalance"
       "GET"
       [ 
       ]

getAccountManager  params= 
  Call "Affiliate_Affiliate"
       "getAccountManager"
       "GET"
       [
       ]

getPayoneerSignupUrl  params= 
  Call "Affiliate_Affiliate"
       "getPayoneerSignupUrl"
       "GET"
       [ Param "redirect_url"      False $ getParam params 0 
       ]
