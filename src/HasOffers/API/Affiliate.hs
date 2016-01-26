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
