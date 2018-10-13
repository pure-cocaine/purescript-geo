## purescript-geo 🌍

_Common Geographical Functions in Purescript_

```haskell
-- returns flatteningFactor of Earth in kms
flatteningFactor :: Quantity

-- returns equatorialRadius of Earth in kms
equatorialRadius:: Quantity

-- returns polarRadius of Earth in kms
polarRadius :: Either ConversionError Quantity

-- measure of how out of round our Earth is (in kms)
eccentricityOfEarthMeridian :: Either ConversionError Quantity
```
