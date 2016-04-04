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

addAffiliateTier params = 
  Call "Application"
       "addAffiliateTier"
       "POST"
       [ Param "data" True $ getParam params 0
       ]

addHostname params = 
  Call "Application"
       "addHostname"
       "POST"
       [ Param "data" True $ getParam params 0
       ]       

addOfferCategory params = 
  Call "Application"
       "addOfferCategory"
       "POST"
       [ Param "data" True $ getParam params 0
       ]

addOfferGroup params = 
  Call "Application"
       "addOfferGroup"
       "POST"
       [ Param "data" True $ getParam params 0
       ] 

changeAdvertiserApiKey params = 
  Call "Application"
       "addOfferCategory"
       "POST"
       [ Param "id" True $ getParam params 0
       ]

changeAffiliateApiKey params = 
  Call "Application"
       "addOfferGroup"
       "POST"
       [ Param "id" True $ getParam params 0
       ]

changeNetworkApiKey params = 
  Call "Application"
       "changeNetworkApiKey"
       "POST"
       [ 
       ]

createAdvertiserApiKey params = 
  Call "Application"
       "createAdvertiserApiKey"
       "POST"
       [ Param "data" True $ getParam params 0
       ]
       
-- Deprecated, v1 key
createAffiliateApiKey params = 
  Call "Application"
       "createAffiliateApiKey"
       "POST"
       [ Param "data" True $ getParam params 0
       ]

decryptUnsubHash params = 
  Call "Application"
       "decryptUnsubHash"
       "GET"
       [ Param "data" True $ getParam params 0
       ]

findAdvertiserApiKey params = 
  Call "Application"
       "findAdvertiserApiKey"
       "GET"
       [ Param "api_key" True $ getParam params 0
       ]

findAdvertiserApiKeyByAdvertiserId params = 
  Call "Application"
       "findAdvertiserApiKeyByAdvertiserId"
       "GET"
       [ Param "advertiser_id" True $ getParam params 0
       ]

findAffiliateApiKey params = 
  Call "Application"
       "findAffiliateApiKey"
       "GET"
       [ Param "api_key" True $ getParam params 0
       ]

findAffiliateApiKeyByAffiliateId params = 
  Call "Application"
       "findAffiliateApiKeyByAffiliateId"
       "GET"
       [ Param "affiliate_id" True $ getParam params 0
       ]

findAllAdvertiserApiKeys params = 
  Call "Application"
       "findAllAdvertiserApiKeys"
       "GET"
       [ Param "filters" False $ getParam params 0
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

findAllAffiliateApiKeys params = 
  Call "Application"
       "findAllAffiliateApiKeys"
       "GET"
       [ Param "filters" False $ getParam params 0
       , Param "fields" False  $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

findAllAffiliateTierAffiliateIds params = 
  Call "Application"
       "findAllAffiliateTierAffiliateIds"
       "GET"
       [ Param "id" True $ getParam params 0
       ]

findAllAffiliateTiers params = 
  Call "Application"
       "findAllAffiliateTiers"
       "GET"
       [ Param "filters" False $ getParam params 0
       , Param "fields"  False $ getParam params 1
       ]

findAllBrowsers params = 
  Call "Application"
       "findAllBrowsers"
       "GET"
       [ 
       ]
       
findAllCountries params = 
  Call "Application"
       "findAllCountries"
       "GET"
       [
       ]       

findAllHostnames params = 
  Call "Application"
       "findAllHostnames"
       "GET"
       [ Param "filters" False $ getParam params 0
       , Param "fields"  False $ getParam params 1
       ]

findAllOfferCategories params = 
  Call "Application"
       "findAllOfferCategories"
       "GET"
       [ Param "filters" False $ getParam params 0
       , Param "fields"  False $ getParam params 1
       , Param "sort"    False $ getParam params 2     
       ]

findAllOfferCategoryOfferIds params = 
  Call "Application"
       "findAllOfferCategoryOfferIds"
       "GET"
       [ Param "id" False $ getParam params 0
       ]

findAllOfferGroups params = 
  Call "Application"
       "findAllOfferGroups"
       "GET"
       [ Param "filters" False $ getParam params 0
       , Param "fields"  False $ getParam params 1   
       ]       

findAllPermissions params =
    Call "Application"
       "findAllPermissions"
       "GET"
       [
       ]       

findAllRegions params =
    Call "Application"
       "findAllRegions"
       "GET"
       [
       ]       

findAllTimezones params =
    Call "Application"
       "findAllTimezones"
       "GET"
       [
       ]

findBrowserById params =
    Call "Application"
       "findBrowserById"
       "GET"
       [ Param "id" True $ getParam params 0
       ]

findCountryByCode params =
    Call "Application"
       "findCountryByCode"
       "GET"
       [ Param "code" True $ getParam params 0
       ]

findPermissionById params =
    Call "Application"
       "findPermissionById"
       "GET"
       [ Param "id" True $ getParam params 0
       ]

findPermissionByName params =
    Call "Application"
       "findPermissionByName"
       "GET"
       [ Param "name" True $ getParam params 0
       ]

findPermissionsByGroup params =
    Call "Application"
       "findPermissionsByGroup"
       "GET"
       [ Param "group" True $ getParam params 0
       ]

findTimezoneById params =
    Call "Application"
       "findTimezoneById"
       "GET"
       [ Param "id" True $ getParam params 0
       ]

findUserAuthIps params = 
  Call "Application"
       "findUserAuthIps"
       "GET"
       [ Param "filters" False $ getParam params 0
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3  
       , Param "fields"  False $ getParam params 4
       ]       

generateAllUnsubLinks params =
  Call "Application"
       "generateAllUnsubLinks"
       "POST"
       [ Param "users" True $ getParam params 0
       ]  

getAccountInformation params =
  Call "Application"
       "getAccountInformation"
       "GET"
       [
       ]

getActiveOfferCategoryCount params =
  Call "Application"
       "getActiveOfferCategoryCount"
       "GET"
       [
       ]

getBrand params =
  Call "Application"
       "getBrand"
       "GET"
       [
       ]  

getBrandInformation params =
  Call "Application"
       "getBrandInformation"
       "GET"
       [
       ] 

getCountryRegions params =
  Call "Application"
       "getCountryRegions"
       "POST"
       [ Param "code" True $ getParam params 0
       ]  

getPoFile params =
  Call "Application"
       "getPoFile"
       "POST"
       [ Param "laanguage" True $ getParam params 0
       ] 

getTimezone params =
  Call "Application"
       "getTimezone"
       "GET"
       [
       ] 

-- csv upload
importAdvertisers params = undefined

-- csv upload
importOffers params = undefined

resetPassword params =
  Call "Application"
       "resetPassword"
       "POST"
       [ Param "email" True $ getParam params 0
       ] 
