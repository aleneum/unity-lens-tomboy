#!/bin/sh

if [ `whoami` = "root" ]
then
  echo "Do not run this script as root!"
  exit 1
fi

sudo rm -r /usr/share/unity/lenses/tomboy
sudo rm /usr/share/dbus-1/services/unity-lens-tomboy.service

if [ $? -eq 0 ]
then
  setsid unity&
else
  echo "Could not remove files (maybe they did not exist). Check your permissions or provide sudo password."
fi


