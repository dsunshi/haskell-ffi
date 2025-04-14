{-# LANGUAGE ForeignFunctionInterface #-}

module Doubler where

#include "test.h"

{#fun pure doubleInt as ^ {`Int'} -> `Int' #}
