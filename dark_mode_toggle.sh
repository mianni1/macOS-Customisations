#!/bin/bash

# Toggle dark mode
osascript -e \
'tell application "System Events" to tell appearance preferences to set dark mode to not dark mode'
