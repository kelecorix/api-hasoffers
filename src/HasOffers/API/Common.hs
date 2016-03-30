{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE DeriveAnyClass    #-}

module HasOffers.API.Common
       ( Call(..)
       , Param(..)  
       , buildParams
       , buildParams'
       , getParam  
       , buildRequest  
) where

import GHC.Generics
import Data.Aeson
import Control.Applicative
import Network.HTTP.Client
import qualified Data.ByteString.Char8 as BS

--------------------------------------------------------------------------------

data Call =
  Call { target :: String
       , action :: String
       , meth   :: String  
       , param  :: [Param] -- name, required, value
       } deriving (Generic, Show)

data Param =
  Param { name     :: String
        , required :: Bool 
        , value    :: String
        } deriving (Show)


getParam :: [Text] -> Int -> Text
getParam params id =
  do
    let l = length params
    case l == 0 of
      True  -> ""
      False ->
        case id > l of
         True  -> ""
         False -> params !! id

-- | Convert action parameters
--   to concatenated stringx
buildParams :: [(String, String)] -> String
buildParams [] = []
buildParams p  =
  concat $ buildParamsAux p
    where buildParamsAux []           = []
          buildParamsAux ((p1,p2):ps) =
            case null p2 of
              True  -> buildParamsAux ps
              False ->
                case p2=="-" of
                  True  -> ("&" ++ p1 ++ "=")       : buildParamsAux ps
                  False -> ("&" ++ p1 ++ "=" ++ p2) : buildParamsAux ps

buildParams' :: [Param] -> String
buildParams' [] = []
buildParams' ps =
  concat $ buildParamsAux ps
    where buildParamsAux  []                = []
          buildParamsAux ((Param n r v):ps) =
            case r of
              False ->
                case null v of
                  True  -> buildParamsAux ps
                  False -> ("&" ++ n ++ "=" ++ v) : buildParamsAux ps
              True  -> -- this is required field
                ("&" ++ n ++ "=" ++ v) : buildParamsAux ps
                  
buildRequest :: String -> String -> String -> RequestBody -> IO Request
buildRequest url ps meth body = do
  nakedRequest <- parseUrl (url++ps)
  return (nakedRequest { method = (BS.pack meth), requestBody = body })
