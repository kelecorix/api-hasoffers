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
       "POST"
       [ Param "data" True ""
       ]       

addOfferCategory = 
  Call "Application"
       "addOfferCategory"
       "POST"
       [ Param "data" True ""
       ]

addOfferGroup = 
  Call "Application"
       "addOfferGroup"
       "POST"
       [ Param "data" True ""
       ] 

changeAdvertiserApiKey = 
  Call "Application"
       "addOfferCategory"
       "POST"
       [ Param "id" True ""
       ]

changeAffiliateApiKey = 
  Call "Application"
       "addOfferGroup"
       "POST"
       [ Param "id" True ""
       ]

changeNetworkApiKey = 
  Call "Application"
       "changeNetworkApiKey"
       "POST"
       [ 
       ]

createAdvertiserApiKey = 
  Call "Application"
       "createAdvertiserApiKey"
       "POST"
       [ Param "data" True ""
       ]
-- Deprecated, v1 key
createAffiliateApiKey = 
  Call "Application"
       "createAffiliateApiKey"
       "POST"
       [ Param "data" True ""
       ]

decryptUnsubHash = 
  Call "Application"
       "decryptUnsubHash"
       "GET"
       [ Param "data" True ""
       ]

findAdvertiserApiKey = 
  Call "Application"
       "findAdvertiserApiKey"
       "GET"
       [ Param "api_key" True ""
       ]

findAdvertiserApiKeyByAdvertiserId = 
  Call "Application"
       "findAdvertiserApiKeyByAdvertiserId"
       "GET"
       [ Param "advertiser_id" True ""
       ]

findAffiliateApiKey = 
  Call "Application"
       "findAffiliateApiKey"
       "GET"
       [ Param "api_key" True ""
       ]

findAffiliateApiKeyByAffiliateId = 
  Call "Application"
       "findAffiliateApiKeyByAffiliateId"
       "GET"
       [ Param "affiliate_id" True ""
       ]

findAllAdvertiserApiKeys = 
  Call "Application"
       "findAllAdvertiserApiKeys"
       "GET"
       [ Param "filters" False ""
       , Param "fields" False ""
       , Param "contain" False ""  
       ]

findAllAffiliateApiKeys = 
  Call "Application"
       "findAllAffiliateApiKeys"
       "GET"
       [ Param "filters" False ""
       , Param "fields" False ""
       , Param "contain" False ""  
       ]

findAllAffiliateTierAffiliateIds = 
  Call "Application"
       "findAllAffiliateTierAffiliateIds"
       "GET"
       [ Param "id" True ""
       ]

findAllAffiliateTiers = 
  Call "Application"
       "findAllAffiliateTiers"
       "GET"
       [ Param "filters" False ""
       , Param "fields" False ""
       ]

findAllBrowsers = 
  Call "Application"
       "findAllBrowsers"
       "GET"
       [ 
       ]
       
findAllCountries = 
  Call "Application"
       "findAllCountries"
       "GET"
       [
       ]       

findAllHostnames = 
  Call "Application"
       "findAllHostnames"
       "GET"
       [ Param "filters" False ""
       , Param "fields" False ""
       ]

findAllOfferCategories = 
  Call "Application"
       "findAllOfferCategories"
       "GET"
       [ Param "filters" False ""
       , Param "fields"  False ""
       , Param "sort"    False ""     
       ]

findAllOfferCategoryOfferIds = 
  Call "Application"
       "findAllOfferCategoryOfferIds"
       "GET"
       [ Param "id" False ""
       ]

findAllOfferGroups = 
  Call "Application"
       "findAllOfferGroups"
       "GET"
       [ Param "filters" False ""
       , Param "fields"  False ""   
       ]       

findAllPermissions =
    Call "Application"
       "findAllPermissions"
       "GET"
       [
       ]       

findAllRegions =
    Call "Application"
       "findAllRegions"
       "GET"
       [
       ]       

findAllTimezones =
    Call "Application"
       "findAllTimezones"
       "GET"
       [
       ]

findBrowserById =
    Call "Application"
       "findBrowserById"
       "GET"
       [ Param "id" True ""
       ]


