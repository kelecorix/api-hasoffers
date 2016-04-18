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
  Affiliate { account_manager_id             :: Integer
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

data Offer =
   Offer { advertiser_id::Integer
         , allow_direct_links::Bool
         , allow_multiple_conversions::Bool
         , allow_website_links::Bool
         , approve_conversions::Bool
         , click_macro_url::String
         , conversion_cap::Integer
         , conversion_ratio_threshold::Integer
         , converted_offer_id::Integer
         , converted_offer_type::String
         , converted_offer_url::String
         , currency::String
         , customer_list_id::Integer
         , default_goal_name::String
         , default_payout::Float
         , description::String
         , disable_click_macro::Bool
         , display_advertiser::Bool
         , dne_download_url::String
         , dne_list_id::Integer
         , dne_unsubscribe_url::String
         , dne_third_party_list::Bool
         , email_instructions::Bool
         , email_instructions_from::String
         , email_instructions_subject::String
         , enable_offer_whitelist::Bool
         , enforce_encrypt_tracking_pixels::Bool
         , enforce_geo_targeting::Bool
         , enforce_secure_tracking_link::Bool
         , expiration_date::UtCTime
         , featured::UTCTime
         , has_goals_enabled::Bool
         , hostname_id::Integer
         , id::Integer
         , is_expired::Bool
         , is_private::Bool
         , is_seo_friendly_301::Bool
         , is_subscription::Bool
         , max_payout::Float
         , max_percent_payout::Float
         , modified :: UTCTime           
         , monthly_conversion_cap::Integer
         , monthly_payout_cap::Float
         , monthly_revenue_cap::Float
         , name::String
         , note::String
         , offer_url::String
         , payout_cap::Float
         , payout_type::String
         , percent_payout::Float
         , preview_url::String
         , protocol::String
         , rating::Integer
         , redirect_offer_id::Integer
         , ref_id::String
         , require_approval::Bool
         , require_terms_and_conditions::Bool
         , revenue_cap::Float
         , revenue_type :: String
         , session_hours :: Integer
         , session_impression_hours:: Integer
         , set_session_on_impression::Bool
         , show_custom_variables:: Bool 
         , show_mail_list:: Bool
         , status::String
         , subscription_duration::Integer
         , subscription_frequency::String
         , target_browsers::String
         , terms_and_conditions::String
         , tiered_payout :: Bool
         , tiered_revenue :: Bool
         , use_payout_groups :: Bool
         , use_revenue_groups :: Bool
         , use_target_rules :: Bool
         , website_links_copy_static_params :: Bool  
         }
