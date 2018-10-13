module Geo where

import Prelude ((<$>), (/))

import Data.Either (Either)
import Data.Quantity (Quantity, ConversionError, qMultiply, qSubtract, (.*), sqrt)
import Data.Units (kilo)
import Data.Units.SI (meter)
-- import Effect (Effect)
-- import Effect.Console (log)

foreign import getArgs :: Int -> String

flatteningFactor :: Quantity
flatteningFactor = (1.0 / 298.257223563) .* kilo meter

equatorialRadius:: Quantity
equatorialRadius = 6378.137 .* kilo meter

polarRadius :: Either ConversionError Quantity
polarRadius = qMultiply equatorialRadius <$> ((1.0 .* kilo meter) `qSubtract` flatteningFactor)

eccentricityOfEarthMeridian :: Either ConversionError Quantity
eccentricityOfEarthMeridian= sqrt <$> qMultiply flatteningFactor <$> (1.0 .* kilo meter)  `qSubtract` flatteningFactor