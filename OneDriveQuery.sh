#OneDrive folder size Query by Mike Lechter 1-21-2022
#!/bin/bash
#Who is the current logged in user?
currentuser=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`
#Size of the user's OneDrive folder
if [ -d /Users/$currentuser/OneDrive\ -\ UKG ]; then
                size=$(du -hc /Users/$currentuser/OneDrive\ -\ UKG | awk '/total/ {print $1}')
                folderSize=$(echo $size | awk '{print $1}')
                echo "<result>$folderSize</result>"
else
                echo "<result>"No Folder Exists"</result>"
fi
 