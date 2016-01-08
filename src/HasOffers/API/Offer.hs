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
       , Param "regions"      False ""
       , Param "region_code"  False ""  
       ]

addTargetCountryRegion = 
  Call "Offer"
       "addTargetCountryRegion"
       "POST"
       [ Param "id"           True ""
       , Param "country_code" True ""
       , Param "region_code"  False ""  
       ]

blockAffiliate =
  Call "Offer"
       "blockAffiliate"
       "POST"
       [ Param "id"           True ""
       , Param "affiliate_id" True ""  
       ]  

create =
  Call "Offer"
       "create"
       "POST"
       [ Param "data"          True  ""
       , Param "return_object" False ""  
       ]

findAll = 
  Call "Offer"
       "findAll"
       "GET"
       [ Param "filters"  False ""   
       , Param "sort"    False ""
       , Param "limit"   False ""
       , Param "page"    False ""
       , Param "fields"  False ""
       , Param "contain" False ""  
       ]

findAllAffiliateApprovals = 
  Call "Offer"
       "findAllAffiliateApprovals"
       "GET"
       [ Param "filters"  False ""   
       , Param "sort"    False ""
       , Param "limit"   False ""
       , Param "page"    False ""
       , Param "fields"  False ""
       , Param "contain" False ""  
       ]

findAllByIds = 
  Call "Offer"
       "findAllAffiliateApprovals"
       "GET"
       [ Param "ids"     True  ""   
       , Param "fields"  False ""
       , Param "contain" False ""  
       ]

findAllIdsByAdvertiserId = 
  Call "Offer"
       "findAllIdsByAdvertiserId"
       "GET"
       [ Param "advertiser_id"  True ""   
       ]

findAllIdsByAffiliateId = 
  Call "Offer"
       "findAllIdsByAffiliateId"
       "GET"
       [ Param "affiliate_id"  True ""   
       ]
