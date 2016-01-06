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
