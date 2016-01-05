{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE DeriveAnyClass    #-}

module HasOffers.API.Common
       ( Call(..)
       , Param(..)  
       , buildParams
       , buildParams'  
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
