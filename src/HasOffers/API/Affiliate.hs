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
