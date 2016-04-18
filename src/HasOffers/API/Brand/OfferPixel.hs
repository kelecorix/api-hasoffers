module HasOffers.API.Brand.OfferPixel
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
  Call "OfferPixel"
       "create"
       "POST"
       [ Param "data"          True $ getParam params 0
       , Param "return_object" True $ getParam params 0  
       ]

findAll params = 
  Call "OfferPixel"
       "findAll"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]

findAllByIds params = 
  Call "OfferPixel"
       "findAllByIds"
       "GET"
       [ Param "ids"     False $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]
       
findById params = 
  Call "OfferPixel"
       "findById"
       "GET"
       [ Param "id"      False $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

getAllowedTypes params = 
  Call "OfferPixel"
       "getAllowedTypes"
       "GET"
       [ Param "offer_id"       True $ getParam params 0
       ]

update params = 
  Call "OfferPixel"
       "update"
       "GET"
       [ Param "id"             True $ getParam params 0   
       , Param "data"           True $ getParam params 1
       , Param "return_object" False $ getParam params 2  
       ]

updateField params = 
  Call "OfferPixel"
       "updateField"
       "GET"
       [ Param "id"             True $ getParam params 0   
       , Param "field"          True $ getParam params 1
       , Param "value"          True $ getParam params 2
       , Param "return_object" False $ getParam params 3  
       ]       
