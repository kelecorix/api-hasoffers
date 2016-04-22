module HasOffers.API.Affiliate.Offer
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

acceptOfferTermsAndConditions params = 
  Call "Offer"
       "acceptOfferTermsAndConditions"
       "POST"
       [ Param "offer_id" True $ getParam params 0
       ]

findAll params = 
  Call "Offer"
       "findAll"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]

findAllFeaturedOfferIds params = 
  Call "Offer"
       "findAllFeaturedOfferIds"
       "POST"
       [
       ]       

findByCreativeType params = 
  Call "Offer"
       "findByCreativeType"
       "POST"
       [ Param "type" False $ getParam params 0  
       ]    

findById params = 
  Call "Offer"
       "findById"
       "GET"
       [ Param "id"      True  $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       ]

findMyApprovedOffers params = 
  Call "Offer"
       "findMyApprovedOffers"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]
