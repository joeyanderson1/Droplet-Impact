# Joseph Anderson (Summer Student)

This contains the working case of OpenFOAM by Joseph Anderson. All files within this folder are Joseph's. Joseph has also been the author and creator of this github repository. He asks future students to try to maintain it. 

## Contents

This repository contains all of the relevant files related to the summer project. In more details it has:

- **Matlab_Image_Processing** - This has the video from the high speed camera I used along with the Matlab code that was used to apply filters to the droplet for edge detection. It also has the code used to save the processed edges into a form that Python can read.

- **OpenFoam_code** - This is the OpenFoam folder for the dynamic contact angle version. Use the prepare.sh file to perform the mesh generation and set the fields. The run.sh file is used to begin the actual simulation.

- **Python_Code** - This has the processed edges in the form required for Python. It also then has the Python code that uses the interpolation method to find the contact angle of the experiment video.

- **Sonic_run_files** - This has an excel file that talks through what is on my scratch in the Sonic HPC cluster along with all the details of each individual simulation that I did. It also has the "run_file.sh" which is what is used on the Sonic HPC to submit the folders to be ran. It also contains the videos of all the simulations I did. 
