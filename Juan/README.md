# Juan Mairal (MSc)

This contains all working cases of OpenFOAM by Juan Mairal. We'd like to extend our gratitude to Juan for helping in the foundations of this project. All files within this folder are Juan's. 

## Contents

This repository contains, a series of 2D OpenFOAM cases, whose aim is to validate the methods and algorithms that are being used. The Rayleigh-Taylor instability and rising bubble cases were develped as validation for this method. The falling droplet is the most important case here. Two contact angle conditions are tested and their templates are included here. They are:

- **RTinstability** - The Rayleigh-Taylor instability for validation for the method. 

- **dropletTemplate** - The constant angle contact condition, which mantains the contact angle constant during the whole simulation. The value of the equilibrium angle can be changed at mesh/alpha.water.orig

- **dynamicDroplet/dynAlphaContactAngleTemplate** - The dynamicAlphaContactAngle condition, which is the only dynamic angle condition offered in OpenFOAM by default. The template includes some default values that have been tested and work quite well. They can be changed in the alpha.water.orig file.

- **risingBubble** - The rising bubble cases for validation of the method. 
