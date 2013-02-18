unity-lens-tomboy
=================

Searching your Tomboy nodes with the Ubuntu Unity dash.

* status: 0.1.1 (alpha)
* tested with: Ubuntu 12.10.
* requires: python tomboy

Installation Instructions
-------------------------

Checkout the repository and change into the folder:

	git clone https://github.com/aleneum/unity-lens-tomboy.git
	cd unity-lens-tomboy

Option A:  
Execute install.sh (and enter sudo password when prompted. Do NOT execute as root!):

	sh install.sh

Option B:  
Copy the files manually (use sudo, if required):

	sudo mkdir /usr/share/unity/lenses/tomboy
	sudo cp src/tomboy.lens /usr/share/unity/lenses/tomboy
 	sudo cp src/unity-lens-tomboy /usr/share/unity/lenses/tomboy
 	sudo cp src/unity-lens-tomboy.service /usr/share/dbus-1/services/

And restart unity:

	setsid unity&

How to uninstall
----------------
Option A:  
Execute uninstall.sh (and enter sudo password when prompted. Do NOT execute as root!):

Option B:  
Remove manually:

	sudo rm -r /usr/share/unity/lenses/tomboy
	sudo rm /usr/share/dbus-1/services/unity-lens-tomboy.service

And restart unity:

	setsid unity&

Authors
-------
Alexander Neumann  
Rémi Rérolle (http://github.com/rrerolle/unity-lens-tomboy)  
David Callé (https://code.launchpad.net/~davidc3/unity-lens-sample/python-previews)
