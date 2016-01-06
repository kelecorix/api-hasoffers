module HasOffers.API.Offer
       where

import Data.Text

--------------------------------------------------------------------------------

-- | Creates an Offer Signup Question.
-- 
addApprovalQuestion = 
  Call "Offer"
       "addApprovalQuestion"
       "POST"
       [ Param "data" True ""
       ]

addCategory = 
  Call "Offer"
       "addCategory"
       "POST"
       [ Param "id"          True ""
       , Param "category_id" True "" 
       ]

addGroup = 
  Call "Offer"
       "addGroup"
       "POST"
       [ Param "id"       True ""
       , Param "group_id" True ""  
       ]

addTargetBrowser = 
  Call "Offer"
       "addTargetBrowser"
       "POST"
       [ Param "id"         True ""
       , Param "browser_id" True "" 
       ]

addTargetCountry = 
  Call "Offer"
       "addTargetCountry"
       "POST"
       [ Param "id"           True ""
       , Param "country_code" True ""
       , Param "regions"      True ""
       , Param "region_code"  True ""  
       ]