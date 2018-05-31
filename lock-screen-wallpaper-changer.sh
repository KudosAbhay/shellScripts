#!/bin/sh

####################################
#
# Changing Background Wallpaper of Ubuntu Lockscreen
#
# Not yet Tested on Ubuntu 16.04 LTS based Operating Systems
####################################


echo "Enter path of image to set it as wallpaper:"
read path_to_image

# Be the Super User first
echo "Logging In as a super user..."
sudo -i

xhost +SI:localuser:lightdm
su lightdm -s /bin/bash
gsettings set com.canonical.unity-greeter draw-user-backgrounds 'true'

# Use the Path provided by User here
echo "setting new wallpaper..."
command_to_execute="gsettings set com.canonical.unity-greeter background '$path_to_image'"

# Execute Command
eval "$command_to_execute"

# Finally, exit...
echo "exiting...."
exit
