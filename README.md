# MacOS Setup Scripts

This repository contains shell scripts for setting up some of the things I like to have in my macOS environment. In addition to setting up software and preferences, the script can also change the name of your MacBook.

I plan on adding more to this repo however there will be things that Apple do not allow to be modified with scripts such as enabling FileVault and escrowing the key to a logged in iCloud account :(

## Contents

1. [Dark Mode Toggle](#dark-mode-toggle)
2. [Rosetta 2 Installation](#rosetta-2-installation)
3. [Software Installation](#software-installation)
4. [Azure CLI Installation](#azure-cli-installation)
5. [Remote Desktop Installation](#remote-desktop-installation)
6. [Microsoft Defender Installation](#microsoft-defender-installation)
7. [Gatekeeper Enable](#gatekeeper-enable)
8. [Change MacBook Name](#change-macbook-name)

## Dark Mode Toggle

The `setup_macos.sh` script turns dark mode on because light mode is gross.

## Rosetta 2 Installation

The `setup_macos.sh` script installs Rosetta 2. This is essential for running applications that are not yet optimised optimsed for the M1/M2 chipset on Apple Silicon Macs.

## Software Installation

The `setup_macos.sh` script installs the following software packages:

- Brave browser
- Visual Studio Code
- GitHub Desktop
- Spotify
- Notion
- Discord

## Azure CLI Installation

The `setup_macos.sh` script installs the Azure CLI.

## Remote Desktop Installation

The `setup_macos.sh` script installs Microsoft Remote Desktop. Useful for creating sessions with Azure workspaces or connecting to Win clients that have RDP enabled.

## Microsoft Defender Installation

The `setup_macos.sh` script installs Microsoft Defender. Decent AV, especially if you have MDE licensing. Worth noting you will need a license and also have to onboard the device to MDE after installing Defender on the Mac. For more information, check [this link](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-install-manually?view=o365-worldwide).

## Gatekeeper Enable

The `setup_macos.sh` script enables Gatekeeper on macOS. Enabling Gatekeeper is a good security measure to prevent unsigned binaries or applications without identified devs from being executed on the device.

## Change MacBook Name

The `setup_macos.sh` script changes the MacBook name to "Massimo's Nespresso Machine". This includes changing the hostname, local hostname, and computer name.

