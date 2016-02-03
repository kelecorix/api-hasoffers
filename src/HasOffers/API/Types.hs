module HasOffers.API.Types
       where

import Data.Text

--------------------------------------------------------------------------------

data AccountNote =
  AccountNote { id         :: Integer
              , type_      :: Text
              , account_id :: Integer
              , note       :: String
              , created    :: UTCTime
              }


data AccountPreference =
  AccountPreference { id         :: Integer
                    , account_id :: Integer
                    , name       :: String
                    , value      :: String
                    , type_      :: String
                    }

data Affiliate =
  Affiliate {
            , account_manager_id             :: Integer
            , address1                       :: String
            , address2                       :: String
            , affiliate_tier_id              :: Integer
            , city                           :: String
            , company                        :: String
            , country                        :: String
            , date_added                     :: UTCTime
            , fax                            :: String
            , fraud_activity_alert_threshold :: Integer
            , fraud_activity_block_threshold :: Integer
            , fraud_activity_score           :: Integer
            , fraud_profile_alert_threshold  :: Integer
            , fraud_profile_block_threshold  :: Integer
            , fraud_profile_score            :: Integer
            , id                             :: Integer
            , modified                       :: UTCTime
            , method_data                    :: String
            , other                          :: String
            , payment_method                 :: String
            , payment_terms                  :: String
            , phone                          :: String
            , ref_id                         :: String
            , referral_id                    :: Integer
            , region                         :: String
            , signup_ip                      :: String
            , status                         :: String
            , w9_filed                       :: Bool
            , wants_alerts                   :: String
            , website                        :: String
            , zipcode                        :: String
            }

-- data Offer =
--   Offer {
--         , ::
--         , ::

--        }
