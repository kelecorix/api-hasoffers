module HasOffers.API.Affiliate
       where

import Data.Text

--------------------------------------------------------------------------------

addAccountNote = 
  Call "Affiliate"
       "addAccountNote"
       "POST"
       [ Param "id"   True ""
       , Param "note" True "" 
       ]

adjustAffiliateClicks = 
  Call "Affiliate"
       "adjustAffiliateClicks"
       "POST"
       [ Param "datetime"     True ""
       , Param "affiliate_id" True ""
       , Param "action"       True ""
       , Param "quantity"     True ""
       , Param "offer_id"     True ""
       , Param "goal_id"      False ""
       ]

block = 
  Call "Affiliate"
       "block"
       "POST"
       [ Param "id"     True  ""
       , Param "reason" False "" 
       ]

create = 
  Call "Affiliate"
       "create"
       "POST"
       [ Param "data"          True  ""
       , Param "return_object" False "" 
       ]

createSignupQuestion = 
  Call "Affiliate"
       "createSignupQuestion"
       "POST"
       [ Param "data"          True  ""
       ]

createSignupQuestionAnswer = 
  Call "Affiliate"
       "createSignupQuestionAnswer"
       "POST"
       [ Param "id"   True  ""
       , Param "data" True  ""
       ]

disableFraudAlert = 
  Call "Affiliate"
       "disableFraudAlert"
       "POST"
       [ Param "fraud_alert_id"   True ""
       ]

enableFraudAlert = 
  Call "Affiliate"
       "enableFraudAlert"
       "POST"
       [ Param "fraud_alert_id"   True ""
       ]

findAll = 
  Call "Affiliate"
       "findAll"
       "GET"
       [ Param "filters"  False ""   
       , Param "sort"    False ""
       , Param "limit"   False ""
       , Param "page"    False ""
       , Param "fields"  False ""
       , Param "contain" False ""  
       ]

findAllByIds = 
  Call "Affiliate"
       "findAllByIds"
       "GET"
       [ Param "ids"     True  ""   
       , Param "fields"  False ""
       , Param "contain" False ""  
       ]

findAllFraudAlerts = 
  Call "Affiliate"
       "findAllFraudAlerts"
       "GET"
       [ Param "filters"  False ""   
       , Param "sort"    False ""
       , Param "limit"   False ""
       , Param "page"    False ""
       , Param "fields"  False ""
       , Param "contain" False ""  
       ]

findAllIds = 
  Call "Affiliate"
       "findAllIds"
       "GET"
       [ Param "filters"  False ""
       , Param "limit"   False ""
       , Param "page"    False ""
       ]

findAllIdsByAccountManagerId = 
  Call "Affiliate"
       "findAllIdsByAccountManagerId"
       "GET"
       [ Param "employee_id" True ""
       ]

findAllPendingUnassignedAffiliateIds = 
  Call "Affiliate"
       "findAllPendingUnassignedAffiliateIds"
       "GET"
       [ Param "manager_id" True ""
       ]

findAllPendingUnassignedAffiliates = 
  Call "Affiliate"
       "findAllPendingUnassignedAffiliates"
       "GET"
       [ Param "employee_id" True ""
       ]

findById = 
  Call "Affiliate"
       "findById"
       "GET"
       [ Param "id"      True ""
       , Param "fields"  False ""
       , Param "contain" False ""
       ]

findList = 
  Call "Affiliate"
       "findList"
       "GET"
       [ Param "filters"      True ""
       ]

getAccountManager = 
  Call "Affiliate"
       "getAccountManager"
       "GET"
       [ Param "id"      True ""
       ]

getAccountNotes = 
  Call "Affiliate"
       "getAccountNotes"
       "GET"
       [ Param "id"      True ""
       ]

getAffiliateTier = 
  Call "Affiliate"
       "getAffiliateTier"
       "GET"
       [ Param "id"      True ""
       ]

getApprovedOfferIds = 
  Call "Affiliate"
       "getApprovedOfferIds"
       "GET"
       [ Param "id"      True ""
       ]

getBlockedOfferIds = 
  Call "Affiliate"
       "getBlockedOfferIds"
       "GET"
       [ Param "id"      True ""
       ]

getBlockedReasons = 
  Call "Affiliate"
       "getBlockedReasons"
       "GET"
       [ Param "id"      True ""
       ]

getCreatorUser = 
  Call "Affiliate"
       "getCreatorUser"
       "GET"
       [ Param "id"      True ""
       ]

getOfferConversionCaps = 
  Call "Affiliate"
       "getOfferConversionCaps"
       "GET"
       [ Param "id"      True ""
       ]

getOfferHostnames = 
  Call "Affiliate"
       "getOfferHostnames"
       "GET"
       [ Param "id"      True ""
       , Param "status"  False ""  
       ]

getOfferPayouts = 
  Call "Affiliate"
       "getOfferPayouts"
       "GET"
       [ Param "id"      True ""
       ]

getOfferPayoutsAll = 
  Call "Affiliate"
       "getOfferPayoutsAll"
       "GET"
       [
       ]

getOfferPixels = 
  Call "Affiliate"
       "getOfferPixels"
       "GET"
       [ Param "id"      True ""
       , Param "status"  False ""  
       ]

getOwnersAffiliateAccountId = 
  Call "Affiliate"
       "getOwnersAffiliateAccountId"
       "GET"
       [
       ]

getPaymentMethods = 
  Call "Affiliate"
       "getOfferPayouts"
       "GET"
       [ Param "id"      True ""
       ]

getReferralAffiliateIds = 
  Call "Affiliate"
       "getReferralAffiliateIds"
       "GET"
       [ Param "id"      True ""
       ]

getReferralCommission = 
  Call "Affiliate"
       "getReferralCommission"
       "GET"
       [ Param "id"      True ""
       ]

getReferringAffiliate = 
  Call "Affiliate"
       "getReferringAffiliate"
       "GET"
       [ Param "id"      True ""
       ]

getSignupAnswers = 
  Call "Affiliate"
       "getSignupAnswers"
       "GET"
       [ Param "id"      True ""
       ]

getSignupQuestions = 
  Call "Affiliate"
       "getSignupQuestions"
       "GET"
       [ Param "id"      True ""
       ]

getUnapprovedOfferIds = 
  Call "Affiliate"
       "getUnapprovedOfferIds"
       "GET"
       [ Param "id"      True ""
       ]
