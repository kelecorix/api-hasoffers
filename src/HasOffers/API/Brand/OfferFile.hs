module HasOffers.API.Brand.OfferFile
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

findAll params = 
  Call "OfferFile"
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
  Call "OfferFile"
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
  Call "OfferFile"
       "findAllByIds"
       "GET"
       [ Param "ids"     False $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

findAllByName params = 
  Call "OfferFile"
       "findAllByNames"
       "GET"
       [ Param "filename"     False $ getParam params 0   
       ]

findById params = 
  Call "OfferFile"
       "findById"
       "GET"
       [ Param "id"      False $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

getCreativeCode params = 
  Call "OfferFile"
       "getCreativeCode"
       "GET"
       [ Param "id"               True  $ getParam params 0   
       , Param "tracking_url"     False $ getParam params 1
       , Param "impression_pixel" False $ getParam params 2
       , Param "etracking_url"    False $ getParam params 3
       , Param "offer_id"         False $ getParam params 4
       , Param "affiliate_id"     False $ getParam params 5
       , Param "source"           False $ getParam params 6
       , Param "aff_sub"          False $ getParam params 7
       , Param "aff_sub2"         False $ getParam params 8
       , Param "aff_sub3"         False $ getParam params 9
       , Param "aff_sub4"         False $ getParam params 10
       , Param "aff_sub5"         False $ getParam params 11  
       ]

update params = 
  Call "OfferFile"
       "update"
       "GET"
       [ Param "id"             True $ getParam params 0   
       , Param "data"           True $ getParam params 1
       , Param "return_object" False $ getParam params 2  
       ]

updateField params = 
  Call "OfferFile"
       "updateField"
       "GET"
       [ Param "id"             True $ getParam params 0   
       , Param "field"          True $ getParam params 1
       , Param "value"          True $ getParam params 2
       , Param "return_object" False $ getParam params 3  
       ]       
