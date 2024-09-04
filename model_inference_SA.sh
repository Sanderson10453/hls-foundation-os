#!/bin/bash 
#This Script runs the inference - just change the params
##Declaring stuff
#Config
prithvi_config="../.././Work + Intership Materials/Consulting/GullahGeechee/Prithvi-100M-sen1floods11/sen1floods11_Prithvi_100M.py"

#Checkpt
prithvi_checkpt="../.././Work + Intership Materials/Consulting/GullahGeechee/Prithvi-100M-sen1floods11/sen1floods11_Prithvi_100M.pth"

#input
image_in="../.././Work + Intership Materials/Consulting/GullahGeechee/Gullah-Geechee/HLS_Images/Experienced_Flood_Days/Composite/Composite_2023243_clippedagain.tif"


#output
image_out="../.././Work + Intership Materials/Consulting/GullahGeechee/Gullah-Geechee/HLS_Images/Experienced_Flood_Days/Composite/Processed_Images/Comp2023243_clipagain.tif"
#Activating python env
env_activate="../.conda/Lib/venv/scripts/common/activate"
source $env_activate
echo "Venv Activated"

#Grabbing Contents of Bash config
# source .bashrc
python ./model_inference.py --config $prithvi_config  --ckpt $prithvi_checkpt --input $image_in  --output $image_out 