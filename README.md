#Portable Hotspot

A simple batch file/shell script to create a portable wireless hotspot on Windows/Linux.

Most laptop wifi modules have hosted network support built-in. This script will make setting up hotspots faster, at zero cost and minimal effort.

##How it works (Windows)
It calls netsh start hosted network command.

The file will have to be run in Administrator mode - Right-click and select "Run as Administrator". You can edit the name and password in the file.

You'll have to manually turn on internet connection sharing in Network Connections before you can access the internet on connected devices.

##Linux

Uses [https://github.com/oblique/create_ap](https://github.com/oblique/create_ap)
