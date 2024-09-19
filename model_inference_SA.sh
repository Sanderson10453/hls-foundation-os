#!/bin/bash 
#This Script runs the inference - just change the params
##Declaring stuff
#Config
prithvi_config=.././Prithvi-100M-sen1floods11/sen1floods11_Prithvi_100M.py

#Checkpt
prithvi_checkpt=.././Prithvi-100M-sen1floods11/sen1floods11_Prithvi_100M.pth

#input
image_in=.././Experienced_Flood_Days/Composite/Tests/


#output
image_out=.././Experienced_Flood_Days/Composite/Processed_Images/

#Activating python env
env_activate=../.conda/Lib/venv/scripts/common/activate
source $env_activate
echo "Venv Activated"

#Grabbing Contents of Bash config
# source .bashrc
.././.conda/python.exe ./model_inference.py -config $prithvi_config  -ckpt $prithvi_checkpt -input $image_in  -output $image_out -device 'cpu' -bands 0 1 2 3 4 5