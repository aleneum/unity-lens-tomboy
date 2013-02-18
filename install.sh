#!/bin/sh

path=/usr/share/unity/lenses/tomboy

iam=`whoami`

if [ "$iam" = "root" ]
then
  echo "Do not run the script as root!"
  exit 1
fi

sudo mkdir -p $path
if [ $? -eq 0 ]
then
 sudo cp src/tomboy.lens $path
 sudo cp src/unity-lens-tomboy $path
 sudo cp src/unity-lens-tomboy.service /usr/share/dbus-1/services/
 setsid unity&
else
 echo "Could not install files. Check your permissions or provide sudo password."
fi

# End:
