#!/bin/bash

# Toggle Dark Mode
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to not dark mode'

# Install Rosetta 2
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Enable automatic software updates
sudo softwareupdate --schedule on

# Check if Homebrew is installed
if command -v brew &>/dev/null; then
    echo "Homebrew is installed, proceeding with brew casks installation..."
    ./install_brew_casks.sh
else
    echo "Homebrew is not installed, something broke."
fi

# Enable Gatekeeper
sudo spctl --master-enable

# Change MacBook name
sudo scutil --set HostName "Massimo's Nespresso Machine"
sudo scutil --set LocalHostName "MassimosNespressoMachine"
sudo scutil --set ComputerName "Massimo's Nespresso Machine"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Massimo's Nespresso Machine"

if command -v mdatp &>/dev/null; then
    echo "Microsoft Defender is installed, proceeding with onboarding..."

    # Unzip the Microsoft Defender onboarding package after downloading from Onboarding section of the Microsoft Defender Security Center portal
    # Note: Change the path to the zip file below if it's not in your Downloads folder
    unzip ~/Downloads/WindowsDefenderATPOnboardingPackage.zip -d ~/

    # Run the Microsoft Defender onboarding script
    # Note: Change the path to the .sh file below if it's not in your home directory
    sudo bash ~/MicrosoftDefenderATPOnboardingMacOs.sh
else
    echo "Microsoft Defender is not installed, installing now..."
    brew install --cask microsoft-defender
fi

# Execute defender_configuration.sh for defender related configurations
source defender_configuration.sh

# Enable Three Finger Drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true