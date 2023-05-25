#!/bin/bash

# User Defined variables
weburl="https://go.microsoft.com/fwlink/?linkid=868963"     # URL for downloading Microsoft Remote Desktop
app="Microsoft Remote Desktop.app"                           # The actual name of the app once installed
processpath="/Applications/Microsoft Remote Desktop.app/Contents/MacOS/Microsoft Remote Desktop"    # The process name of the app

# Download and install Microsoft Remote Desktop
curl -L -o ~/Downloads/RemoteDesktop.dmg "$weburl"
hdiutil attach ~/Downloads/RemoteDesktop.dmg
cp -r /Volumes/Remote\ Desktop/"$app" /Applications/
hdiutil detach /Volumes/Remote\ Desktop
rm ~/Downloads/RemoteDesktop.dmg

# Check if the app is running, and if so, quit the app
if pgrep -q -f "$processpath"; then
    osascript -e 'quit app "Microsoft Remote Desktop"'
fi
