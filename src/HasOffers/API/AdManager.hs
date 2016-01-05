module HasOffers.API.AdManager
       where

import Data.Text

--------------------------------------------------------------------------------

addBrowserLanguageBlocked = 
  Call "AdManager"
       "addCreative"
       "POST"
       [ Param "campaign_id" True ""   -- Required
       , Param "data"        True ""   -- Required, An associative array of fields to the values that will be created.
       ]
