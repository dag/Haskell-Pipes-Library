{-| This modules imports other useful supporting modules from other libraries
    for people who desire shorter import lists.

    Advantages:

    * Convenient

    * Shortens import lists

    * Great for @ghci@ demos

    Disadvantages:

    * Harder for people to track down the origin of imported functions

    * Leads to significant scope creep for this module

    * Unstable API

    I recommend that you use "Control.Proxy" as a stable import for production
    code.  This convenience module is not very stable and may grow or shrink in
    exports depending on user feedback.  This module is primarily for rapid
    prototyping and demonstrations. -}
module Control.Proxy.Go (
    -- * Modules
    -- $modules
    module Control.MFunctor,
    module Control.Monad,
    module Control.Monad.Trans.Class,
    module Control.Monad.Trans.Writer.Strict,
    module Control.Proxy
    ) where

import Control.MFunctor
import Control.Monad
import Control.Monad.Trans.Class
import Control.Monad.Trans.Writer.Strict
import Control.Proxy
import Data.Monoid

{- $modules
    "Control.Proxy" includes all recommended functionality from this library.

    @Control.Monad@ provides useful 'Monad' operations for proxies, such as
    'forever'.

    @Control.Monad.Trans.Class@ provides 'lift'

    @Control.Monad.Trans.Writer.Strict@ provides 'runWriterT' and 'execWriterT'
    for accessing the result of 'WriterT' folds.

    @Data.Monoid@ lets you unwrap the monoids generated by the 'WriterT' folds.

    "Control.MFunctor" includes 'mapT' for mixing proxies with different base
    monads. -}