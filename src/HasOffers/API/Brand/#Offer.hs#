module HasOffers.API.Brand.Offer
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

-- | Creates an Offer Signup Question.
-- 
addApprovalQuestion params = 
  Call "Offer"
       "addApprovalQuestion"
       "POST"
       [ Param "data" True $ getParam params 0
       ]

addCategory params = 
  Call "Offer"
       "addCategory"
       "POST"
       [ Param "id"          True $ getParam params 0
       , Param "category_id" True $ getParam params 1 
       ]

addGroup params = 
  Call "Offer"
       "addGroup"
       "POST"
       [ Param "id"       True $ getParam params 0
       , Param "group_id" True $ getParam params 1  
       ]

addTargetBrowser params = 
  Call "Offer"
       "addTargetBrowser"
       "POST"
       [ Param "id"         True $ getParam params 0
       , Param "browser_id" True $ getParam params 1
       ]

addTargetCountry params = 
  Call "Offer"
       "addTargetCountry"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "country_code" True  $ getParam params 1
       , Param "regions"      False $ getParam params 2
       , Param "region_code"  False $ getParam params 3
       ]

addTargetCountryRegion params = 
  Call "Offer"
       "addTargetCountryRegion"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "country_code" True  $ getParam params 1
       , Param "region_code"  False $ getParam params 2  
       ]

blockAffiliate params =
  Call "Offer"
       "blockAffiliate"
       "POST"
       [ Param "id"           True $ getParam params 0
       , Param "affiliate_id" True $ getParam params 1  
       ]  

create params =
  Call "Offer"
       "create"
       "POST"
       [ Param "data"          True  $ getParam params 0
       , Param "return_object" False $ getParam params 1  
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

findAllAffiliateApprovals params = 
  Call "Offer"
       "findAllAffiliateApprovals"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]

findAllByIds params = 
  Call "Offer"
       "findAllAffiliateApprovals"
       "GET"
       [ Param "ids"     True  $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

findAllIdsByAdvertiserId params = 
  Call "Offer"
       "findAllIdsByAdvertiserId"
       "GET"
       [ Param "advertiser_id"  True $ getParam params 0   
       ]

findAllIdsByAffiliateId params = 
  Call "Offer"
       "findAllIdsByAffiliateId"
       "GET"
       [ Param "affiliate_id"  True $ getParam params 0   
       ]

findAllPendingAffiliateApprovals params = 
  Call "Offer"
       "findAllPendingAffiliateApprovals"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]

findByIds params = 
  Call "Offer"
       "findByIds"
       "GET"
       [ Param "id"      True  $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

generateTrackingLink params = 
  Call "Offer"
       "generateTrackingLink"
       "POST"
       [ Param "offer_id"      True  $ getParam params 0   
       , Param "affiliate_id"  True  $ getParam params 1
       , Param "params"        False $ getParam params 2
       , Param "options"       False $ getParam params 3  
       ]

generateTrackingPixel params =
  Call "Offer"
       "generateTrackingPixel"
       "POST"
       [ Param "offer_id" True  $ getParam params 0
       , Param "params"   False $ getParam params 1
       , Param "options"  False $ getParam params 2
       ]

getAffiliateApplicationNote params =
  Call "Offer"
       "getAffiliateApplicationNote"
       "GET"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       ]

getAffiliateApprovalStatus params =
  Call "Offer"
       "getAffiliateApprovalStatus"
       "GET"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       ]       

getAffiliateHostnames params =
  Call "Offer"
       "getAffiliateHostnames"
       "GET"
       [ Param "id"     True   $ getParam params 0
       , Param "status" False  $ getParam params 1
       ]    

getAffiliatePayment params =
  Call "Offer"
       "getAffiliatePayment"
       "GET"
       [ Param "offer_id"     True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "goal_id"      False $ getParam params 2   
       ]

getAffiliatePayout params =
  Call "Offer"
       "getAffiliatePayout"
       "GET"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "goal_id"      False $ getParam params 2   
       ]

getAffiliateRevenue params =
  Call "Offer"
       "getAffiliateRevenue"
       "GET"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "goal_id"      False $ getParam params 2   
       ]

getApprovalAnswers params =
  Call "Offer"
       "getApprovalAnswers"
       "GET"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1   
       ]

getApprovalQuestions params =
  Call "Offer"
       "getApprovalQuestions"
       "GET"
       [ Param "id"     False  $ getParam params 0
       , Param "status" False  $ getParam params 1   
       ]

getApprovedAffiliateIds params =
  Call "Offer"
       "getApprovedAffiliateIds"
       "GET"
       [ Param "id" True $ getParam params 0   
       ]

getBlockedAffiliateIds params =
  Call "Offer"
       "getBlockedAffiliateIds"
       "GET"
       [ Param "id" True $ getParam params 0   
       ]

getCategories params =
  Call "Offer"
       "getCategories"
       "GET"
       [ Param "id" True $ getParam params 0   
       ]

getConversionCaps params =
  Call "Offer"
       "getConversionCaps"
       "GET"
       [ Param "id" True $ getParam params 0   
       ]

getCustomerList params =
  Call "Offer"
       "getCustomerList"
       "GET"
       [ Param "id" True $ getParam params 0   
       ]

getGroups params =
  Call "Offer"
       "getGroups"
       "GET"
       [ Param "id" True $ getParam params 0   
       ]

getOfferFiles params =
  Call "Offer"
       "getOfferFiles"
       "GET"
       [ Param "id"     True  $ getParam params 0
       , Param "status" False $ getParam params 1  
       ]

getOfferFilesWithCreativeCode params =
  Call "Offer"
       "getOfferFilesWithCreativeCode"
       "GET"
       [ Param "offer_id"     True $ getParam params 0
       , Param "affiliate_id" True $ getParam params 1  
       ]

getOfferListByGroupId params =
  Call "Offer"
       "getOfferListByGroupId"
       "GET"
       [ Param "group_id" True  $ getParam params 0
       , Param "limit"    False $ getParam params 1
       , Param "page"     False $ getParam params 2  
       ]

getOfferUrls params =
  Call "Offer"
       "getOfferUrls"
       "GET"
       [ Param "id"     True  $ getParam params 0
       , Param "status" False $ getParam params 1  
       ]

getOverview params =
  Call "Offer"
       "getOverview"
       "GET"
       [ Param "offer_filters"     False $ getParam params 0
       , Param "affiliate_filters" False $ getParam params 1  
       ]

getPayouts params =
  Call "Offer"
       "getPayouts"
       "GET"
       [ Param "id" True $ getParam params 0
       ]

getPixels params =
  Call "Offer"
       "getPixels"
       "GET"
       [ Param "id"     True  $ getParam params 0
       , Param "status" False $ getParam params 1  
       ]

getRevenues params =
  Call "Offer"
       "getRevenues"
       "GET"
       [ Param "id" True $ getParam params 0
       ]       

getTargetBrowsers params =
  Call "Offer"
       "getTargetBrowsers"
       "GET"
       [ Param "id" True $ getParam params 0
       ] 

getTargetCountries params =
  Call "Offer"
       "getTargetCountries"
       "GET"
       [ Param "id" True $ getParam params 0
       ] 

getThumbnail params =
  Call "Offer"
       "getThumbnail"
       "GET"
       [ Param "id" True $ getParam params 0
       ] 

getTierPayouts params =
  Call "Offer"
       "getTierPayouts"
       "GET"
       [ Param "id" True $ getParam params 0
       ]

getTierRevenues params =
  Call "Offer"
       "getTierRevenues"
       "GET"
       [ Param "id" True $ getParam params 0
       ]
       
getUnapprovedAffiliateIds params =
  Call "Offer"
       "getUnapprovedAffiliateIds"
       "GET"
       [ Param "id" True $ getParam params 0
       ]

removeCategory params =
  Call "Offer"
       "removeCategory"
       "POST"
       [ Param "id"          True $ getParam params 0
       , Param "category_id" True $ getParam params 1 
       ]

removeConversionCap params =
  Call "Offer"
       "removeConversionCap"
       "POST"
       [ Param "id"           True $ getParam params 0
       , Param "affiliate_id" True $ getParam params 1 
       ]

removeGroup params =
  Call "Offer"
       "removeGroup"
       "POST"
       [ Param "id"       True $ getParam params 0
       , Param "group_id" True $ getParam params 1 
       ]

removePayout params =
  Call "Offer"
       "removePayout"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "goal_id"      False $ getParam params 2  
       ]

removeRevenue params =
  Call "Offer"
       "removeRevenue"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "goal_id"      False $ getParam params 2  
       ]

removeTargetBrowser params =
  Call "Offer"
       "removeTargetBrowser"
       "POST"
       [ Param "id"         True $ getParam params 0
       , Param "browser_id" True $ getParam params 1  
       ]

removeTargetCountry params =
  Call "Offer"
       "removeTargetCountry"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "country_code" False $ getParam params 1  
       ]

removeTargetCountryRegion params =
  Call "Offer"
       "removeTargetCountryRegion"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "country_code" True  $ getParam params 1
       , Param "region_code"  False $ getParam params 2 
       ]

removeTierPayout params =
  Call "Offer"
       "removeTierPayout"
       "POST"
       [ Param "id"                True  $ getParam params 0
       , Param "affiliate_tier_id" True  $ getParam params 1
       , Param "goal_id"           False $ getParam params 2  
       ]       

removeTierRevenue params =
  Call "Offer"
       "removeTierRevenue"
       "POST"
       [ Param "id"                True  $ getParam params 0
       , Param "affiliate_tier_id" True  $ getParam params 1
       , Param "goal_id"           False $ getParam params 2  
       ]

saveApprovalQuestionAnswer params =
  Call "Offer"
       "saveApprovalQuestionAnswer"
       "POST"
       [ Param "id"           True $ getParam params 0
       , Param "affiliate_id" True $ getParam params 1
       , Param "data"         True $ getParam params 2  
       ]   

setAffiliateApproval params =
  Call "Offer"
       "setAffiliateApproval"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "status"       True  $ getParam params 2
       , Param "notes"        False $ getParam params 3  
       ]

setAffiliateHostname params =
  Call "Offer"
       "setAffiliateHostname"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "hostname_id"  False $ getParam params 2  
       ]   

setAffiliateTermsDate params =
  Call "Offer"
       "setAffiliateTermsDate"
       "POST"
       [ Param "id"           True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "date"         False $ getParam params 2  
       ]

setCategories params =
  Call "Offer"
       "setCategories"
       "POST"
       [ Param "id"           True $ getParam params 0
       , Param "category_id"  True $ getParam params 1
       ]

setConversionCap params =
  Call "Offer"
       "setConversionCap"
       "POST"
       [ Param "id"    True $ getParam params 0
       , Param "data"  True $ getParam params 1
       ]

setGroups params =
  Call "Offer"
       "setGroups"
       "POST"
       [ Param "id"         True $ getParam params 0
       , Param "group_ids"  True $ getParam params 1
       ]

setMultipleAffiliateApprovals params =
  Call "Offer"
       "setMultipleAffiliateApprovals"
       "POST"
       [ Param "data" True $ getParam params 0
       ]

setPayout params =
  Call "Offer"
       "setPayout"
       "POST"
       [ Param "id"             True  $ getParam params 0
       , Param "affiliate_id"   True  $ getParam params 1
       , Param "payout"         False $ getParam params 2
       , Param "percent_payout" False $ getParam params 3
       , Param "goal_id"        False $ getParam params 4  
       ]

setRevenue params =
  Call "Offer"
       "setRevenue"
       "POST"
       [ Param "id"              True  $ getParam params 0
       , Param "affiliate_id"    True  $ getParam params 1
       , Param "payout"          False $ getParam params 2
       , Param "percent_revenue" False $ getParam params 3
       , Param "goal_id"         False $ getParam params 4  
       ]

setTargetBrowsers params =
  Call "Offer"
       "setTargetBrowsers"
       "POST"
       [ Param "id"          True  $ getParam params 0
       , Param "browser_ids" False $ getParam params 1
       ]

setTargetCountries params =
  Call "Offer"
       "setTargetCountries"
       "POST"
       [ Param "id"            True  $ getParam params 0
       , Param "country_codes" False $ getParam params 1
       ]

setTierPayout params =
  Call "Offer"
       "setTierPayout"
       "POST"
       [ Param "id"                True  $ getParam params 0
       , Param "affiliate_tier_id" True  $ getParam params 1
       , Param "payout"            False $ getParam params 2
       , Param "percent_payout"    False $ getParam params 3
       , Param "goal_id"           False $ getParam params 4  
       ]

setTierRevenue params =
  Call "Offer"
       "setTierRevenue"
       "POST"
       [ Param "id"                True  $ getParam params 0
       , Param "affiliate_tier_id" True  $ getParam params 1
       , Param "payout"            False $ getParam params 2
       , Param "percent_revenue"   False $ getParam params 3
       , Param "goal_id"           False $ getParam params 4  
       ]

unblockAffiliate params =
  Call "Offer"
       "unblockAffiliate"
       "POST"
       [ Param "id"           True $ getParam params 0
       , Param "affiliate_id" True $ getParam params 1
       ]

update params =
  Call "Offer"
       "update"
       "POST"
       [ Param "id"            True  $ getParam params 0
       , Param "data"          True  $ getParam params 1
       , Param "return_object" False $ getParam params 2  
       ]

updateAccountNote params =
  Call "Offer"
       "updateAccountNote"
       "POST"
       [ Param "account_note_id" True $ getParam params 0
       , Param "note"            True $ getParam params 1 
       ]

updateApprovalQuestion params =
  Call "Offer"
       "updateApprovalQuestion"
       "POST"
       [ Param "question_id"   True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updateByRefId params =
  Call "Offer"
       "updateByRefId"
       "POST"
       [ Param "id"            True  $ getParam params 0
       , Param "data"          True  $ getParam params 1
       , Param "return_object" False $ getParam params 2  
       ]

updateField params =
  Call "Offer"
       "updateField"
       "POST"
       [ Param "id"            True  $ getParam params 0
       , Param "field"         True  $ getParam params 1
       , Param "value"         True  $ getParam params 2
       , Param "return_object" False $ getParam params 3  
       ]

updatePaymentMethodCheck params =
  Call "Offer"
       "updatePaymentMethodCheck"
       "POST"
       [ Param "affiliate_id"  True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updatePaymentMethodDirectDeposit params =
  Call "Offer"
       "updatePaymentMethodDirectDeposit"
       "POST"
       [ Param "affiliate_id"  True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updatePaymentMethodOther params =
  Call "Offer"
       "updatePaymentMethodOther"
       "POST"
       [ Param "affiliate_id"  True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updatePaymentMethodPayoneer params =
  Call "Offer"
       "updatePaymentMethodPayoneer"
       "POST"
       [ Param "affiliate_id"  True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updatePaymentMethodPaypal params =
  Call "Offer"
       "updatePaymentMethodPaypal"
       "POST"
       [ Param "affiliate_id"  True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updatePaymentMethodPayQuicker params =
  Call "Offer"
       "updatePaymentMethodPayQuicker"
       "POST"
       [ Param "affiliate_id"  True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updatePaymentMethodWire params =
  Call "Offer"
       "updatePaymentMethodWire"
       "POST"
       [ Param "affiliate_id"  True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

