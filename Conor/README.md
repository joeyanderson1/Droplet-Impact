# Conor Quigley (BSc)

This contains all working cases of OpenFOAM by Conor Quigley. We'd like to extend our gratitude to Conor for helping in the foundations of this project. All files within this folder are Conor's. 

## Contents

This repository contains the 3D simulation of the water droplet impact in OpenFOAM. The prepare.sh file is run in the Linux terminal. Then, the run.sh file will decompose and run the simulation on your laptop. As a very brief overview, particular care should be given to the contents of the following files:

- **alpha.water** - Controls the constant contact angle of the simulation.
- **blockMeshDict** - This contains the resolution of the mesh which for this run was (300 1 300).
- **controlDict** - The time stepping information is controlled in this.
- **decomposeParDict** - The number of cores you want to run your simulation are defined in here. This simulation was run on 8 cores. 
