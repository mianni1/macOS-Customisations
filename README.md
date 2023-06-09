# MacOS Setup Scripts

This repository contains shell scripts for setting up some of the things I like to have in my macOS environment. In addition to setting up software and preferences, the script can also change the name of your MacBook.

I plan on adding more to this repo however there will be things that Apple do not allow to be modified with scripts such as enabling FileVault and escrowing the key to a logged in iCloud account :(

## Contents

1. [Dark Mode Toggle](#dark-mode-toggle)
2. [Rosetta 2 Installation](#rosetta-2-installation)
3. [Homebrew and Software Installation](#homebrew-and-software-installation)
4. [Automatic Software Updates](#automatic-software-updates)
5. [Gatekeeper Enable](#gatekeeper-enable)
6. [Change MacBook Name](#change-macbook-name)
7. [Microsoft Defender Installation](#microsoft-defender-installation)
8. [Enable Three Finger Drag](#enable-three-finger-drag)

## Dark Mode Toggle

The `setup_macos.sh` script toggles dark mode. 

## Rosetta 2 Installation

The `setup_macos.sh` script installs Rosetta 2. This is essential for running applications that are not yet optimised for the M1/M2 chipset on Apple Silicon Macs.

## Homebrew and Software Installation

The `setup_macos.sh` script installs Homebrew. If the Homebrew installation is successful, it runs the `install_brew_casks.sh` script which installs the following software packages:

- Brave browser
- Visual Studio Code
- GitHub Desktop
- Spotify
- Notion
- Discord
- Azure CLI
- Microsoft Remote Desktop

## Automatic Software Updates

The `setup_macos.sh` script enables automatic software updates.

## Gatekeeper Enable

The `setup_macos.sh` script enables Gatekeeper on macOS. Enabling Gatekeeper is a good security measure to prevent unsigned binaries or applications without identified developers from being executed on the device.

## Change MacBook Name

The `setup_macos.sh` script changes the MacBook name to "Massimo's Nespresso Machine". This includes changing the hostname, local hostname, and computer name.

## Microsoft Defender Installation

The `setup_macos.sh` script installs Microsoft Defender. Decent AV software, especially if you have MDE licensing. Worth noting you will need sufficient privileges to install and also have to onboard the device to MDE after installing Defender on the Mac. The script will unzip `WindowsDefenderATPOnboardingPackage.zip` from the Downloads directory. After unzipping, a `.sh` file named `MicrosoftDefenderATPOnboardingMacOs.sh` should be in the same directory, which will need to be executed. Make sure to edit the location of the `.zip` file in the script if it's not in the Downloads directory. For more information, check [this link](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-install-manually?view=o365-worldwide).

The 'defender_configuration.sh' script configures Microsoft Defender to my liking enabling and disabling features after installation, check [this link](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-configuration?view=o365-worldwide) out for more info if you're interested in configuring Defender on macOS.

## Enable Three Finger Drag

The `setup_macos.sh` script enables Three Finger Drag for the built-in trackpad and any connected Bluetooth trackpad.

## References

- [Homebrew](https://brew.sh/)
- [Homebrew Casks](https://formulae.brew.sh/cask/)
- [Microsoft Defender for Endpoint on Mac](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-install-manually?view=o365-worldwide)
- [Microsoft Defender for Endpoint on Mac Configuration](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-configuration?view=o365-worldwide)