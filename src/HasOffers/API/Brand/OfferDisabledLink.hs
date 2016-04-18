module HasOffers.API.Brand.OfferDisabledLink
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

delete params = 
  Call "OfferDisabledLink"
       "delete"
       "POST"
       [ Param "id" True $ getParam params 0
       ]

findAll params = 
  Call "OfferDisabledLink"
       "findAll"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]

findAllAvailable params = 
  Call "OfferDisabledLink"
       "findAllAvailable"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]

findAllByIds params = 
  Call "OfferDisabledLink"
       "findAllByIds"
       "GET"
       [ Param "ids"     False $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

findById params = 
  Call "OfferDisabledLink"
       "findById"
       "GET"
       [ Param "id"      False $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

save params = 
  Call "OfferDisabledLink"
       "save"
       "POST"
       [ Param "data" True $ getParam params 0
       ]
