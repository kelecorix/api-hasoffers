module HasOffers.API.Advertiser
       where

import Data.Text
import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

import HasOffers.API.Common


--------------------------------------------------------------------------------

updateSignupQuestion :: [Text] -> Call
updateSignupQuestion =
  Call "Advertiser"
       "updateSignupQuestion"
       "POST"
       [ Param "question_id"   True $ getParam params 0
       , Param "data"          True $ getParam params 1
       ]

updateSignupQuestionAnswer :: [Text] -> Call
updateSignupQuestionAnswer =
  Call "Advertiser"
       "updateSignupQuestionAnswer"
       "POST"
       [ Param "answer_id"   True $ getParam params 0
       , Param "data"        True $ getParam params 1
       ]
