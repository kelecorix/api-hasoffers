module HasOffers.API.Affiliate
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common

--------------------------------------------------------------------------------

addAccountNote params = 
  Call "Affiliate"
       "addAccountNote"
       "POST"
       [ Param "id"   True $ getParam params 0
       , Param "note" True $ getParam params 1 
       ]

adjustAffiliateClicks params = 
  Call "Affiliate"
       "adjustAffiliateClicks"
       "POST"
       [ Param "datetime"     True  $ getParam params 0
       , Param "affiliate_id" True  $ getParam params 1
       , Param "action"       True  $ getParam params 2
       , Param "quantity"     True  $ getParam params 3
       , Param "offer_id"     True  $ getParam params 4
       , Param "goal_id"      False $ getParam params 5
       ]

block params = 
  Call "Affiliate"
       "block"
       "POST"
       [ Param "id"     True  $ getParam params 0
       , Param "reason" False $ getParam params 1
       ]

create params = 
  Call "Affiliate"
       "create"
       "POST"
       [ Param "data"          True  $ getParam params 0
       , Param "return_object" False $ getParam params 1 
       ]

createSignupQuestion  params= 
  Call "Affiliate"
       "createSignupQuestion"
       "POST"
       [ Param "data"          True  $ getParam params 0
       ]

createSignupQuestionAnswer  params= 
  Call "Affiliate"
       "createSignupQuestionAnswer"
       "POST"
       [ Param "id"   True  $ getParam params 0
       , Param "data" True  $ getParam params 1
       ]

disableFraudAlert  params= 
  Call "Affiliate"
       "disableFraudAlert"
       "POST"
       [ Param "fraud_alert_id"   True $ getParam params 0
       ]

enableFraudAlert  params= 
  Call "Affiliate"
       "enableFraudAlert"
       "POST"
       [ Param "fraud_alert_id"   True $ getParam params 0
       ]

findAll  params= 
  Call "Affiliate"
       "findAll"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]

findAllByIds  params= 
  Call "Affiliate"
       "findAllByIds"
       "GET"
       [ Param "ids"     True  $ getParam params 0   
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2  
       ]

findAllFraudAlerts  params= 
  Call "Affiliate"
       "findAllFraudAlerts"
       "GET"
       [ Param "filters"  False $ getParam params 0   
       , Param "sort"    False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "fields"  False $ getParam params 4
       , Param "contain" False $ getParam params 5  
       ]

findAllIds  params = 
  Call "Affiliate"
       "findAllIds"
       "GET"
       [ Param "filters" False $ getParam params 0
       , Param "limit"   False $ getParam params 1
       , Param "page"    False $ getParam params 2
       ]

findAllIdsByAccountManagerId  params= 
  Call "Affiliate"
       "findAllIdsByAccountManagerId"
       "GET"
       [ Param "employee_id" True $ getParam params 0
       ]

findAllPendingUnassignedAffiliateIds  params= 
  Call "Affiliate"
       "findAllPendingUnassignedAffiliateIds"
       "GET"
       [ Param "manager_id" True $ getParam params 0
       ]

findAllPendingUnassignedAffiliates  params= 
  Call "Affiliate"
       "findAllPendingUnassignedAffiliates"
       "GET"
       [ Param "employee_id" True $ getParam params 0
       ]

findById  params = 
  Call "Affiliate"
       "findById"
       "GET"
       [ Param "id"      True $ getParam params 0
       , Param "fields"  False $ getParam params 1
       , Param "contain" False $ getParam params 2
       ]

findList  params = 
  Call "Affiliate"
       "findList"
       "GET"
       [ Param "filters"      True $ getParam params 0
       ]

getAccountManager  params= 
  Call "Affiliate"
       "getAccountManager"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getAccountNotes  params= 
  Call "Affiliate"
       "getAccountNotes"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getAffiliateTier  params= 
  Call "Affiliate"
       "getAffiliateTier"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getApprovedOfferIds  params= 
  Call "Affiliate"
       "getApprovedOfferIds"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getBlockedOfferIds  params= 
  Call "Affiliate"
       "getBlockedOfferIds"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getBlockedReasons  params= 
  Call "Affiliate"
       "getBlockedReasons"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getCreatorUser  params= 
  Call "Affiliate"
       "getCreatorUser"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getOfferConversionCaps  params = 
  Call "Affiliate"
       "getOfferConversionCaps"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getOfferHostnames  params = 
  Call "Affiliate"
       "getOfferHostnames"
       "GET"
       [ Param "id"      True $ getParam params 0
       , Param "status"  False $ getParam params 1  
       ]

getOfferPayouts  params = 
  Call "Affiliate"
       "getOfferPayouts"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getOfferPayoutsAll  params = 
  Call "Affiliate"
       "getOfferPayoutsAll"
       "GET"
       [
       ]

getOfferPixels  params = 
  Call "Affiliate"
       "getOfferPixels"
       "GET"
       [ Param "id"      True $ getParam params 0
       , Param "status"  False $ getParam params 1  
       ]

getOwnersAffiliateAccountId  params = 
  Call "Affiliate"
       "getOwnersAffiliateAccountId"
       "GET"
       [
       ]

getPaymentMethods  params = 
  Call "Affiliate"
       "getOfferPayouts"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getReferralAffiliateIds  params = 
  Call "Affiliate"
       "getReferralAffiliateIds"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getReferralCommission  params = 
  Call "Affiliate"
       "getReferralCommission"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getReferringAffiliate  params = 
  Call "Affiliate"
       "getReferringAffiliate"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getSignupAnswers  params = 
  Call "Affiliate"
       "getSignupAnswers"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getSignupQuestions  params = 
  Call "Affiliate"
       "getSignupQuestions"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getUnapprovedOfferIds  params = 
  Call "Affiliate"
       "getUnapprovedOfferIds"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

getUnblockedOfferIds params = 
  Call "Affiliate"
       "getUnblockedOfferIds"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

removeCustomReferralCommission  params = 
  Call "Affiliate"
       "removeCustomReferralCommission"
       "GET"
       [ Param "id"      True $ getParam params 0
       ]

setCustomReferralCommission params = 
  Call "Affiliate"
       "setCustomReferralCommission"
       "GET"
       [ Param "id"   True $ getParam params 0
       , Param "data" True $ getParam params 1  
       ]

signup params = 
  Call "Affiliate"
       "signup"
       "GET"
       [ Param "account"       True $ getParam params 0
       , Param "datauser"      False $ getParam params 1
       , Param "meta"          False $ getParam params 2
       , Param "return_object" False $ getParam params 3 
       ]

simpleSearch params = 
  Call "Affiliate"
       "simpleSearch"
       "GET"
       [ Param "filters" False $ getParam params 0   
       , Param "fields"   False $ getParam params 1
       , Param "limit"   False $ getParam params 2
       , Param "page"    False $ getParam params 3
       , Param "sort"    False $ getParam params 4 
       ]

update params =
  Call "Affiliate"
       "update"
       "POST"
       [ Param "id"            True $ getParam params 0
       , Param "data"          True $ getParam params 1
       , Param "return_object" False $ getParam params 2  
       ]

updateAccountNote params =
  Call "Affiliate"
       "updateAccountNote"
       "POST"
       [ Param "account_note_id" True $ getParam params 0
       , Param "note"            True $ getParam params 1 
       ]

updateByRefId params =
  Call "Affiliate"
       "updateByRefId"
       "POST"
       [ Param "id"            True $ getParam params 0
       , Param "data"          True $ getParam params 1
       , Param "return_object" False $ getParam params 2  
       ]

updateSignupQuestion params =
  Call "Affiliate"
       "updateSignupQuestion"
       "POST"
       [ Param "question_id"   True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updateSignupQuestionAnswer params =
  Call "Affiliate"
       "updateSignupQuestionAnswer"
       "POST"
       [ Param "answer_id"   True $ getParam params 0
       , Param "data"        True $ getParam params 1
       ]
