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


